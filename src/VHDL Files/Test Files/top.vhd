LIBRARY IEEE;
USE IEEE.Std_logic_1164.ALL;
USE IEEE.Numeric_Std.ALL;

ENTITY top IS
    GENERIC (
        numConnectedDevices : INTEGER := 1
    );
    PORT (
        -- System Signals
        clk    : IN STD_LOGIC;
        reset  : IN STD_LOGIC;
        enable : IN STD_LOGIC;

        -- SDRAM Interface
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

        --Status LEDs
        LEDs : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
END top;

ARCHITECTURE Behavioral OF top IS
    COMPONENT SdramController
        GENERIC (
            numConnectedDevices : INTEGER := 1; --max: 8

            --unit: nanoseconds
            memClkPeriod : INTEGER := 14;
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
    END COMPONENT;

    COMPONENT pllClockGenerator IS
        GENERIC (
            CLKFBOUT_MULT_F  : real := 10.0; -- Feedback multiplier
            CLKOUT0_DIVIDE_F : real := 7.0;  -- Divide factor
            CLKIN1_PERIOD    : real := 20.0  -- Input clock period (50 MHz)
        );
        PORT (
            clk_in  : IN STD_LOGIC;  -- 50 MHz input clock
            reset   : IN STD_LOGIC;  -- Reset signal
            clk_out : OUT STD_LOGIC; -- 142 MHz output clock
            locked  : OUT STD_LOGIC  -- Locked signal
        );
    END COMPONENT;
    --Signals 
    SIGNAL burstLength             : STD_LOGIC_VECTOR(numConnectedDevices * 9 - 1 DOWNTO 0);
    SIGNAL readReq                 : STD_LOGIC_VECTOR(numConnectedDevices - 1 DOWNTO 0);
    SIGNAL writeReq                : STD_LOGIC_VECTOR(numConnectedDevices - 1 DOWNTO 0);
    SIGNAL address                 : STD_LOGIC_VECTOR(numConnectedDevices * 24 - 1 DOWNTO 0);
    SIGNAL dataToRAM               : STD_LOGIC_VECTOR(numConnectedDevices * 32 - 1 DOWNTO 0);
    SIGNAL dataFromRAM             : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL byteMask                : STD_LOGIC_VECTOR(numConnectedDevices * 4 - 1 DOWNTO 0);
    SIGNAL SDRAM_Ready             : STD_LOGIC_VECTOR(numConnectedDevices - 1 DOWNTO 0);
    SIGNAL dataAvailable           : STD_LOGIC_VECTOR(numConnectedDevices - 1 DOWNTO 0);
    SIGNAL memoryOverflowInterrupt : STD_LOGIC;
    SIGNAL interruptReset          : STD_LOGIC;

    SIGNAL transmitCount      : unsigned(9 DOWNTO 0);
    SIGNAL transmitCountReset : STD_LOGIC;

    SIGNAL receiveCount      : unsigned(9 DOWNTO 0);
    SIGNAL receiveCountReset : STD_LOGIC;

    SIGNAL s_enable : STD_LOGIC;
    SIGNAL s_reset  : STD_LOGIC;
    SIGNAL locked   : STD_LOGIC;
    SIGNAL memClk   : STD_LOGIC;

    TYPE stateType IS (IDLE, START_TRANSMISSION, TRANSMIT, HALT, START_RECEIVING, RECEIVE, ERROR);
    SIGNAL state, state_nxt : stateType;

    CONSTANT c_WRITE_BURST_LENGTH : INTEGER := 64;
    CONSTANT c_WRITE_ADDRESS      : INTEGER := 5;
    CONSTANT c_READ_BURST_LENGTH  : INTEGER := 0;
    CONSTANT c_READ_ADDRESS       : INTEGER := 10;

    TYPE std_logic_vector_array IS ARRAY (NATURAL RANGE <>) OF STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL receivedData, receivedData_nxt : std_logic_vector_array(3 DOWNTO 0);

    SIGNAL LED_Reg, LED_Reg_nxt : STD_LOGIC_VECTOR(7 DOWNTO 0);
    --type std_logic_vector_array is array (natural range <>) of std_logic_vector(31 downto 0);
    --signal dataToTransmit,  : std_logic_vector_array(9 downto 0);

BEGIN
    LEDs     <= LED_REG;
    s_enable <= enable AND locked;
    s_reset  <= NOT reset;

    sdram_controller : SdramController
    GENERIC MAP(
        numConnectedDevices => numConnectedDevices
    )
    PORT MAP(
        memClk                  => memClk,
        sysClk                  => clk,
        reset                   => s_reset,
        enable                  => s_enable,
        SDRAM_ADDR              => SDRAM_ADDR,
        SDRAM_BANK_ADDR         => SDRAM_BANK_ADDR,
        SDRAM_BYTE_MASK         => SDRAM_BYTE_MASK,
        SDRAM_RAS               => SDRAM_RAS,
        SDRAM_CAS               => SDRAM_CAS,
        SDRAM_CLK_EN            => SDRAM_CLK_EN,
        SDRAM_CLK               => SDRAM_CLK,
        SDRAM_WRITE_EN          => SDRAM_WRITE_EN,
        SDRAM_CHIP_SEL          => SDRAM_CHIP_SEL,
        SDRAM_DATA              => SDRAM_DATA,
        burstLength             => burstLength,
        readReq                 => readReq,
        writeReq                => writeReq,
        address                 => address,
        dataIn                  => dataToRAM,
        dataOut                 => dataFromRAM,
        byteMask                => byteMask,
        SDRAM_Ready             => SDRAM_Ready,
        dataAvailable           => dataAvailable,
        memoryOverflowInterrupt => memoryOverflowInterrupt,
        interruptReset          => interruptReset
    );

    clock_generator : pllClockGenerator
    PORT MAP(
        clk_in  => clk,
        reset   => s_reset,
        clk_out => memClk,
        locked  => locked
    );

    stateMachine : PROCESS (state, SDRAM_Ready, transmitCount, dataAvailable, dataFromRAM, receiveCount, receivedData, LED_Reg)
    BEGIN
        --default assignments
        state_nxt          <= state;
        receivedData_nxt   <= receivedData;
        LED_Reg_nxt        <= LED_Reg;
        transmitCountReset <= '0';
        receiveCountReset  <= '0';
        writeReq           <= "0";
        readReq            <= "0";
        burstLength        <= (OTHERS => '0');
        address            <= (OTHERS => '0');
        byteMask           <= (OTHERS => '0');
        dataToRAM          <= (OTHERS => '0');

        CASE state IS
            WHEN IDLE =>
                state_nxt <= START_TRANSMISSION;

            WHEN START_TRANSMISSION =>
                writeReq    <= "1";
                burstLength <= STD_LOGIC_VECTOR(to_unsigned(c_WRITE_BURST_LENGTH, 9));
                address     <= STD_LOGIC_VECTOR(to_unsigned(c_WRITE_ADDRESS, 24));
                byteMask    <= "1111";
                IF SDRAM_Ready = "1" THEN
                    state_nxt          <= TRANSMIT;
                    transmitCountReset <= '1';
                END IF;

            WHEN TRANSMIT =>
                IF transmitCount >= c_WRITE_BURST_LENGTH THEN
                    state_nxt <= START_RECEIVING;
                END IF;
                dataToRam(31 DOWNTO 0) <= STD_LOGIC_VECTOR(to_unsigned(to_integer(transmitCount), 32));

            WHEN START_RECEIVING =>
                readReq     <= "1";
                burstLength <= STD_LOGIC_VECTOR(to_unsigned(c_READ_BURST_LENGTH, 9));
                address     <= STD_LOGIC_VECTOR(to_unsigned(c_READ_ADDRESS, 24));
                byteMask    <= "1111";

                IF dataAvailable = "1" THEN
                    state_nxt         <= RECEIVE;
                    receiveCountReset <= '1';
                END IF;

            WHEN RECEIVE =>
                --                IF to_integer(receiveCount) = c_READ_BURST_LENGTH THEN
                --                    state_nxt <= ERROR;
                --                END IF;
                --                IF to_integer(receiveCount) >= c_READ_BURST_LENGTH THEN
                --                    state_nxt <= HALT;
                --                END IF;
                state_nxt   <= HALT;
                LED_Reg_nxt <= dataFromRam(7 DOWNTO 0);
                --receivedData_nxt(to_integer(receiveCount)) <= dataFromRAM;

            WHEN ERROR =>
                LED_REG_nxt <= "10101010";

            WHEN HALT =>
                NULL;
                --LED_REG_nxt <= "11111111";
                --LED_REG_nxt <= receivedData(0)(7 downto 0);
                --FOR i IN 0 TO 3 LOOP
                --IF receivedData(i) /= x"00000000" THEN
                --LED_Reg_nxt <= x"55";
                --END IF;
                --END LOOP;

            WHEN OTHERS =>
                NULL;
        END CASE;

    END PROCESS;
    counter : PROCESS (clk, s_reset)
    BEGIN
        IF s_reset = '1' THEN
            transmitCount <= (OTHERS => '0');
            receiveCount  <= (OTHERS => '0');
        ELSIF rising_edge(clk) THEN
            IF s_enable = '1' THEN
                transmitCount <= transmitCount + 1;
                receiveCount  <= receiveCount + 1;
                IF transmitCountReset = '1' THEN
                    transmitCount <= (OTHERS => '0');
                END IF;
                IF receiveCountReset = '1' THEN
                    receiveCount <= (OTHERS => '0');
                END IF;
            END IF;
        END IF;

    END PROCESS;

    PROCESS (clk, s_reset)
    BEGIN
        IF s_reset = '1' THEN
            state          <= IDLE;
            interruptReset <= '0';
            receivedData   <= (OTHERS => (OTHERS => '0'));
            LED_Reg        <= (OTHERS => '0');

        ELSIF rising_edge(clk) THEN
            IF s_enable = '1' THEN
                state        <= state_nxt;
                receivedData <= receivedData_nxt;
                LED_Reg      <= LED_Reg_nxt;
                IF memoryOverflowInterrupt = '1' THEN
                    interruptReset <= '1';
                END IF;
            END IF;
        END IF;
    END PROCESS;
END Behavioral;