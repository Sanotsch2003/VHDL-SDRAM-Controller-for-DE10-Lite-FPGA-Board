library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity top is
    generic (
        numConnectedDevices : integer := 1
    );
    port (
        -- System Signals
        memClk   : in std_logic;
        sysClk   : in std_logic;
        reset    : in std_logic;
        enable   : in std_logic;

        -- SDRAM Interface
        SDRAM_ADDR      : out std_logic_vector(12 downto 0);
        SDRAM_DATA      : inout std_logic_vector(15 downto 0);
        SDRAM_BANK_ADDR : out std_logic_vector(1 downto 0);
        SDRAM_BYTE_MASK : out std_logic_vector(1 downto 0);
        SDRAM_RAS       : out std_logic;
        SDRAM_CAS       : out std_logic;
        SDRAM_CLK_EN    : out std_logic;
        SDRAM_CLK       : out std_logic;
        SDRAM_WRITE_EN  : out std_logic;
        SDRAM_CHIP_SEL  : out std_logic
    );
end top;

architecture Behavioral of top is
    component SdramController
        generic (
			numConnectedDevices : integer := 1; --max: 8
			
			--unit: nanoseconds
			memClkPeriod : integer := 7; 
			sysClkPeriod : integer := 20;
			
			--unit: cycles
			t_cac			: integer:=3;
			t_rcd			: integer:=3;
			t_rac			: integer:=6;
			t_rc			: integer:=9;
			t_ras			: integer:=6;
			t_rp			: integer:=3;
			t_rdd			: integer:=2;
			t_ccd			: integer:=1;
			t_dpl			: integer:=2;
			t_dal			: integer:=5;
			t_rbd			: integer:=3;
			t_wbd			: integer:=0;
			t_rql			: integer:=3;
			t_wdl			: integer:=0;
			t_mrd			: integer:=2
			);
        port (
            --System Signals
              memClk 				: in std_logic;
              sysClk				: in std_logic;
              reset					: in std_logic;
              enable				: in std_logic;
              
              --SDRAM Signal
              SDRAM_ADDR			: out std_logic_vector(12 downto 0);
              SDRAM_DATA			: inout std_logic_vector(15 downto 0);
              SDRAM_BANK_ADDR		: out std_logic_vector(1 downto 0);
              SDRAM_BYTE_MASK		: out std_logic_vector(1 downto 0);
              SDRAM_RAS				: out std_logic;
              SDRAM_CAS				: out std_logic;
              SDRAM_CLK_EN			: out std_logic;
              SDRAM_CLK				: out std_logic;
              SDRAM_WRITE_EN		: out std_logic;
              SDRAM_CHIP_SEL		: out std_logic;
              
              --Controller Signals
              burstLength			: in std_logic_vector(numConnectedDevices*9-1 downto 0);
              readReq				: in std_logic_vector(numConnectedDevices-1 downto 0);
              writeReq				: in std_logic_vector(numConnectedDevices-1 downto 0);
              address				: in std_logic_vector(numConnectedDevices*25-1 downto 0);
              dataIn				: in std_logic_vector(numConnectedDevices*32-1 downto 0);
              dataOut				: out std_logic_vector(31 downto 0);
              byteMask				: in std_logic_vector(numConnectedDevices*4-1 downto 0);
              SDRAM_Ready           : out std_logic_vector(numConnectedDevices-1 downto 0);
              dataAvailable         : out std_logic_vector(numConnectedDevices-1 downto 0);
		  
              memoryOverflowInterrupt:out std_logic;
              interruptReset        : in std_logic
        );
    end component;
    
    
    --Signals 
    signal burstLength              : std_logic_vector(numConnectedDevices*9-1 downto 0);
    signal readReq                  : std_logic_vector(numConnectedDevices-1 downto 0);
    signal writeReq                 : std_logic_vector(numConnectedDevices-1 downto 0);
    signal address                  : std_logic_vector(numConnectedDevices*25-1 downto 0);
    signal dataToRAM                : std_logic_vector(numConnectedDevices*32-1 downto 0);
    signal dataFromRAM              : std_logic_vector(31 downto 0);
    signal byteMask                 : std_logic_vector(numConnectedDevices*4-1 downto 0);
    signal SDRAM_Ready              : std_logic_vector(numConnectedDevices-1 downto 0);
    signal dataAvailable            : std_logic_vector(numConnectedDevices-1 downto 0);
    signal memoryOverflowInterrupt  : std_logic;
    signal interruptReset           : std_logic;
    
    signal transmitCount : unsigned(5 downto 0);
    signal transmitCountReset : std_logic;
    
    type stateType is (IDLE, START_TRANSMISSION, TRANSMIT, HALT, START_RECEIVING, RECEIVE);
    signal state, state_nxt : stateType;
    
    constant c_BURST_LENGTH : integer := 5;
    constant c_STARTING_ADDRESS : integer := 1;
    
    
    --type std_logic_vector_array is array (natural range <>) of std_logic_vector(31 downto 0);
    --signal dataToTransmit,  : std_logic_vector_array(9 downto 0);

begin
    sdram_controller : SdramController
        generic map (
            numConnectedDevices => numConnectedDevices
        )
        port map (
            memClk => memClk,
            sysClk => sysClk,
            reset => reset,
            enable => enable,
            SDRAM_ADDR => SDRAM_ADDR,
            SDRAM_BANK_ADDR => SDRAM_BANK_ADDR,
            SDRAM_BYTE_MASK => SDRAM_BYTE_MASK,
            SDRAM_RAS => SDRAM_RAS,
            SDRAM_CAS => SDRAM_CAS,
            SDRAM_CLK_EN => SDRAM_CLK_EN,
            SDRAM_CLK => SDRAM_CLK,
            SDRAM_WRITE_EN => SDRAM_WRITE_EN,
            SDRAM_CHIP_SEL => SDRAM_CHIP_SEL,
            SDRAM_DATA => SDRAM_DATA,
            burstLength => burstLength,
            readReq => readReq,
            writeReq => writeReq,
            address => address,
            dataIn => dataToRAM,
            dataOut => dataFromRAM,
            byteMask => byteMask,
            SDRAM_Ready => SDRAM_Ready,
            dataAvailable => dataAvailable,
            memoryOverflowInterrupt => memoryOverflowInterrupt,
            interruptReset => interruptReset
        );
        
     stateMachine : process(state, SDRAM_Ready, transmitCount, dataAvailable)
     begin
        --default assignments
        state_nxt <= state;
        transmitCountReset <= '0';
        writeReq        <= "0";
        readReq         <= "0";
        burstLength     <= (others => '0');
        address         <= (others => '0');
        byteMask        <= (others => '0');
        dataToRAM       <= (others => '0');
        
        case state is
            when IDLE =>
                state_nxt <= START_TRANSMISSION;
            
            when START_TRANSMISSION =>
                writeReq        <= "1";
                burstLength     <= std_logic_vector(to_unsigned(c_BURST_LENGTH, 9));
                address         <= std_logic_vector(to_unsigned(c_STARTING_ADDRESS, 25));
                byteMask        <= "1111";
                if SDRAM_Ready = "1" then
                    state_nxt <= TRANSMIT;
                    transmitCountReset <= '1';
                end if;
            
            when TRANSMIT =>
                if transmitCount >= c_BURST_LENGTH then
                    state_nxt <= START_RECEIVING;
                end if;
                dataToRam <= std_logic_vector(to_unsigned(to_integer(transmitCount) + 3, 32));
            
            when START_RECEIVING =>
                readReq         <= "1";
                burstLength     <= std_logic_vector(to_unsigned(c_BURST_LENGTH, 9));
                address         <= std_logic_vector(to_unsigned(c_STARTING_ADDRESS, 25));
                byteMask        <= "1111";
                
                if dataAvailable = "1" then
                    state_nxt <= RECEIVE;
                    transmitCountReset <= '1';
                end if;
                
            when RECEIVE =>
                null;
            
            when HALT =>
                null;
            
            when others =>
                null;
        end case;
     
     end process;
     
     
     counter : process(sysClk, reset)
     begin
        if reset = '1' then
            transmitCount <= (others => '0');
        elsif rising_edge(sysClk) then
            transmitCount <= transmitCount + 1;
            if transmitCountReset = '1' then
                transmitCount <= (others => '0');
            end if;
        end if;
     
     end process;
        
     process(sysClk, reset)
     begin
        if reset = '1' then
            state <= IDLE;
            interruptReset <= '0';
            
        elsif rising_edge(sysClk) then
            state <= state_nxt;
            if memoryOverflowInterrupt = '1' then
                interruptReset <= '1';
            end if;
        
        end if;
     end process;
end Behavioral;
