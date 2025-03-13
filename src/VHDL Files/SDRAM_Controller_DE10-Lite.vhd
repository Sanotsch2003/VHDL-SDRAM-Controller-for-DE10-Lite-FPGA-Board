LIBRARY IEEE;
USE IEEE.Std_logic_1164.ALL;
USE IEEE.Numeric_Std.ALL;

--Ram clock period : Max 143 Mhz
--CasLatency for this Controller : 3 cycles
--max Burst Length : 512 32-Bit words
--Addressing : One Address Per 32 bit word
--If you processor uses byte addressing, you will need to divide the address by 2 before passing it to the controller.

ENTITY SdramController IS
	GENERIC (
		numConnectedDevices : INTEGER := 1; --max: 8

		--unit: nanoseconds
		memClkPeriod : INTEGER := 7;
		sysClkPeriod : INTEGER := 20;

		--unit: cycles
		t_cac : INTEGER := 3;
		t_rcd : INTEGER := 3;
		t_rac : INTEGER := 6;
		t_rc  : INTEGER := 9;
		t_ras : INTEGER := 6;
		t_rp  : INTEGER := 3;
		t_rdd : INTEGER := 2;
		t_ccd : INTEGER := 1;
		t_dpl : INTEGER := 2;
		t_dal : INTEGER := 5;
		t_rbd : INTEGER := 3;
		t_wbd : INTEGER := 0;
		t_rql : INTEGER := 3;
		t_wdl : INTEGER := 0;
		t_mrd : INTEGER := 2
	);
	PORT (
		--System Signals
		memClk : IN STD_LOGIC;
		sysClk : IN STD_LOGIC;
		reset  : IN STD_LOGIC;
		enable : IN STD_LOGIC;

		--SDRAM Signal
		SDRAM_ADDR      : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
		SDRAM_DATA      : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		SDRAM_BANK_ADDR : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		SDRAM_BYTE_MASK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		SDRAM_RAS       : OUT STD_LOGIC;
		SDRAM_CAS       : OUT STD_LOGIC;
		SDRAM_CLK_EN    : OUT STD_LOGIC;
		SDRAM_CLK       : OUT STD_LOGIC;
		SDRAM_WRITE_EN  : OUT STD_LOGIC;
		SDRAM_CHIP_SEL  : OUT STD_LOGIC;

		--Controller Signals
		burstLength   : IN STD_LOGIC_VECTOR(numConnectedDevices * 9 - 1 DOWNTO 0);
		readReq       : IN STD_LOGIC_VECTOR(numConnectedDevices - 1 DOWNTO 0);
		writeReq      : IN STD_LOGIC_VECTOR(numConnectedDevices - 1 DOWNTO 0);
		address       : IN STD_LOGIC_VECTOR(numConnectedDevices * 24 - 1 DOWNTO 0);
		dataIn        : IN STD_LOGIC_VECTOR(numConnectedDevices * 32 - 1 DOWNTO 0);
		dataOut       : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		byteMask      : IN STD_LOGIC_VECTOR(numConnectedDevices * 4 - 1 DOWNTO 0);
		SDRAM_Ready   : OUT STD_LOGIC_VECTOR(numConnectedDevices - 1 DOWNTO 0);
		dataAvailable : OUT STD_LOGIC_VECTOR(numConnectedDevices - 1 DOWNTO 0);

		memoryOverflowInterrupt : OUT STD_LOGIC;
		interruptReset          : IN STD_LOGIC
	);
END SdramController;

ARCHITECTURE Behavioral OF SdramController IS

	COMPONENT writeBuffer IS
		PORT (
			writeClk : IN STD_LOGIC;
			readClk  : IN STD_LOGIC;

			dataIn       : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			writeAddress : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
			writeEnable  : IN STD_LOGIC;

			dataOut     : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			readAddress : IN STD_LOGIC_VECTOR(9 DOWNTO 0)
		);
	END COMPONENT;

	COMPONENT creadBuffer IS
		PORT (
			writeClk : IN STD_LOGIC;
			readClk  : IN STD_LOGIC;

			dataIn       : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			writeAddress : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
			writeEnable  : IN STD_LOGIC;

			dataOut     : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
			readAddress : IN STD_LOGIC_VECTOR(8 DOWNTO 0)
		);
	END COMPONENT;

	--State machine signals
	TYPE controllerStateType IS (SDRAM_POWER_UP, SDRAM_INIT, SDRAM_IDLE, SDRAM_AUTO_REFRESH, SDRAM_ACTIVATE_ROW, SDRAM_READ, SDRAM_WRITE, SDRAM_RECOVER_FROM_INTERRUPT);
	SIGNAL controllerState, controllerState_nxt : controllerStateType;

	TYPE readBufferStateType IS (READ_BUFFER_IDLE, READ_BUFFER_TRANSMITTING);
	SIGNAL readBufferState, readBufferState_nxt : readBufferStateType;

	TYPE writeBufferStateType IS (WRITE_BUFFER_IDLE, WRITE_BUFFER_RECEIVING);
	SIGNAL writeBufferState, writeBufferState_nxt : writeBufferStateType;
	--Address signals
	SIGNAL s_rowAddress    : STD_LOGIC_VECTOR(12 DOWNTO 0);
	SIGNAL s_columnAddress : STD_LOGIC_VECTOR(9 DOWNTO 0);
	SIGNAL s_bankAddress   : STD_LOGIC_VECTOR(1 DOWNTO 0);

	SIGNAL s_command : STD_LOGIC_VECTOR(18 DOWNTO 0);

	--SDRAM COMMANDS:
	CONSTANT COMMAND_DEVICE_DESELECT     : STD_LOGIC_VECTOR(18 DOWNTO 0) := "1000000000000000000";
	CONSTANT COMMAND_NO_OPERATION        : STD_LOGIC_VECTOR(18 DOWNTO 0) := "0111000000000000000";
	CONSTANT COMMAND_BURST_STOP          : STD_LOGIC_VECTOR(18 DOWNTO 0) := "0110000000000000000";
	CONSTANT COMMAND_READ                : STD_LOGIC_VECTOR(4 DOWNTO 0)  := "01010";
	CONSTANT COMMAND_READ_WITH_AP        : STD_LOGIC_VECTOR(4 DOWNTO 0)  := "01011";
	CONSTANT COMMAND_WRITE               : STD_LOGIC_VECTOR(4 DOWNTO 0)  := "01000";
	CONSTANT COMMAND_WRITE_WITH_AP       : STD_LOGIC_VECTOR(4 DOWNTO 0)  := "01001";
	CONSTANT COMMAND_BANK_ACTIVATE       : STD_LOGIC_VECTOR(3 DOWNTO 0)  := "0011";
	CONSTANT COMMAND_PRECHARGE_SEL_BANK  : STD_LOGIC_VECTOR(4 DOWNTO 0)  := "00100";
	CONSTANT COMMAND_PRECHARGE_ALL_BANKS : STD_LOGIC_VECTOR(18 DOWNTO 0) := "0010100000000000000";
	CONSTANT COMMAND_REFRESH             : STD_LOGIC_VECTOR(18 DOWNTO 0) := "0001000000000000000";
	CONSTANT COMMAND_SET_MODE_REGISTER   : STD_LOGIC_VECTOR(8 DOWNTO 0)  := "000000000";

	--MODE REGISTER constants
	CONSTANT MODE_REGISTER_SINGLE_LOCATION_ACCESS : STD_LOGIC_VECTOR(9 DOWNTO 0) := "1000110000";
	CONSTANT MODE_REGISTER_BURST_2                : STD_LOGIC_VECTOR(9 DOWNTO 0) := "0000110001";
	CONSTANT MODE_REGISTER_BURST_4                : STD_LOGIC_VECTOR(9 DOWNTO 0) := "0000110010";
	CONSTANT MODE_REGISTER_BURST_8                : STD_LOGIC_VECTOR(9 DOWNTO 0) := "0000110011";
	CONSTANT MODE_REGISTER_BURST_FULL             : STD_LOGIC_VECTOR(9 DOWNTO 0) := "0000110111";

	--Timing

	--Final Design
	CONSTANT POWER_ON_CYCLES : INTEGER := (100_000 + memClkPeriod - 1) / memClkPeriod; --divide the time needed to power on the SDRAM by the SDRAM-Clk-Frequency and round up the result.

	--Testbench
	--CONSTANT POWER_ON_CYCLES : INTEGER := (100 + memClkPeriod - 1) / memClkPeriod; --divide the time needed to power on the SDRAM by the SDRAM-Clk-Frequency and round up the result.

	CONSTANT ASYNC_RESET_CYCLES : INTEGER := (sysClkPeriod + memClkPeriod - 1) / memClkPeriod + 1; --The amount of Cycles the memory clock needs to keep a reset signal high so the system clock will be able to reliably process it. 

	--max Addresses
	CONSTANT MAX_COLUMN_ADDRESS : INTEGER := 1023;
	CONSTANT MAX_RAM_ADDRESS    : INTEGER := 33554431;

	--Count Signals
	SIGNAL stateCycleCount      : unsigned(16 DOWNTO 0);
	SIGNAL stateCycleCountReset : STD_LOGIC;

	--Refresh Signals
	SIGNAL refreshCount          : unsigned(31 DOWNTO 0);
	CONSTANT refreshWindowCycles : INTEGER := 7_800 / memClkPeriod;
	SIGNAL refreshPending        : BOOLEAN;
	SIGNAL refreshDone           : STD_LOGIC;

	--Interrupt Signals
	SIGNAL memoryOverflowInterruptReg, memoryOverflowInterruptReg_nxt : STD_LOGIC;
	TYPE std_logic_vector_array IS ARRAY (NATURAL RANGE <>) OF STD_LOGIC_VECTOR(15 DOWNTO 0);
	--Control Registers and signals for Writing
	--SIGNAL writeBuffer, writeBuffer_nxt                 : std_logic_vector_array(1024 DOWNTO 0);
	SIGNAL writeAddressReg, writeAddressReg_nxt         : STD_LOGIC_VECTOR(24 DOWNTO 0);
	SIGNAL writeTurnReg, writeTurnReg_nxt               : unsigned(2 DOWNTO 0);
	SIGNAL writeBurstLengthReg, writeBurstLengthReg_nxt : unsigned(8 DOWNTO 0);
	SIGNAL writeByteMaskReg, writeByteMaskReg_nxt       : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL writeBufferEmpty, writeBufferEmpty_nxt       : BOOLEAN := True;
	SIGNAL writeDeviceIndexReg, writeDeviceIndexReg_nxt : unsigned(2 DOWNTO 0);
	SIGNAL writeBufferWriteCount                        : unsigned(8 DOWNTO 0);
	SIGNAL writeBufferWriteCountReset                   : STD_LOGIC;
	SIGNAL writeBufferEmptyReset                        : STD_LOGIC;
	SIGNAL writeBufferEmptyResetShiftReg                : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL writeBufferDataIn                            : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL writeBufferWriteAddress                      : STD_LOGIC_VECTOR(8 DOWNTO 0);
	SIGNAL writeBufferWriteEnable                       : STD_LOGIC;
	SIGNAL writeBufferDataOut                           : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL writeBufferReadAddress                       : STD_LOGIC_VECTOR(9 DOWNTO 0);

	--Control Registers for Reading
	SIGNAL readTurnReg, readturnReg_nxt               : unsigned(2 DOWNTO 0);
	SIGNAL readBufferEmpty, readBufferEmpty_nxt       : BOOLEAN;
	SIGNAL readBufferEmptyReset                       : STD_LOGIC;
	SIGNAL readBufferEmptyResetShiftReg               : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL readBufferReadCount                        : unsigned(8 DOWNTO 0);
	SIGNAL readBufferReadCountReset                   : STD_LOGIC;
	SIGNAL readByteMaskReg, readByteMaskReg_nxt       : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL readBurstLengthReg, readBurstLengthReg_nxt : unsigned(8 DOWNTO 0);
	SIGNAL readDeviceIndexReg, readDeviceIndexReg_nxt : unsigned(2 DOWNTO 0);
	SIGNAL readBufferDataIn                           : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL readBufferWriteAddress                     : STD_LOGIC_VECTOR(8 DOWNTO 0);
	SIGNAL readBufferWriteEnable                      : STD_LOGIC;
	SIGNAL readBufferDataOut                          : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL readBufferReadAddress                      : STD_LOGIC_VECTOR(8 DOWNTO 0);
	SIGNAL readTmpReg, readTmpReg_nxt                 : STD_LOGIC_VECTOR(15 DOWNTO 0);

	--General control Registers for Writing AND Reading
	SIGNAL addressReg, addressReg_nxt           : STD_LOGIC_VECTOR(24 DOWNTO 0);
	SIGNAL burstLengthReg, burstLengthReg_nxt   : unsigned(9 DOWNTO 0);
	SIGNAL bufferOffsetReg, bufferOffsetReg_nxt : unsigned(9 DOWNTO 0);
	SIGNAL byteMaskReg, byteMaskReg_nxt         : STD_LOGIC_VECTOR(3 DOWNTO 0);
	TYPE memOperationType IS (READ, WRITE);
	SIGNAL memOperationReg, memOperationReg_nxt   : memOperationType;
	SIGNAL burstOverflowReg, burstOverflowReg_nxt : BOOLEAN;

BEGIN
	--write buffer
	writeBufferInstance : writeBuffer
	PORT MAP(
		writeClk     => sysClk,
		readClk      => memClk,
		dataIn       => writeBufferDataIn,
		writeAddress => writeBufferWriteAddress,
		writeEnable  => writeBufferWriteEnable,
		dataOut      => writeBufferDataOut,
		readAddress  => writeBufferReadAddress
	);

	--read buffer
	readBufferInstance : creadBuffer
	PORT MAP(
		writeClk     => memClk,
		readClk      => sysClk,
		dataIn       => readBufferDataIn,
		writeAddress => readBufferWriteAddress,
		writeEnable  => readBufferWriteEnable,
		dataOut      => readBufferDataOut,
		readAddress  => readBufferReadAddress
	);

	--SDRAM Clock assigment
	SDRAM_CLK <= memClk;

	--command assignments
	SDRAM_CHIP_SEL           <= s_command(18);
	SDRAM_RAS                <= s_command(17);
	SDRAM_CAS                <= s_command(16);
	SDRAM_WRITE_EN           <= s_command(15);
	SDRAM_ADDR(10)           <= s_command(14);
	SDRAM_BANK_ADDR          <= s_command(13 DOWNTO 12);
	SDRAM_ADDR(12 DOWNTO 11) <= s_command(11 DOWNTO 10);
	SDRAM_ADDR(9 DOWNTO 0)   <= s_command(9 DOWNTO 0);

	--address assignments
	s_bankAddress   <= addressReg(24 DOWNTO 23);
	s_rowAddress    <= addressReg(22 DOWNTO 10);
	s_columnAddress <= addressReg(9 DOWNTO 0);

	--Interrupt assignments
	memoryOverflowInterrupt <= memoryOverflowInterruptReg;

	--Memory State machine
	PROCESS (controllerState, stateCycleCount, addressReg, readBurstLengthReg, readByteMaskReg, readDeviceIndexReg, burstLengthReg, byteMaskReg, writeAddressReg, readTurnReg, refreshPending, burstOverflowReg, memoryOverflowInterruptReg, memOperationReg, writeBurstLengthReg, writeBufferEmpty, writeByteMaskReg, readReq, address, burstLength, byteMask, writeDeviceIndexReg, bufferOffsetReg, readBufferEmpty)
		VARIABLE deviceIndex  : INTEGER;
		VARIABLE readTurn_nxt : INTEGER;

		VARIABLE controllerBurstLength        : INTEGER; --Controller burst length is double of the given burst
		VARIABLE burstEndAddress              : INTEGER;
		VARIABLE columnAddress                : INTEGER;
		VARIABLE burstOverflowStartingAddress : INTEGER;
		VARIABLE remainingBurstLength         : INTEGER;

	BEGIN
		--Default Assignments
		controllerState_nxt            <= controllerState;
		addressReg_nxt                 <= addressReg;
		burstLengthReg_nxt             <= burstLengthReg;
		byteMaskReg_nxt                <= byteMaskReg;
		readTurnReg_nxt                <= readTurnReg;
		memOperationReg_nxt            <= memOperationReg;
		memoryOverflowInterruptReg_nxt <= memoryOverflowInterruptReg;
		burstOverflowReg_nxt           <= burstOverflowReg;
		bufferOffsetReg_nxt            <= bufferOffsetReg;
		readBurstLengthReg_nxt         <= readBurstLengthReg;
		readByteMaskReg_nxt            <= readByteMaskReg;
		readDeviceIndexReg_nxt         <= readDeviceIndexReg;
		stateCycleCountReset           <= '0';
		refreshDone                    <= '0';
		CASE controllerState IS

			WHEN SDRAM_POWER_UP =>
				IF to_integer(stateCycleCount) >= POWER_ON_CYCLES - 1 THEN
					stateCycleCountReset <= '1';
					controllerState_nxt  <= SDRAM_INIT;
				END IF;

			WHEN SDRAM_INIT =>
				IF to_integer(stateCycleCount) >= (t_rp + t_rc * 8 + t_mrd) - 1 THEN
					stateCycleCountReset <= '1';
					controllerState_nxt  <= SDRAM_IDLE;
				END IF;

			WHEN SDRAM_IDLE =>

				--Check if the last memory operation could not be finished due to burst overflow and a second burst op must be initiated.
				IF burstOverflowReg = True THEN
					IF memOperationReg = Write THEN
						controllerBurstLength := to_integer(writeBurstLengthReg) * 2 + 1;
					ELSE
						controllerBurstLength := to_integer(readBurstLengthReg) * 2 + 1;
					END IF;

					burstOverflowStartingAddress := to_integer(unsigned(addressReg)) + to_integer(burstLengthReg) + 1;
					burstEndAddress              := to_integer(unsigned(addressReg)) + controllerBurstLength;
					remainingBurstLength         := burstEndAddress - burstOverflowStartingAddress;
					IF burstOverflowStartingAddress > MAX_RAM_ADDRESS THEN
						memoryOverflowInterruptReg_nxt <= '1';
						burstOverflowReg_nxt           <= False;
						controllerState_nxt            <= SDRAM_RECOVER_FROM_INTERRUPT;
						stateCycleCountReset           <= '1';

					ELSE
						burstOverflowReg_nxt <= False;
						burstLengthReg_nxt   <= to_unsigned(remainingBurstLength, 10);
						addressReg_nxt       <= STD_LOGIC_VECTOR(to_unsigned(burstOverflowStartingAddress, 25));
						bufferOffsetReg_nxt  <= to_unsigned(to_integer(burstLengthReg) + 1, 10);

						--Advancing to next State
						controllerState_nxt  <= SDRAM_ACTIVATE_ROW;
						stateCycleCountReset <= '1';
					END IF;

					--Check if Memory needs to be refreshed.
				ELSIF refreshPending = True THEN
					controllerState_nxt  <= SDRAM_AUTO_REFRESH;
					refreshDone          <= '1';
					stateCycleCountReset <= '1';

					--Check if A Write Operation Is needed. 
				ELSIF writeBufferEmpty = False THEN
					--Setting up Controll Registers
					--Check if a burst overflow will occur
					controllerBurstLength := to_integer(writeBurstLengthReg) * 2 + 1;
					columnAddress         := to_integer(unsigned(writeAddressReg(9 DOWNTO 0)));
					burstEndAddress       := columnAddress + controllerBurstLength;
					IF burstEndAddress > MAX_COLUMN_ADDRESS THEN
						burstOverflowReg_nxt <= True;
						controllerBurstLength := MAX_COLUMN_ADDRESS - columnAddress;
					ELSE
						burstOverflowReg_nxt <= False;
					END IF;

					burstLengthReg_nxt  <= to_unsigned(controllerBurstLength, 10);
					memOperationReg_nxt <= WRITE;
					addressReg_nxt      <= writeAddressReg;
					byteMaskReg_nxt     <= writeByteMaskReg;
					bufferOffsetReg_nxt <= (OTHERS => '0');
					--Advancing to next State
					controllerState_nxt  <= SDRAM_ACTIVATE_ROW;
					stateCycleCountReset <= '1';

					--Check if a device want to Read from memory and determine, which device is allowed to based on a round robin mechanism
				ELSIF readBufferEmpty = True THEN
					FOR i IN 0 TO numConnectedDevices - 1 LOOP
						deviceIndex := to_integer(readTurnReg) + i;
						IF deviceIndex >= numConnectedDevices THEN
							deviceIndex := to_integer(readTurnReg) + i - numConnectedDevices;
						END IF;

						IF readReq(deviceIndex) = '1' THEN
							--Setting up read controll registers
							readBurstLengthReg_nxt <= unsigned(burstLength(deviceIndex * 9 + 8 DOWNTO deviceIndex * 9));
							readByteMaskReg_nxt    <= byteMask(deviceIndex * 4 + 3 DOWNTO deviceIndex * 4);
							readDeviceIndexReg_nxt <= to_unsigned(deviceIndex, 3);

							--Check if a burst overflow will occur
							controllerBurstLength := to_integer(unsigned(burstLength(deviceIndex * 6 + 5 DOWNTO deviceIndex * 6))) * 2 + 1;
							columnAddress         := to_integer(unsigned(address(deviceIndex * 25 + 9 DOWNTO deviceIndex * 25)));
							burstEndAddress       := columnAddress + controllerBurstLength;
							IF burstEndAddress > MAX_COLUMN_ADDRESS THEN
								burstOverflowReg_nxt <= True;
								controllerBurstLength := MAX_COLUMN_ADDRESS - columnAddress;
							ELSE
								burstOverflowReg_nxt <= False;
							END IF;

							--Setting up general controll registers
							burstLengthReg_nxt  <= to_unsigned(controllerBurstLength, 10);
							memOperationReg_nxt <= READ;
							addressReg_nxt      <= address(deviceIndex * 24 + 23 DOWNTO deviceIndex * 24) & '0'; --Multiply by 2.
							byteMaskReg_nxt     <= byteMask(deviceIndex * 4 + 3 DOWNTO deviceIndex * 4);
							bufferOffsetReg_nxt <= (OTHERS => '0');

							readTurn_nxt := deviceIndex + 1;
							IF readTurn_nxt >= numConnectedDevices THEN
								readTurn_nxt := 0;
							END IF;
							readTurnReg_nxt <= to_unsigned(readTurn_nxt, 3);

							--Advancing to next State
							controllerState_nxt  <= SDRAM_ACTIVATE_ROW;
							stateCycleCountReset <= '1';
							EXIT;
						END IF;
					END LOOP;
				END IF;

			WHEN SDRAM_AUTO_REFRESH =>
				IF to_integer(stateCycleCount) = t_rp + 2 * t_rc - 1 THEN
					stateCycleCountReset <= '1';
					controllerState_nxt  <= SDRAM_IDLE;
				END IF;

			WHEN SDRAM_ACTIVATE_ROW =>
				IF to_integer(stateCycleCount) = t_rcd - 1 THEN
					stateCycleCountReset <= '1';
					IF memOperationReg = WRITE THEN
						controllerState_nxt <= SDRAM_WRITE;
					ELSE
						controllerState_nxt <= SDRAM_READ;
					END IF;
				END IF;

			WHEN SDRAM_WRITE =>
				IF to_integer(stateCycleCount) >= to_integer(burstLengthReg) + t_dpl + t_rp - 1 THEN
					stateCycleCountReset <= '1';
					controllerState_nxt  <= SDRAM_IDLE;
				END IF;

			WHEN SDRAM_READ =>
				IF to_integer(stateCycleCount) >= to_integer(burstLengthReg) + t_cac + t_rp - 1 THEN
					stateCycleCountReset <= '1';
					controllerState_nxt  <= SDRAM_IDLE;
				END IF;

			WHEN SDRAM_RECOVER_FROM_INTERRUPT =>
				--Give Controller Time to resync after an interrupt has occured.
				IF to_integer(stateCycleCount) >= ASYNC_RESET_CYCLES - 1 THEN
					stateCycleCountReset <= '1';
					controllerState_nxt  <= SDRAM_IDLE;
				END IF;
			WHEN OTHERS =>
				controllerState_nxt <= SDRAM_INIT;

		END CASE;

	END PROCESS;

	--Memory signal assignments
	PROCESS (controllerState, stateCycleCount, s_rowAddress, s_bankAddress, s_columnAddress, burstLengthReg, byteMaskReg, bufferOffsetReg, burstOverflowReg, SDRAM_DATA, writeBufferDataOut, readTmpReg)
		VARIABLE readBufferPointer : STD_LOGIC_VECTOR(8 DOWNTO 0);
	BEGIN
		--default assignments
		s_command              <= COMMAND_NO_OPERATION;
		readTmpReg_nxt         <= readTmpReg;
		SDRAM_CLK_EN           <= '1';
		SDRAM_DATA             <= (OTHERS => 'Z');
		SDRAM_BYTE_MASK        <= "11";
		writeBufferEmptyReset  <= '0';
		writeBufferReadAddress <= (OTHERS => '0');
		readBufferEmptyReset   <= '0';
		readBufferDataIn       <= (OTHERS => '0');
		readBufferWriteAddress <= (OTHERS => '0');
		readBufferWriteEnable  <= '0';

		CASE controllerState IS

			WHEN SDRAM_POWER_UP =>
				NULL;

			WHEN SDRAM_INIT =>
				IF to_integer(stateCycleCount) < t_rp THEN
					s_command <= COMMAND_PRECHARGE_ALL_BANKS;
				ELSIF (to_integer(stateCycleCount) = t_rp + t_rc * 0) OR (to_integer(stateCycleCount) = t_rp + t_rc * 1) OR (to_integer(stateCycleCount) = t_rp + t_rc * 2) OR (to_integer(stateCycleCount) = t_rp + t_rc * 3) OR (to_integer(stateCycleCount) = t_rp + t_rc * 4) OR (to_integer(stateCycleCount) = t_rp + t_rc * 5) OR (to_integer(stateCycleCount) = t_rp + t_rc * 6) OR (to_integer(stateCycleCount) = t_rp + t_rc * 7) THEN
					s_command <= COMMAND_REFRESH;
				ELSIF (to_integer(stateCycleCount) = t_rp + t_rc * 8) THEN
					s_command <= COMMAND_SET_MODE_REGISTER & MODE_REGISTER_BURST_FULL;
				END IF;

			WHEN SDRAM_IDLE =>
				NULL;

			WHEN SDRAM_AUTO_REFRESH =>
				IF to_integer(stateCycleCount) = 0 THEN
					s_command <= COMMAND_PRECHARGE_ALL_BANKS;
				ELSIF to_integer(stateCycleCount) = t_rp OR to_integer(stateCycleCount) = t_rp + t_rc THEN
					s_command <= COMMAND_REFRESH;
				END IF;

			WHEN SDRAM_ACTIVATE_ROW =>
				IF to_integer(stateCycleCount) = 0 THEN
					s_command(18 DOWNTO 15) <= COMMAND_BANK_ACTIVATE;
					s_command(14)           <= s_rowAddress(10);
					s_command(13 DOWNTO 12) <= s_bankAddress;
					s_command(11 DOWNTO 10) <= s_rowAddress(12 DOWNTO 11);
					s_command(9 DOWNTO 0)   <= s_rowAddress(9 DOWNTO 0);
				END IF;
			WHEN SDRAM_WRITE =>
				--Set write Buffer Address
				writeBufferReadAddress <= STD_LOGIC_VECTOR(to_unsigned(to_integer(bufferOffsetReg) + to_integer(stateCycleCount) + 1, 10));
				--Place Data on Data Lines, set Byte Mask signals, and Terminate the write at the right time
				IF to_integer(stateCycleCount) <= to_integer(burstLengthReg) THEN
					--Set Write Buffer Read Signals
					SDRAM_DATA <= writeBufferDataOut;
					IF stateCycleCount(0) = '0' THEN --upper two bytes
						SDRAM_BYTE_MASK <= NOT byteMaskReg(3 DOWNTO 2);
					ELSE --lower two bytes
						SDRAM_BYTE_MASK <= NOT byteMaskReg(1 DOWNTO 0);
					END IF;
				ELSE
					SDRAM_BYTE_MASK <= NOT byteMaskReg(1 DOWNTO 0);
				END IF;

				IF to_integer(stateCycleCount) = 0 THEN
					--Send write command on first write cycle
					s_command(18 DOWNTO 14) <= COMMAND_WRITE;
					s_command(13 DOWNTO 12) <= s_bankAddress;
					s_command(11 DOWNTO 10) <= "00";
					s_command(9 DOWNTO 0)   <= s_columnAddress;
				ELSIF to_integer(stateCycleCount) = to_integer(burstLengthReg) + 1 THEN
					--terminate Burst
					s_command <= COMMAND_BURST_STOP;
				ELSIF to_integer(stateCycleCount) = to_integer(burstLengthReg) + 1 + t_dpl THEN
					--PrechargeBanks
					s_command <= COMMAND_PRECHARGE_ALL_BANKS;
				END IF;

				--Reset the WriteBufferEmpty register so more data can be read
				IF (to_integer(stateCycleCount) >= to_integer(burstLengthReg) + t_dpl + t_rp - ASYNC_RESET_CYCLES) AND (burstOverflowReg = False) THEN
					writeBufferEmptyReset <= '1';
				END IF;

			WHEN SDRAM_READ =>
				--Set byte mask to receive all bytes
				SDRAM_BYTE_MASK <= "00";

				IF to_integer(stateCycleCount) = 0 THEN
					--Send read command on first read cycle
					s_command(18 DOWNTO 14) <= COMMAND_READ;
					s_command(13 DOWNTO 12) <= s_bankAddress;
					s_command(11 DOWNTO 10) <= "00";
					s_command(9 DOWNTO 0)   <= s_columnAddress;
				ELSIF to_integer(stateCycleCount) = to_integer(burstLengthReg) + 1 THEN
					--terminate Burst
					s_command <= COMMAND_BURST_STOP;
				ELSIF to_integer(stateCycleCount) = t_cac + to_integer(burstLengthReg) + 1 THEN
					s_command <= COMMAND_PRECHARGE_ALL_BANKS;
				END IF;

				readBufferPointer := STD_LOGIC_VECTOR(to_unsigned(to_integer(stateCycleCount) - t_cac + to_integer(bufferOffsetReg), 9));
				--Receive Data 
				IF to_integer(stateCycleCount) >= t_cac AND to_integer(stateCycleCount) <= t_cac + to_integer(burstLengthReg) THEN
					IF readBufferPointer(0) = '1' THEN --Only update read Buffer when pointer is odd as only 16 bit can be read from RAM at a time. 
						readBufferDataIn <= readTmpReg & SDRAM_DATA;
						readBufferWriteAddress <= '0' & readBufferPointer(8 DOWNTO 1);
						readBufferWriteEnable  <= '1';
					ELSE
						readTmpReg_nxt <= SDRAM_DATA;
					END IF;

				END IF;

				--Give the other state machine the signal to start providing the received Data at the output
				IF (to_integer(stateCycleCount) >= to_integer(burstLengthReg) + t_cac + t_rp - ASYNC_RESET_CYCLES) AND (burstOverflowReg = False) THEN
					readBufferEmptyReset <= '1';
				END IF;

			WHEN SDRAM_RECOVER_FROM_INTERRUPT =>
				writeBufferEmptyReset <= '1';

			WHEN OTHERS =>
				NULL;

		END CASE;

	END PROCESS;
	--Memory Counters
	PROCESS (memClk, reset)
	BEGIN
		IF reset = '1' THEN
			stateCycleCount <= (OTHERS => '0');
			refreshCount    <= (OTHERS => '0');
			refreshPending  <= True;
		ELSIF falling_edge(memClk) THEN
			IF enable = '1' THEN
				--State Cycle Counter
				IF stateCycleCountReset = '1' THEN
					stateCycleCount <= (OTHERS => '0');
				ELSE
					stateCycleCount <= stateCycleCount + 1;
				END IF;

				--Refresh Counter
				IF to_integer(refreshCount) = refreshWindowCycles - 1 THEN
					refreshCount   <= (OTHERS => '0');
					refreshPending <= True;
				ELSIF controllerState /= SDRAM_POWER_UP THEN --Only start counting if RAM has finished powering up.
					refreshCount <= refreshCount + 1;
				ELSE
					refreshCount <= (OTHERS => '0');
				END IF;

				IF refreshDone = '1' THEN
					refreshPending <= False;
				END IF;
			END IF;
		END IF;
	END PROCESS;
	--System counters
	PROCESS (sysClk, reset)
	BEGIN
		IF reset = '1' THEN
			writeBufferWriteCount <= (OTHERS => '0');
			readBufferReadCount   <= (OTHERS => '0');

		ELSIF rising_edge(sysClk) THEN
			IF enable = '1' THEN
				IF writeBufferWriteCountReset = '1' THEN
					writeBufferWriteCount <= (OTHERS => '0');
				ELSE
					writeBufferWriteCount <= writeBufferWriteCount + 1;
				END IF;

				IF readBufferReadCountReset = '1' THEN
					readBufferReadCount <= (OTHERS => '0');
				ELSE
					readBufferReadCount <= readBufferReadCount + 1;
				END IF;
			END IF;

		END IF;
	END PROCESS;
	--System State Machines
	PROCESS (readBufferState, writeBufferState, writeBufferEmpty, writeTurnReg, writeReq, writeBufferWriteCount, dataIn, writeAddressReg, writeBurstLengthReg, writeByteMaskReg, writeDeviceIndexReg, address, burstLength, byteMask, readDeviceIndexReg, readBufferEmpty, readBufferReadCount, readByteMaskReg, readBurstLengthReg, readBufferDataOut)
		VARIABLE deviceIndex : INTEGER;
		VARIABLE nextTurn    : INTEGER;
		VARIABLE data        : STD_LOGIC_VECTOR(31 DOWNTO 0);
	BEGIN
		--default assignments
		--write registers and signals
		writeBufferState_nxt       <= writeBufferState;
		writeBufferEmpty_nxt       <= writeBufferEmpty;
		writeTurnReg_nxt           <= writeTurnReg;
		writeAddressReg_nxt        <= writeAddressReg;
		writeBurstLengthReg_nxt    <= writeBurstLengthReg;
		writeByteMaskReg_nxt       <= writeByteMaskReg;
		writeDeviceIndexReg_nxt    <= writeDeviceIndexReg;
		writeBufferWriteCountReset <= '0';
		SDRAM_Ready                <= (OTHERS => '0');
		writeBufferDataIn          <= (OTHERS => '0');
		writeBufferWriteAddress    <= (OTHERS => '0');
		writeBufferWriteEnable     <= '0';

		--read registers and signals
		readBufferState_nxt      <= readBufferState;
		readBufferEmpty_nxt      <= readBufferEmpty;
		readBufferReadCountReset <= '0';
		dataAvailable            <= (OTHERS => '0');
		dataOut                  <= (OTHERS => '0');
		readBufferReadAddress    <= (OTHERS => '0');

		CASE writeBufferState IS
			WHEN WRITE_BUFFER_IDLE =>
				IF writeBufferEmpty = true THEN
					--Calculate, which device is allowed to write to the buffer based on a round robin mechanism
					FOR i IN 0 TO numConnectedDevices - 1 LOOP
						deviceIndex := to_integer(writeTurnReg) + i;
						IF deviceIndex >= numConnectedDevices THEN
							deviceIndex := to_integer(writeTurnReg) + i - numConnectedDevices;
						END IF;

						IF writeReq(deviceIndex) = '1' THEN
							--Load registers to perform write operation
							nextTurn := deviceIndex + 1;
							IF nextTurn >= numConnectedDevices THEN
								nextTurn := 0;
							END IF;
							writeTurnReg_nxt        <= to_unsigned(nextTurn, 3);
							writeAddressReg_nxt     <= address(deviceIndex * 24 + 23 DOWNTO deviceIndex * 24) & '0'; --Multiply by 2
							writeBurstLengthReg_nxt <= unsigned(burstLength(deviceIndex * 9 + 8 DOWNTO deviceIndex * 9));
							writeByteMaskReg_nxt    <= byteMask(deviceIndex * 4 + 3 DOWNTO deviceIndex * 4);
							writeDeviceIndexReg_nxt <= to_unsigned(deviceIndex, 3);

							--Tell device to start sending data
							SDRAM_Ready(deviceIndex) <= '1';

							--Go to next state and start counter
							writeBufferWriteCountReset <= '1';
							writeBufferState_nxt       <= WRITE_BUFFER_RECEIVING;
							EXIT;
						END IF;

					END LOOP;
				END IF;

			WHEN WRITE_BUFFER_RECEIVING =>
				--Receiving Data
				deviceIndex := to_integer(writeDeviceIndexReg);
				data        := dataIn(deviceIndex * 32 + 31 DOWNTO deviceIndex * 32);

				writeBufferDataIn       <= data;
				writeBufferWriteAddress <= STD_LOGIC_VECTOR(writeBufferWriteCount);
				writeBufferWriteEnable  <= '1';

				IF to_integer(writeBufferWriteCount) >= to_integer(writeBurstLengthReg) THEN
					writeBufferState_nxt <= WRITE_BUFFER_IDLE;
					--Tell the other state machine to start writing the data to memory. Room for improvement here.
					writeBufferEmpty_nxt <= False;
				END IF;

			WHEN OTHERS =>
		END CASE;

		CASE readBufferState IS
			WHEN READ_BUFFER_IDLE =>
				IF readBufferEmpty = False THEN
					readBufferState_nxt                           <= READ_BUFFER_TRANSMITTING;
					readBufferReadCountReset                      <= '1';
					dataAvailable(to_integer(readDeviceIndexReg)) <= '1';
				END IF;

			WHEN READ_BUFFER_TRANSMITTING =>
				readBufferReadAddress <= STD_LOGIC_VECTOR(readBufferReadCount + 1);
				dataOut               <= readBufferDataOut;
				--Applying Byte Mask
				FOR i IN 0 TO 3 LOOP
					IF readByteMaskReg(i) = '0' THEN
						dataOut(8 * i + 7 DOWNTO 8 * i) <= (OTHERS => '0');
					END IF;
				END LOOP;

				IF to_integer(readBufferReadCount) >= to_integer(readBurstLengthReg) THEN
					readBufferState_nxt <= READ_BUFFER_IDLE;
					--Tell the other state machine that a new read can begin.
					readBufferEmpty_nxt <= True;
				END IF;

			WHEN OTHERS =>

		END CASE;

	END PROCESS;
	--Update registers that are managed by the system clock
	PROCESS (sysClk, reset)
		VARIABLE readBufferEmptyResetShiftRegVariable  : STD_LOGIC_VECTOR(1 DOWNTO 0);
		VARIABLE writeBufferEmptyResetShiftRegVariable : STD_LOGIC_VECTOR(1 DOWNTO 0);
	BEGIN
		IF reset = '1' THEN
			readBufferState               <= READ_BUFFER_IDLE;
			writeBufferState              <= WRITE_BUFFER_IDLE;
			writeAddressReg               <= (OTHERS => '0');
			writeTurnReg                  <= (OTHERS => '0');
			writeBurstLengthReg           <= (OTHERS => '0');
			writeByteMaskReg              <= (OTHERS => '0');
			writeDeviceIndexReg           <= (OTHERS => '0');
			readBufferEmptyResetShiftReg  <= (OTHERS => '0');
			writeBufferEmptyResetShiftReg <= (OTHERS => '0');
			writeBufferEmpty              <= True;
			readBufferEmpty               <= False;

		ELSIF rising_edge(sysClk) THEN
			IF enable = '1' THEN
				readBufferState     <= readBufferState_nxt;
				writeBufferState    <= writeBufferState_nxt;
				writeAddressReg     <= writeAddressReg_nxt;
				writeTurnReg        <= writeTurnReg_nxt;
				writeBurstLengthReg <= writeBurstLengthReg_nxt;
				writeByteMaskReg    <= writeByteMaskReg_nxt;
				writeDeviceIndexReg <= writeDeviceIndexReg_nxt;

				--Detecting rising edges of asynchronous reset signals
				writeBufferEmptyResetShiftRegVariable := writeBufferEmptyResetShiftReg(0) & writeBufferEmptyReset;
				IF writeBufferEmptyResetShiftRegVariable = "01" THEN
					writeBufferEmpty <= True;
				ELSE
					writeBufferEmpty <= writeBufferEmpty_nxt;
				END IF;
				writeBufferEmptyResetShiftReg <= writeBufferEmptyResetShiftRegVariable;

				readBufferEmptyResetShiftRegVariable := readBufferEmptyResetShiftReg(0) & readBufferEmptyReset;
				IF readBufferEmptyResetShiftRegVariable = "01" THEN
					readBufferEmpty <= False;
				ELSE
					readBufferEmpty <= readBufferEmpty_nxt;
				END IF;
				readBufferEmptyResetShiftReg <= readBufferEmptyResetShiftRegVariable;

			END IF;
		END IF;
	END PROCESS;

	--Update registers that are managed by the memory clock
	PROCESS (memClk, reset)
	BEGIN
		IF reset = '1' THEN
			controllerState            <= SDRAM_POWER_UP;
			addressReg                 <= (OTHERS => '0');
			burstLengthReg             <= (OTHERS => '0');
			byteMaskReg                <= (OTHERS => '0');
			readTurnReg                <= (OTHERS => '0');
			bufferOffsetReg            <= (OTHERS => '0');
			readBurstLengthReg         <= (OTHERS => '0');
			readByteMaskReg            <= (OTHERS => '0');
			readDeviceIndexReg         <= (OTHERS => '0');
			memoryOverflowInterruptReg <= '0';
			memOperationReg            <= WRITE;
			burstOverflowReg           <= False;
			readTmpReg                 <= (OTHERS => '0');

		ELSIF falling_edge(memClk) THEN
			IF enable = '1' THEN
				--General Registers
				controllerState  <= controllerState_nxt;
				addressReg       <= addressReg_nxt;
				burstLengthReg   <= burstLengthReg_nxt;
				byteMaskReg      <= byteMaskReg_nxt;
				memOperationReg  <= memOperationReg_nxt;
				burstOverflowReg <= burstOverflowReg_nxt;
				bufferOffsetReg  <= bufferOffsetReg_nxt;

				--Read Registers
				readTurnReg        <= readTurnReg_nxt;
				readBurstLengthReg <= readBurstLengthReg_nxt;
				readByteMaskReg    <= readByteMaskReg_nxt;
				readDeviceIndexReg <= readDeviceIndexReg_nxt;
				readTmpReg         <= readTmpReg_nxt;
				--Resetting Interrupt
				IF interruptReset = '1' THEN
					memoryOverflowInterruptReg <= '0';
				ELSE
					memoryOverflowInterruptReg <= memoryOverflowInterruptReg_nxt;
				END IF;
			END IF;
		END IF;

	END PROCESS;

END Behavioral;