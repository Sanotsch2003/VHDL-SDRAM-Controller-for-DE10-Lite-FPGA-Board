library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity tb_SdramController is
end tb_SdramController;

architecture bench of tb_SdramController is
    -- Declare signals for the SDRAM controller interface
    signal clk            : std_logic := '0';
    signal reset          : std_logic := '1';
    signal enable         : std_logic := '1';
    
    signal SDRAM_ADDR     : std_logic_vector(12 downto 0);
    signal SDRAM_DATA     : std_logic_vector(15 downto 0);
    signal SDRAM_BANK_ADDR: std_logic_vector(1 downto 0);
    signal SDRAM_BYTE_MASK: std_logic_vector(1 downto 0);
    signal SDRAM_RAS      : std_logic;
    signal SDRAM_CAS      : std_logic;
    signal SDRAM_CLK_EN   : std_logic;
    signal SDRAM_CLK      : std_logic;
    signal SDRAM_WRITE_EN : std_logic;
    signal SDRAM_CHIP_SEL : std_logic;

    
    signal stop_the_clock: boolean;
    constant clkPeriod : time := 10 ns;

    -- Declare the component for the SDRAM controller
component top is
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
        LEDs : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
    );
END component;

begin
    -- Instantiate the SDRAM Controller
    UUT: top
        generic map(
            numConnectedDevices => 1
        )
        port map (
            clk           => clk,
            reset         => reset,
            enable        => enable,
            SDRAM_ADDR    => SDRAM_ADDR,
            SDRAM_DATA    => SDRAM_DATA,
            SDRAM_BANK_ADDR=> SDRAM_BANK_ADDR,
            SDRAM_BYTE_MASK=> SDRAM_BYTE_MASK,
            SDRAM_RAS     => SDRAM_RAS,
            SDRAM_CAS     => SDRAM_CAS,
            SDRAM_CLK_EN  => SDRAM_CLK_EN,
            SDRAM_CLK     => SDRAM_CLK,
            SDRAM_WRITE_EN=> SDRAM_WRITE_EN,
            SDRAM_CHIP_SEL=> SDRAM_CHIP_SEL
        );
    
  stimulus: process
  begin

    -- Put initialisation code here
    enable <= '1';
    reset <= '1';
    wait for 5 ns;
    reset <= '0';
    wait for 5 ns;
    reset <= '1';
    wait for 5 ns;
    
    wait for 900000000ns;
 

    stop_the_clock <= true;
    
    
    wait;
  end process;
  
  sys_clocking: process
  begin
    while not stop_the_clock loop
      clk <= '0', '1' after clkPeriod / 2;
      wait for clkPeriod;
    end loop;
    wait;
  end process;

end;