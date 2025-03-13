-- Copyright (C) 2024  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"

-- DATE "03/13/2025 17:26:42"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	enable : IN std_logic;
	SDRAM_ADDR : OUT std_logic_vector(12 DOWNTO 0);
	SDRAM_DATA : INOUT std_logic_vector(15 DOWNTO 0);
	SDRAM_BANK_ADDR : OUT std_logic_vector(1 DOWNTO 0);
	SDRAM_BYTE_MASK : OUT std_logic_vector(1 DOWNTO 0);
	SDRAM_RAS : OUT std_logic;
	SDRAM_CAS : OUT std_logic;
	SDRAM_CLK_EN : OUT std_logic;
	SDRAM_CLK : OUT std_logic;
	SDRAM_WRITE_EN : OUT std_logic;
	SDRAM_CHIP_SEL : OUT std_logic;
	LEDs : OUT std_logic_vector(7 DOWNTO 0)
	);
END top;

-- Design Ports Information
-- SDRAM_ADDR[0]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_ADDR[1]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_ADDR[2]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_ADDR[3]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_ADDR[4]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_ADDR[5]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_ADDR[6]	=>  Location: PIN_T19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_ADDR[7]	=>  Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_ADDR[8]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_ADDR[9]	=>  Location: PIN_P19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_ADDR[10]	=>  Location: PIN_T20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_ADDR[11]	=>  Location: PIN_P20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_ADDR[12]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_BANK_ADDR[0]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_BANK_ADDR[1]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_BYTE_MASK[0]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_BYTE_MASK[1]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_RAS	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_CAS	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_CLK_EN	=>  Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_CLK	=>  Location: PIN_L14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_WRITE_EN	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_CHIP_SEL	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDs[0]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDs[1]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDs[2]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDs[3]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDs[4]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDs[5]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDs[6]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDs[7]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_DATA[0]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_DATA[1]	=>  Location: PIN_Y20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_DATA[2]	=>  Location: PIN_AA22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_DATA[3]	=>  Location: PIN_AA21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_DATA[4]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_DATA[5]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_DATA[6]	=>  Location: PIN_W20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_DATA[7]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_DATA[8]	=>  Location: PIN_P21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_DATA[9]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_DATA[10]	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_DATA[11]	=>  Location: PIN_H22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_DATA[12]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_DATA[13]	=>  Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_DATA[14]	=>  Location: PIN_G19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SDRAM_DATA[15]	=>  Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- reset	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- enable	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_SDRAM_ADDR : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_SDRAM_BANK_ADDR : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_SDRAM_BYTE_MASK : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_SDRAM_RAS : std_logic;
SIGNAL ww_SDRAM_CAS : std_logic;
SIGNAL ww_SDRAM_CLK_EN : std_logic;
SIGNAL ww_SDRAM_CLK : std_logic;
SIGNAL ww_SDRAM_WRITE_EN : std_logic;
SIGNAL ww_SDRAM_CHIP_SEL : std_logic;
SIGNAL ww_LEDs : std_logic_vector(7 DOWNTO 0);
SIGNAL \clock_generator|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \clock_generator|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clock_generator|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SDRAM_DATA[8]~input_o\ : std_logic;
SIGNAL \SDRAM_DATA[9]~input_o\ : std_logic;
SIGNAL \SDRAM_DATA[10]~input_o\ : std_logic;
SIGNAL \SDRAM_DATA[11]~input_o\ : std_logic;
SIGNAL \SDRAM_DATA[12]~input_o\ : std_logic;
SIGNAL \SDRAM_DATA[13]~input_o\ : std_logic;
SIGNAL \SDRAM_DATA[14]~input_o\ : std_logic;
SIGNAL \SDRAM_DATA[15]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_TDO~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \~ALTERA_TDO~~obuf_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \sdram_controller|writeBufferWriteCount[0]~9_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \clock_generator|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \clock_generator|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \sdram_controller|controllerState.SDRAM_POWER_UP~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|stateCycleCount[0]~17_combout\ : std_logic;
SIGNAL \sdram_controller|stateCycleCount[1]~20\ : std_logic;
SIGNAL \sdram_controller|stateCycleCount[2]~21_combout\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \clock_generator|altpll_component|auto_generated|wire_pll1_locked\ : std_logic;
SIGNAL \clock_generator|altpll_component|auto_generated|pll_lock_sync~feeder_combout\ : std_logic;
SIGNAL \clock_generator|altpll_component|auto_generated|pll_lock_sync~q\ : std_logic;
SIGNAL \s_enable~0_combout\ : std_logic;
SIGNAL \sdram_controller|stateCycleCount[2]~22\ : std_logic;
SIGNAL \sdram_controller|stateCycleCount[3]~23_combout\ : std_logic;
SIGNAL \sdram_controller|stateCycleCount[3]~24\ : std_logic;
SIGNAL \sdram_controller|stateCycleCount[4]~25_combout\ : std_logic;
SIGNAL \sdram_controller|stateCycleCount[4]~26\ : std_logic;
SIGNAL \sdram_controller|stateCycleCount[5]~27_combout\ : std_logic;
SIGNAL \sdram_controller|stateCycleCount[5]~28\ : std_logic;
SIGNAL \sdram_controller|stateCycleCount[6]~29_combout\ : std_logic;
SIGNAL \sdram_controller|stateCycleCount[6]~30\ : std_logic;
SIGNAL \sdram_controller|stateCycleCount[7]~31_combout\ : std_logic;
SIGNAL \sdram_controller|stateCycleCount[7]~32\ : std_logic;
SIGNAL \sdram_controller|stateCycleCount[8]~33_combout\ : std_logic;
SIGNAL \sdram_controller|stateCycleCount[8]~34\ : std_logic;
SIGNAL \sdram_controller|stateCycleCount[9]~35_combout\ : std_logic;
SIGNAL \sdram_controller|stateCycleCount[9]~36\ : std_logic;
SIGNAL \sdram_controller|stateCycleCount[10]~37_combout\ : std_logic;
SIGNAL \sdram_controller|stateCycleCount[10]~38\ : std_logic;
SIGNAL \sdram_controller|stateCycleCount[11]~39_combout\ : std_logic;
SIGNAL \sdram_controller|stateCycleCount[11]~40\ : std_logic;
SIGNAL \sdram_controller|stateCycleCount[12]~41_combout\ : std_logic;
SIGNAL \sdram_controller|stateCycleCount[12]~42\ : std_logic;
SIGNAL \sdram_controller|stateCycleCount[13]~43_combout\ : std_logic;
SIGNAL \sdram_controller|stateCycleCount[13]~44\ : std_logic;
SIGNAL \sdram_controller|stateCycleCount[14]~45_combout\ : std_logic;
SIGNAL \sdram_controller|stateCycleCount[14]~46\ : std_logic;
SIGNAL \sdram_controller|stateCycleCount[15]~47_combout\ : std_logic;
SIGNAL \sdram_controller|stateCycleCount[15]~48\ : std_logic;
SIGNAL \sdram_controller|stateCycleCount[16]~49_combout\ : std_logic;
SIGNAL \sdram_controller|LessThan10~0_combout\ : std_logic;
SIGNAL \sdram_controller|LessThan0~0_combout\ : std_logic;
SIGNAL \sdram_controller|LessThan0~1_combout\ : std_logic;
SIGNAL \sdram_controller|LessThan0~2_combout\ : std_logic;
SIGNAL \sdram_controller|LessThan0~3_combout\ : std_logic;
SIGNAL \sdram_controller|Selector0~6_combout\ : std_logic;
SIGNAL \sdram_controller|burstLengthReg[0]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|memOperationReg~0_combout\ : std_logic;
SIGNAL \sdram_controller|memOperationReg~q\ : std_logic;
SIGNAL \sdram_controller|controllerState~22_combout\ : std_logic;
SIGNAL \sdram_controller|LessThan10~1_combout\ : std_logic;
SIGNAL \sdram_controller|Equal1~3_combout\ : std_logic;
SIGNAL \sdram_controller|writeAddressReg[1]~0_combout\ : std_logic;
SIGNAL \sdram_controller|burstLengthReg[7]~0_combout\ : std_logic;
SIGNAL \sdram_controller|Equal1~0_combout\ : std_logic;
SIGNAL \sdram_controller|process_1~9_combout\ : std_logic;
SIGNAL \sdram_controller|controllerState~15_combout\ : std_logic;
SIGNAL \sdram_controller|controllerState~16_combout\ : std_logic;
SIGNAL \sdram_controller|controllerState~17_combout\ : std_logic;
SIGNAL \sdram_controller|refreshCount[0]~31_combout\ : std_logic;
SIGNAL \sdram_controller|refreshCount[23]~37_combout\ : std_logic;
SIGNAL \sdram_controller|refreshCount[0]~32\ : std_logic;
SIGNAL \sdram_controller|refreshCount[1]~33_combout\ : std_logic;
SIGNAL \sdram_controller|refreshCount[1]~34\ : std_logic;
SIGNAL \sdram_controller|refreshCount[2]~35_combout\ : std_logic;
SIGNAL \sdram_controller|refreshCount[2]~36\ : std_logic;
SIGNAL \sdram_controller|refreshCount[3]~38_combout\ : std_logic;
SIGNAL \sdram_controller|refreshCount[3]~39\ : std_logic;
SIGNAL \sdram_controller|refreshCount[4]~40_combout\ : std_logic;
SIGNAL \sdram_controller|refreshCount[4]~41\ : std_logic;
SIGNAL \sdram_controller|refreshCount[5]~42_combout\ : std_logic;
SIGNAL \sdram_controller|refreshCount[5]~43\ : std_logic;
SIGNAL \sdram_controller|refreshCount[6]~44_combout\ : std_logic;
SIGNAL \sdram_controller|refreshCount[6]~45\ : std_logic;
SIGNAL \sdram_controller|refreshCount[7]~46_combout\ : std_logic;
SIGNAL \sdram_controller|refreshCount[7]~47\ : std_logic;
SIGNAL \sdram_controller|refreshCount[8]~48_combout\ : std_logic;
SIGNAL \sdram_controller|refreshCount[8]~49\ : std_logic;
SIGNAL \sdram_controller|refreshCount[9]~50_combout\ : std_logic;
SIGNAL \sdram_controller|refreshCount[9]~51\ : std_logic;
SIGNAL \sdram_controller|refreshCount[10]~52_combout\ : std_logic;
SIGNAL \sdram_controller|refreshCount[10]~53\ : std_logic;
SIGNAL \sdram_controller|refreshCount[11]~54_combout\ : std_logic;
SIGNAL \sdram_controller|refreshCount[11]~55\ : std_logic;
SIGNAL \sdram_controller|refreshCount[12]~56_combout\ : std_logic;
SIGNAL \sdram_controller|refreshCount[12]~57\ : std_logic;
SIGNAL \sdram_controller|refreshCount[13]~58_combout\ : std_logic;
SIGNAL \sdram_controller|refreshCount[13]~59\ : std_logic;
SIGNAL \sdram_controller|refreshCount[14]~60_combout\ : std_logic;
SIGNAL \sdram_controller|refreshCount[14]~61\ : std_logic;
SIGNAL \sdram_controller|refreshCount[15]~62_combout\ : std_logic;
SIGNAL \sdram_controller|refreshCount[15]~63\ : std_logic;
SIGNAL \sdram_controller|refreshCount[16]~64_combout\ : std_logic;
SIGNAL \sdram_controller|refreshCount[16]~65\ : std_logic;
SIGNAL \sdram_controller|refreshCount[17]~66_combout\ : std_logic;
SIGNAL \sdram_controller|refreshCount[17]~67\ : std_logic;
SIGNAL \sdram_controller|refreshCount[18]~68_combout\ : std_logic;
SIGNAL \sdram_controller|refreshCount[18]~69\ : std_logic;
SIGNAL \sdram_controller|refreshCount[19]~70_combout\ : std_logic;
SIGNAL \sdram_controller|Equal15~5_combout\ : std_logic;
SIGNAL \sdram_controller|refreshCount[19]~71\ : std_logic;
SIGNAL \sdram_controller|refreshCount[20]~72_combout\ : std_logic;
SIGNAL \sdram_controller|refreshCount[20]~73\ : std_logic;
SIGNAL \sdram_controller|refreshCount[21]~74_combout\ : std_logic;
SIGNAL \sdram_controller|refreshCount[21]~75\ : std_logic;
SIGNAL \sdram_controller|refreshCount[22]~76_combout\ : std_logic;
SIGNAL \sdram_controller|refreshCount[22]~77\ : std_logic;
SIGNAL \sdram_controller|refreshCount[23]~78_combout\ : std_logic;
SIGNAL \sdram_controller|Equal15~6_combout\ : std_logic;
SIGNAL \sdram_controller|refreshCount[23]~79\ : std_logic;
SIGNAL \sdram_controller|refreshCount[24]~80_combout\ : std_logic;
SIGNAL \sdram_controller|refreshCount[24]~81\ : std_logic;
SIGNAL \sdram_controller|refreshCount[25]~82_combout\ : std_logic;
SIGNAL \sdram_controller|refreshCount[25]~83\ : std_logic;
SIGNAL \sdram_controller|refreshCount[26]~84_combout\ : std_logic;
SIGNAL \sdram_controller|refreshCount[26]~85\ : std_logic;
SIGNAL \sdram_controller|refreshCount[27]~86_combout\ : std_logic;
SIGNAL \sdram_controller|refreshCount[27]~87\ : std_logic;
SIGNAL \sdram_controller|refreshCount[28]~88_combout\ : std_logic;
SIGNAL \sdram_controller|refreshCount[28]~89\ : std_logic;
SIGNAL \sdram_controller|refreshCount[29]~90_combout\ : std_logic;
SIGNAL \sdram_controller|refreshCount[29]~91\ : std_logic;
SIGNAL \sdram_controller|refreshCount[30]~92_combout\ : std_logic;
SIGNAL \sdram_controller|Equal15~7_combout\ : std_logic;
SIGNAL \sdram_controller|Equal15~8_combout\ : std_logic;
SIGNAL \sdram_controller|Equal15~3_combout\ : std_logic;
SIGNAL \sdram_controller|Equal15~1_combout\ : std_logic;
SIGNAL \sdram_controller|Equal15~2_combout\ : std_logic;
SIGNAL \sdram_controller|Equal15~0_combout\ : std_logic;
SIGNAL \sdram_controller|Equal15~4_combout\ : std_logic;
SIGNAL \sdram_controller|Equal15~9_combout\ : std_logic;
SIGNAL \sdram_controller|refreshPending~0_combout\ : std_logic;
SIGNAL \sdram_controller|refreshPending~q\ : std_logic;
SIGNAL \sdram_controller|controllerState~21_combout\ : std_logic;
SIGNAL \sdram_controller|controllerState.SDRAM_AUTO_REFRESH~q\ : std_logic;
SIGNAL \sdram_controller|controllerState~18_combout\ : std_logic;
SIGNAL \sdram_controller|Selector0~1_combout\ : std_logic;
SIGNAL \sdram_controller|Equal1~1_combout\ : std_logic;
SIGNAL \sdram_controller|Selector0~0_combout\ : std_logic;
SIGNAL \sdram_controller|Selector0~2_combout\ : std_logic;
SIGNAL \sdram_controller|controllerState~26_combout\ : std_logic;
SIGNAL \sdram_controller|controllerState.SDRAM_INIT~0_combout\ : std_logic;
SIGNAL \sdram_controller|controllerState.SDRAM_INIT~q\ : std_logic;
SIGNAL \sdram_controller|LessThan1~0_combout\ : std_logic;
SIGNAL \sdram_controller|LessThan1~1_combout\ : std_logic;
SIGNAL \sdram_controller|controllerState~27_combout\ : std_logic;
SIGNAL \sdram_controller|controllerState~23_combout\ : std_logic;
SIGNAL \state.IDLE~feeder_combout\ : std_logic;
SIGNAL \state.RECEIVE~q\ : std_logic;
SIGNAL \transmitCount[0]~10_combout\ : std_logic;
SIGNAL \transmitCount[0]~11\ : std_logic;
SIGNAL \transmitCount[1]~12_combout\ : std_logic;
SIGNAL \transmitCount[1]~13\ : std_logic;
SIGNAL \transmitCount[2]~14_combout\ : std_logic;
SIGNAL \transmitCount[2]~15\ : std_logic;
SIGNAL \transmitCount[3]~16_combout\ : std_logic;
SIGNAL \transmitCount[3]~17\ : std_logic;
SIGNAL \transmitCount[4]~18_combout\ : std_logic;
SIGNAL \transmitCount[4]~19\ : std_logic;
SIGNAL \transmitCount[5]~20_combout\ : std_logic;
SIGNAL \transmitCount[5]~21\ : std_logic;
SIGNAL \transmitCount[6]~22_combout\ : std_logic;
SIGNAL \transmitCount[6]~23\ : std_logic;
SIGNAL \transmitCount[7]~24_combout\ : std_logic;
SIGNAL \transmitCount[7]~25\ : std_logic;
SIGNAL \transmitCount[8]~26_combout\ : std_logic;
SIGNAL \transmitCount[8]~27\ : std_logic;
SIGNAL \transmitCount[9]~28_combout\ : std_logic;
SIGNAL \state~12_combout\ : std_logic;
SIGNAL \state~15_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferReadCountReset~0_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferState~q\ : std_logic;
SIGNAL \state~11_combout\ : std_logic;
SIGNAL \state~16_combout\ : std_logic;
SIGNAL \state.HALT~q\ : std_logic;
SIGNAL \state~13_combout\ : std_logic;
SIGNAL \state~14_combout\ : std_logic;
SIGNAL \state.IDLE~q\ : std_logic;
SIGNAL \state.START_TRANSMISSION~0_combout\ : std_logic;
SIGNAL \state.START_TRANSMISSION~q\ : std_logic;
SIGNAL \state.TRANSMIT~q\ : std_logic;
SIGNAL \state.START_RECEIVING~q\ : std_logic;
SIGNAL \sdram_controller|controllerState~24_combout\ : std_logic;
SIGNAL \sdram_controller|controllerState~25_combout\ : std_logic;
SIGNAL \sdram_controller|controllerState~28_combout\ : std_logic;
SIGNAL \sdram_controller|controllerState.SDRAM_READ~q\ : std_logic;
SIGNAL \sdram_controller|LessThan7~0_combout\ : std_logic;
SIGNAL \sdram_controller|Equal12~0_combout\ : std_logic;
SIGNAL \sdram_controller|LessThan15~0_combout\ : std_logic;
SIGNAL \sdram_controller|LessThan15~1_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferEmptyReset~0_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferEmpty~3_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferEmpty~2_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferEmpty~q\ : std_logic;
SIGNAL \sdram_controller|readDeviceIndexReg[0]~0_combout\ : std_logic;
SIGNAL \sdram_controller|addressReg[1]~0_combout\ : std_logic;
SIGNAL \sdram_controller|SDRAM_DATA[15]~0_combout\ : std_logic;
SIGNAL \sdram_controller|LessThan8~0_combout\ : std_logic;
SIGNAL \sdram_controller|Selector0~3_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferWriteEnable~0_combout\ : std_logic;
SIGNAL \sdram_controller|LessThan7~1_combout\ : std_logic;
SIGNAL \sdram_controller|Selector0~4_combout\ : std_logic;
SIGNAL \sdram_controller|Selector0~5_combout\ : std_logic;
SIGNAL \sdram_controller|Selector0~7_combout\ : std_logic;
SIGNAL \sdram_controller|Selector0~8_combout\ : std_logic;
SIGNAL \sdram_controller|stateCycleCount[0]~18\ : std_logic;
SIGNAL \sdram_controller|stateCycleCount[1]~19_combout\ : std_logic;
SIGNAL \sdram_controller|Equal1~2_combout\ : std_logic;
SIGNAL \sdram_controller|Equal1~4_combout\ : std_logic;
SIGNAL \sdram_controller|controllerState~14_combout\ : std_logic;
SIGNAL \sdram_controller|controllerState.SDRAM_IDLE~2_combout\ : std_logic;
SIGNAL \sdram_controller|controllerState~19_combout\ : std_logic;
SIGNAL \sdram_controller|controllerState~12_combout\ : std_logic;
SIGNAL \sdram_controller|controllerState~13_combout\ : std_logic;
SIGNAL \sdram_controller|controllerState~20_combout\ : std_logic;
SIGNAL \sdram_controller|controllerState.SDRAM_POWER_UP~q\ : std_logic;
SIGNAL \sdram_controller|controllerState.SDRAM_IDLE~3_combout\ : std_logic;
SIGNAL \sdram_controller|controllerState.SDRAM_IDLE~q\ : std_logic;
SIGNAL \sdram_controller|readDeviceIndexReg[0]~1_combout\ : std_logic;
SIGNAL \sdram_controller|controllerState.SDRAM_ACTIVATE_ROW~q\ : std_logic;
SIGNAL \sdram_controller|controllerState~29_combout\ : std_logic;
SIGNAL \sdram_controller|controllerState.SDRAM_WRITE~q\ : std_logic;
SIGNAL \sdram_controller|writeBufferEmpty~2_combout\ : std_logic;
SIGNAL \sdram_controller|LessThan12~0_combout\ : std_logic;
SIGNAL \sdram_controller|LessThan12~1_combout\ : std_logic;
SIGNAL \sdram_controller|Selector27~0_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferEmpty~4_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferEmpty~3_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferEmpty~q\ : std_logic;
SIGNAL \sdram_controller|SDRAM_Ready[0]~0_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferWriteCount[0]~10\ : std_logic;
SIGNAL \sdram_controller|writeBufferWriteCount[1]~11_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferWriteCount[1]~12\ : std_logic;
SIGNAL \sdram_controller|writeBufferWriteCount[2]~13_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferWriteCount[2]~14\ : std_logic;
SIGNAL \sdram_controller|writeBufferWriteCount[3]~15_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferWriteCount[3]~16\ : std_logic;
SIGNAL \sdram_controller|writeBufferWriteCount[4]~17_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferWriteCount[4]~18\ : std_logic;
SIGNAL \sdram_controller|writeBufferWriteCount[5]~19_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferWriteCount[5]~20\ : std_logic;
SIGNAL \sdram_controller|writeBufferWriteCount[6]~21_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferWriteCount[6]~22\ : std_logic;
SIGNAL \sdram_controller|writeBufferWriteCount[7]~23_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferWriteCount[7]~24\ : std_logic;
SIGNAL \sdram_controller|writeBufferWriteCount[8]~25_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferState~0_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferState~1_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferState~q\ : std_logic;
SIGNAL \sdram_controller|writeBufferDataIn[0]~0_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferWriteAddress[0]~0_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferWriteAddress[1]~1_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferWriteAddress[2]~2_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferWriteAddress[3]~3_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferWriteAddress[4]~4_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferWriteAddress[5]~5_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferWriteAddress[6]~6_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferWriteAddress[7]~7_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferWriteAddress[8]~8_combout\ : std_logic;
SIGNAL \sdram_controller|Add14~1\ : std_logic;
SIGNAL \sdram_controller|Add14~3_combout\ : std_logic;
SIGNAL \sdram_controller|Add14~5_combout\ : std_logic;
SIGNAL \sdram_controller|Add14~4\ : std_logic;
SIGNAL \sdram_controller|Add14~6_combout\ : std_logic;
SIGNAL \sdram_controller|Add14~8_combout\ : std_logic;
SIGNAL \sdram_controller|Add14~7\ : std_logic;
SIGNAL \sdram_controller|Add14~9_combout\ : std_logic;
SIGNAL \sdram_controller|Add14~11_combout\ : std_logic;
SIGNAL \sdram_controller|Add14~10\ : std_logic;
SIGNAL \sdram_controller|Add14~12_combout\ : std_logic;
SIGNAL \sdram_controller|Add14~14_combout\ : std_logic;
SIGNAL \sdram_controller|Add14~13\ : std_logic;
SIGNAL \sdram_controller|Add14~15_combout\ : std_logic;
SIGNAL \sdram_controller|Add14~17_combout\ : std_logic;
SIGNAL \sdram_controller|Add14~16\ : std_logic;
SIGNAL \sdram_controller|Add14~18_combout\ : std_logic;
SIGNAL \sdram_controller|Add14~20_combout\ : std_logic;
SIGNAL \sdram_controller|Add14~19\ : std_logic;
SIGNAL \sdram_controller|Add14~21_combout\ : std_logic;
SIGNAL \sdram_controller|Add14~23_combout\ : std_logic;
SIGNAL \sdram_controller|Add14~22\ : std_logic;
SIGNAL \sdram_controller|Add14~24_combout\ : std_logic;
SIGNAL \sdram_controller|Add14~26_combout\ : std_logic;
SIGNAL \sdram_controller|Add14~25\ : std_logic;
SIGNAL \sdram_controller|Add14~27_combout\ : std_logic;
SIGNAL \sdram_controller|Add14~29_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferDataIn[1]~1_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferDataIn[2]~2_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferDataIn[3]~3_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferDataIn[4]~4_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferDataIn[5]~5_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferDataIn[6]~6_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferDataIn[7]~7_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferDataIn[8]~8_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferDataIn[9]~9_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \sdram_controller|Add14~0_combout\ : std_logic;
SIGNAL \sdram_controller|Add14~2_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferInstance|readUpperBytesReg~q\ : std_logic;
SIGNAL \sdram_controller|writeBufferInstance|dataOut[0]~0_combout\ : std_logic;
SIGNAL \sdram_controller|SDRAM_DATA[15]~17_combout\ : std_logic;
SIGNAL \sdram_controller|SDRAM_DATA[15]~18_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \sdram_controller|writeBufferInstance|dataOut[1]~1_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \sdram_controller|writeBufferInstance|dataOut[2]~2_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \sdram_controller|writeBufferInstance|dataOut[3]~3_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \sdram_controller|writeBufferInstance|dataOut[4]~4_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \sdram_controller|writeBufferInstance|dataOut[5]~5_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \sdram_controller|writeBufferInstance|dataOut[6]~6_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \sdram_controller|writeBufferInstance|dataOut[7]~7_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \sdram_controller|writeBufferInstance|dataOut[8]~8_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \sdram_controller|writeBufferInstance|dataOut[9]~9_combout\ : std_logic;
SIGNAL \sdram_controller|process_1~0_combout\ : std_logic;
SIGNAL \sdram_controller|Equal10~0_combout\ : std_logic;
SIGNAL \sdram_controller|Equal10~1_combout\ : std_logic;
SIGNAL \sdram_controller|process_1~1_combout\ : std_logic;
SIGNAL \sdram_controller|process_1~2_combout\ : std_logic;
SIGNAL \sdram_controller|process_1~4_combout\ : std_logic;
SIGNAL \sdram_controller|process_1~3_combout\ : std_logic;
SIGNAL \sdram_controller|process_1~5_combout\ : std_logic;
SIGNAL \sdram_controller|process_1~6_combout\ : std_logic;
SIGNAL \sdram_controller|process_1~7_combout\ : std_logic;
SIGNAL \sdram_controller|process_1~8_combout\ : std_logic;
SIGNAL \sdram_controller|LessThan10~2_combout\ : std_logic;
SIGNAL \sdram_controller|LessThan10~3_combout\ : std_logic;
SIGNAL \sdram_controller|LessThan10~4_combout\ : std_logic;
SIGNAL \sdram_controller|Selector24~0_combout\ : std_logic;
SIGNAL \sdram_controller|addressReg_nxt~0_combout\ : std_logic;
SIGNAL \sdram_controller|Equal11~0_combout\ : std_logic;
SIGNAL \sdram_controller|Selector23~0_combout\ : std_logic;
SIGNAL \sdram_controller|Selector10~0_combout\ : std_logic;
SIGNAL \sdram_controller|Selector23~1_combout\ : std_logic;
SIGNAL \sdram_controller|Selector23~2_combout\ : std_logic;
SIGNAL \sdram_controller|addressReg[2]~1_combout\ : std_logic;
SIGNAL \sdram_controller|Selector22~0_combout\ : std_logic;
SIGNAL \sdram_controller|Selector21~0_combout\ : std_logic;
SIGNAL \sdram_controller|Equal14~3_combout\ : std_logic;
SIGNAL \sdram_controller|Equal14~2_combout\ : std_logic;
SIGNAL \sdram_controller|Selector12~1_combout\ : std_logic;
SIGNAL \sdram_controller|Equal12~1_combout\ : std_logic;
SIGNAL \sdram_controller|Equal12~2_combout\ : std_logic;
SIGNAL \sdram_controller|Selector12~2_combout\ : std_logic;
SIGNAL \sdram_controller|Equal13~0_combout\ : std_logic;
SIGNAL \sdram_controller|Equal13~1_combout\ : std_logic;
SIGNAL \sdram_controller|Selector9~0_combout\ : std_logic;
SIGNAL \sdram_controller|Selector12~0_combout\ : std_logic;
SIGNAL \sdram_controller|Selector12~3_combout\ : std_logic;
SIGNAL \sdram_controller|byteMaskReg[0]~0_combout\ : std_logic;
SIGNAL \sdram_controller|Selector26~0_combout\ : std_logic;
SIGNAL \sdram_controller|Selector9~2_combout\ : std_logic;
SIGNAL \sdram_controller|Selector9~1_combout\ : std_logic;
SIGNAL \sdram_controller|Selector9~3_combout\ : std_logic;
SIGNAL \sdram_controller|Selector21~1_combout\ : std_logic;
SIGNAL \sdram_controller|Selector10~1_combout\ : std_logic;
SIGNAL \sdram_controller|Selector10~2_combout\ : std_logic;
SIGNAL \sdram_controller|Selector11~2_combout\ : std_logic;
SIGNAL \sdram_controller|Selector11~3_combout\ : std_logic;
SIGNAL \sdram_controller|s_command~0_combout\ : std_logic;
SIGNAL \sdram_controller|Selector11~5_combout\ : std_logic;
SIGNAL \sdram_controller|Selector11~4_combout\ : std_logic;
SIGNAL \LED_Reg[0]~0_combout\ : std_logic;
SIGNAL \sdram_controller|Add22~0_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferWriteEnable~1_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferWriteEnable~2_combout\ : std_logic;
SIGNAL \SDRAM_DATA[0]~input_o\ : std_logic;
SIGNAL \sdram_controller|readBufferDataIn[0]~0_combout\ : std_logic;
SIGNAL \sdram_controller|Add22~1\ : std_logic;
SIGNAL \sdram_controller|Add22~2_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferWriteAddress[0]~0_combout\ : std_logic;
SIGNAL \sdram_controller|Add22~3\ : std_logic;
SIGNAL \sdram_controller|Add22~4_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferWriteAddress[1]~1_combout\ : std_logic;
SIGNAL \sdram_controller|Add22~5\ : std_logic;
SIGNAL \sdram_controller|Add22~6_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferWriteAddress[2]~2_combout\ : std_logic;
SIGNAL \sdram_controller|Add22~7\ : std_logic;
SIGNAL \sdram_controller|Add22~8_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferWriteAddress[3]~3_combout\ : std_logic;
SIGNAL \sdram_controller|Add22~9\ : std_logic;
SIGNAL \sdram_controller|Add22~10_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferWriteAddress[4]~4_combout\ : std_logic;
SIGNAL \sdram_controller|Add22~11\ : std_logic;
SIGNAL \sdram_controller|Add22~12_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferWriteAddress[5]~5_combout\ : std_logic;
SIGNAL \sdram_controller|Add22~13\ : std_logic;
SIGNAL \sdram_controller|Add22~14_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferWriteAddress[6]~6_combout\ : std_logic;
SIGNAL \sdram_controller|Add22~15\ : std_logic;
SIGNAL \sdram_controller|Add22~16_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferWriteAddress[7]~7_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \sdram_controller|readBufferReadCount~18_combout\ : std_logic;
SIGNAL \sdram_controller|Add27~0_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferReadAddress[0]~0_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferReadCount~19_combout\ : std_logic;
SIGNAL \sdram_controller|Add27~1\ : std_logic;
SIGNAL \sdram_controller|Add27~2_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferReadAddress[1]~1_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferReadCount~20_combout\ : std_logic;
SIGNAL \sdram_controller|Add27~3\ : std_logic;
SIGNAL \sdram_controller|Add27~4_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferReadAddress[2]~2_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferReadCount~21_combout\ : std_logic;
SIGNAL \sdram_controller|Add27~5\ : std_logic;
SIGNAL \sdram_controller|Add27~6_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferReadAddress[3]~3_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferReadCount~22_combout\ : std_logic;
SIGNAL \sdram_controller|Add27~7\ : std_logic;
SIGNAL \sdram_controller|Add27~8_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferReadAddress[4]~4_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferReadCount~23_combout\ : std_logic;
SIGNAL \sdram_controller|Add27~9\ : std_logic;
SIGNAL \sdram_controller|Add27~10_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferReadAddress[5]~5_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferReadCount~24_combout\ : std_logic;
SIGNAL \sdram_controller|Add27~11\ : std_logic;
SIGNAL \sdram_controller|Add27~12_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferReadAddress[6]~6_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferReadCount~25_combout\ : std_logic;
SIGNAL \sdram_controller|Add27~13\ : std_logic;
SIGNAL \sdram_controller|Add27~14_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferReadAddress[7]~7_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferReadCount~26_combout\ : std_logic;
SIGNAL \sdram_controller|Add27~15\ : std_logic;
SIGNAL \sdram_controller|Add27~16_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferReadAddress[8]~8_combout\ : std_logic;
SIGNAL \SDRAM_DATA[1]~input_o\ : std_logic;
SIGNAL \sdram_controller|readBufferDataIn[1]~1_combout\ : std_logic;
SIGNAL \SDRAM_DATA[2]~input_o\ : std_logic;
SIGNAL \sdram_controller|readBufferDataIn[2]~2_combout\ : std_logic;
SIGNAL \SDRAM_DATA[3]~input_o\ : std_logic;
SIGNAL \sdram_controller|readBufferDataIn[3]~3_combout\ : std_logic;
SIGNAL \SDRAM_DATA[4]~input_o\ : std_logic;
SIGNAL \sdram_controller|readBufferDataIn[4]~4_combout\ : std_logic;
SIGNAL \SDRAM_DATA[5]~input_o\ : std_logic;
SIGNAL \sdram_controller|readBufferDataIn[5]~5_combout\ : std_logic;
SIGNAL \SDRAM_DATA[6]~input_o\ : std_logic;
SIGNAL \sdram_controller|readBufferDataIn[6]~6_combout\ : std_logic;
SIGNAL \SDRAM_DATA[7]~input_o\ : std_logic;
SIGNAL \sdram_controller|readBufferDataIn[7]~7_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \LED_Reg[0]~1_combout\ : std_logic;
SIGNAL \sdram_controller|readDeviceIndexReg[0]~2_combout\ : std_logic;
SIGNAL \sdram_controller|readByteMaskReg[0]~0_combout\ : std_logic;
SIGNAL \LED_Reg[0]~2_combout\ : std_logic;
SIGNAL \LED_Reg[0]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \LED_Reg[1]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \LED_Reg[2]~3_combout\ : std_logic;
SIGNAL \LED_Reg[2]~4_combout\ : std_logic;
SIGNAL \LED_Reg[2]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \LED_Reg[3]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|dataOut[6]~0_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \LED_Reg[4]~5_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \LED_Reg[5]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \LED_Reg[6]~6_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferReadCount\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \sdram_controller|writeBufferEmptyResetShiftReg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \sdram_controller|readBufferEmptyResetShiftReg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL transmitCount : std_logic_vector(9 DOWNTO 0);
SIGNAL \sdram_controller|stateCycleCount\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \sdram_controller|byteMaskReg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sdram_controller|refreshCount\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \sdram_controller|writeBufferWriteCount\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \sdram_controller|addressReg\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \sdram_controller|burstLengthReg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL LED_Reg : std_logic_vector(7 DOWNTO 0);
SIGNAL \sdram_controller|writeAddressReg\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \clock_generator|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \sdram_controller|readByteMaskReg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \sdram_controller|ALT_INV_SDRAM_DATA[15]~18_combout\ : std_logic;
SIGNAL \sdram_controller|ALT_INV_Selector26~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_enable <= enable;
SDRAM_ADDR <= ww_SDRAM_ADDR;
SDRAM_BANK_ADDR <= ww_SDRAM_BANK_ADDR;
SDRAM_BYTE_MASK <= ww_SDRAM_BYTE_MASK;
SDRAM_RAS <= ww_SDRAM_RAS;
SDRAM_CAS <= ww_SDRAM_CAS;
SDRAM_CLK_EN <= ww_SDRAM_CLK_EN;
SDRAM_CLK <= ww_SDRAM_CLK;
SDRAM_WRITE_EN <= ww_SDRAM_WRITE_EN;
SDRAM_CHIP_SEL <= ww_SDRAM_CHIP_SEL;
LEDs <= ww_LEDs;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock_generator|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk~input_o\);

\clock_generator|altpll_component|auto_generated|wire_pll1_clk\(0) <= \clock_generator|altpll_component|auto_generated|pll1_CLK_bus\(0);
\clock_generator|altpll_component|auto_generated|wire_pll1_clk\(1) <= \clock_generator|altpll_component|auto_generated|pll1_CLK_bus\(1);
\clock_generator|altpll_component|auto_generated|wire_pll1_clk\(2) <= \clock_generator|altpll_component|auto_generated|pll1_CLK_bus\(2);
\clock_generator|altpll_component|auto_generated|wire_pll1_clk\(3) <= \clock_generator|altpll_component|auto_generated|pll1_CLK_bus\(3);
\clock_generator|altpll_component|auto_generated|wire_pll1_clk\(4) <= \clock_generator|altpll_component|auto_generated|pll1_CLK_bus\(4);

\sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \sdram_controller|readBufferDataIn[7]~7_combout\ & 
\sdram_controller|readBufferDataIn[6]~6_combout\ & \sdram_controller|readBufferDataIn[5]~5_combout\ & \sdram_controller|readBufferDataIn[4]~4_combout\ & \sdram_controller|readBufferDataIn[3]~3_combout\ & \sdram_controller|readBufferDataIn[2]~2_combout\ & 
\sdram_controller|readBufferDataIn[1]~1_combout\ & \sdram_controller|readBufferDataIn[0]~0_combout\);

\sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\~GND~combout\ & \sdram_controller|readBufferWriteAddress[7]~7_combout\ & \sdram_controller|readBufferWriteAddress[6]~6_combout\ & 
\sdram_controller|readBufferWriteAddress[5]~5_combout\ & \sdram_controller|readBufferWriteAddress[4]~4_combout\ & \sdram_controller|readBufferWriteAddress[3]~3_combout\ & \sdram_controller|readBufferWriteAddress[2]~2_combout\ & 
\sdram_controller|readBufferWriteAddress[1]~1_combout\ & \sdram_controller|readBufferWriteAddress[0]~0_combout\);

\sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\sdram_controller|readBufferReadAddress[8]~8_combout\ & \sdram_controller|readBufferReadAddress[7]~7_combout\ & 
\sdram_controller|readBufferReadAddress[6]~6_combout\ & \sdram_controller|readBufferReadAddress[5]~5_combout\ & \sdram_controller|readBufferReadAddress[4]~4_combout\ & \sdram_controller|readBufferReadAddress[3]~3_combout\ & 
\sdram_controller|readBufferReadAddress[2]~2_combout\ & \sdram_controller|readBufferReadAddress[1]~1_combout\ & \sdram_controller|readBufferReadAddress[0]~0_combout\);

\sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a1\ <= \sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a2\ <= \sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a3\ <= \sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a4\ <= \sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a5\ <= \sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a6\ <= \sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a7\ <= \sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \sdram_controller|writeBufferDataIn[9]~9_combout\ & 
\sdram_controller|writeBufferDataIn[8]~8_combout\ & \sdram_controller|writeBufferDataIn[7]~7_combout\ & \sdram_controller|writeBufferDataIn[6]~6_combout\ & \sdram_controller|writeBufferDataIn[5]~5_combout\ & 
\sdram_controller|writeBufferDataIn[4]~4_combout\ & \sdram_controller|writeBufferDataIn[3]~3_combout\ & \sdram_controller|writeBufferDataIn[2]~2_combout\ & \sdram_controller|writeBufferDataIn[1]~1_combout\ & 
\sdram_controller|writeBufferDataIn[0]~0_combout\);

\sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\sdram_controller|writeBufferWriteAddress[8]~8_combout\ & \sdram_controller|writeBufferWriteAddress[7]~7_combout\ & 
\sdram_controller|writeBufferWriteAddress[6]~6_combout\ & \sdram_controller|writeBufferWriteAddress[5]~5_combout\ & \sdram_controller|writeBufferWriteAddress[4]~4_combout\ & \sdram_controller|writeBufferWriteAddress[3]~3_combout\ & 
\sdram_controller|writeBufferWriteAddress[2]~2_combout\ & \sdram_controller|writeBufferWriteAddress[1]~1_combout\ & \sdram_controller|writeBufferWriteAddress[0]~0_combout\);

\sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\sdram_controller|Add14~29_combout\ & \sdram_controller|Add14~26_combout\ & \sdram_controller|Add14~23_combout\ & \sdram_controller|Add14~20_combout\
& \sdram_controller|Add14~17_combout\ & \sdram_controller|Add14~14_combout\ & \sdram_controller|Add14~11_combout\ & \sdram_controller|Add14~8_combout\ & \sdram_controller|Add14~5_combout\);

\sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a1\ <= \sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a2\ <= \sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a3\ <= \sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a4\ <= \sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a5\ <= \sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a6\ <= \sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a7\ <= \sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a8\ <= \sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a9\ <= \sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\clock_generator|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_generator|altpll_component|auto_generated|wire_pll1_clk\(0));

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ <= NOT \clock_generator|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\sdram_controller|ALT_INV_SDRAM_DATA[15]~18_combout\ <= NOT \sdram_controller|SDRAM_DATA[15]~18_combout\;
\sdram_controller|ALT_INV_Selector26~0_combout\ <= NOT \sdram_controller|Selector26~0_combout\;

-- Location: IOOBUF_X78_Y3_N16
\SDRAM_ADDR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|Selector24~0_combout\,
	devoe => ww_devoe,
	o => ww_SDRAM_ADDR(0));

-- Location: IOOBUF_X78_Y16_N24
\SDRAM_ADDR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|Selector23~2_combout\,
	devoe => ww_devoe,
	o => ww_SDRAM_ADDR(1));

-- Location: IOOBUF_X78_Y15_N23
\SDRAM_ADDR[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|Selector22~0_combout\,
	devoe => ww_devoe,
	o => ww_SDRAM_ADDR(2));

-- Location: IOOBUF_X78_Y3_N23
\SDRAM_ADDR[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|Selector21~0_combout\,
	devoe => ww_devoe,
	o => ww_SDRAM_ADDR(3));

-- Location: IOOBUF_X78_Y15_N16
\SDRAM_ADDR[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|Selector22~0_combout\,
	devoe => ww_devoe,
	o => ww_SDRAM_ADDR(4));

-- Location: IOOBUF_X78_Y20_N16
\SDRAM_ADDR[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|Selector24~0_combout\,
	devoe => ww_devoe,
	o => ww_SDRAM_ADDR(5));

-- Location: IOOBUF_X78_Y20_N24
\SDRAM_ADDR[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SDRAM_ADDR(6));

-- Location: IOOBUF_X78_Y24_N24
\SDRAM_ADDR[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SDRAM_ADDR(7));

-- Location: IOOBUF_X78_Y24_N16
\SDRAM_ADDR[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SDRAM_ADDR(8));

-- Location: IOOBUF_X78_Y24_N9
\SDRAM_ADDR[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SDRAM_ADDR(9));

-- Location: IOOBUF_X78_Y20_N9
\SDRAM_ADDR[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|Selector12~3_combout\,
	devoe => ww_devoe,
	o => ww_SDRAM_ADDR(10));

-- Location: IOOBUF_X78_Y24_N2
\SDRAM_ADDR[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SDRAM_ADDR(11));

-- Location: IOOBUF_X78_Y20_N2
\SDRAM_ADDR[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SDRAM_ADDR(12));

-- Location: IOOBUF_X78_Y18_N9
\SDRAM_BANK_ADDR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SDRAM_BANK_ADDR(0));

-- Location: IOOBUF_X78_Y18_N2
\SDRAM_BANK_ADDR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SDRAM_BANK_ADDR(1));

-- Location: IOOBUF_X78_Y17_N2
\SDRAM_BYTE_MASK[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|ALT_INV_Selector26~0_combout\,
	devoe => ww_devoe,
	o => ww_SDRAM_BYTE_MASK(0));

-- Location: IOOBUF_X78_Y30_N2
\SDRAM_BYTE_MASK[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|ALT_INV_Selector26~0_combout\,
	devoe => ww_devoe,
	o => ww_SDRAM_BYTE_MASK(1));

-- Location: IOOBUF_X78_Y21_N16
\SDRAM_RAS~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|Selector9~3_combout\,
	devoe => ww_devoe,
	o => ww_SDRAM_RAS);

-- Location: IOOBUF_X78_Y21_N23
\SDRAM_CAS~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|Selector10~2_combout\,
	devoe => ww_devoe,
	o => ww_SDRAM_CAS);

-- Location: IOOBUF_X78_Y23_N2
\SDRAM_CLK_EN~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_SDRAM_CLK_EN);

-- Location: IOOBUF_X78_Y36_N24
\SDRAM_CLK~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clock_generator|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_SDRAM_CLK);

-- Location: IOOBUF_X78_Y17_N23
\SDRAM_WRITE_EN~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|Selector11~4_combout\,
	devoe => ww_devoe,
	o => ww_SDRAM_WRITE_EN);

-- Location: IOOBUF_X78_Y17_N16
\SDRAM_CHIP_SEL~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SDRAM_CHIP_SEL);

-- Location: IOOBUF_X46_Y54_N2
\LEDs[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => LED_Reg(0),
	devoe => ww_devoe,
	o => ww_LEDs(0));

-- Location: IOOBUF_X46_Y54_N23
\LEDs[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => LED_Reg(1),
	devoe => ww_devoe,
	o => ww_LEDs(1));

-- Location: IOOBUF_X51_Y54_N16
\LEDs[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => LED_Reg(2),
	devoe => ww_devoe,
	o => ww_LEDs(2));

-- Location: IOOBUF_X46_Y54_N9
\LEDs[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => LED_Reg(3),
	devoe => ww_devoe,
	o => ww_LEDs(3));

-- Location: IOOBUF_X56_Y54_N30
\LEDs[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => LED_Reg(4),
	devoe => ww_devoe,
	o => ww_LEDs(4));

-- Location: IOOBUF_X58_Y54_N23
\LEDs[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => LED_Reg(5),
	devoe => ww_devoe,
	o => ww_LEDs(5));

-- Location: IOOBUF_X66_Y54_N23
\LEDs[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => LED_Reg(6),
	devoe => ww_devoe,
	o => ww_LEDs(6));

-- Location: IOOBUF_X56_Y54_N9
\LEDs[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => LED_Reg(7),
	devoe => ww_devoe,
	o => ww_LEDs(7));

-- Location: IOOBUF_X78_Y16_N2
\SDRAM_DATA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|writeBufferInstance|dataOut[0]~0_combout\,
	oe => \sdram_controller|SDRAM_DATA[15]~18_combout\,
	devoe => ww_devoe,
	o => SDRAM_DATA(0));

-- Location: IOOBUF_X78_Y16_N9
\SDRAM_DATA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|writeBufferInstance|dataOut[1]~1_combout\,
	oe => \sdram_controller|SDRAM_DATA[15]~18_combout\,
	devoe => ww_devoe,
	o => SDRAM_DATA(1));

-- Location: IOOBUF_X78_Y3_N2
\SDRAM_DATA[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|writeBufferInstance|dataOut[2]~2_combout\,
	oe => \sdram_controller|SDRAM_DATA[15]~18_combout\,
	devoe => ww_devoe,
	o => SDRAM_DATA(2));

-- Location: IOOBUF_X78_Y3_N9
\SDRAM_DATA[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|writeBufferInstance|dataOut[3]~3_combout\,
	oe => \sdram_controller|SDRAM_DATA[15]~18_combout\,
	devoe => ww_devoe,
	o => SDRAM_DATA(3));

-- Location: IOOBUF_X78_Y15_N9
\SDRAM_DATA[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|writeBufferInstance|dataOut[4]~4_combout\,
	oe => \sdram_controller|SDRAM_DATA[15]~18_combout\,
	devoe => ww_devoe,
	o => SDRAM_DATA(4));

-- Location: IOOBUF_X78_Y15_N2
\SDRAM_DATA[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|writeBufferInstance|dataOut[5]~5_combout\,
	oe => \sdram_controller|SDRAM_DATA[15]~18_combout\,
	devoe => ww_devoe,
	o => SDRAM_DATA(5));

-- Location: IOOBUF_X78_Y16_N16
\SDRAM_DATA[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|writeBufferInstance|dataOut[6]~6_combout\,
	oe => \sdram_controller|SDRAM_DATA[15]~18_combout\,
	devoe => ww_devoe,
	o => SDRAM_DATA(6));

-- Location: IOOBUF_X78_Y17_N9
\SDRAM_DATA[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|writeBufferInstance|dataOut[7]~7_combout\,
	oe => \sdram_controller|SDRAM_DATA[15]~18_combout\,
	devoe => ww_devoe,
	o => SDRAM_DATA(7));

-- Location: IOOBUF_X78_Y23_N9
\SDRAM_DATA[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|writeBufferInstance|dataOut[8]~8_combout\,
	oe => \sdram_controller|SDRAM_DATA[15]~18_combout\,
	devoe => ww_devoe,
	o => SDRAM_DATA(8));

-- Location: IOOBUF_X78_Y30_N9
\SDRAM_DATA[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|writeBufferInstance|dataOut[9]~9_combout\,
	oe => \sdram_controller|SDRAM_DATA[15]~18_combout\,
	devoe => ww_devoe,
	o => SDRAM_DATA(9));

-- Location: IOOBUF_X78_Y29_N2
\SDRAM_DATA[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|ALT_INV_SDRAM_DATA[15]~18_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => SDRAM_DATA(10));

-- Location: IOOBUF_X78_Y29_N9
\SDRAM_DATA[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|ALT_INV_SDRAM_DATA[15]~18_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => SDRAM_DATA(11));

-- Location: IOOBUF_X78_Y31_N9
\SDRAM_DATA[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|ALT_INV_SDRAM_DATA[15]~18_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => SDRAM_DATA(12));

-- Location: IOOBUF_X78_Y31_N23
\SDRAM_DATA[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|ALT_INV_SDRAM_DATA[15]~18_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => SDRAM_DATA(13));

-- Location: IOOBUF_X78_Y31_N16
\SDRAM_DATA[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|ALT_INV_SDRAM_DATA[15]~18_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => SDRAM_DATA(14));

-- Location: IOOBUF_X78_Y31_N2
\SDRAM_DATA[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|ALT_INV_SDRAM_DATA[15]~18_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => SDRAM_DATA(15));

-- Location: IOIBUF_X34_Y0_N29
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G19
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X55_Y27_N10
\sdram_controller|writeBufferWriteCount[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferWriteCount[0]~9_combout\ = \sdram_controller|writeBufferWriteCount\(0) $ (VCC)
-- \sdram_controller|writeBufferWriteCount[0]~10\ = CARRY(\sdram_controller|writeBufferWriteCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(0),
	datad => VCC,
	combout => \sdram_controller|writeBufferWriteCount[0]~9_combout\,
	cout => \sdram_controller|writeBufferWriteCount[0]~10\);

-- Location: IOIBUF_X46_Y54_N29
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: PLL_1
\clock_generator|altpll_component|auto_generated|pll1\ : fiftyfivenm_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 4,
	c0_initial => 1,
	c0_low => 3,
	c0_mode => "odd",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 7,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 10,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 10,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 250,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => \ALT_INV_reset~input_o\,
	fbin => \clock_generator|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \clock_generator|altpll_component|auto_generated|pll1_INCLK_bus\,
	locked => \clock_generator|altpll_component|auto_generated|wire_pll1_locked\,
	fbout => \clock_generator|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \clock_generator|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G18
\clock_generator|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_generator|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_generator|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X55_Y30_N22
\sdram_controller|controllerState.SDRAM_POWER_UP~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|controllerState.SDRAM_POWER_UP~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \sdram_controller|controllerState.SDRAM_POWER_UP~feeder_combout\);

-- Location: LCCOMB_X56_Y31_N16
\sdram_controller|stateCycleCount[0]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|stateCycleCount[0]~17_combout\ = \sdram_controller|stateCycleCount\(0) $ (VCC)
-- \sdram_controller|stateCycleCount[0]~18\ = CARRY(\sdram_controller|stateCycleCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|stateCycleCount\(0),
	datad => VCC,
	combout => \sdram_controller|stateCycleCount[0]~17_combout\,
	cout => \sdram_controller|stateCycleCount[0]~18\);

-- Location: LCCOMB_X56_Y31_N18
\sdram_controller|stateCycleCount[1]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|stateCycleCount[1]~19_combout\ = (\sdram_controller|stateCycleCount\(1) & (!\sdram_controller|stateCycleCount[0]~18\)) # (!\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|stateCycleCount[0]~18\) # (GND)))
-- \sdram_controller|stateCycleCount[1]~20\ = CARRY((!\sdram_controller|stateCycleCount[0]~18\) # (!\sdram_controller|stateCycleCount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datad => VCC,
	cin => \sdram_controller|stateCycleCount[0]~18\,
	combout => \sdram_controller|stateCycleCount[1]~19_combout\,
	cout => \sdram_controller|stateCycleCount[1]~20\);

-- Location: LCCOMB_X56_Y31_N20
\sdram_controller|stateCycleCount[2]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|stateCycleCount[2]~21_combout\ = (\sdram_controller|stateCycleCount\(2) & (\sdram_controller|stateCycleCount[1]~20\ $ (GND))) # (!\sdram_controller|stateCycleCount\(2) & (!\sdram_controller|stateCycleCount[1]~20\ & VCC))
-- \sdram_controller|stateCycleCount[2]~22\ = CARRY((\sdram_controller|stateCycleCount\(2) & !\sdram_controller|stateCycleCount[1]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|stateCycleCount\(2),
	datad => VCC,
	cin => \sdram_controller|stateCycleCount[1]~20\,
	combout => \sdram_controller|stateCycleCount[2]~21_combout\,
	cout => \sdram_controller|stateCycleCount[2]~22\);

-- Location: IOIBUF_X51_Y54_N29
\enable~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: LCCOMB_X51_Y30_N28
\clock_generator|altpll_component|auto_generated|pll_lock_sync~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_generator|altpll_component|auto_generated|pll_lock_sync~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \clock_generator|altpll_component|auto_generated|pll_lock_sync~feeder_combout\);

-- Location: FF_X51_Y30_N29
\clock_generator|altpll_component|auto_generated|pll_lock_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|wire_pll1_locked\,
	d => \clock_generator|altpll_component|auto_generated|pll_lock_sync~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_generator|altpll_component|auto_generated|pll_lock_sync~q\);

-- Location: LCCOMB_X54_Y30_N14
\s_enable~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s_enable~0_combout\ = (\enable~input_o\ & (\clock_generator|altpll_component|auto_generated|wire_pll1_locked\ & \clock_generator|altpll_component|auto_generated|pll_lock_sync~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \clock_generator|altpll_component|auto_generated|wire_pll1_locked\,
	datad => \clock_generator|altpll_component|auto_generated|pll_lock_sync~q\,
	combout => \s_enable~0_combout\);

-- Location: FF_X56_Y31_N21
\sdram_controller|stateCycleCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|stateCycleCount[2]~21_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|Selector0~8_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|stateCycleCount\(2));

-- Location: LCCOMB_X56_Y31_N22
\sdram_controller|stateCycleCount[3]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|stateCycleCount[3]~23_combout\ = (\sdram_controller|stateCycleCount\(3) & (!\sdram_controller|stateCycleCount[2]~22\)) # (!\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|stateCycleCount[2]~22\) # (GND)))
-- \sdram_controller|stateCycleCount[3]~24\ = CARRY((!\sdram_controller|stateCycleCount[2]~22\) # (!\sdram_controller|stateCycleCount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(3),
	datad => VCC,
	cin => \sdram_controller|stateCycleCount[2]~22\,
	combout => \sdram_controller|stateCycleCount[3]~23_combout\,
	cout => \sdram_controller|stateCycleCount[3]~24\);

-- Location: FF_X56_Y31_N23
\sdram_controller|stateCycleCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|stateCycleCount[3]~23_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|Selector0~8_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|stateCycleCount\(3));

-- Location: LCCOMB_X56_Y31_N24
\sdram_controller|stateCycleCount[4]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|stateCycleCount[4]~25_combout\ = (\sdram_controller|stateCycleCount\(4) & (\sdram_controller|stateCycleCount[3]~24\ $ (GND))) # (!\sdram_controller|stateCycleCount\(4) & (!\sdram_controller|stateCycleCount[3]~24\ & VCC))
-- \sdram_controller|stateCycleCount[4]~26\ = CARRY((\sdram_controller|stateCycleCount\(4) & !\sdram_controller|stateCycleCount[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(4),
	datad => VCC,
	cin => \sdram_controller|stateCycleCount[3]~24\,
	combout => \sdram_controller|stateCycleCount[4]~25_combout\,
	cout => \sdram_controller|stateCycleCount[4]~26\);

-- Location: FF_X56_Y31_N25
\sdram_controller|stateCycleCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|stateCycleCount[4]~25_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|Selector0~8_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|stateCycleCount\(4));

-- Location: LCCOMB_X56_Y31_N26
\sdram_controller|stateCycleCount[5]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|stateCycleCount[5]~27_combout\ = (\sdram_controller|stateCycleCount\(5) & (!\sdram_controller|stateCycleCount[4]~26\)) # (!\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|stateCycleCount[4]~26\) # (GND)))
-- \sdram_controller|stateCycleCount[5]~28\ = CARRY((!\sdram_controller|stateCycleCount[4]~26\) # (!\sdram_controller|stateCycleCount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(5),
	datad => VCC,
	cin => \sdram_controller|stateCycleCount[4]~26\,
	combout => \sdram_controller|stateCycleCount[5]~27_combout\,
	cout => \sdram_controller|stateCycleCount[5]~28\);

-- Location: FF_X56_Y31_N27
\sdram_controller|stateCycleCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|stateCycleCount[5]~27_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|Selector0~8_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|stateCycleCount\(5));

-- Location: LCCOMB_X56_Y31_N28
\sdram_controller|stateCycleCount[6]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|stateCycleCount[6]~29_combout\ = (\sdram_controller|stateCycleCount\(6) & (\sdram_controller|stateCycleCount[5]~28\ $ (GND))) # (!\sdram_controller|stateCycleCount\(6) & (!\sdram_controller|stateCycleCount[5]~28\ & VCC))
-- \sdram_controller|stateCycleCount[6]~30\ = CARRY((\sdram_controller|stateCycleCount\(6) & !\sdram_controller|stateCycleCount[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|stateCycleCount\(6),
	datad => VCC,
	cin => \sdram_controller|stateCycleCount[5]~28\,
	combout => \sdram_controller|stateCycleCount[6]~29_combout\,
	cout => \sdram_controller|stateCycleCount[6]~30\);

-- Location: FF_X56_Y31_N29
\sdram_controller|stateCycleCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|stateCycleCount[6]~29_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|Selector0~8_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|stateCycleCount\(6));

-- Location: LCCOMB_X56_Y31_N30
\sdram_controller|stateCycleCount[7]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|stateCycleCount[7]~31_combout\ = (\sdram_controller|stateCycleCount\(7) & (!\sdram_controller|stateCycleCount[6]~30\)) # (!\sdram_controller|stateCycleCount\(7) & ((\sdram_controller|stateCycleCount[6]~30\) # (GND)))
-- \sdram_controller|stateCycleCount[7]~32\ = CARRY((!\sdram_controller|stateCycleCount[6]~30\) # (!\sdram_controller|stateCycleCount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|stateCycleCount\(7),
	datad => VCC,
	cin => \sdram_controller|stateCycleCount[6]~30\,
	combout => \sdram_controller|stateCycleCount[7]~31_combout\,
	cout => \sdram_controller|stateCycleCount[7]~32\);

-- Location: FF_X56_Y31_N31
\sdram_controller|stateCycleCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|stateCycleCount[7]~31_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|Selector0~8_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|stateCycleCount\(7));

-- Location: LCCOMB_X56_Y30_N0
\sdram_controller|stateCycleCount[8]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|stateCycleCount[8]~33_combout\ = (\sdram_controller|stateCycleCount\(8) & (\sdram_controller|stateCycleCount[7]~32\ $ (GND))) # (!\sdram_controller|stateCycleCount\(8) & (!\sdram_controller|stateCycleCount[7]~32\ & VCC))
-- \sdram_controller|stateCycleCount[8]~34\ = CARRY((\sdram_controller|stateCycleCount\(8) & !\sdram_controller|stateCycleCount[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(8),
	datad => VCC,
	cin => \sdram_controller|stateCycleCount[7]~32\,
	combout => \sdram_controller|stateCycleCount[8]~33_combout\,
	cout => \sdram_controller|stateCycleCount[8]~34\);

-- Location: FF_X56_Y30_N1
\sdram_controller|stateCycleCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|stateCycleCount[8]~33_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|Selector0~8_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|stateCycleCount\(8));

-- Location: LCCOMB_X56_Y30_N2
\sdram_controller|stateCycleCount[9]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|stateCycleCount[9]~35_combout\ = (\sdram_controller|stateCycleCount\(9) & (!\sdram_controller|stateCycleCount[8]~34\)) # (!\sdram_controller|stateCycleCount\(9) & ((\sdram_controller|stateCycleCount[8]~34\) # (GND)))
-- \sdram_controller|stateCycleCount[9]~36\ = CARRY((!\sdram_controller|stateCycleCount[8]~34\) # (!\sdram_controller|stateCycleCount\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|stateCycleCount\(9),
	datad => VCC,
	cin => \sdram_controller|stateCycleCount[8]~34\,
	combout => \sdram_controller|stateCycleCount[9]~35_combout\,
	cout => \sdram_controller|stateCycleCount[9]~36\);

-- Location: FF_X56_Y30_N3
\sdram_controller|stateCycleCount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|stateCycleCount[9]~35_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|Selector0~8_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|stateCycleCount\(9));

-- Location: LCCOMB_X56_Y30_N4
\sdram_controller|stateCycleCount[10]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|stateCycleCount[10]~37_combout\ = (\sdram_controller|stateCycleCount\(10) & (\sdram_controller|stateCycleCount[9]~36\ $ (GND))) # (!\sdram_controller|stateCycleCount\(10) & (!\sdram_controller|stateCycleCount[9]~36\ & VCC))
-- \sdram_controller|stateCycleCount[10]~38\ = CARRY((\sdram_controller|stateCycleCount\(10) & !\sdram_controller|stateCycleCount[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|stateCycleCount\(10),
	datad => VCC,
	cin => \sdram_controller|stateCycleCount[9]~36\,
	combout => \sdram_controller|stateCycleCount[10]~37_combout\,
	cout => \sdram_controller|stateCycleCount[10]~38\);

-- Location: FF_X56_Y30_N5
\sdram_controller|stateCycleCount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|stateCycleCount[10]~37_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|Selector0~8_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|stateCycleCount\(10));

-- Location: LCCOMB_X56_Y30_N6
\sdram_controller|stateCycleCount[11]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|stateCycleCount[11]~39_combout\ = (\sdram_controller|stateCycleCount\(11) & (!\sdram_controller|stateCycleCount[10]~38\)) # (!\sdram_controller|stateCycleCount\(11) & ((\sdram_controller|stateCycleCount[10]~38\) # (GND)))
-- \sdram_controller|stateCycleCount[11]~40\ = CARRY((!\sdram_controller|stateCycleCount[10]~38\) # (!\sdram_controller|stateCycleCount\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(11),
	datad => VCC,
	cin => \sdram_controller|stateCycleCount[10]~38\,
	combout => \sdram_controller|stateCycleCount[11]~39_combout\,
	cout => \sdram_controller|stateCycleCount[11]~40\);

-- Location: FF_X56_Y30_N7
\sdram_controller|stateCycleCount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|stateCycleCount[11]~39_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|Selector0~8_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|stateCycleCount\(11));

-- Location: LCCOMB_X56_Y30_N8
\sdram_controller|stateCycleCount[12]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|stateCycleCount[12]~41_combout\ = (\sdram_controller|stateCycleCount\(12) & (\sdram_controller|stateCycleCount[11]~40\ $ (GND))) # (!\sdram_controller|stateCycleCount\(12) & (!\sdram_controller|stateCycleCount[11]~40\ & VCC))
-- \sdram_controller|stateCycleCount[12]~42\ = CARRY((\sdram_controller|stateCycleCount\(12) & !\sdram_controller|stateCycleCount[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(12),
	datad => VCC,
	cin => \sdram_controller|stateCycleCount[11]~40\,
	combout => \sdram_controller|stateCycleCount[12]~41_combout\,
	cout => \sdram_controller|stateCycleCount[12]~42\);

-- Location: FF_X56_Y30_N9
\sdram_controller|stateCycleCount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|stateCycleCount[12]~41_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|Selector0~8_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|stateCycleCount\(12));

-- Location: LCCOMB_X56_Y30_N10
\sdram_controller|stateCycleCount[13]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|stateCycleCount[13]~43_combout\ = (\sdram_controller|stateCycleCount\(13) & (!\sdram_controller|stateCycleCount[12]~42\)) # (!\sdram_controller|stateCycleCount\(13) & ((\sdram_controller|stateCycleCount[12]~42\) # (GND)))
-- \sdram_controller|stateCycleCount[13]~44\ = CARRY((!\sdram_controller|stateCycleCount[12]~42\) # (!\sdram_controller|stateCycleCount\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|stateCycleCount\(13),
	datad => VCC,
	cin => \sdram_controller|stateCycleCount[12]~42\,
	combout => \sdram_controller|stateCycleCount[13]~43_combout\,
	cout => \sdram_controller|stateCycleCount[13]~44\);

-- Location: FF_X56_Y30_N11
\sdram_controller|stateCycleCount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|stateCycleCount[13]~43_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|Selector0~8_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|stateCycleCount\(13));

-- Location: LCCOMB_X56_Y30_N12
\sdram_controller|stateCycleCount[14]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|stateCycleCount[14]~45_combout\ = (\sdram_controller|stateCycleCount\(14) & (\sdram_controller|stateCycleCount[13]~44\ $ (GND))) # (!\sdram_controller|stateCycleCount\(14) & (!\sdram_controller|stateCycleCount[13]~44\ & VCC))
-- \sdram_controller|stateCycleCount[14]~46\ = CARRY((\sdram_controller|stateCycleCount\(14) & !\sdram_controller|stateCycleCount[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|stateCycleCount\(14),
	datad => VCC,
	cin => \sdram_controller|stateCycleCount[13]~44\,
	combout => \sdram_controller|stateCycleCount[14]~45_combout\,
	cout => \sdram_controller|stateCycleCount[14]~46\);

-- Location: FF_X56_Y30_N13
\sdram_controller|stateCycleCount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|stateCycleCount[14]~45_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|Selector0~8_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|stateCycleCount\(14));

-- Location: LCCOMB_X56_Y30_N14
\sdram_controller|stateCycleCount[15]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|stateCycleCount[15]~47_combout\ = (\sdram_controller|stateCycleCount\(15) & (!\sdram_controller|stateCycleCount[14]~46\)) # (!\sdram_controller|stateCycleCount\(15) & ((\sdram_controller|stateCycleCount[14]~46\) # (GND)))
-- \sdram_controller|stateCycleCount[15]~48\ = CARRY((!\sdram_controller|stateCycleCount[14]~46\) # (!\sdram_controller|stateCycleCount\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|stateCycleCount\(15),
	datad => VCC,
	cin => \sdram_controller|stateCycleCount[14]~46\,
	combout => \sdram_controller|stateCycleCount[15]~47_combout\,
	cout => \sdram_controller|stateCycleCount[15]~48\);

-- Location: FF_X56_Y30_N15
\sdram_controller|stateCycleCount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|stateCycleCount[15]~47_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|Selector0~8_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|stateCycleCount\(15));

-- Location: LCCOMB_X56_Y30_N16
\sdram_controller|stateCycleCount[16]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|stateCycleCount[16]~49_combout\ = \sdram_controller|stateCycleCount[15]~48\ $ (!\sdram_controller|stateCycleCount\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \sdram_controller|stateCycleCount\(16),
	cin => \sdram_controller|stateCycleCount[15]~48\,
	combout => \sdram_controller|stateCycleCount[16]~49_combout\);

-- Location: FF_X56_Y30_N17
\sdram_controller|stateCycleCount[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|stateCycleCount[16]~49_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|Selector0~8_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|stateCycleCount\(16));

-- Location: LCCOMB_X56_Y30_N30
\sdram_controller|LessThan10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|LessThan10~0_combout\ = (!\sdram_controller|stateCycleCount\(13) & (!\sdram_controller|stateCycleCount\(16) & (!\sdram_controller|stateCycleCount\(14) & !\sdram_controller|stateCycleCount\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(13),
	datab => \sdram_controller|stateCycleCount\(16),
	datac => \sdram_controller|stateCycleCount\(14),
	datad => \sdram_controller|stateCycleCount\(15),
	combout => \sdram_controller|LessThan10~0_combout\);

-- Location: LCCOMB_X55_Y29_N20
\sdram_controller|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|LessThan0~0_combout\ = (\sdram_controller|stateCycleCount\(3)) # ((\sdram_controller|stateCycleCount\(4)) # ((\sdram_controller|stateCycleCount\(1) & \sdram_controller|stateCycleCount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datab => \sdram_controller|stateCycleCount\(3),
	datac => \sdram_controller|stateCycleCount\(2),
	datad => \sdram_controller|stateCycleCount\(4),
	combout => \sdram_controller|LessThan0~0_combout\);

-- Location: LCCOMB_X54_Y29_N24
\sdram_controller|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|LessThan0~1_combout\ = (\sdram_controller|stateCycleCount\(9) & (\sdram_controller|stateCycleCount\(6) & (\sdram_controller|stateCycleCount\(8) & \sdram_controller|stateCycleCount\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(9),
	datab => \sdram_controller|stateCycleCount\(6),
	datac => \sdram_controller|stateCycleCount\(8),
	datad => \sdram_controller|stateCycleCount\(5),
	combout => \sdram_controller|LessThan0~1_combout\);

-- Location: LCCOMB_X55_Y29_N10
\sdram_controller|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|LessThan0~2_combout\ = (\sdram_controller|stateCycleCount\(10)) # ((\sdram_controller|LessThan0~0_combout\ & (\sdram_controller|stateCycleCount\(7) & \sdram_controller|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(10),
	datab => \sdram_controller|LessThan0~0_combout\,
	datac => \sdram_controller|stateCycleCount\(7),
	datad => \sdram_controller|LessThan0~1_combout\,
	combout => \sdram_controller|LessThan0~2_combout\);

-- Location: LCCOMB_X56_Y29_N0
\sdram_controller|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|LessThan0~3_combout\ = ((\sdram_controller|LessThan0~2_combout\ & (\sdram_controller|stateCycleCount\(11) & \sdram_controller|stateCycleCount\(12)))) # (!\sdram_controller|LessThan10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|LessThan10~0_combout\,
	datab => \sdram_controller|LessThan0~2_combout\,
	datac => \sdram_controller|stateCycleCount\(11),
	datad => \sdram_controller|stateCycleCount\(12),
	combout => \sdram_controller|LessThan0~3_combout\);

-- Location: LCCOMB_X55_Y30_N10
\sdram_controller|Selector0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector0~6_combout\ = (!\sdram_controller|controllerState.SDRAM_POWER_UP~q\ & \sdram_controller|LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|controllerState.SDRAM_POWER_UP~q\,
	datad => \sdram_controller|LessThan0~3_combout\,
	combout => \sdram_controller|Selector0~6_combout\);

-- Location: LCCOMB_X57_Y30_N30
\sdram_controller|burstLengthReg[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|burstLengthReg[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \sdram_controller|burstLengthReg[0]~feeder_combout\);

-- Location: LCCOMB_X57_Y30_N16
\sdram_controller|memOperationReg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|memOperationReg~0_combout\ = !\sdram_controller|writeBufferEmpty~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sdram_controller|writeBufferEmpty~q\,
	combout => \sdram_controller|memOperationReg~0_combout\);

-- Location: FF_X57_Y30_N17
\sdram_controller|memOperationReg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|memOperationReg~0_combout\,
	clrn => \reset~input_o\,
	ena => \sdram_controller|addressReg[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|memOperationReg~q\);

-- Location: LCCOMB_X56_Y30_N26
\sdram_controller|controllerState~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|controllerState~22_combout\ = (\sdram_controller|controllerState.SDRAM_ACTIVATE_ROW~q\ & \sdram_controller|memOperationReg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|controllerState.SDRAM_ACTIVATE_ROW~q\,
	datad => \sdram_controller|memOperationReg~q\,
	combout => \sdram_controller|controllerState~22_combout\);

-- Location: LCCOMB_X56_Y30_N20
\sdram_controller|LessThan10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|LessThan10~1_combout\ = (!\sdram_controller|stateCycleCount\(11) & (!\sdram_controller|stateCycleCount\(9) & (!\sdram_controller|stateCycleCount\(8) & !\sdram_controller|stateCycleCount\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(11),
	datab => \sdram_controller|stateCycleCount\(9),
	datac => \sdram_controller|stateCycleCount\(8),
	datad => \sdram_controller|stateCycleCount\(10),
	combout => \sdram_controller|LessThan10~1_combout\);

-- Location: LCCOMB_X56_Y30_N18
\sdram_controller|Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal1~3_combout\ = (!\sdram_controller|stateCycleCount\(12) & (\sdram_controller|LessThan10~1_combout\ & \sdram_controller|LessThan10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(12),
	datab => \sdram_controller|LessThan10~1_combout\,
	datad => \sdram_controller|LessThan10~0_combout\,
	combout => \sdram_controller|Equal1~3_combout\);

-- Location: LCCOMB_X55_Y27_N28
\sdram_controller|writeAddressReg[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeAddressReg[1]~0_combout\ = (\sdram_controller|writeAddressReg\(1)) # ((\sdram_controller|SDRAM_Ready[0]~0_combout\ & \s_enable~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|SDRAM_Ready[0]~0_combout\,
	datac => \sdram_controller|writeAddressReg\(1),
	datad => \s_enable~0_combout\,
	combout => \sdram_controller|writeAddressReg[1]~0_combout\);

-- Location: FF_X55_Y27_N29
\sdram_controller|writeAddressReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sdram_controller|writeAddressReg[1]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeAddressReg\(1));

-- Location: LCCOMB_X57_Y30_N0
\sdram_controller|burstLengthReg[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|burstLengthReg[7]~0_combout\ = (\sdram_controller|writeBufferEmpty~q\ & \sdram_controller|writeAddressReg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferEmpty~q\,
	datad => \sdram_controller|writeAddressReg\(1),
	combout => \sdram_controller|burstLengthReg[7]~0_combout\);

-- Location: FF_X57_Y30_N1
\sdram_controller|burstLengthReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|burstLengthReg[7]~0_combout\,
	clrn => \reset~input_o\,
	ena => \sdram_controller|addressReg[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|burstLengthReg\(7));

-- Location: LCCOMB_X56_Y31_N8
\sdram_controller|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal1~0_combout\ = (!\sdram_controller|stateCycleCount\(3) & (!\sdram_controller|stateCycleCount\(6) & (!\sdram_controller|stateCycleCount\(4) & !\sdram_controller|stateCycleCount\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(3),
	datab => \sdram_controller|stateCycleCount\(6),
	datac => \sdram_controller|stateCycleCount\(4),
	datad => \sdram_controller|stateCycleCount\(5),
	combout => \sdram_controller|Equal1~0_combout\);

-- Location: LCCOMB_X57_Y31_N4
\sdram_controller|process_1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|process_1~9_combout\ = (!\sdram_controller|stateCycleCount\(0) & !\sdram_controller|stateCycleCount\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sdram_controller|stateCycleCount\(0),
	datad => \sdram_controller|stateCycleCount\(1),
	combout => \sdram_controller|process_1~9_combout\);

-- Location: LCCOMB_X57_Y31_N10
\sdram_controller|controllerState~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|controllerState~15_combout\ = ((!\sdram_controller|controllerState.SDRAM_WRITE~q\ & (\sdram_controller|burstLengthReg\(0) & !\sdram_controller|stateCycleCount\(1)))) # (!\sdram_controller|stateCycleCount\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|controllerState.SDRAM_WRITE~q\,
	datab => \sdram_controller|stateCycleCount\(2),
	datac => \sdram_controller|burstLengthReg\(0),
	datad => \sdram_controller|stateCycleCount\(1),
	combout => \sdram_controller|controllerState~15_combout\);

-- Location: LCCOMB_X57_Y31_N18
\sdram_controller|controllerState~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|controllerState~16_combout\ = (\sdram_controller|controllerState~15_combout\) # ((\sdram_controller|process_1~9_combout\ & ((\sdram_controller|burstLengthReg\(0)) # (!\sdram_controller|controllerState.SDRAM_WRITE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|controllerState.SDRAM_WRITE~q\,
	datab => \sdram_controller|process_1~9_combout\,
	datac => \sdram_controller|burstLengthReg\(0),
	datad => \sdram_controller|controllerState~15_combout\,
	combout => \sdram_controller|controllerState~16_combout\);

-- Location: LCCOMB_X57_Y31_N0
\sdram_controller|controllerState~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|controllerState~17_combout\ = (\sdram_controller|stateCycleCount\(7) & (\sdram_controller|burstLengthReg\(7) & (\sdram_controller|Equal1~0_combout\ & \sdram_controller|controllerState~16_combout\))) # 
-- (!\sdram_controller|stateCycleCount\(7) & ((\sdram_controller|burstLengthReg\(7)) # ((\sdram_controller|Equal1~0_combout\ & \sdram_controller|controllerState~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(7),
	datab => \sdram_controller|burstLengthReg\(7),
	datac => \sdram_controller|Equal1~0_combout\,
	datad => \sdram_controller|controllerState~16_combout\,
	combout => \sdram_controller|controllerState~17_combout\);

-- Location: LCCOMB_X58_Y31_N2
\sdram_controller|refreshCount[0]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|refreshCount[0]~31_combout\ = \sdram_controller|refreshCount\(0) $ (VCC)
-- \sdram_controller|refreshCount[0]~32\ = CARRY(\sdram_controller|refreshCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|refreshCount\(0),
	datad => VCC,
	combout => \sdram_controller|refreshCount[0]~31_combout\,
	cout => \sdram_controller|refreshCount[0]~32\);

-- Location: LCCOMB_X57_Y30_N2
\sdram_controller|refreshCount[23]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|refreshCount[23]~37_combout\ = (\sdram_controller|Equal15~9_combout\) # (!\sdram_controller|controllerState.SDRAM_POWER_UP~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|controllerState.SDRAM_POWER_UP~q\,
	datad => \sdram_controller|Equal15~9_combout\,
	combout => \sdram_controller|refreshCount[23]~37_combout\);

-- Location: FF_X58_Y31_N3
\sdram_controller|refreshCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|refreshCount[0]~31_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|refreshCount[23]~37_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(0));

-- Location: LCCOMB_X58_Y31_N4
\sdram_controller|refreshCount[1]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|refreshCount[1]~33_combout\ = (\sdram_controller|refreshCount\(1) & (!\sdram_controller|refreshCount[0]~32\)) # (!\sdram_controller|refreshCount\(1) & ((\sdram_controller|refreshCount[0]~32\) # (GND)))
-- \sdram_controller|refreshCount[1]~34\ = CARRY((!\sdram_controller|refreshCount[0]~32\) # (!\sdram_controller|refreshCount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|refreshCount\(1),
	datad => VCC,
	cin => \sdram_controller|refreshCount[0]~32\,
	combout => \sdram_controller|refreshCount[1]~33_combout\,
	cout => \sdram_controller|refreshCount[1]~34\);

-- Location: FF_X58_Y31_N5
\sdram_controller|refreshCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|refreshCount[1]~33_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|refreshCount[23]~37_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(1));

-- Location: LCCOMB_X58_Y31_N6
\sdram_controller|refreshCount[2]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|refreshCount[2]~35_combout\ = (\sdram_controller|refreshCount\(2) & (\sdram_controller|refreshCount[1]~34\ $ (GND))) # (!\sdram_controller|refreshCount\(2) & (!\sdram_controller|refreshCount[1]~34\ & VCC))
-- \sdram_controller|refreshCount[2]~36\ = CARRY((\sdram_controller|refreshCount\(2) & !\sdram_controller|refreshCount[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|refreshCount\(2),
	datad => VCC,
	cin => \sdram_controller|refreshCount[1]~34\,
	combout => \sdram_controller|refreshCount[2]~35_combout\,
	cout => \sdram_controller|refreshCount[2]~36\);

-- Location: FF_X58_Y31_N7
\sdram_controller|refreshCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|refreshCount[2]~35_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|refreshCount[23]~37_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(2));

-- Location: LCCOMB_X58_Y31_N8
\sdram_controller|refreshCount[3]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|refreshCount[3]~38_combout\ = (\sdram_controller|refreshCount\(3) & (!\sdram_controller|refreshCount[2]~36\)) # (!\sdram_controller|refreshCount\(3) & ((\sdram_controller|refreshCount[2]~36\) # (GND)))
-- \sdram_controller|refreshCount[3]~39\ = CARRY((!\sdram_controller|refreshCount[2]~36\) # (!\sdram_controller|refreshCount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|refreshCount\(3),
	datad => VCC,
	cin => \sdram_controller|refreshCount[2]~36\,
	combout => \sdram_controller|refreshCount[3]~38_combout\,
	cout => \sdram_controller|refreshCount[3]~39\);

-- Location: FF_X58_Y31_N9
\sdram_controller|refreshCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|refreshCount[3]~38_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|refreshCount[23]~37_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(3));

-- Location: LCCOMB_X58_Y31_N10
\sdram_controller|refreshCount[4]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|refreshCount[4]~40_combout\ = (\sdram_controller|refreshCount\(4) & (\sdram_controller|refreshCount[3]~39\ $ (GND))) # (!\sdram_controller|refreshCount\(4) & (!\sdram_controller|refreshCount[3]~39\ & VCC))
-- \sdram_controller|refreshCount[4]~41\ = CARRY((\sdram_controller|refreshCount\(4) & !\sdram_controller|refreshCount[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|refreshCount\(4),
	datad => VCC,
	cin => \sdram_controller|refreshCount[3]~39\,
	combout => \sdram_controller|refreshCount[4]~40_combout\,
	cout => \sdram_controller|refreshCount[4]~41\);

-- Location: FF_X58_Y31_N11
\sdram_controller|refreshCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|refreshCount[4]~40_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|refreshCount[23]~37_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(4));

-- Location: LCCOMB_X58_Y31_N12
\sdram_controller|refreshCount[5]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|refreshCount[5]~42_combout\ = (\sdram_controller|refreshCount\(5) & (!\sdram_controller|refreshCount[4]~41\)) # (!\sdram_controller|refreshCount\(5) & ((\sdram_controller|refreshCount[4]~41\) # (GND)))
-- \sdram_controller|refreshCount[5]~43\ = CARRY((!\sdram_controller|refreshCount[4]~41\) # (!\sdram_controller|refreshCount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|refreshCount\(5),
	datad => VCC,
	cin => \sdram_controller|refreshCount[4]~41\,
	combout => \sdram_controller|refreshCount[5]~42_combout\,
	cout => \sdram_controller|refreshCount[5]~43\);

-- Location: FF_X58_Y31_N13
\sdram_controller|refreshCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|refreshCount[5]~42_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|refreshCount[23]~37_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(5));

-- Location: LCCOMB_X58_Y31_N14
\sdram_controller|refreshCount[6]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|refreshCount[6]~44_combout\ = (\sdram_controller|refreshCount\(6) & (\sdram_controller|refreshCount[5]~43\ $ (GND))) # (!\sdram_controller|refreshCount\(6) & (!\sdram_controller|refreshCount[5]~43\ & VCC))
-- \sdram_controller|refreshCount[6]~45\ = CARRY((\sdram_controller|refreshCount\(6) & !\sdram_controller|refreshCount[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|refreshCount\(6),
	datad => VCC,
	cin => \sdram_controller|refreshCount[5]~43\,
	combout => \sdram_controller|refreshCount[6]~44_combout\,
	cout => \sdram_controller|refreshCount[6]~45\);

-- Location: FF_X58_Y31_N15
\sdram_controller|refreshCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|refreshCount[6]~44_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|refreshCount[23]~37_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(6));

-- Location: LCCOMB_X58_Y31_N16
\sdram_controller|refreshCount[7]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|refreshCount[7]~46_combout\ = (\sdram_controller|refreshCount\(7) & (!\sdram_controller|refreshCount[6]~45\)) # (!\sdram_controller|refreshCount\(7) & ((\sdram_controller|refreshCount[6]~45\) # (GND)))
-- \sdram_controller|refreshCount[7]~47\ = CARRY((!\sdram_controller|refreshCount[6]~45\) # (!\sdram_controller|refreshCount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|refreshCount\(7),
	datad => VCC,
	cin => \sdram_controller|refreshCount[6]~45\,
	combout => \sdram_controller|refreshCount[7]~46_combout\,
	cout => \sdram_controller|refreshCount[7]~47\);

-- Location: FF_X58_Y31_N17
\sdram_controller|refreshCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|refreshCount[7]~46_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|refreshCount[23]~37_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(7));

-- Location: LCCOMB_X58_Y31_N18
\sdram_controller|refreshCount[8]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|refreshCount[8]~48_combout\ = (\sdram_controller|refreshCount\(8) & (\sdram_controller|refreshCount[7]~47\ $ (GND))) # (!\sdram_controller|refreshCount\(8) & (!\sdram_controller|refreshCount[7]~47\ & VCC))
-- \sdram_controller|refreshCount[8]~49\ = CARRY((\sdram_controller|refreshCount\(8) & !\sdram_controller|refreshCount[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|refreshCount\(8),
	datad => VCC,
	cin => \sdram_controller|refreshCount[7]~47\,
	combout => \sdram_controller|refreshCount[8]~48_combout\,
	cout => \sdram_controller|refreshCount[8]~49\);

-- Location: FF_X58_Y31_N19
\sdram_controller|refreshCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|refreshCount[8]~48_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|refreshCount[23]~37_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(8));

-- Location: LCCOMB_X58_Y31_N20
\sdram_controller|refreshCount[9]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|refreshCount[9]~50_combout\ = (\sdram_controller|refreshCount\(9) & (!\sdram_controller|refreshCount[8]~49\)) # (!\sdram_controller|refreshCount\(9) & ((\sdram_controller|refreshCount[8]~49\) # (GND)))
-- \sdram_controller|refreshCount[9]~51\ = CARRY((!\sdram_controller|refreshCount[8]~49\) # (!\sdram_controller|refreshCount\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|refreshCount\(9),
	datad => VCC,
	cin => \sdram_controller|refreshCount[8]~49\,
	combout => \sdram_controller|refreshCount[9]~50_combout\,
	cout => \sdram_controller|refreshCount[9]~51\);

-- Location: FF_X58_Y31_N21
\sdram_controller|refreshCount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|refreshCount[9]~50_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|refreshCount[23]~37_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(9));

-- Location: LCCOMB_X58_Y31_N22
\sdram_controller|refreshCount[10]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|refreshCount[10]~52_combout\ = (\sdram_controller|refreshCount\(10) & (\sdram_controller|refreshCount[9]~51\ $ (GND))) # (!\sdram_controller|refreshCount\(10) & (!\sdram_controller|refreshCount[9]~51\ & VCC))
-- \sdram_controller|refreshCount[10]~53\ = CARRY((\sdram_controller|refreshCount\(10) & !\sdram_controller|refreshCount[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|refreshCount\(10),
	datad => VCC,
	cin => \sdram_controller|refreshCount[9]~51\,
	combout => \sdram_controller|refreshCount[10]~52_combout\,
	cout => \sdram_controller|refreshCount[10]~53\);

-- Location: FF_X58_Y31_N23
\sdram_controller|refreshCount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|refreshCount[10]~52_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|refreshCount[23]~37_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(10));

-- Location: LCCOMB_X58_Y31_N24
\sdram_controller|refreshCount[11]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|refreshCount[11]~54_combout\ = (\sdram_controller|refreshCount\(11) & (!\sdram_controller|refreshCount[10]~53\)) # (!\sdram_controller|refreshCount\(11) & ((\sdram_controller|refreshCount[10]~53\) # (GND)))
-- \sdram_controller|refreshCount[11]~55\ = CARRY((!\sdram_controller|refreshCount[10]~53\) # (!\sdram_controller|refreshCount\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|refreshCount\(11),
	datad => VCC,
	cin => \sdram_controller|refreshCount[10]~53\,
	combout => \sdram_controller|refreshCount[11]~54_combout\,
	cout => \sdram_controller|refreshCount[11]~55\);

-- Location: FF_X58_Y31_N25
\sdram_controller|refreshCount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|refreshCount[11]~54_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|refreshCount[23]~37_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(11));

-- Location: LCCOMB_X58_Y31_N26
\sdram_controller|refreshCount[12]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|refreshCount[12]~56_combout\ = (\sdram_controller|refreshCount\(12) & (\sdram_controller|refreshCount[11]~55\ $ (GND))) # (!\sdram_controller|refreshCount\(12) & (!\sdram_controller|refreshCount[11]~55\ & VCC))
-- \sdram_controller|refreshCount[12]~57\ = CARRY((\sdram_controller|refreshCount\(12) & !\sdram_controller|refreshCount[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|refreshCount\(12),
	datad => VCC,
	cin => \sdram_controller|refreshCount[11]~55\,
	combout => \sdram_controller|refreshCount[12]~56_combout\,
	cout => \sdram_controller|refreshCount[12]~57\);

-- Location: FF_X58_Y31_N27
\sdram_controller|refreshCount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|refreshCount[12]~56_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|refreshCount[23]~37_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(12));

-- Location: LCCOMB_X58_Y31_N28
\sdram_controller|refreshCount[13]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|refreshCount[13]~58_combout\ = (\sdram_controller|refreshCount\(13) & (!\sdram_controller|refreshCount[12]~57\)) # (!\sdram_controller|refreshCount\(13) & ((\sdram_controller|refreshCount[12]~57\) # (GND)))
-- \sdram_controller|refreshCount[13]~59\ = CARRY((!\sdram_controller|refreshCount[12]~57\) # (!\sdram_controller|refreshCount\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|refreshCount\(13),
	datad => VCC,
	cin => \sdram_controller|refreshCount[12]~57\,
	combout => \sdram_controller|refreshCount[13]~58_combout\,
	cout => \sdram_controller|refreshCount[13]~59\);

-- Location: FF_X58_Y31_N29
\sdram_controller|refreshCount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|refreshCount[13]~58_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|refreshCount[23]~37_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(13));

-- Location: LCCOMB_X58_Y31_N30
\sdram_controller|refreshCount[14]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|refreshCount[14]~60_combout\ = (\sdram_controller|refreshCount\(14) & (\sdram_controller|refreshCount[13]~59\ $ (GND))) # (!\sdram_controller|refreshCount\(14) & (!\sdram_controller|refreshCount[13]~59\ & VCC))
-- \sdram_controller|refreshCount[14]~61\ = CARRY((\sdram_controller|refreshCount\(14) & !\sdram_controller|refreshCount[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|refreshCount\(14),
	datad => VCC,
	cin => \sdram_controller|refreshCount[13]~59\,
	combout => \sdram_controller|refreshCount[14]~60_combout\,
	cout => \sdram_controller|refreshCount[14]~61\);

-- Location: FF_X58_Y31_N31
\sdram_controller|refreshCount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|refreshCount[14]~60_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|refreshCount[23]~37_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(14));

-- Location: LCCOMB_X58_Y30_N0
\sdram_controller|refreshCount[15]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|refreshCount[15]~62_combout\ = (\sdram_controller|refreshCount\(15) & (!\sdram_controller|refreshCount[14]~61\)) # (!\sdram_controller|refreshCount\(15) & ((\sdram_controller|refreshCount[14]~61\) # (GND)))
-- \sdram_controller|refreshCount[15]~63\ = CARRY((!\sdram_controller|refreshCount[14]~61\) # (!\sdram_controller|refreshCount\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|refreshCount\(15),
	datad => VCC,
	cin => \sdram_controller|refreshCount[14]~61\,
	combout => \sdram_controller|refreshCount[15]~62_combout\,
	cout => \sdram_controller|refreshCount[15]~63\);

-- Location: FF_X58_Y30_N1
\sdram_controller|refreshCount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|refreshCount[15]~62_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|refreshCount[23]~37_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(15));

-- Location: LCCOMB_X58_Y30_N2
\sdram_controller|refreshCount[16]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|refreshCount[16]~64_combout\ = (\sdram_controller|refreshCount\(16) & (\sdram_controller|refreshCount[15]~63\ $ (GND))) # (!\sdram_controller|refreshCount\(16) & (!\sdram_controller|refreshCount[15]~63\ & VCC))
-- \sdram_controller|refreshCount[16]~65\ = CARRY((\sdram_controller|refreshCount\(16) & !\sdram_controller|refreshCount[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|refreshCount\(16),
	datad => VCC,
	cin => \sdram_controller|refreshCount[15]~63\,
	combout => \sdram_controller|refreshCount[16]~64_combout\,
	cout => \sdram_controller|refreshCount[16]~65\);

-- Location: FF_X58_Y30_N3
\sdram_controller|refreshCount[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|refreshCount[16]~64_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|refreshCount[23]~37_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(16));

-- Location: LCCOMB_X58_Y30_N4
\sdram_controller|refreshCount[17]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|refreshCount[17]~66_combout\ = (\sdram_controller|refreshCount\(17) & (!\sdram_controller|refreshCount[16]~65\)) # (!\sdram_controller|refreshCount\(17) & ((\sdram_controller|refreshCount[16]~65\) # (GND)))
-- \sdram_controller|refreshCount[17]~67\ = CARRY((!\sdram_controller|refreshCount[16]~65\) # (!\sdram_controller|refreshCount\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|refreshCount\(17),
	datad => VCC,
	cin => \sdram_controller|refreshCount[16]~65\,
	combout => \sdram_controller|refreshCount[17]~66_combout\,
	cout => \sdram_controller|refreshCount[17]~67\);

-- Location: FF_X58_Y30_N5
\sdram_controller|refreshCount[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|refreshCount[17]~66_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|refreshCount[23]~37_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(17));

-- Location: LCCOMB_X58_Y30_N6
\sdram_controller|refreshCount[18]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|refreshCount[18]~68_combout\ = (\sdram_controller|refreshCount\(18) & (\sdram_controller|refreshCount[17]~67\ $ (GND))) # (!\sdram_controller|refreshCount\(18) & (!\sdram_controller|refreshCount[17]~67\ & VCC))
-- \sdram_controller|refreshCount[18]~69\ = CARRY((\sdram_controller|refreshCount\(18) & !\sdram_controller|refreshCount[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|refreshCount\(18),
	datad => VCC,
	cin => \sdram_controller|refreshCount[17]~67\,
	combout => \sdram_controller|refreshCount[18]~68_combout\,
	cout => \sdram_controller|refreshCount[18]~69\);

-- Location: FF_X58_Y30_N7
\sdram_controller|refreshCount[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|refreshCount[18]~68_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|refreshCount[23]~37_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(18));

-- Location: LCCOMB_X58_Y30_N8
\sdram_controller|refreshCount[19]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|refreshCount[19]~70_combout\ = (\sdram_controller|refreshCount\(19) & (!\sdram_controller|refreshCount[18]~69\)) # (!\sdram_controller|refreshCount\(19) & ((\sdram_controller|refreshCount[18]~69\) # (GND)))
-- \sdram_controller|refreshCount[19]~71\ = CARRY((!\sdram_controller|refreshCount[18]~69\) # (!\sdram_controller|refreshCount\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|refreshCount\(19),
	datad => VCC,
	cin => \sdram_controller|refreshCount[18]~69\,
	combout => \sdram_controller|refreshCount[19]~70_combout\,
	cout => \sdram_controller|refreshCount[19]~71\);

-- Location: FF_X58_Y30_N9
\sdram_controller|refreshCount[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|refreshCount[19]~70_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|refreshCount[23]~37_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(19));

-- Location: LCCOMB_X57_Y30_N26
\sdram_controller|Equal15~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal15~5_combout\ = (!\sdram_controller|refreshCount\(17) & (!\sdram_controller|refreshCount\(18) & (!\sdram_controller|refreshCount\(19) & !\sdram_controller|refreshCount\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|refreshCount\(17),
	datab => \sdram_controller|refreshCount\(18),
	datac => \sdram_controller|refreshCount\(19),
	datad => \sdram_controller|refreshCount\(16),
	combout => \sdram_controller|Equal15~5_combout\);

-- Location: LCCOMB_X58_Y30_N10
\sdram_controller|refreshCount[20]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|refreshCount[20]~72_combout\ = (\sdram_controller|refreshCount\(20) & (\sdram_controller|refreshCount[19]~71\ $ (GND))) # (!\sdram_controller|refreshCount\(20) & (!\sdram_controller|refreshCount[19]~71\ & VCC))
-- \sdram_controller|refreshCount[20]~73\ = CARRY((\sdram_controller|refreshCount\(20) & !\sdram_controller|refreshCount[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|refreshCount\(20),
	datad => VCC,
	cin => \sdram_controller|refreshCount[19]~71\,
	combout => \sdram_controller|refreshCount[20]~72_combout\,
	cout => \sdram_controller|refreshCount[20]~73\);

-- Location: FF_X58_Y30_N11
\sdram_controller|refreshCount[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|refreshCount[20]~72_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|refreshCount[23]~37_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(20));

-- Location: LCCOMB_X58_Y30_N12
\sdram_controller|refreshCount[21]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|refreshCount[21]~74_combout\ = (\sdram_controller|refreshCount\(21) & (!\sdram_controller|refreshCount[20]~73\)) # (!\sdram_controller|refreshCount\(21) & ((\sdram_controller|refreshCount[20]~73\) # (GND)))
-- \sdram_controller|refreshCount[21]~75\ = CARRY((!\sdram_controller|refreshCount[20]~73\) # (!\sdram_controller|refreshCount\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|refreshCount\(21),
	datad => VCC,
	cin => \sdram_controller|refreshCount[20]~73\,
	combout => \sdram_controller|refreshCount[21]~74_combout\,
	cout => \sdram_controller|refreshCount[21]~75\);

-- Location: FF_X58_Y30_N13
\sdram_controller|refreshCount[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|refreshCount[21]~74_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|refreshCount[23]~37_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(21));

-- Location: LCCOMB_X58_Y30_N14
\sdram_controller|refreshCount[22]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|refreshCount[22]~76_combout\ = (\sdram_controller|refreshCount\(22) & (\sdram_controller|refreshCount[21]~75\ $ (GND))) # (!\sdram_controller|refreshCount\(22) & (!\sdram_controller|refreshCount[21]~75\ & VCC))
-- \sdram_controller|refreshCount[22]~77\ = CARRY((\sdram_controller|refreshCount\(22) & !\sdram_controller|refreshCount[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|refreshCount\(22),
	datad => VCC,
	cin => \sdram_controller|refreshCount[21]~75\,
	combout => \sdram_controller|refreshCount[22]~76_combout\,
	cout => \sdram_controller|refreshCount[22]~77\);

-- Location: FF_X58_Y30_N15
\sdram_controller|refreshCount[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|refreshCount[22]~76_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|refreshCount[23]~37_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(22));

-- Location: LCCOMB_X58_Y30_N16
\sdram_controller|refreshCount[23]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|refreshCount[23]~78_combout\ = (\sdram_controller|refreshCount\(23) & (!\sdram_controller|refreshCount[22]~77\)) # (!\sdram_controller|refreshCount\(23) & ((\sdram_controller|refreshCount[22]~77\) # (GND)))
-- \sdram_controller|refreshCount[23]~79\ = CARRY((!\sdram_controller|refreshCount[22]~77\) # (!\sdram_controller|refreshCount\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|refreshCount\(23),
	datad => VCC,
	cin => \sdram_controller|refreshCount[22]~77\,
	combout => \sdram_controller|refreshCount[23]~78_combout\,
	cout => \sdram_controller|refreshCount[23]~79\);

-- Location: FF_X58_Y30_N17
\sdram_controller|refreshCount[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|refreshCount[23]~78_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|refreshCount[23]~37_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(23));

-- Location: LCCOMB_X59_Y30_N16
\sdram_controller|Equal15~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal15~6_combout\ = (!\sdram_controller|refreshCount\(21) & (!\sdram_controller|refreshCount\(22) & (!\sdram_controller|refreshCount\(23) & !\sdram_controller|refreshCount\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|refreshCount\(21),
	datab => \sdram_controller|refreshCount\(22),
	datac => \sdram_controller|refreshCount\(23),
	datad => \sdram_controller|refreshCount\(20),
	combout => \sdram_controller|Equal15~6_combout\);

-- Location: LCCOMB_X58_Y30_N18
\sdram_controller|refreshCount[24]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|refreshCount[24]~80_combout\ = (\sdram_controller|refreshCount\(24) & (\sdram_controller|refreshCount[23]~79\ $ (GND))) # (!\sdram_controller|refreshCount\(24) & (!\sdram_controller|refreshCount[23]~79\ & VCC))
-- \sdram_controller|refreshCount[24]~81\ = CARRY((\sdram_controller|refreshCount\(24) & !\sdram_controller|refreshCount[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|refreshCount\(24),
	datad => VCC,
	cin => \sdram_controller|refreshCount[23]~79\,
	combout => \sdram_controller|refreshCount[24]~80_combout\,
	cout => \sdram_controller|refreshCount[24]~81\);

-- Location: FF_X58_Y30_N19
\sdram_controller|refreshCount[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|refreshCount[24]~80_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|refreshCount[23]~37_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(24));

-- Location: LCCOMB_X58_Y30_N20
\sdram_controller|refreshCount[25]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|refreshCount[25]~82_combout\ = (\sdram_controller|refreshCount\(25) & (!\sdram_controller|refreshCount[24]~81\)) # (!\sdram_controller|refreshCount\(25) & ((\sdram_controller|refreshCount[24]~81\) # (GND)))
-- \sdram_controller|refreshCount[25]~83\ = CARRY((!\sdram_controller|refreshCount[24]~81\) # (!\sdram_controller|refreshCount\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|refreshCount\(25),
	datad => VCC,
	cin => \sdram_controller|refreshCount[24]~81\,
	combout => \sdram_controller|refreshCount[25]~82_combout\,
	cout => \sdram_controller|refreshCount[25]~83\);

-- Location: FF_X58_Y30_N21
\sdram_controller|refreshCount[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|refreshCount[25]~82_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|refreshCount[23]~37_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(25));

-- Location: LCCOMB_X58_Y30_N22
\sdram_controller|refreshCount[26]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|refreshCount[26]~84_combout\ = (\sdram_controller|refreshCount\(26) & (\sdram_controller|refreshCount[25]~83\ $ (GND))) # (!\sdram_controller|refreshCount\(26) & (!\sdram_controller|refreshCount[25]~83\ & VCC))
-- \sdram_controller|refreshCount[26]~85\ = CARRY((\sdram_controller|refreshCount\(26) & !\sdram_controller|refreshCount[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|refreshCount\(26),
	datad => VCC,
	cin => \sdram_controller|refreshCount[25]~83\,
	combout => \sdram_controller|refreshCount[26]~84_combout\,
	cout => \sdram_controller|refreshCount[26]~85\);

-- Location: FF_X58_Y30_N23
\sdram_controller|refreshCount[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|refreshCount[26]~84_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|refreshCount[23]~37_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(26));

-- Location: LCCOMB_X58_Y30_N24
\sdram_controller|refreshCount[27]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|refreshCount[27]~86_combout\ = (\sdram_controller|refreshCount\(27) & (!\sdram_controller|refreshCount[26]~85\)) # (!\sdram_controller|refreshCount\(27) & ((\sdram_controller|refreshCount[26]~85\) # (GND)))
-- \sdram_controller|refreshCount[27]~87\ = CARRY((!\sdram_controller|refreshCount[26]~85\) # (!\sdram_controller|refreshCount\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|refreshCount\(27),
	datad => VCC,
	cin => \sdram_controller|refreshCount[26]~85\,
	combout => \sdram_controller|refreshCount[27]~86_combout\,
	cout => \sdram_controller|refreshCount[27]~87\);

-- Location: FF_X58_Y30_N25
\sdram_controller|refreshCount[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|refreshCount[27]~86_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|refreshCount[23]~37_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(27));

-- Location: LCCOMB_X58_Y30_N26
\sdram_controller|refreshCount[28]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|refreshCount[28]~88_combout\ = (\sdram_controller|refreshCount\(28) & (\sdram_controller|refreshCount[27]~87\ $ (GND))) # (!\sdram_controller|refreshCount\(28) & (!\sdram_controller|refreshCount[27]~87\ & VCC))
-- \sdram_controller|refreshCount[28]~89\ = CARRY((\sdram_controller|refreshCount\(28) & !\sdram_controller|refreshCount[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|refreshCount\(28),
	datad => VCC,
	cin => \sdram_controller|refreshCount[27]~87\,
	combout => \sdram_controller|refreshCount[28]~88_combout\,
	cout => \sdram_controller|refreshCount[28]~89\);

-- Location: FF_X58_Y30_N27
\sdram_controller|refreshCount[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|refreshCount[28]~88_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|refreshCount[23]~37_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(28));

-- Location: LCCOMB_X58_Y30_N28
\sdram_controller|refreshCount[29]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|refreshCount[29]~90_combout\ = (\sdram_controller|refreshCount\(29) & (!\sdram_controller|refreshCount[28]~89\)) # (!\sdram_controller|refreshCount\(29) & ((\sdram_controller|refreshCount[28]~89\) # (GND)))
-- \sdram_controller|refreshCount[29]~91\ = CARRY((!\sdram_controller|refreshCount[28]~89\) # (!\sdram_controller|refreshCount\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|refreshCount\(29),
	datad => VCC,
	cin => \sdram_controller|refreshCount[28]~89\,
	combout => \sdram_controller|refreshCount[29]~90_combout\,
	cout => \sdram_controller|refreshCount[29]~91\);

-- Location: FF_X58_Y30_N29
\sdram_controller|refreshCount[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|refreshCount[29]~90_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|refreshCount[23]~37_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(29));

-- Location: LCCOMB_X58_Y30_N30
\sdram_controller|refreshCount[30]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|refreshCount[30]~92_combout\ = \sdram_controller|refreshCount\(30) $ (!\sdram_controller|refreshCount[29]~91\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|refreshCount\(30),
	cin => \sdram_controller|refreshCount[29]~91\,
	combout => \sdram_controller|refreshCount[30]~92_combout\);

-- Location: FF_X58_Y30_N31
\sdram_controller|refreshCount[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|refreshCount[30]~92_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|refreshCount[23]~37_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(30));

-- Location: LCCOMB_X57_Y30_N24
\sdram_controller|Equal15~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal15~7_combout\ = (!\sdram_controller|refreshCount\(24) & (!\sdram_controller|refreshCount\(26) & (!\sdram_controller|refreshCount\(25) & !\sdram_controller|refreshCount\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|refreshCount\(24),
	datab => \sdram_controller|refreshCount\(26),
	datac => \sdram_controller|refreshCount\(25),
	datad => \sdram_controller|refreshCount\(27),
	combout => \sdram_controller|Equal15~7_combout\);

-- Location: LCCOMB_X57_Y30_N14
\sdram_controller|Equal15~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal15~8_combout\ = (!\sdram_controller|refreshCount\(30) & (!\sdram_controller|refreshCount\(29) & (\sdram_controller|Equal15~7_combout\ & !\sdram_controller|refreshCount\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|refreshCount\(30),
	datab => \sdram_controller|refreshCount\(29),
	datac => \sdram_controller|Equal15~7_combout\,
	datad => \sdram_controller|refreshCount\(28),
	combout => \sdram_controller|Equal15~8_combout\);

-- Location: LCCOMB_X59_Y31_N12
\sdram_controller|Equal15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal15~3_combout\ = (!\sdram_controller|refreshCount\(15) & (!\sdram_controller|refreshCount\(14) & (!\sdram_controller|refreshCount\(12) & !\sdram_controller|refreshCount\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|refreshCount\(15),
	datab => \sdram_controller|refreshCount\(14),
	datac => \sdram_controller|refreshCount\(12),
	datad => \sdram_controller|refreshCount\(13),
	combout => \sdram_controller|Equal15~3_combout\);

-- Location: LCCOMB_X59_Y31_N18
\sdram_controller|Equal15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal15~1_combout\ = (\sdram_controller|refreshCount\(5) & (!\sdram_controller|refreshCount\(6) & (!\sdram_controller|refreshCount\(7) & !\sdram_controller|refreshCount\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|refreshCount\(5),
	datab => \sdram_controller|refreshCount\(6),
	datac => \sdram_controller|refreshCount\(7),
	datad => \sdram_controller|refreshCount\(4),
	combout => \sdram_controller|Equal15~1_combout\);

-- Location: LCCOMB_X58_Y31_N0
\sdram_controller|Equal15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal15~2_combout\ = (!\sdram_controller|refreshCount\(8) & (\sdram_controller|refreshCount\(9) & (!\sdram_controller|refreshCount\(10) & !\sdram_controller|refreshCount\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|refreshCount\(8),
	datab => \sdram_controller|refreshCount\(9),
	datac => \sdram_controller|refreshCount\(10),
	datad => \sdram_controller|refreshCount\(11),
	combout => \sdram_controller|Equal15~2_combout\);

-- Location: LCCOMB_X59_Y31_N28
\sdram_controller|Equal15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal15~0_combout\ = (\sdram_controller|refreshCount\(3) & (\sdram_controller|refreshCount\(2) & (!\sdram_controller|refreshCount\(1) & !\sdram_controller|refreshCount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|refreshCount\(3),
	datab => \sdram_controller|refreshCount\(2),
	datac => \sdram_controller|refreshCount\(1),
	datad => \sdram_controller|refreshCount\(0),
	combout => \sdram_controller|Equal15~0_combout\);

-- Location: LCCOMB_X59_Y31_N30
\sdram_controller|Equal15~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal15~4_combout\ = (\sdram_controller|Equal15~3_combout\ & (\sdram_controller|Equal15~1_combout\ & (\sdram_controller|Equal15~2_combout\ & \sdram_controller|Equal15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Equal15~3_combout\,
	datab => \sdram_controller|Equal15~1_combout\,
	datac => \sdram_controller|Equal15~2_combout\,
	datad => \sdram_controller|Equal15~0_combout\,
	combout => \sdram_controller|Equal15~4_combout\);

-- Location: LCCOMB_X57_Y30_N12
\sdram_controller|Equal15~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal15~9_combout\ = (\sdram_controller|Equal15~5_combout\ & (\sdram_controller|Equal15~6_combout\ & (\sdram_controller|Equal15~8_combout\ & \sdram_controller|Equal15~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Equal15~5_combout\,
	datab => \sdram_controller|Equal15~6_combout\,
	datac => \sdram_controller|Equal15~8_combout\,
	datad => \sdram_controller|Equal15~4_combout\,
	combout => \sdram_controller|Equal15~9_combout\);

-- Location: LCCOMB_X57_Y30_N8
\sdram_controller|refreshPending~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|refreshPending~0_combout\ = (\sdram_controller|refreshPending~q\ & ((!\sdram_controller|Equal15~9_combout\))) # (!\sdram_controller|refreshPending~q\ & (\sdram_controller|controllerState.SDRAM_IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|controllerState.SDRAM_IDLE~q\,
	datac => \sdram_controller|refreshPending~q\,
	datad => \sdram_controller|Equal15~9_combout\,
	combout => \sdram_controller|refreshPending~0_combout\);

-- Location: FF_X57_Y30_N9
\sdram_controller|refreshPending\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|refreshPending~0_combout\,
	clrn => \reset~input_o\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshPending~q\);

-- Location: LCCOMB_X55_Y30_N14
\sdram_controller|controllerState~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|controllerState~21_combout\ = (\sdram_controller|controllerState.SDRAM_IDLE~q\ & !\sdram_controller|refreshPending~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|controllerState.SDRAM_IDLE~q\,
	datad => \sdram_controller|refreshPending~q\,
	combout => \sdram_controller|controllerState~21_combout\);

-- Location: FF_X55_Y30_N15
\sdram_controller|controllerState.SDRAM_AUTO_REFRESH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|controllerState~21_combout\,
	clrn => \reset~input_o\,
	ena => \sdram_controller|controllerState~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|controllerState.SDRAM_AUTO_REFRESH~q\);

-- Location: LCCOMB_X56_Y29_N14
\sdram_controller|controllerState~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|controllerState~18_combout\ = (!\sdram_controller|controllerState.SDRAM_AUTO_REFRESH~q\ & ((!\sdram_controller|controllerState~17_combout\) # (!\sdram_controller|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Equal1~3_combout\,
	datac => \sdram_controller|controllerState~17_combout\,
	datad => \sdram_controller|controllerState.SDRAM_AUTO_REFRESH~q\,
	combout => \sdram_controller|controllerState~18_combout\);

-- Location: LCCOMB_X56_Y29_N26
\sdram_controller|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector0~1_combout\ = (!\sdram_controller|stateCycleCount\(3) & (!\sdram_controller|stateCycleCount\(6) & \sdram_controller|stateCycleCount\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|stateCycleCount\(3),
	datac => \sdram_controller|stateCycleCount\(6),
	datad => \sdram_controller|stateCycleCount\(2),
	combout => \sdram_controller|Selector0~1_combout\);

-- Location: LCCOMB_X56_Y29_N16
\sdram_controller|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal1~1_combout\ = (\sdram_controller|LessThan10~0_combout\ & (\sdram_controller|LessThan10~1_combout\ & (!\sdram_controller|stateCycleCount\(7) & !\sdram_controller|stateCycleCount\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|LessThan10~0_combout\,
	datab => \sdram_controller|LessThan10~1_combout\,
	datac => \sdram_controller|stateCycleCount\(7),
	datad => \sdram_controller|stateCycleCount\(12),
	combout => \sdram_controller|Equal1~1_combout\);

-- Location: LCCOMB_X56_Y29_N4
\sdram_controller|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector0~0_combout\ = (!\sdram_controller|stateCycleCount\(5) & (\sdram_controller|stateCycleCount\(4) & (!\sdram_controller|stateCycleCount\(1) & \sdram_controller|controllerState.SDRAM_AUTO_REFRESH~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(5),
	datab => \sdram_controller|stateCycleCount\(4),
	datac => \sdram_controller|stateCycleCount\(1),
	datad => \sdram_controller|controllerState.SDRAM_AUTO_REFRESH~q\,
	combout => \sdram_controller|Selector0~0_combout\);

-- Location: LCCOMB_X56_Y29_N24
\sdram_controller|Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector0~2_combout\ = (\sdram_controller|Selector0~1_combout\ & (\sdram_controller|Equal1~1_combout\ & (\sdram_controller|Selector0~0_combout\ & !\sdram_controller|stateCycleCount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Selector0~1_combout\,
	datab => \sdram_controller|Equal1~1_combout\,
	datac => \sdram_controller|Selector0~0_combout\,
	datad => \sdram_controller|stateCycleCount\(0),
	combout => \sdram_controller|Selector0~2_combout\);

-- Location: LCCOMB_X57_Y29_N24
\sdram_controller|controllerState~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|controllerState~26_combout\ = (!\sdram_controller|controllerState.SDRAM_IDLE~q\ & ((\sdram_controller|controllerState~18_combout\) # (\sdram_controller|Selector0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|controllerState~18_combout\,
	datac => \sdram_controller|controllerState.SDRAM_IDLE~q\,
	datad => \sdram_controller|Selector0~2_combout\,
	combout => \sdram_controller|controllerState~26_combout\);

-- Location: LCCOMB_X55_Y30_N2
\sdram_controller|controllerState.SDRAM_INIT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|controllerState.SDRAM_INIT~0_combout\ = !\sdram_controller|controllerState.SDRAM_POWER_UP~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|controllerState.SDRAM_POWER_UP~q\,
	combout => \sdram_controller|controllerState.SDRAM_INIT~0_combout\);

-- Location: FF_X55_Y30_N25
\sdram_controller|controllerState.SDRAM_INIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sdram_controller|controllerState.SDRAM_INIT~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \sdram_controller|controllerState~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|controllerState.SDRAM_INIT~q\);

-- Location: LCCOMB_X55_Y29_N24
\sdram_controller|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|LessThan1~0_combout\ = (!\sdram_controller|stateCycleCount\(5) & (!\sdram_controller|stateCycleCount\(4) & ((!\sdram_controller|stateCycleCount\(3)) # (!\sdram_controller|stateCycleCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(2),
	datab => \sdram_controller|stateCycleCount\(3),
	datac => \sdram_controller|stateCycleCount\(5),
	datad => \sdram_controller|stateCycleCount\(4),
	combout => \sdram_controller|LessThan1~0_combout\);

-- Location: LCCOMB_X55_Y29_N30
\sdram_controller|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|LessThan1~1_combout\ = ((\sdram_controller|stateCycleCount\(6) & !\sdram_controller|LessThan1~0_combout\)) # (!\sdram_controller|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(6),
	datab => \sdram_controller|LessThan1~0_combout\,
	datad => \sdram_controller|Equal1~1_combout\,
	combout => \sdram_controller|LessThan1~1_combout\);

-- Location: LCCOMB_X56_Y29_N6
\sdram_controller|controllerState~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|controllerState~27_combout\ = ((\sdram_controller|controllerState.SDRAM_INIT~q\ & ((!\sdram_controller|LessThan1~1_combout\))) # (!\sdram_controller|controllerState.SDRAM_INIT~q\ & (!\sdram_controller|controllerState~26_combout\))) # 
-- (!\sdram_controller|controllerState.SDRAM_POWER_UP~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|controllerState.SDRAM_POWER_UP~q\,
	datab => \sdram_controller|controllerState~26_combout\,
	datac => \sdram_controller|controllerState.SDRAM_INIT~q\,
	datad => \sdram_controller|LessThan1~1_combout\,
	combout => \sdram_controller|controllerState~27_combout\);

-- Location: LCCOMB_X55_Y30_N8
\sdram_controller|controllerState~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|controllerState~23_combout\ = (\sdram_controller|refreshPending~q\ & !\sdram_controller|writeBufferEmpty~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|refreshPending~q\,
	datad => \sdram_controller|writeBufferEmpty~q\,
	combout => \sdram_controller|controllerState~23_combout\);

-- Location: LCCOMB_X54_Y30_N12
\state.IDLE~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state.IDLE~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \state.IDLE~feeder_combout\);

-- Location: FF_X54_Y30_N1
\state.RECEIVE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \state.START_RECEIVING~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.RECEIVE~q\);

-- Location: LCCOMB_X52_Y27_N6
\transmitCount[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \transmitCount[0]~10_combout\ = transmitCount(0) $ (VCC)
-- \transmitCount[0]~11\ = CARRY(transmitCount(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transmitCount(0),
	datad => VCC,
	combout => \transmitCount[0]~10_combout\,
	cout => \transmitCount[0]~11\);

-- Location: FF_X52_Y27_N7
\transmitCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitCount[0]~10_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|SDRAM_Ready[0]~0_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => transmitCount(0));

-- Location: LCCOMB_X52_Y27_N8
\transmitCount[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \transmitCount[1]~12_combout\ = (transmitCount(1) & (!\transmitCount[0]~11\)) # (!transmitCount(1) & ((\transmitCount[0]~11\) # (GND)))
-- \transmitCount[1]~13\ = CARRY((!\transmitCount[0]~11\) # (!transmitCount(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => transmitCount(1),
	datad => VCC,
	cin => \transmitCount[0]~11\,
	combout => \transmitCount[1]~12_combout\,
	cout => \transmitCount[1]~13\);

-- Location: FF_X52_Y27_N9
\transmitCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitCount[1]~12_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|SDRAM_Ready[0]~0_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => transmitCount(1));

-- Location: LCCOMB_X52_Y27_N10
\transmitCount[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \transmitCount[2]~14_combout\ = (transmitCount(2) & (\transmitCount[1]~13\ $ (GND))) # (!transmitCount(2) & (!\transmitCount[1]~13\ & VCC))
-- \transmitCount[2]~15\ = CARRY((transmitCount(2) & !\transmitCount[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => transmitCount(2),
	datad => VCC,
	cin => \transmitCount[1]~13\,
	combout => \transmitCount[2]~14_combout\,
	cout => \transmitCount[2]~15\);

-- Location: FF_X52_Y27_N11
\transmitCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitCount[2]~14_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|SDRAM_Ready[0]~0_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => transmitCount(2));

-- Location: LCCOMB_X52_Y27_N12
\transmitCount[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \transmitCount[3]~16_combout\ = (transmitCount(3) & (!\transmitCount[2]~15\)) # (!transmitCount(3) & ((\transmitCount[2]~15\) # (GND)))
-- \transmitCount[3]~17\ = CARRY((!\transmitCount[2]~15\) # (!transmitCount(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => transmitCount(3),
	datad => VCC,
	cin => \transmitCount[2]~15\,
	combout => \transmitCount[3]~16_combout\,
	cout => \transmitCount[3]~17\);

-- Location: FF_X52_Y27_N13
\transmitCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitCount[3]~16_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|SDRAM_Ready[0]~0_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => transmitCount(3));

-- Location: LCCOMB_X52_Y27_N14
\transmitCount[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \transmitCount[4]~18_combout\ = (transmitCount(4) & (\transmitCount[3]~17\ $ (GND))) # (!transmitCount(4) & (!\transmitCount[3]~17\ & VCC))
-- \transmitCount[4]~19\ = CARRY((transmitCount(4) & !\transmitCount[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => transmitCount(4),
	datad => VCC,
	cin => \transmitCount[3]~17\,
	combout => \transmitCount[4]~18_combout\,
	cout => \transmitCount[4]~19\);

-- Location: FF_X52_Y27_N15
\transmitCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitCount[4]~18_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|SDRAM_Ready[0]~0_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => transmitCount(4));

-- Location: LCCOMB_X52_Y27_N16
\transmitCount[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \transmitCount[5]~20_combout\ = (transmitCount(5) & (!\transmitCount[4]~19\)) # (!transmitCount(5) & ((\transmitCount[4]~19\) # (GND)))
-- \transmitCount[5]~21\ = CARRY((!\transmitCount[4]~19\) # (!transmitCount(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => transmitCount(5),
	datad => VCC,
	cin => \transmitCount[4]~19\,
	combout => \transmitCount[5]~20_combout\,
	cout => \transmitCount[5]~21\);

-- Location: FF_X52_Y27_N17
\transmitCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitCount[5]~20_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|SDRAM_Ready[0]~0_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => transmitCount(5));

-- Location: LCCOMB_X52_Y27_N18
\transmitCount[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \transmitCount[6]~22_combout\ = (transmitCount(6) & (\transmitCount[5]~21\ $ (GND))) # (!transmitCount(6) & (!\transmitCount[5]~21\ & VCC))
-- \transmitCount[6]~23\ = CARRY((transmitCount(6) & !\transmitCount[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => transmitCount(6),
	datad => VCC,
	cin => \transmitCount[5]~21\,
	combout => \transmitCount[6]~22_combout\,
	cout => \transmitCount[6]~23\);

-- Location: FF_X52_Y27_N19
\transmitCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitCount[6]~22_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|SDRAM_Ready[0]~0_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => transmitCount(6));

-- Location: LCCOMB_X52_Y27_N20
\transmitCount[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \transmitCount[7]~24_combout\ = (transmitCount(7) & (!\transmitCount[6]~23\)) # (!transmitCount(7) & ((\transmitCount[6]~23\) # (GND)))
-- \transmitCount[7]~25\ = CARRY((!\transmitCount[6]~23\) # (!transmitCount(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => transmitCount(7),
	datad => VCC,
	cin => \transmitCount[6]~23\,
	combout => \transmitCount[7]~24_combout\,
	cout => \transmitCount[7]~25\);

-- Location: FF_X52_Y27_N21
\transmitCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitCount[7]~24_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|SDRAM_Ready[0]~0_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => transmitCount(7));

-- Location: LCCOMB_X52_Y27_N22
\transmitCount[8]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \transmitCount[8]~26_combout\ = (transmitCount(8) & (\transmitCount[7]~25\ $ (GND))) # (!transmitCount(8) & (!\transmitCount[7]~25\ & VCC))
-- \transmitCount[8]~27\ = CARRY((transmitCount(8) & !\transmitCount[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => transmitCount(8),
	datad => VCC,
	cin => \transmitCount[7]~25\,
	combout => \transmitCount[8]~26_combout\,
	cout => \transmitCount[8]~27\);

-- Location: FF_X52_Y27_N23
\transmitCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitCount[8]~26_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|SDRAM_Ready[0]~0_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => transmitCount(8));

-- Location: LCCOMB_X52_Y27_N24
\transmitCount[9]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \transmitCount[9]~28_combout\ = \transmitCount[8]~27\ $ (transmitCount(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => transmitCount(9),
	cin => \transmitCount[8]~27\,
	combout => \transmitCount[9]~28_combout\);

-- Location: FF_X52_Y27_N25
\transmitCount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmitCount[9]~28_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|SDRAM_Ready[0]~0_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => transmitCount(9));

-- Location: LCCOMB_X54_Y30_N8
\state~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~12_combout\ = (!transmitCount(6) & (!transmitCount(7) & (\state.TRANSMIT~q\ & !transmitCount(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transmitCount(6),
	datab => transmitCount(7),
	datac => \state.TRANSMIT~q\,
	datad => transmitCount(8),
	combout => \state~12_combout\);

-- Location: LCCOMB_X54_Y30_N22
\state~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~15_combout\ = (!transmitCount(9) & (!\state.START_RECEIVING~q\ & \state~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transmitCount(9),
	datac => \state.START_RECEIVING~q\,
	datad => \state~12_combout\,
	combout => \state~15_combout\);

-- Location: LCCOMB_X52_Y30_N18
\sdram_controller|readBufferReadCountReset~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferReadCountReset~0_combout\ = (!\sdram_controller|readBufferState~q\ & !\sdram_controller|readBufferEmpty~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sdram_controller|readBufferState~q\,
	datad => \sdram_controller|readBufferEmpty~q\,
	combout => \sdram_controller|readBufferReadCountReset~0_combout\);

-- Location: FF_X52_Y30_N19
\sdram_controller|readBufferState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sdram_controller|readBufferReadCountReset~0_combout\,
	clrn => \reset~input_o\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|readBufferState~q\);

-- Location: LCCOMB_X54_Y30_N16
\state~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~11_combout\ = (\state.START_RECEIVING~q\ & ((\sdram_controller|readBufferEmpty~q\) # (\sdram_controller|readBufferState~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|readBufferEmpty~q\,
	datac => \state.START_RECEIVING~q\,
	datad => \sdram_controller|readBufferState~q\,
	combout => \state~11_combout\);

-- Location: LCCOMB_X54_Y30_N4
\state~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~16_combout\ = (\state~13_combout\ & ((\state.START_TRANSMISSION~q\) # ((!\state~15_combout\ & !\state~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~13_combout\,
	datab => \state.START_TRANSMISSION~q\,
	datac => \state~15_combout\,
	datad => \state~11_combout\,
	combout => \state~16_combout\);

-- Location: FF_X52_Y30_N21
\state.HALT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \state.RECEIVE~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.HALT~q\);

-- Location: LCCOMB_X52_Y30_N20
\state~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~13_combout\ = (\s_enable~0_combout\ & (!\state.HALT~q\ & ((\sdram_controller|SDRAM_Ready[0]~0_combout\) # (!\state.START_TRANSMISSION~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_enable~0_combout\,
	datab => \state.START_TRANSMISSION~q\,
	datac => \state.HALT~q\,
	datad => \sdram_controller|SDRAM_Ready[0]~0_combout\,
	combout => \state~13_combout\);

-- Location: LCCOMB_X54_Y30_N18
\state~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~14_combout\ = (\state~13_combout\ & (!\state~11_combout\ & ((transmitCount(9)) # (!\state~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~13_combout\,
	datab => \state~11_combout\,
	datac => transmitCount(9),
	datad => \state~12_combout\,
	combout => \state~14_combout\);

-- Location: FF_X54_Y30_N13
\state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.IDLE~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.IDLE~q\);

-- Location: LCCOMB_X52_Y30_N16
\state.START_TRANSMISSION~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state.START_TRANSMISSION~0_combout\ = !\state.IDLE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.IDLE~q\,
	combout => \state.START_TRANSMISSION~0_combout\);

-- Location: FF_X52_Y30_N17
\state.START_TRANSMISSION\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.START_TRANSMISSION~0_combout\,
	clrn => \reset~input_o\,
	ena => \state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.START_TRANSMISSION~q\);

-- Location: FF_X54_Y30_N9
\state.TRANSMIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \state.START_TRANSMISSION~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.TRANSMIT~q\);

-- Location: FF_X54_Y30_N15
\state.START_RECEIVING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \state.TRANSMIT~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.START_RECEIVING~q\);

-- Location: LCCOMB_X54_Y30_N28
\sdram_controller|controllerState~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|controllerState~24_combout\ = (\sdram_controller|controllerState.SDRAM_POWER_UP~q\ & (!\sdram_controller|controllerState.SDRAM_INIT~q\ & (\state.START_RECEIVING~q\ & \sdram_controller|readBufferEmpty~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|controllerState.SDRAM_POWER_UP~q\,
	datab => \sdram_controller|controllerState.SDRAM_INIT~q\,
	datac => \state.START_RECEIVING~q\,
	datad => \sdram_controller|readBufferEmpty~q\,
	combout => \sdram_controller|controllerState~24_combout\);

-- Location: LCCOMB_X55_Y30_N28
\sdram_controller|controllerState~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|controllerState~25_combout\ = (!\sdram_controller|controllerState.SDRAM_ACTIVATE_ROW~q\ & (((\sdram_controller|controllerState~23_combout\ & !\sdram_controller|controllerState~24_combout\)) # 
-- (!\sdram_controller|controllerState.SDRAM_IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|controllerState.SDRAM_ACTIVATE_ROW~q\,
	datab => \sdram_controller|controllerState.SDRAM_IDLE~q\,
	datac => \sdram_controller|controllerState~23_combout\,
	datad => \sdram_controller|controllerState~24_combout\,
	combout => \sdram_controller|controllerState~25_combout\);

-- Location: LCCOMB_X55_Y30_N6
\sdram_controller|controllerState~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|controllerState~28_combout\ = (\sdram_controller|controllerState~14_combout\ & ((\sdram_controller|Selector0~6_combout\) # ((!\sdram_controller|controllerState~25_combout\) # (!\sdram_controller|controllerState~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Selector0~6_combout\,
	datab => \sdram_controller|controllerState~27_combout\,
	datac => \sdram_controller|controllerState~14_combout\,
	datad => \sdram_controller|controllerState~25_combout\,
	combout => \sdram_controller|controllerState~28_combout\);

-- Location: FF_X56_Y30_N27
\sdram_controller|controllerState.SDRAM_READ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|controllerState~22_combout\,
	clrn => \reset~input_o\,
	ena => \sdram_controller|controllerState~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|controllerState.SDRAM_READ~q\);

-- Location: LCCOMB_X57_Y30_N22
\sdram_controller|LessThan7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|LessThan7~0_combout\ = (!\sdram_controller|stateCycleCount\(7) & \sdram_controller|burstLengthReg\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sdram_controller|stateCycleCount\(7),
	datad => \sdram_controller|burstLengthReg\(7),
	combout => \sdram_controller|LessThan7~0_combout\);

-- Location: LCCOMB_X56_Y31_N2
\sdram_controller|Equal12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal12~0_combout\ = \sdram_controller|burstLengthReg\(7) $ (\sdram_controller|stateCycleCount\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|burstLengthReg\(7),
	datab => \sdram_controller|stateCycleCount\(7),
	combout => \sdram_controller|Equal12~0_combout\);

-- Location: LCCOMB_X56_Y31_N4
\sdram_controller|LessThan15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|LessThan15~0_combout\ = ((\sdram_controller|burstLengthReg\(0)) # (!\sdram_controller|stateCycleCount\(1))) # (!\sdram_controller|stateCycleCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(0),
	datac => \sdram_controller|stateCycleCount\(1),
	datad => \sdram_controller|burstLengthReg\(0),
	combout => \sdram_controller|LessThan15~0_combout\);

-- Location: LCCOMB_X56_Y31_N10
\sdram_controller|LessThan15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|LessThan15~1_combout\ = (\sdram_controller|Equal1~0_combout\ & (!\sdram_controller|Equal12~0_combout\ & (\sdram_controller|LessThan15~0_combout\ & !\sdram_controller|stateCycleCount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Equal1~0_combout\,
	datab => \sdram_controller|Equal12~0_combout\,
	datac => \sdram_controller|LessThan15~0_combout\,
	datad => \sdram_controller|stateCycleCount\(2),
	combout => \sdram_controller|LessThan15~1_combout\);

-- Location: LCCOMB_X55_Y30_N30
\sdram_controller|readBufferEmptyReset~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferEmptyReset~0_combout\ = (\sdram_controller|controllerState.SDRAM_READ~q\ & (((!\sdram_controller|LessThan7~0_combout\ & !\sdram_controller|LessThan15~1_combout\)) # (!\sdram_controller|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|LessThan7~0_combout\,
	datab => \sdram_controller|Equal1~3_combout\,
	datac => \sdram_controller|LessThan15~1_combout\,
	datad => \sdram_controller|controllerState.SDRAM_READ~q\,
	combout => \sdram_controller|readBufferEmptyReset~0_combout\);

-- Location: FF_X55_Y30_N27
\sdram_controller|readBufferEmptyResetShiftReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sdram_controller|readBufferEmptyReset~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|readBufferEmptyResetShiftReg\(0));

-- Location: LCCOMB_X56_Y31_N14
\sdram_controller|readBufferEmpty~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferEmpty~3_combout\ = (\sdram_controller|Equal1~3_combout\ & ((\sdram_controller|LessThan15~1_combout\) # ((\sdram_controller|burstLengthReg\(7) & !\sdram_controller|stateCycleCount\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|LessThan15~1_combout\,
	datab => \sdram_controller|burstLengthReg\(7),
	datac => \sdram_controller|Equal1~3_combout\,
	datad => \sdram_controller|stateCycleCount\(7),
	combout => \sdram_controller|readBufferEmpty~3_combout\);

-- Location: LCCOMB_X55_Y30_N26
\sdram_controller|readBufferEmpty~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferEmpty~2_combout\ = (!\sdram_controller|readBufferReadCountReset~0_combout\ & (((\sdram_controller|readBufferEmptyResetShiftReg\(0)) # (\sdram_controller|readBufferEmpty~3_combout\)) # 
-- (!\sdram_controller|controllerState.SDRAM_READ~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|controllerState.SDRAM_READ~q\,
	datab => \sdram_controller|readBufferReadCountReset~0_combout\,
	datac => \sdram_controller|readBufferEmptyResetShiftReg\(0),
	datad => \sdram_controller|readBufferEmpty~3_combout\,
	combout => \sdram_controller|readBufferEmpty~2_combout\);

-- Location: FF_X55_Y30_N3
\sdram_controller|readBufferEmpty\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sdram_controller|readBufferEmpty~2_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|readBufferEmpty~q\);

-- Location: LCCOMB_X55_Y30_N24
\sdram_controller|readDeviceIndexReg[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readDeviceIndexReg[0]~0_combout\ = (\sdram_controller|readBufferEmpty~q\ & \state.START_RECEIVING~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|readBufferEmpty~q\,
	datad => \state.START_RECEIVING~q\,
	combout => \sdram_controller|readDeviceIndexReg[0]~0_combout\);

-- Location: LCCOMB_X57_Y30_N18
\sdram_controller|addressReg[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|addressReg[1]~0_combout\ = (\sdram_controller|readDeviceIndexReg[0]~1_combout\ & (\s_enable~0_combout\ & ((\sdram_controller|writeBufferEmpty~q\) # (\sdram_controller|readDeviceIndexReg[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferEmpty~q\,
	datab => \sdram_controller|readDeviceIndexReg[0]~1_combout\,
	datac => \sdram_controller|readDeviceIndexReg[0]~0_combout\,
	datad => \s_enable~0_combout\,
	combout => \sdram_controller|addressReg[1]~0_combout\);

-- Location: FF_X57_Y30_N31
\sdram_controller|burstLengthReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|burstLengthReg[0]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \sdram_controller|addressReg[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|burstLengthReg\(0));

-- Location: LCCOMB_X57_Y31_N26
\sdram_controller|SDRAM_DATA[15]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|SDRAM_DATA[15]~0_combout\ = (!\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|burstLengthReg\(0)) # (!\sdram_controller|stateCycleCount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(0),
	datab => \sdram_controller|stateCycleCount\(1),
	datac => \sdram_controller|burstLengthReg\(0),
	combout => \sdram_controller|SDRAM_DATA[15]~0_combout\);

-- Location: LCCOMB_X57_Y31_N12
\sdram_controller|LessThan8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|LessThan8~0_combout\ = (\sdram_controller|Equal1~0_combout\ & (!\sdram_controller|Equal12~0_combout\ & ((\sdram_controller|SDRAM_DATA[15]~0_combout\) # (!\sdram_controller|stateCycleCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|SDRAM_DATA[15]~0_combout\,
	datab => \sdram_controller|stateCycleCount\(2),
	datac => \sdram_controller|Equal1~0_combout\,
	datad => \sdram_controller|Equal12~0_combout\,
	combout => \sdram_controller|LessThan8~0_combout\);

-- Location: LCCOMB_X57_Y31_N6
\sdram_controller|Selector0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector0~3_combout\ = (\sdram_controller|controllerState.SDRAM_READ~q\ & (((!\sdram_controller|LessThan8~0_combout\ & !\sdram_controller|LessThan7~0_combout\)) # (!\sdram_controller|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|LessThan8~0_combout\,
	datab => \sdram_controller|LessThan7~0_combout\,
	datac => \sdram_controller|Equal1~3_combout\,
	datad => \sdram_controller|controllerState.SDRAM_READ~q\,
	combout => \sdram_controller|Selector0~3_combout\);

-- Location: LCCOMB_X57_Y31_N28
\sdram_controller|readBufferWriteEnable~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferWriteEnable~0_combout\ = (\sdram_controller|Equal1~0_combout\ & (((\sdram_controller|burstLengthReg\(0) & \sdram_controller|process_1~9_combout\)) # (!\sdram_controller|stateCycleCount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|burstLengthReg\(0),
	datab => \sdram_controller|Equal1~0_combout\,
	datac => \sdram_controller|process_1~9_combout\,
	datad => \sdram_controller|stateCycleCount\(2),
	combout => \sdram_controller|readBufferWriteEnable~0_combout\);

-- Location: LCCOMB_X57_Y31_N14
\sdram_controller|LessThan7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|LessThan7~1_combout\ = (\sdram_controller|Equal1~3_combout\ & ((\sdram_controller|LessThan7~0_combout\) # ((!\sdram_controller|Equal12~0_combout\ & \sdram_controller|readBufferWriteEnable~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Equal12~0_combout\,
	datab => \sdram_controller|Equal1~3_combout\,
	datac => \sdram_controller|LessThan7~0_combout\,
	datad => \sdram_controller|readBufferWriteEnable~0_combout\,
	combout => \sdram_controller|LessThan7~1_combout\);

-- Location: LCCOMB_X56_Y29_N30
\sdram_controller|Selector0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector0~4_combout\ = (\sdram_controller|Equal1~4_combout\ & ((\sdram_controller|controllerState.SDRAM_ACTIVATE_ROW~q\) # ((\sdram_controller|controllerState.SDRAM_WRITE~q\ & !\sdram_controller|LessThan7~1_combout\)))) # 
-- (!\sdram_controller|Equal1~4_combout\ & (\sdram_controller|controllerState.SDRAM_WRITE~q\ & ((!\sdram_controller|LessThan7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Equal1~4_combout\,
	datab => \sdram_controller|controllerState.SDRAM_WRITE~q\,
	datac => \sdram_controller|controllerState.SDRAM_ACTIVATE_ROW~q\,
	datad => \sdram_controller|LessThan7~1_combout\,
	combout => \sdram_controller|Selector0~4_combout\);

-- Location: LCCOMB_X56_Y29_N12
\sdram_controller|Selector0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector0~5_combout\ = (\sdram_controller|Selector0~4_combout\) # ((\sdram_controller|Selector0~2_combout\) # ((\sdram_controller|LessThan1~1_combout\ & \sdram_controller|controllerState.SDRAM_INIT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|LessThan1~1_combout\,
	datab => \sdram_controller|controllerState.SDRAM_INIT~q\,
	datac => \sdram_controller|Selector0~4_combout\,
	datad => \sdram_controller|Selector0~2_combout\,
	combout => \sdram_controller|Selector0~5_combout\);

-- Location: LCCOMB_X56_Y30_N24
\sdram_controller|Selector0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector0~7_combout\ = (\sdram_controller|controllerState.SDRAM_IDLE~q\ & ((\sdram_controller|writeBufferEmpty~q\) # ((\sdram_controller|readDeviceIndexReg[0]~0_combout\) # (!\sdram_controller|refreshPending~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferEmpty~q\,
	datab => \sdram_controller|refreshPending~q\,
	datac => \sdram_controller|controllerState.SDRAM_IDLE~q\,
	datad => \sdram_controller|readDeviceIndexReg[0]~0_combout\,
	combout => \sdram_controller|Selector0~7_combout\);

-- Location: LCCOMB_X56_Y30_N22
\sdram_controller|Selector0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector0~8_combout\ = (\sdram_controller|Selector0~6_combout\) # ((\sdram_controller|Selector0~3_combout\) # ((\sdram_controller|Selector0~5_combout\) # (\sdram_controller|Selector0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Selector0~6_combout\,
	datab => \sdram_controller|Selector0~3_combout\,
	datac => \sdram_controller|Selector0~5_combout\,
	datad => \sdram_controller|Selector0~7_combout\,
	combout => \sdram_controller|Selector0~8_combout\);

-- Location: FF_X56_Y31_N17
\sdram_controller|stateCycleCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|stateCycleCount[0]~17_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|Selector0~8_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|stateCycleCount\(0));

-- Location: FF_X56_Y31_N19
\sdram_controller|stateCycleCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|stateCycleCount[1]~19_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|Selector0~8_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|stateCycleCount\(1));

-- Location: LCCOMB_X56_Y29_N22
\sdram_controller|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal1~2_combout\ = (\sdram_controller|Equal1~0_combout\ & !\sdram_controller|stateCycleCount\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sdram_controller|Equal1~0_combout\,
	datad => \sdram_controller|stateCycleCount\(2),
	combout => \sdram_controller|Equal1~2_combout\);

-- Location: LCCOMB_X56_Y29_N10
\sdram_controller|Equal1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal1~4_combout\ = (\sdram_controller|stateCycleCount\(1) & (\sdram_controller|Equal1~1_combout\ & (\sdram_controller|Equal1~2_combout\ & !\sdram_controller|stateCycleCount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datab => \sdram_controller|Equal1~1_combout\,
	datac => \sdram_controller|Equal1~2_combout\,
	datad => \sdram_controller|stateCycleCount\(0),
	combout => \sdram_controller|Equal1~4_combout\);

-- Location: LCCOMB_X55_Y30_N12
\sdram_controller|controllerState~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|controllerState~14_combout\ = (\s_enable~0_combout\ & ((\sdram_controller|Equal1~4_combout\) # (!\sdram_controller|controllerState.SDRAM_ACTIVATE_ROW~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Equal1~4_combout\,
	datab => \s_enable~0_combout\,
	datad => \sdram_controller|controllerState.SDRAM_ACTIVATE_ROW~q\,
	combout => \sdram_controller|controllerState~14_combout\);

-- Location: LCCOMB_X55_Y29_N2
\sdram_controller|controllerState.SDRAM_IDLE~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|controllerState.SDRAM_IDLE~2_combout\ = (!\sdram_controller|controllerState.SDRAM_ACTIVATE_ROW~q\ & (\sdram_controller|controllerState.SDRAM_POWER_UP~q\ & !\sdram_controller|controllerState.SDRAM_IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|controllerState.SDRAM_ACTIVATE_ROW~q\,
	datac => \sdram_controller|controllerState.SDRAM_POWER_UP~q\,
	datad => \sdram_controller|controllerState.SDRAM_IDLE~q\,
	combout => \sdram_controller|controllerState.SDRAM_IDLE~2_combout\);

-- Location: LCCOMB_X56_Y29_N28
\sdram_controller|controllerState~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|controllerState~19_combout\ = (\sdram_controller|controllerState.SDRAM_INIT~q\ & (\sdram_controller|LessThan1~1_combout\)) # (!\sdram_controller|controllerState.SDRAM_INIT~q\ & (((\sdram_controller|controllerState~18_combout\) # 
-- (\sdram_controller|Selector0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|LessThan1~1_combout\,
	datab => \sdram_controller|controllerState.SDRAM_INIT~q\,
	datac => \sdram_controller|controllerState~18_combout\,
	datad => \sdram_controller|Selector0~2_combout\,
	combout => \sdram_controller|controllerState~19_combout\);

-- Location: LCCOMB_X55_Y30_N0
\sdram_controller|controllerState~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|controllerState~12_combout\ = (\sdram_controller|refreshPending~q\ & (!\sdram_controller|writeBufferEmpty~q\ & ((!\sdram_controller|readBufferEmpty~q\) # (!\state.START_RECEIVING~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.START_RECEIVING~q\,
	datab => \sdram_controller|readBufferEmpty~q\,
	datac => \sdram_controller|refreshPending~q\,
	datad => \sdram_controller|writeBufferEmpty~q\,
	combout => \sdram_controller|controllerState~12_combout\);

-- Location: LCCOMB_X55_Y30_N18
\sdram_controller|controllerState~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|controllerState~13_combout\ = (\sdram_controller|controllerState.SDRAM_IDLE~q\ & ((\sdram_controller|controllerState~12_combout\) # ((!\sdram_controller|LessThan0~3_combout\ & !\sdram_controller|controllerState.SDRAM_POWER_UP~q\)))) # 
-- (!\sdram_controller|controllerState.SDRAM_IDLE~q\ & (!\sdram_controller|LessThan0~3_combout\ & (!\sdram_controller|controllerState.SDRAM_POWER_UP~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|controllerState.SDRAM_IDLE~q\,
	datab => \sdram_controller|LessThan0~3_combout\,
	datac => \sdram_controller|controllerState.SDRAM_POWER_UP~q\,
	datad => \sdram_controller|controllerState~12_combout\,
	combout => \sdram_controller|controllerState~13_combout\);

-- Location: LCCOMB_X55_Y30_N16
\sdram_controller|controllerState~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|controllerState~20_combout\ = (\sdram_controller|controllerState~14_combout\ & (!\sdram_controller|controllerState~13_combout\ & ((\sdram_controller|controllerState~19_combout\) # 
-- (!\sdram_controller|controllerState.SDRAM_IDLE~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|controllerState~14_combout\,
	datab => \sdram_controller|controllerState.SDRAM_IDLE~2_combout\,
	datac => \sdram_controller|controllerState~19_combout\,
	datad => \sdram_controller|controllerState~13_combout\,
	combout => \sdram_controller|controllerState~20_combout\);

-- Location: FF_X55_Y30_N23
\sdram_controller|controllerState.SDRAM_POWER_UP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|controllerState.SDRAM_POWER_UP~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \sdram_controller|controllerState~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|controllerState.SDRAM_POWER_UP~q\);

-- Location: LCCOMB_X54_Y30_N30
\sdram_controller|controllerState.SDRAM_IDLE~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|controllerState.SDRAM_IDLE~3_combout\ = (\sdram_controller|controllerState.SDRAM_IDLE~q\ & (((!\sdram_controller|controllerState~20_combout\)))) # (!\sdram_controller|controllerState.SDRAM_IDLE~q\ & 
-- (\sdram_controller|controllerState.SDRAM_POWER_UP~q\ & (!\sdram_controller|controllerState.SDRAM_ACTIVATE_ROW~q\ & \sdram_controller|controllerState~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|controllerState.SDRAM_POWER_UP~q\,
	datab => \sdram_controller|controllerState.SDRAM_ACTIVATE_ROW~q\,
	datac => \sdram_controller|controllerState.SDRAM_IDLE~q\,
	datad => \sdram_controller|controllerState~20_combout\,
	combout => \sdram_controller|controllerState.SDRAM_IDLE~3_combout\);

-- Location: FF_X54_Y30_N31
\sdram_controller|controllerState.SDRAM_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|controllerState.SDRAM_IDLE~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|controllerState.SDRAM_IDLE~q\);

-- Location: LCCOMB_X57_Y30_N4
\sdram_controller|readDeviceIndexReg[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readDeviceIndexReg[0]~1_combout\ = (\sdram_controller|controllerState.SDRAM_IDLE~q\ & \sdram_controller|refreshPending~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sdram_controller|controllerState.SDRAM_IDLE~q\,
	datad => \sdram_controller|refreshPending~q\,
	combout => \sdram_controller|readDeviceIndexReg[0]~1_combout\);

-- Location: FF_X55_Y30_N9
\sdram_controller|controllerState.SDRAM_ACTIVATE_ROW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sdram_controller|readDeviceIndexReg[0]~1_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \sdram_controller|controllerState~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|controllerState.SDRAM_ACTIVATE_ROW~q\);

-- Location: LCCOMB_X56_Y30_N28
\sdram_controller|controllerState~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|controllerState~29_combout\ = (\sdram_controller|controllerState.SDRAM_ACTIVATE_ROW~q\ & !\sdram_controller|memOperationReg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|controllerState.SDRAM_ACTIVATE_ROW~q\,
	datad => \sdram_controller|memOperationReg~q\,
	combout => \sdram_controller|controllerState~29_combout\);

-- Location: FF_X56_Y30_N29
\sdram_controller|controllerState.SDRAM_WRITE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|controllerState~29_combout\,
	clrn => \reset~input_o\,
	ena => \sdram_controller|controllerState~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|controllerState.SDRAM_WRITE~q\);

-- Location: LCCOMB_X55_Y27_N2
\sdram_controller|writeBufferEmpty~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferEmpty~2_combout\ = (\sdram_controller|writeBufferEmpty~q\) # ((!\sdram_controller|writeBufferState~0_combout\ & \sdram_controller|writeBufferState~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|writeBufferEmpty~q\,
	datac => \sdram_controller|writeBufferState~0_combout\,
	datad => \sdram_controller|writeBufferState~q\,
	combout => \sdram_controller|writeBufferEmpty~2_combout\);

-- Location: LCCOMB_X56_Y31_N0
\sdram_controller|LessThan12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|LessThan12~0_combout\ = ((!\sdram_controller|stateCycleCount\(0) & \sdram_controller|burstLengthReg\(0))) # (!\sdram_controller|stateCycleCount\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(0),
	datac => \sdram_controller|stateCycleCount\(1),
	datad => \sdram_controller|burstLengthReg\(0),
	combout => \sdram_controller|LessThan12~0_combout\);

-- Location: LCCOMB_X56_Y31_N6
\sdram_controller|LessThan12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|LessThan12~1_combout\ = (\sdram_controller|Equal1~0_combout\ & (!\sdram_controller|Equal12~0_combout\ & (\sdram_controller|LessThan12~0_combout\ & !\sdram_controller|stateCycleCount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Equal1~0_combout\,
	datab => \sdram_controller|Equal12~0_combout\,
	datac => \sdram_controller|LessThan12~0_combout\,
	datad => \sdram_controller|stateCycleCount\(2),
	combout => \sdram_controller|LessThan12~1_combout\);

-- Location: LCCOMB_X55_Y30_N4
\sdram_controller|Selector27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector27~0_combout\ = (\sdram_controller|controllerState.SDRAM_WRITE~q\ & (((!\sdram_controller|LessThan7~0_combout\ & !\sdram_controller|LessThan12~1_combout\)) # (!\sdram_controller|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|LessThan7~0_combout\,
	datab => \sdram_controller|Equal1~3_combout\,
	datac => \sdram_controller|LessThan12~1_combout\,
	datad => \sdram_controller|controllerState.SDRAM_WRITE~q\,
	combout => \sdram_controller|Selector27~0_combout\);

-- Location: FF_X55_Y30_N21
\sdram_controller|writeBufferEmptyResetShiftReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sdram_controller|Selector27~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBufferEmptyResetShiftReg\(0));

-- Location: LCCOMB_X56_Y31_N12
\sdram_controller|writeBufferEmpty~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferEmpty~4_combout\ = (\sdram_controller|Equal1~3_combout\ & ((\sdram_controller|LessThan12~1_combout\) # ((\sdram_controller|burstLengthReg\(7) & !\sdram_controller|stateCycleCount\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Equal1~3_combout\,
	datab => \sdram_controller|burstLengthReg\(7),
	datac => \sdram_controller|LessThan12~1_combout\,
	datad => \sdram_controller|stateCycleCount\(7),
	combout => \sdram_controller|writeBufferEmpty~4_combout\);

-- Location: LCCOMB_X55_Y30_N20
\sdram_controller|writeBufferEmpty~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferEmpty~3_combout\ = (\sdram_controller|writeBufferEmpty~2_combout\ & (((\sdram_controller|writeBufferEmptyResetShiftReg\(0)) # (\sdram_controller|writeBufferEmpty~4_combout\)) # 
-- (!\sdram_controller|controllerState.SDRAM_WRITE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|controllerState.SDRAM_WRITE~q\,
	datab => \sdram_controller|writeBufferEmpty~2_combout\,
	datac => \sdram_controller|writeBufferEmptyResetShiftReg\(0),
	datad => \sdram_controller|writeBufferEmpty~4_combout\,
	combout => \sdram_controller|writeBufferEmpty~3_combout\);

-- Location: FF_X55_Y30_N13
\sdram_controller|writeBufferEmpty\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sdram_controller|writeBufferEmpty~3_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBufferEmpty~q\);

-- Location: LCCOMB_X54_Y30_N26
\sdram_controller|SDRAM_Ready[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|SDRAM_Ready[0]~0_combout\ = (!\sdram_controller|writeBufferEmpty~q\ & (!\sdram_controller|writeBufferState~q\ & \state.START_TRANSMISSION~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|writeBufferEmpty~q\,
	datac => \sdram_controller|writeBufferState~q\,
	datad => \state.START_TRANSMISSION~q\,
	combout => \sdram_controller|SDRAM_Ready[0]~0_combout\);

-- Location: FF_X55_Y27_N11
\sdram_controller|writeBufferWriteCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBufferWriteCount[0]~9_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|SDRAM_Ready[0]~0_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBufferWriteCount\(0));

-- Location: LCCOMB_X55_Y27_N12
\sdram_controller|writeBufferWriteCount[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferWriteCount[1]~11_combout\ = (\sdram_controller|writeBufferWriteCount\(1) & (!\sdram_controller|writeBufferWriteCount[0]~10\)) # (!\sdram_controller|writeBufferWriteCount\(1) & ((\sdram_controller|writeBufferWriteCount[0]~10\) 
-- # (GND)))
-- \sdram_controller|writeBufferWriteCount[1]~12\ = CARRY((!\sdram_controller|writeBufferWriteCount[0]~10\) # (!\sdram_controller|writeBufferWriteCount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(1),
	datad => VCC,
	cin => \sdram_controller|writeBufferWriteCount[0]~10\,
	combout => \sdram_controller|writeBufferWriteCount[1]~11_combout\,
	cout => \sdram_controller|writeBufferWriteCount[1]~12\);

-- Location: FF_X55_Y27_N13
\sdram_controller|writeBufferWriteCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBufferWriteCount[1]~11_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|SDRAM_Ready[0]~0_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBufferWriteCount\(1));

-- Location: LCCOMB_X55_Y27_N14
\sdram_controller|writeBufferWriteCount[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferWriteCount[2]~13_combout\ = (\sdram_controller|writeBufferWriteCount\(2) & (\sdram_controller|writeBufferWriteCount[1]~12\ $ (GND))) # (!\sdram_controller|writeBufferWriteCount\(2) & 
-- (!\sdram_controller|writeBufferWriteCount[1]~12\ & VCC))
-- \sdram_controller|writeBufferWriteCount[2]~14\ = CARRY((\sdram_controller|writeBufferWriteCount\(2) & !\sdram_controller|writeBufferWriteCount[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|writeBufferWriteCount\(2),
	datad => VCC,
	cin => \sdram_controller|writeBufferWriteCount[1]~12\,
	combout => \sdram_controller|writeBufferWriteCount[2]~13_combout\,
	cout => \sdram_controller|writeBufferWriteCount[2]~14\);

-- Location: FF_X55_Y27_N15
\sdram_controller|writeBufferWriteCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBufferWriteCount[2]~13_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|SDRAM_Ready[0]~0_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBufferWriteCount\(2));

-- Location: LCCOMB_X55_Y27_N16
\sdram_controller|writeBufferWriteCount[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferWriteCount[3]~15_combout\ = (\sdram_controller|writeBufferWriteCount\(3) & (!\sdram_controller|writeBufferWriteCount[2]~14\)) # (!\sdram_controller|writeBufferWriteCount\(3) & ((\sdram_controller|writeBufferWriteCount[2]~14\) 
-- # (GND)))
-- \sdram_controller|writeBufferWriteCount[3]~16\ = CARRY((!\sdram_controller|writeBufferWriteCount[2]~14\) # (!\sdram_controller|writeBufferWriteCount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|writeBufferWriteCount\(3),
	datad => VCC,
	cin => \sdram_controller|writeBufferWriteCount[2]~14\,
	combout => \sdram_controller|writeBufferWriteCount[3]~15_combout\,
	cout => \sdram_controller|writeBufferWriteCount[3]~16\);

-- Location: FF_X55_Y27_N17
\sdram_controller|writeBufferWriteCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBufferWriteCount[3]~15_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|SDRAM_Ready[0]~0_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBufferWriteCount\(3));

-- Location: LCCOMB_X55_Y27_N18
\sdram_controller|writeBufferWriteCount[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferWriteCount[4]~17_combout\ = (\sdram_controller|writeBufferWriteCount\(4) & (\sdram_controller|writeBufferWriteCount[3]~16\ $ (GND))) # (!\sdram_controller|writeBufferWriteCount\(4) & 
-- (!\sdram_controller|writeBufferWriteCount[3]~16\ & VCC))
-- \sdram_controller|writeBufferWriteCount[4]~18\ = CARRY((\sdram_controller|writeBufferWriteCount\(4) & !\sdram_controller|writeBufferWriteCount[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|writeBufferWriteCount\(4),
	datad => VCC,
	cin => \sdram_controller|writeBufferWriteCount[3]~16\,
	combout => \sdram_controller|writeBufferWriteCount[4]~17_combout\,
	cout => \sdram_controller|writeBufferWriteCount[4]~18\);

-- Location: FF_X55_Y27_N19
\sdram_controller|writeBufferWriteCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBufferWriteCount[4]~17_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|SDRAM_Ready[0]~0_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBufferWriteCount\(4));

-- Location: LCCOMB_X55_Y27_N20
\sdram_controller|writeBufferWriteCount[5]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferWriteCount[5]~19_combout\ = (\sdram_controller|writeBufferWriteCount\(5) & (!\sdram_controller|writeBufferWriteCount[4]~18\)) # (!\sdram_controller|writeBufferWriteCount\(5) & ((\sdram_controller|writeBufferWriteCount[4]~18\) 
-- # (GND)))
-- \sdram_controller|writeBufferWriteCount[5]~20\ = CARRY((!\sdram_controller|writeBufferWriteCount[4]~18\) # (!\sdram_controller|writeBufferWriteCount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(5),
	datad => VCC,
	cin => \sdram_controller|writeBufferWriteCount[4]~18\,
	combout => \sdram_controller|writeBufferWriteCount[5]~19_combout\,
	cout => \sdram_controller|writeBufferWriteCount[5]~20\);

-- Location: FF_X55_Y27_N21
\sdram_controller|writeBufferWriteCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBufferWriteCount[5]~19_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|SDRAM_Ready[0]~0_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBufferWriteCount\(5));

-- Location: LCCOMB_X55_Y27_N22
\sdram_controller|writeBufferWriteCount[6]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferWriteCount[6]~21_combout\ = (\sdram_controller|writeBufferWriteCount\(6) & (\sdram_controller|writeBufferWriteCount[5]~20\ $ (GND))) # (!\sdram_controller|writeBufferWriteCount\(6) & 
-- (!\sdram_controller|writeBufferWriteCount[5]~20\ & VCC))
-- \sdram_controller|writeBufferWriteCount[6]~22\ = CARRY((\sdram_controller|writeBufferWriteCount\(6) & !\sdram_controller|writeBufferWriteCount[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(6),
	datad => VCC,
	cin => \sdram_controller|writeBufferWriteCount[5]~20\,
	combout => \sdram_controller|writeBufferWriteCount[6]~21_combout\,
	cout => \sdram_controller|writeBufferWriteCount[6]~22\);

-- Location: FF_X55_Y27_N23
\sdram_controller|writeBufferWriteCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBufferWriteCount[6]~21_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|SDRAM_Ready[0]~0_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBufferWriteCount\(6));

-- Location: LCCOMB_X55_Y27_N24
\sdram_controller|writeBufferWriteCount[7]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferWriteCount[7]~23_combout\ = (\sdram_controller|writeBufferWriteCount\(7) & (!\sdram_controller|writeBufferWriteCount[6]~22\)) # (!\sdram_controller|writeBufferWriteCount\(7) & ((\sdram_controller|writeBufferWriteCount[6]~22\) 
-- # (GND)))
-- \sdram_controller|writeBufferWriteCount[7]~24\ = CARRY((!\sdram_controller|writeBufferWriteCount[6]~22\) # (!\sdram_controller|writeBufferWriteCount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|writeBufferWriteCount\(7),
	datad => VCC,
	cin => \sdram_controller|writeBufferWriteCount[6]~22\,
	combout => \sdram_controller|writeBufferWriteCount[7]~23_combout\,
	cout => \sdram_controller|writeBufferWriteCount[7]~24\);

-- Location: FF_X55_Y27_N25
\sdram_controller|writeBufferWriteCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBufferWriteCount[7]~23_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|SDRAM_Ready[0]~0_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBufferWriteCount\(7));

-- Location: LCCOMB_X55_Y27_N26
\sdram_controller|writeBufferWriteCount[8]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferWriteCount[8]~25_combout\ = \sdram_controller|writeBufferWriteCount\(8) $ (!\sdram_controller|writeBufferWriteCount[7]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(8),
	cin => \sdram_controller|writeBufferWriteCount[7]~24\,
	combout => \sdram_controller|writeBufferWriteCount[8]~25_combout\);

-- Location: FF_X55_Y27_N27
\sdram_controller|writeBufferWriteCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBufferWriteCount[8]~25_combout\,
	clrn => \reset~input_o\,
	sclr => \sdram_controller|SDRAM_Ready[0]~0_combout\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBufferWriteCount\(8));

-- Location: LCCOMB_X55_Y27_N30
\sdram_controller|writeBufferState~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferState~0_combout\ = (!\sdram_controller|writeBufferWriteCount\(8) & (!\sdram_controller|writeBufferWriteCount\(7) & (!\sdram_controller|writeBufferWriteCount\(6) & \sdram_controller|writeAddressReg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(8),
	datab => \sdram_controller|writeBufferWriteCount\(7),
	datac => \sdram_controller|writeBufferWriteCount\(6),
	datad => \sdram_controller|writeAddressReg\(1),
	combout => \sdram_controller|writeBufferState~0_combout\);

-- Location: LCCOMB_X55_Y27_N0
\sdram_controller|writeBufferState~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferState~1_combout\ = (\s_enable~0_combout\ & ((\sdram_controller|SDRAM_Ready[0]~0_combout\) # ((\sdram_controller|writeBufferState~0_combout\ & \sdram_controller|writeBufferState~q\)))) # (!\s_enable~0_combout\ & 
-- (((\sdram_controller|writeBufferState~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferState~0_combout\,
	datab => \sdram_controller|SDRAM_Ready[0]~0_combout\,
	datac => \sdram_controller|writeBufferState~q\,
	datad => \s_enable~0_combout\,
	combout => \sdram_controller|writeBufferState~1_combout\);

-- Location: FF_X55_Y27_N1
\sdram_controller|writeBufferState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBufferState~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBufferState~q\);

-- Location: LCCOMB_X52_Y27_N28
\sdram_controller|writeBufferDataIn[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferDataIn[0]~0_combout\ = (transmitCount(0) & (\sdram_controller|writeBufferState~q\ & \state.TRANSMIT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transmitCount(0),
	datab => \sdram_controller|writeBufferState~q\,
	datad => \state.TRANSMIT~q\,
	combout => \sdram_controller|writeBufferDataIn[0]~0_combout\);

-- Location: LCCOMB_X55_Y27_N8
\sdram_controller|writeBufferWriteAddress[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferWriteAddress[0]~0_combout\ = (\sdram_controller|writeBufferWriteCount\(0) & \sdram_controller|writeBufferState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(0),
	datad => \sdram_controller|writeBufferState~q\,
	combout => \sdram_controller|writeBufferWriteAddress[0]~0_combout\);

-- Location: LCCOMB_X55_Y27_N4
\sdram_controller|writeBufferWriteAddress[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferWriteAddress[1]~1_combout\ = (\sdram_controller|writeBufferWriteCount\(1) & \sdram_controller|writeBufferState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(1),
	datad => \sdram_controller|writeBufferState~q\,
	combout => \sdram_controller|writeBufferWriteAddress[1]~1_combout\);

-- Location: LCCOMB_X54_Y27_N28
\sdram_controller|writeBufferWriteAddress[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferWriteAddress[2]~2_combout\ = (\sdram_controller|writeBufferState~q\ & \sdram_controller|writeBufferWriteCount\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|writeBufferState~q\,
	datac => \sdram_controller|writeBufferWriteCount\(2),
	combout => \sdram_controller|writeBufferWriteAddress[2]~2_combout\);

-- Location: LCCOMB_X54_Y27_N14
\sdram_controller|writeBufferWriteAddress[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferWriteAddress[3]~3_combout\ = (\sdram_controller|writeBufferWriteCount\(3) & \sdram_controller|writeBufferState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|writeBufferWriteCount\(3),
	datac => \sdram_controller|writeBufferState~q\,
	combout => \sdram_controller|writeBufferWriteAddress[3]~3_combout\);

-- Location: LCCOMB_X54_Y27_N24
\sdram_controller|writeBufferWriteAddress[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferWriteAddress[4]~4_combout\ = (\sdram_controller|writeBufferState~q\ & \sdram_controller|writeBufferWriteCount\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sdram_controller|writeBufferState~q\,
	datad => \sdram_controller|writeBufferWriteCount\(4),
	combout => \sdram_controller|writeBufferWriteAddress[4]~4_combout\);

-- Location: LCCOMB_X54_Y27_N26
\sdram_controller|writeBufferWriteAddress[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferWriteAddress[5]~5_combout\ = (\sdram_controller|writeBufferState~q\ & \sdram_controller|writeBufferWriteCount\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|writeBufferState~q\,
	datac => \sdram_controller|writeBufferWriteCount\(5),
	combout => \sdram_controller|writeBufferWriteAddress[5]~5_combout\);

-- Location: LCCOMB_X54_Y27_N16
\sdram_controller|writeBufferWriteAddress[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferWriteAddress[6]~6_combout\ = (\sdram_controller|writeBufferState~q\ & \sdram_controller|writeBufferWriteCount\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sdram_controller|writeBufferState~q\,
	datad => \sdram_controller|writeBufferWriteCount\(6),
	combout => \sdram_controller|writeBufferWriteAddress[6]~6_combout\);

-- Location: LCCOMB_X55_Y27_N6
\sdram_controller|writeBufferWriteAddress[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferWriteAddress[7]~7_combout\ = (\sdram_controller|writeBufferWriteCount\(7) & \sdram_controller|writeBufferState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|writeBufferWriteCount\(7),
	datad => \sdram_controller|writeBufferState~q\,
	combout => \sdram_controller|writeBufferWriteAddress[7]~7_combout\);

-- Location: LCCOMB_X54_Y27_N18
\sdram_controller|writeBufferWriteAddress[8]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferWriteAddress[8]~8_combout\ = (\sdram_controller|writeBufferState~q\ & \sdram_controller|writeBufferWriteCount\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sdram_controller|writeBufferState~q\,
	datad => \sdram_controller|writeBufferWriteCount\(8),
	combout => \sdram_controller|writeBufferWriteAddress[8]~8_combout\);

-- Location: LCCOMB_X54_Y29_N0
\sdram_controller|Add14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add14~0_combout\ = \sdram_controller|stateCycleCount\(0) $ (VCC)
-- \sdram_controller|Add14~1\ = CARRY(\sdram_controller|stateCycleCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|stateCycleCount\(0),
	datad => VCC,
	combout => \sdram_controller|Add14~0_combout\,
	cout => \sdram_controller|Add14~1\);

-- Location: LCCOMB_X54_Y29_N2
\sdram_controller|Add14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add14~3_combout\ = (\sdram_controller|stateCycleCount\(1) & (!\sdram_controller|Add14~1\)) # (!\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|Add14~1\) # (GND)))
-- \sdram_controller|Add14~4\ = CARRY((!\sdram_controller|Add14~1\) # (!\sdram_controller|stateCycleCount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datad => VCC,
	cin => \sdram_controller|Add14~1\,
	combout => \sdram_controller|Add14~3_combout\,
	cout => \sdram_controller|Add14~4\);

-- Location: LCCOMB_X54_Y29_N20
\sdram_controller|Add14~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add14~5_combout\ = (\sdram_controller|Add14~3_combout\ & \sdram_controller|controllerState.SDRAM_WRITE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|Add14~3_combout\,
	datad => \sdram_controller|controllerState.SDRAM_WRITE~q\,
	combout => \sdram_controller|Add14~5_combout\);

-- Location: LCCOMB_X54_Y29_N4
\sdram_controller|Add14~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add14~6_combout\ = (\sdram_controller|stateCycleCount\(2) & (\sdram_controller|Add14~4\ $ (GND))) # (!\sdram_controller|stateCycleCount\(2) & (!\sdram_controller|Add14~4\ & VCC))
-- \sdram_controller|Add14~7\ = CARRY((\sdram_controller|stateCycleCount\(2) & !\sdram_controller|Add14~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(2),
	datad => VCC,
	cin => \sdram_controller|Add14~4\,
	combout => \sdram_controller|Add14~6_combout\,
	cout => \sdram_controller|Add14~7\);

-- Location: LCCOMB_X54_Y29_N22
\sdram_controller|Add14~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add14~8_combout\ = (\sdram_controller|Add14~6_combout\ & \sdram_controller|controllerState.SDRAM_WRITE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sdram_controller|Add14~6_combout\,
	datad => \sdram_controller|controllerState.SDRAM_WRITE~q\,
	combout => \sdram_controller|Add14~8_combout\);

-- Location: LCCOMB_X54_Y29_N6
\sdram_controller|Add14~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add14~9_combout\ = (\sdram_controller|stateCycleCount\(3) & (!\sdram_controller|Add14~7\)) # (!\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|Add14~7\) # (GND)))
-- \sdram_controller|Add14~10\ = CARRY((!\sdram_controller|Add14~7\) # (!\sdram_controller|stateCycleCount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|stateCycleCount\(3),
	datad => VCC,
	cin => \sdram_controller|Add14~7\,
	combout => \sdram_controller|Add14~9_combout\,
	cout => \sdram_controller|Add14~10\);

-- Location: LCCOMB_X54_Y27_N12
\sdram_controller|Add14~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add14~11_combout\ = (\sdram_controller|Add14~9_combout\ & \sdram_controller|controllerState.SDRAM_WRITE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sdram_controller|Add14~9_combout\,
	datad => \sdram_controller|controllerState.SDRAM_WRITE~q\,
	combout => \sdram_controller|Add14~11_combout\);

-- Location: LCCOMB_X54_Y29_N8
\sdram_controller|Add14~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add14~12_combout\ = (\sdram_controller|stateCycleCount\(4) & (\sdram_controller|Add14~10\ $ (GND))) # (!\sdram_controller|stateCycleCount\(4) & (!\sdram_controller|Add14~10\ & VCC))
-- \sdram_controller|Add14~13\ = CARRY((\sdram_controller|stateCycleCount\(4) & !\sdram_controller|Add14~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|stateCycleCount\(4),
	datad => VCC,
	cin => \sdram_controller|Add14~10\,
	combout => \sdram_controller|Add14~12_combout\,
	cout => \sdram_controller|Add14~13\);

-- Location: LCCOMB_X54_Y27_N30
\sdram_controller|Add14~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add14~14_combout\ = (\sdram_controller|Add14~12_combout\ & \sdram_controller|controllerState.SDRAM_WRITE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|Add14~12_combout\,
	datad => \sdram_controller|controllerState.SDRAM_WRITE~q\,
	combout => \sdram_controller|Add14~14_combout\);

-- Location: LCCOMB_X54_Y29_N10
\sdram_controller|Add14~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add14~15_combout\ = (\sdram_controller|stateCycleCount\(5) & (!\sdram_controller|Add14~13\)) # (!\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|Add14~13\) # (GND)))
-- \sdram_controller|Add14~16\ = CARRY((!\sdram_controller|Add14~13\) # (!\sdram_controller|stateCycleCount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|stateCycleCount\(5),
	datad => VCC,
	cin => \sdram_controller|Add14~13\,
	combout => \sdram_controller|Add14~15_combout\,
	cout => \sdram_controller|Add14~16\);

-- Location: LCCOMB_X54_Y27_N4
\sdram_controller|Add14~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add14~17_combout\ = (\sdram_controller|Add14~15_combout\ & \sdram_controller|controllerState.SDRAM_WRITE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|Add14~15_combout\,
	datad => \sdram_controller|controllerState.SDRAM_WRITE~q\,
	combout => \sdram_controller|Add14~17_combout\);

-- Location: LCCOMB_X54_Y29_N12
\sdram_controller|Add14~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add14~18_combout\ = (\sdram_controller|stateCycleCount\(6) & (\sdram_controller|Add14~16\ $ (GND))) # (!\sdram_controller|stateCycleCount\(6) & (!\sdram_controller|Add14~16\ & VCC))
-- \sdram_controller|Add14~19\ = CARRY((\sdram_controller|stateCycleCount\(6) & !\sdram_controller|Add14~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|stateCycleCount\(6),
	datad => VCC,
	cin => \sdram_controller|Add14~16\,
	combout => \sdram_controller|Add14~18_combout\,
	cout => \sdram_controller|Add14~19\);

-- Location: LCCOMB_X54_Y27_N10
\sdram_controller|Add14~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add14~20_combout\ = (\sdram_controller|Add14~18_combout\ & \sdram_controller|controllerState.SDRAM_WRITE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Add14~18_combout\,
	datad => \sdram_controller|controllerState.SDRAM_WRITE~q\,
	combout => \sdram_controller|Add14~20_combout\);

-- Location: LCCOMB_X54_Y29_N14
\sdram_controller|Add14~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add14~21_combout\ = (\sdram_controller|stateCycleCount\(7) & (!\sdram_controller|Add14~19\)) # (!\sdram_controller|stateCycleCount\(7) & ((\sdram_controller|Add14~19\) # (GND)))
-- \sdram_controller|Add14~22\ = CARRY((!\sdram_controller|Add14~19\) # (!\sdram_controller|stateCycleCount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|stateCycleCount\(7),
	datad => VCC,
	cin => \sdram_controller|Add14~19\,
	combout => \sdram_controller|Add14~21_combout\,
	cout => \sdram_controller|Add14~22\);

-- Location: LCCOMB_X54_Y27_N8
\sdram_controller|Add14~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add14~23_combout\ = (\sdram_controller|Add14~21_combout\ & \sdram_controller|controllerState.SDRAM_WRITE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Add14~21_combout\,
	datad => \sdram_controller|controllerState.SDRAM_WRITE~q\,
	combout => \sdram_controller|Add14~23_combout\);

-- Location: LCCOMB_X54_Y29_N16
\sdram_controller|Add14~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add14~24_combout\ = (\sdram_controller|stateCycleCount\(8) & (\sdram_controller|Add14~22\ $ (GND))) # (!\sdram_controller|stateCycleCount\(8) & (!\sdram_controller|Add14~22\ & VCC))
-- \sdram_controller|Add14~25\ = CARRY((\sdram_controller|stateCycleCount\(8) & !\sdram_controller|Add14~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(8),
	datad => VCC,
	cin => \sdram_controller|Add14~22\,
	combout => \sdram_controller|Add14~24_combout\,
	cout => \sdram_controller|Add14~25\);

-- Location: LCCOMB_X54_Y29_N28
\sdram_controller|Add14~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add14~26_combout\ = (\sdram_controller|Add14~24_combout\ & \sdram_controller|controllerState.SDRAM_WRITE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|Add14~24_combout\,
	datad => \sdram_controller|controllerState.SDRAM_WRITE~q\,
	combout => \sdram_controller|Add14~26_combout\);

-- Location: LCCOMB_X54_Y29_N18
\sdram_controller|Add14~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add14~27_combout\ = \sdram_controller|Add14~25\ $ (\sdram_controller|stateCycleCount\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \sdram_controller|stateCycleCount\(9),
	cin => \sdram_controller|Add14~25\,
	combout => \sdram_controller|Add14~27_combout\);

-- Location: LCCOMB_X54_Y29_N30
\sdram_controller|Add14~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add14~29_combout\ = (\sdram_controller|Add14~27_combout\ & \sdram_controller|controllerState.SDRAM_WRITE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|Add14~27_combout\,
	datad => \sdram_controller|controllerState.SDRAM_WRITE~q\,
	combout => \sdram_controller|Add14~29_combout\);

-- Location: LCCOMB_X52_Y27_N26
\sdram_controller|writeBufferDataIn[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferDataIn[1]~1_combout\ = (\sdram_controller|writeBufferState~q\ & (transmitCount(1) & \state.TRANSMIT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|writeBufferState~q\,
	datac => transmitCount(1),
	datad => \state.TRANSMIT~q\,
	combout => \sdram_controller|writeBufferDataIn[1]~1_combout\);

-- Location: LCCOMB_X52_Y27_N4
\sdram_controller|writeBufferDataIn[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferDataIn[2]~2_combout\ = (transmitCount(2) & (\sdram_controller|writeBufferState~q\ & \state.TRANSMIT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transmitCount(2),
	datab => \sdram_controller|writeBufferState~q\,
	datad => \state.TRANSMIT~q\,
	combout => \sdram_controller|writeBufferDataIn[2]~2_combout\);

-- Location: LCCOMB_X52_Y27_N30
\sdram_controller|writeBufferDataIn[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferDataIn[3]~3_combout\ = (transmitCount(3) & (\sdram_controller|writeBufferState~q\ & \state.TRANSMIT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transmitCount(3),
	datab => \sdram_controller|writeBufferState~q\,
	datad => \state.TRANSMIT~q\,
	combout => \sdram_controller|writeBufferDataIn[3]~3_combout\);

-- Location: LCCOMB_X52_Y27_N0
\sdram_controller|writeBufferDataIn[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferDataIn[4]~4_combout\ = (\sdram_controller|writeBufferState~q\ & (transmitCount(4) & \state.TRANSMIT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|writeBufferState~q\,
	datac => transmitCount(4),
	datad => \state.TRANSMIT~q\,
	combout => \sdram_controller|writeBufferDataIn[4]~4_combout\);

-- Location: LCCOMB_X52_Y27_N2
\sdram_controller|writeBufferDataIn[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferDataIn[5]~5_combout\ = (transmitCount(5) & (\sdram_controller|writeBufferState~q\ & \state.TRANSMIT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => transmitCount(5),
	datac => \sdram_controller|writeBufferState~q\,
	datad => \state.TRANSMIT~q\,
	combout => \sdram_controller|writeBufferDataIn[5]~5_combout\);

-- Location: LCCOMB_X54_Y30_N24
\sdram_controller|writeBufferDataIn[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferDataIn[6]~6_combout\ = (\sdram_controller|writeBufferState~q\ & (\state.TRANSMIT~q\ & transmitCount(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|writeBufferState~q\,
	datac => \state.TRANSMIT~q\,
	datad => transmitCount(6),
	combout => \sdram_controller|writeBufferDataIn[6]~6_combout\);

-- Location: LCCOMB_X54_Y30_N6
\sdram_controller|writeBufferDataIn[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferDataIn[7]~7_combout\ = (\state.TRANSMIT~q\ & (\sdram_controller|writeBufferState~q\ & transmitCount(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.TRANSMIT~q\,
	datac => \sdram_controller|writeBufferState~q\,
	datad => transmitCount(7),
	combout => \sdram_controller|writeBufferDataIn[7]~7_combout\);

-- Location: LCCOMB_X52_Y28_N8
\sdram_controller|writeBufferDataIn[8]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferDataIn[8]~8_combout\ = (transmitCount(8) & (\state.TRANSMIT~q\ & \sdram_controller|writeBufferState~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transmitCount(8),
	datac => \state.TRANSMIT~q\,
	datad => \sdram_controller|writeBufferState~q\,
	combout => \sdram_controller|writeBufferDataIn[8]~8_combout\);

-- Location: LCCOMB_X54_Y30_N10
\sdram_controller|writeBufferDataIn[9]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferDataIn[9]~9_combout\ = (\sdram_controller|writeBufferState~q\ & (transmitCount(9) & \state.TRANSMIT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|writeBufferState~q\,
	datac => transmitCount(9),
	datad => \state.TRANSMIT~q\,
	combout => \sdram_controller|writeBufferDataIn[9]~9_combout\);

-- Location: M9K_X53_Y27_N0
\sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "SdramController:sdram_controller|writeBuffer:writeBufferInstance|altsyncram:writeBufferRAM_rtl_0|altsyncram_gdc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 9,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 18,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 511,
	port_b_logical_ram_depth => 512,
	port_b_logical_ram_width => 10,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \sdram_controller|writeBufferState~q\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \sdram_controller|writeBufferState~q\,
	portadatain => \sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X54_Y29_N26
\sdram_controller|Add14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add14~2_combout\ = (\sdram_controller|Add14~0_combout\ & \sdram_controller|controllerState.SDRAM_WRITE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|Add14~0_combout\,
	datad => \sdram_controller|controllerState.SDRAM_WRITE~q\,
	combout => \sdram_controller|Add14~2_combout\);

-- Location: FF_X54_Y27_N9
\sdram_controller|writeBufferInstance|readUpperBytesReg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sdram_controller|Add14~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBufferInstance|readUpperBytesReg~q\);

-- Location: LCCOMB_X56_Y27_N12
\sdram_controller|writeBufferInstance|dataOut[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferInstance|dataOut[0]~0_combout\ = (\sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a0~portbdataout\ & \sdram_controller|writeBufferInstance|readUpperBytesReg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datac => \sdram_controller|writeBufferInstance|readUpperBytesReg~q\,
	combout => \sdram_controller|writeBufferInstance|dataOut[0]~0_combout\);

-- Location: LCCOMB_X57_Y31_N2
\sdram_controller|SDRAM_DATA[15]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|SDRAM_DATA[15]~17_combout\ = (\sdram_controller|controllerState.SDRAM_WRITE~q\ & (\sdram_controller|Equal1~3_combout\ & ((\sdram_controller|burstLengthReg\(7)) # (!\sdram_controller|stateCycleCount\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|controllerState.SDRAM_WRITE~q\,
	datab => \sdram_controller|Equal1~3_combout\,
	datac => \sdram_controller|stateCycleCount\(7),
	datad => \sdram_controller|burstLengthReg\(7),
	combout => \sdram_controller|SDRAM_DATA[15]~17_combout\);

-- Location: LCCOMB_X57_Y31_N16
\sdram_controller|SDRAM_DATA[15]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|SDRAM_DATA[15]~18_combout\ = (\sdram_controller|SDRAM_DATA[15]~17_combout\ & ((\sdram_controller|Equal12~0_combout\) # ((\sdram_controller|Equal1~2_combout\ & \sdram_controller|SDRAM_DATA[15]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Equal1~2_combout\,
	datab => \sdram_controller|SDRAM_DATA[15]~17_combout\,
	datac => \sdram_controller|SDRAM_DATA[15]~0_combout\,
	datad => \sdram_controller|Equal12~0_combout\,
	combout => \sdram_controller|SDRAM_DATA[15]~18_combout\);

-- Location: LCCOMB_X56_Y27_N26
\sdram_controller|writeBufferInstance|dataOut[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferInstance|dataOut[1]~1_combout\ = (\sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a1\ & \sdram_controller|writeBufferInstance|readUpperBytesReg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a1\,
	datac => \sdram_controller|writeBufferInstance|readUpperBytesReg~q\,
	combout => \sdram_controller|writeBufferInstance|dataOut[1]~1_combout\);

-- Location: LCCOMB_X54_Y27_N6
\sdram_controller|writeBufferInstance|dataOut[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferInstance|dataOut[2]~2_combout\ = (\sdram_controller|writeBufferInstance|readUpperBytesReg~q\ & \sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|writeBufferInstance|readUpperBytesReg~q\,
	datac => \sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a2\,
	combout => \sdram_controller|writeBufferInstance|dataOut[2]~2_combout\);

-- Location: LCCOMB_X54_Y27_N0
\sdram_controller|writeBufferInstance|dataOut[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferInstance|dataOut[3]~3_combout\ = (\sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a3\ & \sdram_controller|writeBufferInstance|readUpperBytesReg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a3\,
	datac => \sdram_controller|writeBufferInstance|readUpperBytesReg~q\,
	combout => \sdram_controller|writeBufferInstance|dataOut[3]~3_combout\);

-- Location: LCCOMB_X56_Y27_N0
\sdram_controller|writeBufferInstance|dataOut[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferInstance|dataOut[4]~4_combout\ = (\sdram_controller|writeBufferInstance|readUpperBytesReg~q\ & \sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a4\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sdram_controller|writeBufferInstance|readUpperBytesReg~q\,
	datad => \sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a4\,
	combout => \sdram_controller|writeBufferInstance|dataOut[4]~4_combout\);

-- Location: LCCOMB_X54_Y27_N2
\sdram_controller|writeBufferInstance|dataOut[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferInstance|dataOut[5]~5_combout\ = (\sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a5\ & \sdram_controller|writeBufferInstance|readUpperBytesReg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a5\,
	datac => \sdram_controller|writeBufferInstance|readUpperBytesReg~q\,
	combout => \sdram_controller|writeBufferInstance|dataOut[5]~5_combout\);

-- Location: LCCOMB_X56_Y27_N22
\sdram_controller|writeBufferInstance|dataOut[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferInstance|dataOut[6]~6_combout\ = (\sdram_controller|writeBufferInstance|readUpperBytesReg~q\ & \sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a6\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sdram_controller|writeBufferInstance|readUpperBytesReg~q\,
	datad => \sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a6\,
	combout => \sdram_controller|writeBufferInstance|dataOut[6]~6_combout\);

-- Location: LCCOMB_X54_Y27_N20
\sdram_controller|writeBufferInstance|dataOut[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferInstance|dataOut[7]~7_combout\ = (\sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a7\ & \sdram_controller|writeBufferInstance|readUpperBytesReg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a7\,
	datac => \sdram_controller|writeBufferInstance|readUpperBytesReg~q\,
	combout => \sdram_controller|writeBufferInstance|dataOut[7]~7_combout\);

-- Location: LCCOMB_X54_Y27_N22
\sdram_controller|writeBufferInstance|dataOut[8]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferInstance|dataOut[8]~8_combout\ = (\sdram_controller|writeBufferInstance|readUpperBytesReg~q\ & \sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a8\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|writeBufferInstance|readUpperBytesReg~q\,
	datac => \sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a8\,
	combout => \sdram_controller|writeBufferInstance|dataOut[8]~8_combout\);

-- Location: LCCOMB_X56_Y27_N4
\sdram_controller|writeBufferInstance|dataOut[9]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferInstance|dataOut[9]~9_combout\ = (\sdram_controller|writeBufferInstance|readUpperBytesReg~q\ & \sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sdram_controller|writeBufferInstance|readUpperBytesReg~q\,
	datad => \sdram_controller|writeBufferInstance|writeBufferRAM_rtl_0|auto_generated|ram_block1a9\,
	combout => \sdram_controller|writeBufferInstance|dataOut[9]~9_combout\);

-- Location: LCCOMB_X55_Y29_N0
\sdram_controller|process_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|process_1~0_combout\ = (!\sdram_controller|stateCycleCount\(5) & !\sdram_controller|stateCycleCount\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sdram_controller|stateCycleCount\(5),
	datad => \sdram_controller|stateCycleCount\(4),
	combout => \sdram_controller|process_1~0_combout\);

-- Location: LCCOMB_X55_Y29_N22
\sdram_controller|Equal10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal10~0_combout\ = (((\sdram_controller|stateCycleCount\(2)) # (!\sdram_controller|stateCycleCount\(0))) # (!\sdram_controller|stateCycleCount\(3))) # (!\sdram_controller|stateCycleCount\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datab => \sdram_controller|stateCycleCount\(3),
	datac => \sdram_controller|stateCycleCount\(2),
	datad => \sdram_controller|stateCycleCount\(0),
	combout => \sdram_controller|Equal10~0_combout\);

-- Location: LCCOMB_X55_Y29_N8
\sdram_controller|Equal10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal10~1_combout\ = (((\sdram_controller|Equal10~0_combout\) # (!\sdram_controller|Equal1~1_combout\)) # (!\sdram_controller|process_1~0_combout\)) # (!\sdram_controller|stateCycleCount\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(6),
	datab => \sdram_controller|process_1~0_combout\,
	datac => \sdram_controller|Equal10~0_combout\,
	datad => \sdram_controller|Equal1~1_combout\,
	combout => \sdram_controller|Equal10~1_combout\);

-- Location: LCCOMB_X55_Y29_N14
\sdram_controller|process_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|process_1~1_combout\ = (\sdram_controller|stateCycleCount\(1) & (!\sdram_controller|stateCycleCount\(3) & (!\sdram_controller|stateCycleCount\(2) & \sdram_controller|stateCycleCount\(0)))) # (!\sdram_controller|stateCycleCount\(1) & 
-- (\sdram_controller|stateCycleCount\(3) & (\sdram_controller|stateCycleCount\(2) & !\sdram_controller|stateCycleCount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datab => \sdram_controller|stateCycleCount\(3),
	datac => \sdram_controller|stateCycleCount\(2),
	datad => \sdram_controller|stateCycleCount\(0),
	combout => \sdram_controller|process_1~1_combout\);

-- Location: LCCOMB_X55_Y29_N12
\sdram_controller|process_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|process_1~2_combout\ = (!\sdram_controller|stateCycleCount\(6) & (\sdram_controller|Equal1~1_combout\ & (\sdram_controller|process_1~1_combout\ & \sdram_controller|process_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(6),
	datab => \sdram_controller|Equal1~1_combout\,
	datac => \sdram_controller|process_1~1_combout\,
	datad => \sdram_controller|process_1~0_combout\,
	combout => \sdram_controller|process_1~2_combout\);

-- Location: LCCOMB_X55_Y29_N28
\sdram_controller|process_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|process_1~4_combout\ = (\sdram_controller|stateCycleCount\(3) & (\sdram_controller|stateCycleCount\(1) & !\sdram_controller|stateCycleCount\(0))) # (!\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|stateCycleCount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(3),
	datac => \sdram_controller|stateCycleCount\(1),
	datad => \sdram_controller|stateCycleCount\(0),
	combout => \sdram_controller|process_1~4_combout\);

-- Location: LCCOMB_X55_Y29_N6
\sdram_controller|process_1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|process_1~3_combout\ = (\sdram_controller|stateCycleCount\(3) & (!\sdram_controller|stateCycleCount\(6) & (\sdram_controller|stateCycleCount\(0) $ (!\sdram_controller|stateCycleCount\(1))))) # (!\sdram_controller|stateCycleCount\(3) & 
-- (\sdram_controller|stateCycleCount\(1) & ((!\sdram_controller|stateCycleCount\(6)) # (!\sdram_controller|stateCycleCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(3),
	datab => \sdram_controller|stateCycleCount\(0),
	datac => \sdram_controller|stateCycleCount\(1),
	datad => \sdram_controller|stateCycleCount\(6),
	combout => \sdram_controller|process_1~3_combout\);

-- Location: LCCOMB_X55_Y29_N18
\sdram_controller|process_1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|process_1~5_combout\ = (\sdram_controller|process_1~4_combout\ & (\sdram_controller|stateCycleCount\(2) & (\sdram_controller|stateCycleCount\(5) $ (!\sdram_controller|process_1~3_combout\)))) # (!\sdram_controller|process_1~4_combout\ & 
-- (\sdram_controller|stateCycleCount\(5) & (!\sdram_controller|stateCycleCount\(2) & !\sdram_controller|process_1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(5),
	datab => \sdram_controller|process_1~4_combout\,
	datac => \sdram_controller|stateCycleCount\(2),
	datad => \sdram_controller|process_1~3_combout\,
	combout => \sdram_controller|process_1~5_combout\);

-- Location: LCCOMB_X55_Y29_N4
\sdram_controller|process_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|process_1~6_combout\ = (\sdram_controller|process_1~3_combout\ & ((\sdram_controller|stateCycleCount\(5) & (\sdram_controller|process_1~4_combout\ & \sdram_controller|stateCycleCount\(2))) # (!\sdram_controller|stateCycleCount\(5) & 
-- ((!\sdram_controller|stateCycleCount\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(5),
	datab => \sdram_controller|process_1~4_combout\,
	datac => \sdram_controller|stateCycleCount\(2),
	datad => \sdram_controller|process_1~3_combout\,
	combout => \sdram_controller|process_1~6_combout\);

-- Location: LCCOMB_X55_Y29_N26
\sdram_controller|process_1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|process_1~7_combout\ = (\sdram_controller|stateCycleCount\(6) & (!\sdram_controller|process_1~5_combout\ & (\sdram_controller|process_1~6_combout\ & !\sdram_controller|stateCycleCount\(4)))) # (!\sdram_controller|stateCycleCount\(6) & 
-- (\sdram_controller|process_1~5_combout\ & (\sdram_controller|process_1~6_combout\ $ (\sdram_controller|stateCycleCount\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(6),
	datab => \sdram_controller|process_1~5_combout\,
	datac => \sdram_controller|process_1~6_combout\,
	datad => \sdram_controller|stateCycleCount\(4),
	combout => \sdram_controller|process_1~7_combout\);

-- Location: LCCOMB_X55_Y29_N16
\sdram_controller|process_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|process_1~8_combout\ = (\sdram_controller|process_1~2_combout\) # ((\sdram_controller|process_1~7_combout\ & \sdram_controller|Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|process_1~2_combout\,
	datac => \sdram_controller|process_1~7_combout\,
	datad => \sdram_controller|Equal1~1_combout\,
	combout => \sdram_controller|process_1~8_combout\);

-- Location: LCCOMB_X56_Y29_N8
\sdram_controller|LessThan10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|LessThan10~2_combout\ = (!\sdram_controller|stateCycleCount\(7) & ((!\sdram_controller|stateCycleCount\(0)) # (!\sdram_controller|stateCycleCount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datac => \sdram_controller|stateCycleCount\(7),
	datad => \sdram_controller|stateCycleCount\(0),
	combout => \sdram_controller|LessThan10~2_combout\);

-- Location: LCCOMB_X56_Y29_N18
\sdram_controller|LessThan10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|LessThan10~3_combout\ = (\sdram_controller|Equal1~0_combout\ & (\sdram_controller|LessThan10~2_combout\ & (\sdram_controller|LessThan10~1_combout\ & !\sdram_controller|stateCycleCount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Equal1~0_combout\,
	datab => \sdram_controller|LessThan10~2_combout\,
	datac => \sdram_controller|LessThan10~1_combout\,
	datad => \sdram_controller|stateCycleCount\(2),
	combout => \sdram_controller|LessThan10~3_combout\);

-- Location: LCCOMB_X59_Y29_N8
\sdram_controller|LessThan10~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|LessThan10~4_combout\ = (\sdram_controller|LessThan10~3_combout\ & (\sdram_controller|LessThan10~0_combout\ & !\sdram_controller|stateCycleCount\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|LessThan10~3_combout\,
	datab => \sdram_controller|LessThan10~0_combout\,
	datac => \sdram_controller|stateCycleCount\(12),
	combout => \sdram_controller|LessThan10~4_combout\);

-- Location: LCCOMB_X59_Y29_N14
\sdram_controller|Selector24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector24~0_combout\ = (!\sdram_controller|Equal10~1_combout\ & (!\sdram_controller|process_1~8_combout\ & (!\sdram_controller|LessThan10~4_combout\ & \sdram_controller|controllerState.SDRAM_INIT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Equal10~1_combout\,
	datab => \sdram_controller|process_1~8_combout\,
	datac => \sdram_controller|LessThan10~4_combout\,
	datad => \sdram_controller|controllerState.SDRAM_INIT~q\,
	combout => \sdram_controller|Selector24~0_combout\);

-- Location: LCCOMB_X57_Y30_N20
\sdram_controller|addressReg_nxt~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|addressReg_nxt~0_combout\ = (\sdram_controller|writeBufferEmpty~q\ & ((\sdram_controller|writeAddressReg\(1)))) # (!\sdram_controller|writeBufferEmpty~q\ & (\state.START_TRANSMISSION~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferEmpty~q\,
	datab => \state.START_TRANSMISSION~q\,
	datad => \sdram_controller|writeAddressReg\(1),
	combout => \sdram_controller|addressReg_nxt~0_combout\);

-- Location: FF_X57_Y30_N21
\sdram_controller|addressReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|addressReg_nxt~0_combout\,
	clrn => \reset~input_o\,
	ena => \sdram_controller|addressReg[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|addressReg\(1));

-- Location: LCCOMB_X56_Y29_N20
\sdram_controller|Equal11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal11~0_combout\ = (!\sdram_controller|stateCycleCount\(1) & (\sdram_controller|Equal1~1_combout\ & (\sdram_controller|Equal1~2_combout\ & !\sdram_controller|stateCycleCount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datab => \sdram_controller|Equal1~1_combout\,
	datac => \sdram_controller|Equal1~2_combout\,
	datad => \sdram_controller|stateCycleCount\(0),
	combout => \sdram_controller|Equal11~0_combout\);

-- Location: LCCOMB_X59_Y29_N28
\sdram_controller|Selector23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector23~0_combout\ = (\sdram_controller|Equal11~0_combout\ & (!\sdram_controller|controllerState.SDRAM_AUTO_REFRESH~q\ & (\sdram_controller|controllerState.SDRAM_IDLE~2_combout\ & !\sdram_controller|controllerState.SDRAM_INIT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Equal11~0_combout\,
	datab => \sdram_controller|controllerState.SDRAM_AUTO_REFRESH~q\,
	datac => \sdram_controller|controllerState.SDRAM_IDLE~2_combout\,
	datad => \sdram_controller|controllerState.SDRAM_INIT~q\,
	combout => \sdram_controller|Selector23~0_combout\);

-- Location: LCCOMB_X59_Y29_N22
\sdram_controller|Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector10~0_combout\ = (\sdram_controller|controllerState.SDRAM_INIT~q\ & (((\sdram_controller|stateCycleCount\(12)) # (!\sdram_controller|LessThan10~0_combout\)) # (!\sdram_controller|LessThan10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|LessThan10~3_combout\,
	datab => \sdram_controller|LessThan10~0_combout\,
	datac => \sdram_controller|stateCycleCount\(12),
	datad => \sdram_controller|controllerState.SDRAM_INIT~q\,
	combout => \sdram_controller|Selector10~0_combout\);

-- Location: LCCOMB_X59_Y29_N4
\sdram_controller|Selector23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector23~1_combout\ = (\sdram_controller|Selector23~0_combout\) # ((!\sdram_controller|process_1~8_combout\ & (\sdram_controller|Selector10~0_combout\ & !\sdram_controller|controllerState.SDRAM_ACTIVATE_ROW~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Selector23~0_combout\,
	datab => \sdram_controller|process_1~8_combout\,
	datac => \sdram_controller|Selector10~0_combout\,
	datad => \sdram_controller|controllerState.SDRAM_ACTIVATE_ROW~q\,
	combout => \sdram_controller|Selector23~1_combout\);

-- Location: LCCOMB_X56_Y27_N28
\sdram_controller|Selector23~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector23~2_combout\ = (\sdram_controller|Selector23~1_combout\ & ((\sdram_controller|controllerState.SDRAM_INIT~q\ & ((!\sdram_controller|Equal10~1_combout\))) # (!\sdram_controller|controllerState.SDRAM_INIT~q\ & 
-- (\sdram_controller|addressReg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|addressReg\(1),
	datab => \sdram_controller|Equal10~1_combout\,
	datac => \sdram_controller|controllerState.SDRAM_INIT~q\,
	datad => \sdram_controller|Selector23~1_combout\,
	combout => \sdram_controller|Selector23~2_combout\);

-- Location: LCCOMB_X57_Y30_N6
\sdram_controller|addressReg[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|addressReg[2]~1_combout\ = !\sdram_controller|writeBufferEmpty~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sdram_controller|writeBufferEmpty~q\,
	combout => \sdram_controller|addressReg[2]~1_combout\);

-- Location: FF_X57_Y30_N7
\sdram_controller|addressReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|addressReg[2]~1_combout\,
	clrn => \reset~input_o\,
	ena => \sdram_controller|addressReg[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|addressReg\(2));

-- Location: LCCOMB_X56_Y27_N2
\sdram_controller|Selector22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector22~0_combout\ = (\sdram_controller|Selector23~1_combout\ & ((\sdram_controller|controllerState.SDRAM_INIT~q\ & ((!\sdram_controller|Equal10~1_combout\))) # (!\sdram_controller|controllerState.SDRAM_INIT~q\ & 
-- (\sdram_controller|addressReg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|addressReg\(2),
	datab => \sdram_controller|Equal10~1_combout\,
	datac => \sdram_controller|controllerState.SDRAM_INIT~q\,
	datad => \sdram_controller|Selector23~1_combout\,
	combout => \sdram_controller|Selector22~0_combout\);

-- Location: LCCOMB_X59_Y30_N4
\sdram_controller|Selector21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector21~0_combout\ = (\sdram_controller|Equal11~0_combout\ & (\sdram_controller|addressReg\(1) & ((\sdram_controller|controllerState.SDRAM_READ~q\) # (\sdram_controller|controllerState.SDRAM_WRITE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|controllerState.SDRAM_READ~q\,
	datab => \sdram_controller|Equal11~0_combout\,
	datac => \sdram_controller|addressReg\(1),
	datad => \sdram_controller|controllerState.SDRAM_WRITE~q\,
	combout => \sdram_controller|Selector21~0_combout\);

-- Location: LCCOMB_X57_Y31_N30
\sdram_controller|Equal14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal14~3_combout\ = (\sdram_controller|Equal1~0_combout\ & (\sdram_controller|stateCycleCount\(7) $ (!\sdram_controller|burstLengthReg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|Equal1~0_combout\,
	datac => \sdram_controller|stateCycleCount\(7),
	datad => \sdram_controller|burstLengthReg\(7),
	combout => \sdram_controller|Equal14~3_combout\);

-- Location: LCCOMB_X56_Y29_N2
\sdram_controller|Equal14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal14~2_combout\ = (!\sdram_controller|stateCycleCount\(1) & (\sdram_controller|stateCycleCount\(2) & (\sdram_controller|burstLengthReg\(0) $ (!\sdram_controller|stateCycleCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datab => \sdram_controller|stateCycleCount\(2),
	datac => \sdram_controller|burstLengthReg\(0),
	datad => \sdram_controller|stateCycleCount\(0),
	combout => \sdram_controller|Equal14~2_combout\);

-- Location: LCCOMB_X59_Y30_N10
\sdram_controller|Selector12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector12~1_combout\ = (\sdram_controller|Equal14~3_combout\ & (\sdram_controller|Equal1~3_combout\ & (\sdram_controller|controllerState.SDRAM_READ~q\ & \sdram_controller|Equal14~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Equal14~3_combout\,
	datab => \sdram_controller|Equal1~3_combout\,
	datac => \sdram_controller|controllerState.SDRAM_READ~q\,
	datad => \sdram_controller|Equal14~2_combout\,
	combout => \sdram_controller|Selector12~1_combout\);

-- Location: LCCOMB_X57_Y31_N22
\sdram_controller|Equal12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal12~1_combout\ = (!\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|stateCycleCount\(0) & (!\sdram_controller|stateCycleCount\(1) & !\sdram_controller|burstLengthReg\(0))) # (!\sdram_controller|stateCycleCount\(0) & 
-- (\sdram_controller|stateCycleCount\(1) & \sdram_controller|burstLengthReg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(0),
	datab => \sdram_controller|stateCycleCount\(1),
	datac => \sdram_controller|burstLengthReg\(0),
	datad => \sdram_controller|stateCycleCount\(2),
	combout => \sdram_controller|Equal12~1_combout\);

-- Location: LCCOMB_X57_Y31_N20
\sdram_controller|Equal12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal12~2_combout\ = (\sdram_controller|Equal12~1_combout\ & (\sdram_controller|Equal1~3_combout\ & (\sdram_controller|Equal1~0_combout\ & !\sdram_controller|Equal12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Equal12~1_combout\,
	datab => \sdram_controller|Equal1~3_combout\,
	datac => \sdram_controller|Equal1~0_combout\,
	datad => \sdram_controller|Equal12~0_combout\,
	combout => \sdram_controller|Equal12~2_combout\);

-- Location: LCCOMB_X59_Y30_N28
\sdram_controller|Selector12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector12~2_combout\ = (!\sdram_controller|Equal11~0_combout\ & !\sdram_controller|Equal12~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sdram_controller|Equal11~0_combout\,
	datad => \sdram_controller|Equal12~2_combout\,
	combout => \sdram_controller|Selector12~2_combout\);

-- Location: LCCOMB_X57_Y31_N8
\sdram_controller|Equal13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal13~0_combout\ = (\sdram_controller|Equal14~3_combout\ & ((\sdram_controller|stateCycleCount\(1) & (!\sdram_controller|burstLengthReg\(0) & !\sdram_controller|stateCycleCount\(2))) # (!\sdram_controller|stateCycleCount\(1) & 
-- (\sdram_controller|burstLengthReg\(0) & \sdram_controller|stateCycleCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Equal14~3_combout\,
	datab => \sdram_controller|stateCycleCount\(1),
	datac => \sdram_controller|burstLengthReg\(0),
	datad => \sdram_controller|stateCycleCount\(2),
	combout => \sdram_controller|Equal13~0_combout\);

-- Location: LCCOMB_X57_Y30_N28
\sdram_controller|Equal13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal13~1_combout\ = (\sdram_controller|Equal13~0_combout\ & (\sdram_controller|Equal1~3_combout\ & (\sdram_controller|stateCycleCount\(0) $ (\sdram_controller|burstLengthReg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(0),
	datab => \sdram_controller|Equal13~0_combout\,
	datac => \sdram_controller|burstLengthReg\(0),
	datad => \sdram_controller|Equal1~3_combout\,
	combout => \sdram_controller|Equal13~1_combout\);

-- Location: LCCOMB_X59_Y30_N30
\sdram_controller|Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector9~0_combout\ = ((!\sdram_controller|Selector12~1_combout\ & ((!\sdram_controller|controllerState.SDRAM_WRITE~q\) # (!\sdram_controller|Equal13~1_combout\)))) # (!\sdram_controller|Selector12~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Selector12~1_combout\,
	datab => \sdram_controller|Selector12~2_combout\,
	datac => \sdram_controller|Equal13~1_combout\,
	datad => \sdram_controller|controllerState.SDRAM_WRITE~q\,
	combout => \sdram_controller|Selector9~0_combout\);

-- Location: LCCOMB_X59_Y29_N18
\sdram_controller|Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector12~0_combout\ = (\sdram_controller|LessThan10~3_combout\ & (\sdram_controller|LessThan10~0_combout\ & (!\sdram_controller|stateCycleCount\(12) & \sdram_controller|controllerState.SDRAM_INIT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|LessThan10~3_combout\,
	datab => \sdram_controller|LessThan10~0_combout\,
	datac => \sdram_controller|stateCycleCount\(12),
	datad => \sdram_controller|controllerState.SDRAM_INIT~q\,
	combout => \sdram_controller|Selector12~0_combout\);

-- Location: LCCOMB_X59_Y29_N12
\sdram_controller|Selector12~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector12~3_combout\ = ((\sdram_controller|Selector12~0_combout\) # ((\sdram_controller|Equal11~0_combout\ & \sdram_controller|controllerState.SDRAM_AUTO_REFRESH~q\))) # (!\sdram_controller|Selector9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Equal11~0_combout\,
	datab => \sdram_controller|controllerState.SDRAM_AUTO_REFRESH~q\,
	datac => \sdram_controller|Selector9~0_combout\,
	datad => \sdram_controller|Selector12~0_combout\,
	combout => \sdram_controller|Selector12~3_combout\);

-- Location: LCCOMB_X57_Y30_N10
\sdram_controller|byteMaskReg[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|byteMaskReg[0]~0_combout\ = (\sdram_controller|writeBufferEmpty~q\ & (((\sdram_controller|writeAddressReg\(1))))) # (!\sdram_controller|writeBufferEmpty~q\ & ((\state.START_TRANSMISSION~q\) # ((\state.START_RECEIVING~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferEmpty~q\,
	datab => \state.START_TRANSMISSION~q\,
	datac => \state.START_RECEIVING~q\,
	datad => \sdram_controller|writeAddressReg\(1),
	combout => \sdram_controller|byteMaskReg[0]~0_combout\);

-- Location: FF_X57_Y30_N11
\sdram_controller|byteMaskReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|byteMaskReg[0]~0_combout\,
	clrn => \reset~input_o\,
	ena => \sdram_controller|addressReg[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|byteMaskReg\(0));

-- Location: LCCOMB_X59_Y30_N20
\sdram_controller|Selector26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector26~0_combout\ = (\sdram_controller|controllerState.SDRAM_WRITE~q\ & ((\sdram_controller|byteMaskReg\(0)))) # (!\sdram_controller|controllerState.SDRAM_WRITE~q\ & (\sdram_controller|controllerState.SDRAM_READ~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|controllerState.SDRAM_READ~q\,
	datab => \sdram_controller|controllerState.SDRAM_WRITE~q\,
	datad => \sdram_controller|byteMaskReg\(0),
	combout => \sdram_controller|Selector26~0_combout\);

-- Location: LCCOMB_X59_Y29_N0
\sdram_controller|Selector9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector9~2_combout\ = ((\sdram_controller|Equal10~1_combout\ & (!\sdram_controller|process_1~8_combout\ & !\sdram_controller|LessThan10~4_combout\))) # (!\sdram_controller|controllerState.SDRAM_INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Equal10~1_combout\,
	datab => \sdram_controller|process_1~8_combout\,
	datac => \sdram_controller|LessThan10~4_combout\,
	datad => \sdram_controller|controllerState.SDRAM_INIT~q\,
	combout => \sdram_controller|Selector9~2_combout\);

-- Location: LCCOMB_X59_Y29_N6
\sdram_controller|Selector9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector9~1_combout\ = (\sdram_controller|controllerState.SDRAM_AUTO_REFRESH~q\ & (!\sdram_controller|process_1~2_combout\ & (!\sdram_controller|Equal11~0_combout\))) # (!\sdram_controller|controllerState.SDRAM_AUTO_REFRESH~q\ & 
-- (((!\sdram_controller|controllerState.SDRAM_ACTIVATE_ROW~q\) # (!\sdram_controller|Equal11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|process_1~2_combout\,
	datab => \sdram_controller|controllerState.SDRAM_AUTO_REFRESH~q\,
	datac => \sdram_controller|Equal11~0_combout\,
	datad => \sdram_controller|controllerState.SDRAM_ACTIVATE_ROW~q\,
	combout => \sdram_controller|Selector9~1_combout\);

-- Location: LCCOMB_X59_Y29_N26
\sdram_controller|Selector9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector9~3_combout\ = (\sdram_controller|Selector9~2_combout\ & (\sdram_controller|Selector9~0_combout\ & \sdram_controller|Selector9~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|Selector9~2_combout\,
	datac => \sdram_controller|Selector9~0_combout\,
	datad => \sdram_controller|Selector9~1_combout\,
	combout => \sdram_controller|Selector9~3_combout\);

-- Location: LCCOMB_X59_Y29_N10
\sdram_controller|Selector21~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector21~1_combout\ = (\sdram_controller|Equal11~0_combout\ & ((\sdram_controller|controllerState.SDRAM_WRITE~q\) # (\sdram_controller|controllerState.SDRAM_READ~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Equal11~0_combout\,
	datac => \sdram_controller|controllerState.SDRAM_WRITE~q\,
	datad => \sdram_controller|controllerState.SDRAM_READ~q\,
	combout => \sdram_controller|Selector21~1_combout\);

-- Location: LCCOMB_X59_Y29_N16
\sdram_controller|Selector10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector10~1_combout\ = (\sdram_controller|LessThan10~4_combout\) # (((\sdram_controller|Equal10~1_combout\ & !\sdram_controller|process_1~8_combout\)) # (!\sdram_controller|controllerState.SDRAM_INIT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Equal10~1_combout\,
	datab => \sdram_controller|process_1~8_combout\,
	datac => \sdram_controller|LessThan10~4_combout\,
	datad => \sdram_controller|controllerState.SDRAM_INIT~q\,
	combout => \sdram_controller|Selector10~1_combout\);

-- Location: LCCOMB_X59_Y29_N24
\sdram_controller|Selector10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector10~2_combout\ = (!\sdram_controller|Selector21~1_combout\ & (\sdram_controller|Selector10~1_combout\ & ((!\sdram_controller|process_1~2_combout\) # (!\sdram_controller|controllerState.SDRAM_AUTO_REFRESH~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Selector21~1_combout\,
	datab => \sdram_controller|controllerState.SDRAM_AUTO_REFRESH~q\,
	datac => \sdram_controller|process_1~2_combout\,
	datad => \sdram_controller|Selector10~1_combout\,
	combout => \sdram_controller|Selector10~2_combout\);

-- Location: LCCOMB_X59_Y30_N22
\sdram_controller|Selector11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector11~2_combout\ = (!\sdram_controller|Equal12~2_combout\ & (((!\sdram_controller|Equal1~3_combout\) # (!\sdram_controller|Equal14~2_combout\)) # (!\sdram_controller|Equal14~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Equal12~2_combout\,
	datab => \sdram_controller|Equal14~3_combout\,
	datac => \sdram_controller|Equal14~2_combout\,
	datad => \sdram_controller|Equal1~3_combout\,
	combout => \sdram_controller|Selector11~2_combout\);

-- Location: LCCOMB_X59_Y29_N30
\sdram_controller|Selector11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector11~3_combout\ = (\sdram_controller|Equal11~0_combout\ & (((!\sdram_controller|controllerState.SDRAM_AUTO_REFRESH~q\)))) # (!\sdram_controller|Equal11~0_combout\ & (((\sdram_controller|Selector11~2_combout\)) # 
-- (!\sdram_controller|controllerState.SDRAM_READ~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|controllerState.SDRAM_READ~q\,
	datab => \sdram_controller|controllerState.SDRAM_AUTO_REFRESH~q\,
	datac => \sdram_controller|Equal11~0_combout\,
	datad => \sdram_controller|Selector11~2_combout\,
	combout => \sdram_controller|Selector11~3_combout\);

-- Location: LCCOMB_X59_Y29_N20
\sdram_controller|s_command~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|s_command~0_combout\ = (\sdram_controller|Equal10~1_combout\ & (((\sdram_controller|stateCycleCount\(12)) # (!\sdram_controller|LessThan10~0_combout\)) # (!\sdram_controller|LessThan10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|LessThan10~3_combout\,
	datab => \sdram_controller|LessThan10~0_combout\,
	datac => \sdram_controller|stateCycleCount\(12),
	datad => \sdram_controller|Equal10~1_combout\,
	combout => \sdram_controller|s_command~0_combout\);

-- Location: LCCOMB_X59_Y30_N12
\sdram_controller|Selector11~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector11~5_combout\ = ((!\sdram_controller|Equal13~1_combout\ & (!\sdram_controller|Equal11~0_combout\ & !\sdram_controller|Equal12~2_combout\))) # (!\sdram_controller|controllerState.SDRAM_WRITE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Equal13~1_combout\,
	datab => \sdram_controller|controllerState.SDRAM_WRITE~q\,
	datac => \sdram_controller|Equal11~0_combout\,
	datad => \sdram_controller|Equal12~2_combout\,
	combout => \sdram_controller|Selector11~5_combout\);

-- Location: LCCOMB_X59_Y29_N2
\sdram_controller|Selector11~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector11~4_combout\ = (\sdram_controller|Selector11~3_combout\ & (\sdram_controller|Selector11~5_combout\ & ((\sdram_controller|s_command~0_combout\) # (!\sdram_controller|controllerState.SDRAM_INIT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Selector11~3_combout\,
	datab => \sdram_controller|s_command~0_combout\,
	datac => \sdram_controller|Selector11~5_combout\,
	datad => \sdram_controller|controllerState.SDRAM_INIT~q\,
	combout => \sdram_controller|Selector11~4_combout\);

-- Location: LCCOMB_X54_Y30_N0
\LED_Reg[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED_Reg[0]~0_combout\ = (\enable~input_o\ & (\clock_generator|altpll_component|auto_generated|wire_pll1_locked\ & (\state.RECEIVE~q\ & \clock_generator|altpll_component|auto_generated|pll_lock_sync~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \clock_generator|altpll_component|auto_generated|wire_pll1_locked\,
	datac => \state.RECEIVE~q\,
	datad => \clock_generator|altpll_component|auto_generated|pll_lock_sync~q\,
	combout => \LED_Reg[0]~0_combout\);

-- Location: LCCOMB_X54_Y31_N10
\sdram_controller|Add22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add22~0_combout\ = \sdram_controller|stateCycleCount\(0) $ (VCC)
-- \sdram_controller|Add22~1\ = CARRY(\sdram_controller|stateCycleCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(0),
	datad => VCC,
	combout => \sdram_controller|Add22~0_combout\,
	cout => \sdram_controller|Add22~1\);

-- Location: LCCOMB_X57_Y31_N24
\sdram_controller|readBufferWriteEnable~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferWriteEnable~1_combout\ = (\sdram_controller|Add22~0_combout\ & ((\sdram_controller|stateCycleCount\(7) & (\sdram_controller|burstLengthReg\(7) & \sdram_controller|readBufferWriteEnable~0_combout\)) # 
-- (!\sdram_controller|stateCycleCount\(7) & ((\sdram_controller|burstLengthReg\(7)) # (\sdram_controller|readBufferWriteEnable~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(7),
	datab => \sdram_controller|burstLengthReg\(7),
	datac => \sdram_controller|Add22~0_combout\,
	datad => \sdram_controller|readBufferWriteEnable~0_combout\,
	combout => \sdram_controller|readBufferWriteEnable~1_combout\);

-- Location: LCCOMB_X57_Y29_N2
\sdram_controller|readBufferWriteEnable~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferWriteEnable~2_combout\ = (\sdram_controller|Equal1~3_combout\ & (\sdram_controller|controllerState.SDRAM_READ~q\ & (\sdram_controller|readBufferWriteEnable~1_combout\ & !\sdram_controller|LessThan10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Equal1~3_combout\,
	datab => \sdram_controller|controllerState.SDRAM_READ~q\,
	datac => \sdram_controller|readBufferWriteEnable~1_combout\,
	datad => \sdram_controller|LessThan10~3_combout\,
	combout => \sdram_controller|readBufferWriteEnable~2_combout\);

-- Location: IOIBUF_X78_Y16_N1
\SDRAM_DATA[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SDRAM_DATA(0),
	o => \SDRAM_DATA[0]~input_o\);

-- Location: LCCOMB_X60_Y30_N4
\sdram_controller|readBufferDataIn[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferDataIn[0]~0_combout\ = (\sdram_controller|readBufferWriteEnable~2_combout\ & \SDRAM_DATA[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sdram_controller|readBufferWriteEnable~2_combout\,
	datad => \SDRAM_DATA[0]~input_o\,
	combout => \sdram_controller|readBufferDataIn[0]~0_combout\);

-- Location: LCCOMB_X54_Y31_N12
\sdram_controller|Add22~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add22~2_combout\ = (\sdram_controller|stateCycleCount\(1) & (!\sdram_controller|Add22~1\)) # (!\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|Add22~1\) # (GND)))
-- \sdram_controller|Add22~3\ = CARRY((!\sdram_controller|Add22~1\) # (!\sdram_controller|stateCycleCount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datad => VCC,
	cin => \sdram_controller|Add22~1\,
	combout => \sdram_controller|Add22~2_combout\,
	cout => \sdram_controller|Add22~3\);

-- Location: LCCOMB_X54_Y31_N28
\sdram_controller|readBufferWriteAddress[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferWriteAddress[0]~0_combout\ = (\sdram_controller|Add22~2_combout\ & \sdram_controller|readBufferWriteEnable~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Add22~2_combout\,
	datad => \sdram_controller|readBufferWriteEnable~2_combout\,
	combout => \sdram_controller|readBufferWriteAddress[0]~0_combout\);

-- Location: LCCOMB_X54_Y31_N14
\sdram_controller|Add22~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add22~4_combout\ = (\sdram_controller|stateCycleCount\(2) & ((GND) # (!\sdram_controller|Add22~3\))) # (!\sdram_controller|stateCycleCount\(2) & (\sdram_controller|Add22~3\ $ (GND)))
-- \sdram_controller|Add22~5\ = CARRY((\sdram_controller|stateCycleCount\(2)) # (!\sdram_controller|Add22~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(2),
	datad => VCC,
	cin => \sdram_controller|Add22~3\,
	combout => \sdram_controller|Add22~4_combout\,
	cout => \sdram_controller|Add22~5\);

-- Location: LCCOMB_X54_Y31_N2
\sdram_controller|readBufferWriteAddress[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferWriteAddress[1]~1_combout\ = (\sdram_controller|Add22~4_combout\ & \sdram_controller|readBufferWriteEnable~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sdram_controller|Add22~4_combout\,
	datad => \sdram_controller|readBufferWriteEnable~2_combout\,
	combout => \sdram_controller|readBufferWriteAddress[1]~1_combout\);

-- Location: LCCOMB_X54_Y31_N16
\sdram_controller|Add22~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add22~6_combout\ = (\sdram_controller|stateCycleCount\(3) & (\sdram_controller|Add22~5\ & VCC)) # (!\sdram_controller|stateCycleCount\(3) & (!\sdram_controller|Add22~5\))
-- \sdram_controller|Add22~7\ = CARRY((!\sdram_controller|stateCycleCount\(3) & !\sdram_controller|Add22~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(3),
	datad => VCC,
	cin => \sdram_controller|Add22~5\,
	combout => \sdram_controller|Add22~6_combout\,
	cout => \sdram_controller|Add22~7\);

-- Location: LCCOMB_X54_Y31_N8
\sdram_controller|readBufferWriteAddress[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferWriteAddress[2]~2_combout\ = (\sdram_controller|Add22~6_combout\ & \sdram_controller|readBufferWriteEnable~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|Add22~6_combout\,
	datad => \sdram_controller|readBufferWriteEnable~2_combout\,
	combout => \sdram_controller|readBufferWriteAddress[2]~2_combout\);

-- Location: LCCOMB_X54_Y31_N18
\sdram_controller|Add22~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add22~8_combout\ = (\sdram_controller|stateCycleCount\(4) & ((GND) # (!\sdram_controller|Add22~7\))) # (!\sdram_controller|stateCycleCount\(4) & (\sdram_controller|Add22~7\ $ (GND)))
-- \sdram_controller|Add22~9\ = CARRY((\sdram_controller|stateCycleCount\(4)) # (!\sdram_controller|Add22~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(4),
	datad => VCC,
	cin => \sdram_controller|Add22~7\,
	combout => \sdram_controller|Add22~8_combout\,
	cout => \sdram_controller|Add22~9\);

-- Location: LCCOMB_X54_Y31_N30
\sdram_controller|readBufferWriteAddress[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferWriteAddress[3]~3_combout\ = (\sdram_controller|Add22~8_combout\ & \sdram_controller|readBufferWriteEnable~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|Add22~8_combout\,
	datad => \sdram_controller|readBufferWriteEnable~2_combout\,
	combout => \sdram_controller|readBufferWriteAddress[3]~3_combout\);

-- Location: LCCOMB_X54_Y31_N20
\sdram_controller|Add22~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add22~10_combout\ = (\sdram_controller|stateCycleCount\(5) & (\sdram_controller|Add22~9\ & VCC)) # (!\sdram_controller|stateCycleCount\(5) & (!\sdram_controller|Add22~9\))
-- \sdram_controller|Add22~11\ = CARRY((!\sdram_controller|stateCycleCount\(5) & !\sdram_controller|Add22~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|stateCycleCount\(5),
	datad => VCC,
	cin => \sdram_controller|Add22~9\,
	combout => \sdram_controller|Add22~10_combout\,
	cout => \sdram_controller|Add22~11\);

-- Location: LCCOMB_X54_Y31_N0
\sdram_controller|readBufferWriteAddress[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferWriteAddress[4]~4_combout\ = (\sdram_controller|Add22~10_combout\ & \sdram_controller|readBufferWriteEnable~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|Add22~10_combout\,
	datad => \sdram_controller|readBufferWriteEnable~2_combout\,
	combout => \sdram_controller|readBufferWriteAddress[4]~4_combout\);

-- Location: LCCOMB_X54_Y31_N22
\sdram_controller|Add22~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add22~12_combout\ = (\sdram_controller|stateCycleCount\(6) & ((GND) # (!\sdram_controller|Add22~11\))) # (!\sdram_controller|stateCycleCount\(6) & (\sdram_controller|Add22~11\ $ (GND)))
-- \sdram_controller|Add22~13\ = CARRY((\sdram_controller|stateCycleCount\(6)) # (!\sdram_controller|Add22~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|stateCycleCount\(6),
	datad => VCC,
	cin => \sdram_controller|Add22~11\,
	combout => \sdram_controller|Add22~12_combout\,
	cout => \sdram_controller|Add22~13\);

-- Location: LCCOMB_X54_Y31_N4
\sdram_controller|readBufferWriteAddress[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferWriteAddress[5]~5_combout\ = (\sdram_controller|Add22~12_combout\ & \sdram_controller|readBufferWriteEnable~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sdram_controller|Add22~12_combout\,
	datad => \sdram_controller|readBufferWriteEnable~2_combout\,
	combout => \sdram_controller|readBufferWriteAddress[5]~5_combout\);

-- Location: LCCOMB_X54_Y31_N24
\sdram_controller|Add22~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add22~14_combout\ = (\sdram_controller|stateCycleCount\(7) & (\sdram_controller|Add22~13\ & VCC)) # (!\sdram_controller|stateCycleCount\(7) & (!\sdram_controller|Add22~13\))
-- \sdram_controller|Add22~15\ = CARRY((!\sdram_controller|stateCycleCount\(7) & !\sdram_controller|Add22~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|stateCycleCount\(7),
	datad => VCC,
	cin => \sdram_controller|Add22~13\,
	combout => \sdram_controller|Add22~14_combout\,
	cout => \sdram_controller|Add22~15\);

-- Location: LCCOMB_X59_Y30_N18
\sdram_controller|readBufferWriteAddress[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferWriteAddress[6]~6_combout\ = (\sdram_controller|Add22~14_combout\ & \sdram_controller|readBufferWriteEnable~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|Add22~14_combout\,
	datad => \sdram_controller|readBufferWriteEnable~2_combout\,
	combout => \sdram_controller|readBufferWriteAddress[6]~6_combout\);

-- Location: LCCOMB_X54_Y31_N26
\sdram_controller|Add22~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add22~16_combout\ = \sdram_controller|stateCycleCount\(8) $ (\sdram_controller|Add22~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|stateCycleCount\(8),
	cin => \sdram_controller|Add22~15\,
	combout => \sdram_controller|Add22~16_combout\);

-- Location: LCCOMB_X54_Y31_N6
\sdram_controller|readBufferWriteAddress[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferWriteAddress[7]~7_combout\ = (\sdram_controller|Add22~16_combout\ & \sdram_controller|readBufferWriteEnable~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sdram_controller|Add22~16_combout\,
	datad => \sdram_controller|readBufferWriteEnable~2_combout\,
	combout => \sdram_controller|readBufferWriteAddress[7]~7_combout\);

-- Location: LCCOMB_X52_Y49_N8
\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X51_Y30_N2
\sdram_controller|readBufferReadCount~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferReadCount~18_combout\ = (\sdram_controller|Add27~0_combout\ & ((\sdram_controller|readBufferEmpty~q\) # (\sdram_controller|readBufferState~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|readBufferEmpty~q\,
	datac => \sdram_controller|Add27~0_combout\,
	datad => \sdram_controller|readBufferState~q\,
	combout => \sdram_controller|readBufferReadCount~18_combout\);

-- Location: FF_X51_Y30_N3
\sdram_controller|readBufferReadCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sdram_controller|readBufferReadCount~18_combout\,
	clrn => \reset~input_o\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|readBufferReadCount\(0));

-- Location: LCCOMB_X51_Y30_N8
\sdram_controller|Add27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add27~0_combout\ = \sdram_controller|readBufferReadCount\(0) $ (VCC)
-- \sdram_controller|Add27~1\ = CARRY(\sdram_controller|readBufferReadCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|readBufferReadCount\(0),
	datad => VCC,
	combout => \sdram_controller|Add27~0_combout\,
	cout => \sdram_controller|Add27~1\);

-- Location: LCCOMB_X52_Y30_N22
\sdram_controller|readBufferReadAddress[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferReadAddress[0]~0_combout\ = (\sdram_controller|Add27~0_combout\ & \sdram_controller|readBufferState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Add27~0_combout\,
	datab => \sdram_controller|readBufferState~q\,
	combout => \sdram_controller|readBufferReadAddress[0]~0_combout\);

-- Location: LCCOMB_X51_Y30_N4
\sdram_controller|readBufferReadCount~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferReadCount~19_combout\ = (\sdram_controller|Add27~2_combout\ & ((\sdram_controller|readBufferState~q\) # (\sdram_controller|readBufferEmpty~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|readBufferState~q\,
	datac => \sdram_controller|readBufferEmpty~q\,
	datad => \sdram_controller|Add27~2_combout\,
	combout => \sdram_controller|readBufferReadCount~19_combout\);

-- Location: FF_X51_Y30_N5
\sdram_controller|readBufferReadCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sdram_controller|readBufferReadCount~19_combout\,
	clrn => \reset~input_o\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|readBufferReadCount\(1));

-- Location: LCCOMB_X51_Y30_N10
\sdram_controller|Add27~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add27~2_combout\ = (\sdram_controller|readBufferReadCount\(1) & (!\sdram_controller|Add27~1\)) # (!\sdram_controller|readBufferReadCount\(1) & ((\sdram_controller|Add27~1\) # (GND)))
-- \sdram_controller|Add27~3\ = CARRY((!\sdram_controller|Add27~1\) # (!\sdram_controller|readBufferReadCount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|readBufferReadCount\(1),
	datad => VCC,
	cin => \sdram_controller|Add27~1\,
	combout => \sdram_controller|Add27~2_combout\,
	cout => \sdram_controller|Add27~3\);

-- Location: LCCOMB_X52_Y30_N12
\sdram_controller|readBufferReadAddress[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferReadAddress[1]~1_combout\ = (\sdram_controller|Add27~2_combout\ & \sdram_controller|readBufferState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Add27~2_combout\,
	datad => \sdram_controller|readBufferState~q\,
	combout => \sdram_controller|readBufferReadAddress[1]~1_combout\);

-- Location: LCCOMB_X51_Y30_N30
\sdram_controller|readBufferReadCount~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferReadCount~20_combout\ = (\sdram_controller|Add27~4_combout\ & ((\sdram_controller|readBufferEmpty~q\) # (\sdram_controller|readBufferState~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|readBufferEmpty~q\,
	datac => \sdram_controller|Add27~4_combout\,
	datad => \sdram_controller|readBufferState~q\,
	combout => \sdram_controller|readBufferReadCount~20_combout\);

-- Location: FF_X51_Y30_N31
\sdram_controller|readBufferReadCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sdram_controller|readBufferReadCount~20_combout\,
	clrn => \reset~input_o\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|readBufferReadCount\(2));

-- Location: LCCOMB_X51_Y30_N12
\sdram_controller|Add27~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add27~4_combout\ = (\sdram_controller|readBufferReadCount\(2) & (\sdram_controller|Add27~3\ $ (GND))) # (!\sdram_controller|readBufferReadCount\(2) & (!\sdram_controller|Add27~3\ & VCC))
-- \sdram_controller|Add27~5\ = CARRY((\sdram_controller|readBufferReadCount\(2) & !\sdram_controller|Add27~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|readBufferReadCount\(2),
	datad => VCC,
	cin => \sdram_controller|Add27~3\,
	combout => \sdram_controller|Add27~4_combout\,
	cout => \sdram_controller|Add27~5\);

-- Location: LCCOMB_X52_Y30_N6
\sdram_controller|readBufferReadAddress[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferReadAddress[2]~2_combout\ = (\sdram_controller|Add27~4_combout\ & \sdram_controller|readBufferState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Add27~4_combout\,
	datad => \sdram_controller|readBufferState~q\,
	combout => \sdram_controller|readBufferReadAddress[2]~2_combout\);

-- Location: LCCOMB_X51_Y30_N6
\sdram_controller|readBufferReadCount~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferReadCount~21_combout\ = (\sdram_controller|Add27~6_combout\ & ((\sdram_controller|readBufferEmpty~q\) # (\sdram_controller|readBufferState~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|readBufferEmpty~q\,
	datac => \sdram_controller|Add27~6_combout\,
	datad => \sdram_controller|readBufferState~q\,
	combout => \sdram_controller|readBufferReadCount~21_combout\);

-- Location: FF_X51_Y30_N7
\sdram_controller|readBufferReadCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sdram_controller|readBufferReadCount~21_combout\,
	clrn => \reset~input_o\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|readBufferReadCount\(3));

-- Location: LCCOMB_X51_Y30_N14
\sdram_controller|Add27~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add27~6_combout\ = (\sdram_controller|readBufferReadCount\(3) & (!\sdram_controller|Add27~5\)) # (!\sdram_controller|readBufferReadCount\(3) & ((\sdram_controller|Add27~5\) # (GND)))
-- \sdram_controller|Add27~7\ = CARRY((!\sdram_controller|Add27~5\) # (!\sdram_controller|readBufferReadCount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|readBufferReadCount\(3),
	datad => VCC,
	cin => \sdram_controller|Add27~5\,
	combout => \sdram_controller|Add27~6_combout\,
	cout => \sdram_controller|Add27~7\);

-- Location: LCCOMB_X52_Y30_N8
\sdram_controller|readBufferReadAddress[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferReadAddress[3]~3_combout\ = (\sdram_controller|Add27~6_combout\ & \sdram_controller|readBufferState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Add27~6_combout\,
	datad => \sdram_controller|readBufferState~q\,
	combout => \sdram_controller|readBufferReadAddress[3]~3_combout\);

-- Location: LCCOMB_X51_Y30_N0
\sdram_controller|readBufferReadCount~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferReadCount~22_combout\ = (\sdram_controller|Add27~8_combout\ & ((\sdram_controller|readBufferEmpty~q\) # (\sdram_controller|readBufferState~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|Add27~8_combout\,
	datac => \sdram_controller|readBufferEmpty~q\,
	datad => \sdram_controller|readBufferState~q\,
	combout => \sdram_controller|readBufferReadCount~22_combout\);

-- Location: FF_X51_Y30_N1
\sdram_controller|readBufferReadCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sdram_controller|readBufferReadCount~22_combout\,
	clrn => \reset~input_o\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|readBufferReadCount\(4));

-- Location: LCCOMB_X51_Y30_N16
\sdram_controller|Add27~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add27~8_combout\ = (\sdram_controller|readBufferReadCount\(4) & (\sdram_controller|Add27~7\ $ (GND))) # (!\sdram_controller|readBufferReadCount\(4) & (!\sdram_controller|Add27~7\ & VCC))
-- \sdram_controller|Add27~9\ = CARRY((\sdram_controller|readBufferReadCount\(4) & !\sdram_controller|Add27~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|readBufferReadCount\(4),
	datad => VCC,
	cin => \sdram_controller|Add27~7\,
	combout => \sdram_controller|Add27~8_combout\,
	cout => \sdram_controller|Add27~9\);

-- Location: LCCOMB_X52_Y30_N10
\sdram_controller|readBufferReadAddress[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferReadAddress[4]~4_combout\ = (\sdram_controller|Add27~8_combout\ & \sdram_controller|readBufferState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sdram_controller|Add27~8_combout\,
	datad => \sdram_controller|readBufferState~q\,
	combout => \sdram_controller|readBufferReadAddress[4]~4_combout\);

-- Location: LCCOMB_X52_Y30_N4
\sdram_controller|readBufferReadCount~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferReadCount~23_combout\ = (\sdram_controller|Add27~10_combout\ & ((\sdram_controller|readBufferState~q\) # (\sdram_controller|readBufferEmpty~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|Add27~10_combout\,
	datac => \sdram_controller|readBufferState~q\,
	datad => \sdram_controller|readBufferEmpty~q\,
	combout => \sdram_controller|readBufferReadCount~23_combout\);

-- Location: FF_X52_Y30_N5
\sdram_controller|readBufferReadCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sdram_controller|readBufferReadCount~23_combout\,
	clrn => \reset~input_o\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|readBufferReadCount\(5));

-- Location: LCCOMB_X51_Y30_N18
\sdram_controller|Add27~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add27~10_combout\ = (\sdram_controller|readBufferReadCount\(5) & (!\sdram_controller|Add27~9\)) # (!\sdram_controller|readBufferReadCount\(5) & ((\sdram_controller|Add27~9\) # (GND)))
-- \sdram_controller|Add27~11\ = CARRY((!\sdram_controller|Add27~9\) # (!\sdram_controller|readBufferReadCount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|readBufferReadCount\(5),
	datad => VCC,
	cin => \sdram_controller|Add27~9\,
	combout => \sdram_controller|Add27~10_combout\,
	cout => \sdram_controller|Add27~11\);

-- Location: LCCOMB_X52_Y30_N30
\sdram_controller|readBufferReadAddress[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferReadAddress[5]~5_combout\ = (\sdram_controller|Add27~10_combout\ & \sdram_controller|readBufferState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|Add27~10_combout\,
	datad => \sdram_controller|readBufferState~q\,
	combout => \sdram_controller|readBufferReadAddress[5]~5_combout\);

-- Location: LCCOMB_X52_Y30_N28
\sdram_controller|readBufferReadCount~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferReadCount~24_combout\ = (\sdram_controller|Add27~12_combout\ & ((\sdram_controller|readBufferState~q\) # (\sdram_controller|readBufferEmpty~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|Add27~12_combout\,
	datac => \sdram_controller|readBufferState~q\,
	datad => \sdram_controller|readBufferEmpty~q\,
	combout => \sdram_controller|readBufferReadCount~24_combout\);

-- Location: FF_X52_Y30_N29
\sdram_controller|readBufferReadCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sdram_controller|readBufferReadCount~24_combout\,
	clrn => \reset~input_o\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|readBufferReadCount\(6));

-- Location: LCCOMB_X51_Y30_N20
\sdram_controller|Add27~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add27~12_combout\ = (\sdram_controller|readBufferReadCount\(6) & (\sdram_controller|Add27~11\ $ (GND))) # (!\sdram_controller|readBufferReadCount\(6) & (!\sdram_controller|Add27~11\ & VCC))
-- \sdram_controller|Add27~13\ = CARRY((\sdram_controller|readBufferReadCount\(6) & !\sdram_controller|Add27~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|readBufferReadCount\(6),
	datad => VCC,
	cin => \sdram_controller|Add27~11\,
	combout => \sdram_controller|Add27~12_combout\,
	cout => \sdram_controller|Add27~13\);

-- Location: LCCOMB_X52_Y30_N14
\sdram_controller|readBufferReadAddress[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferReadAddress[6]~6_combout\ = (\sdram_controller|Add27~12_combout\ & \sdram_controller|readBufferState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|Add27~12_combout\,
	datad => \sdram_controller|readBufferState~q\,
	combout => \sdram_controller|readBufferReadAddress[6]~6_combout\);

-- Location: LCCOMB_X51_Y30_N26
\sdram_controller|readBufferReadCount~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferReadCount~25_combout\ = (\sdram_controller|Add27~14_combout\ & ((\sdram_controller|readBufferEmpty~q\) # (\sdram_controller|readBufferState~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|readBufferEmpty~q\,
	datac => \sdram_controller|Add27~14_combout\,
	datad => \sdram_controller|readBufferState~q\,
	combout => \sdram_controller|readBufferReadCount~25_combout\);

-- Location: FF_X51_Y30_N27
\sdram_controller|readBufferReadCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sdram_controller|readBufferReadCount~25_combout\,
	clrn => \reset~input_o\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|readBufferReadCount\(7));

-- Location: LCCOMB_X51_Y30_N22
\sdram_controller|Add27~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add27~14_combout\ = (\sdram_controller|readBufferReadCount\(7) & (!\sdram_controller|Add27~13\)) # (!\sdram_controller|readBufferReadCount\(7) & ((\sdram_controller|Add27~13\) # (GND)))
-- \sdram_controller|Add27~15\ = CARRY((!\sdram_controller|Add27~13\) # (!\sdram_controller|readBufferReadCount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|readBufferReadCount\(7),
	datad => VCC,
	cin => \sdram_controller|Add27~13\,
	combout => \sdram_controller|Add27~14_combout\,
	cout => \sdram_controller|Add27~15\);

-- Location: LCCOMB_X52_Y30_N0
\sdram_controller|readBufferReadAddress[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferReadAddress[7]~7_combout\ = (\sdram_controller|Add27~14_combout\ & \sdram_controller|readBufferState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|Add27~14_combout\,
	datad => \sdram_controller|readBufferState~q\,
	combout => \sdram_controller|readBufferReadAddress[7]~7_combout\);

-- Location: LCCOMB_X52_Y30_N26
\sdram_controller|readBufferReadCount~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferReadCount~26_combout\ = (\sdram_controller|Add27~16_combout\ & ((\sdram_controller|readBufferState~q\) # (\sdram_controller|readBufferEmpty~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|Add27~16_combout\,
	datac => \sdram_controller|readBufferState~q\,
	datad => \sdram_controller|readBufferEmpty~q\,
	combout => \sdram_controller|readBufferReadCount~26_combout\);

-- Location: FF_X52_Y30_N27
\sdram_controller|readBufferReadCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sdram_controller|readBufferReadCount~26_combout\,
	clrn => \reset~input_o\,
	ena => \s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|readBufferReadCount\(8));

-- Location: LCCOMB_X51_Y30_N24
\sdram_controller|Add27~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add27~16_combout\ = \sdram_controller|Add27~15\ $ (!\sdram_controller|readBufferReadCount\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \sdram_controller|readBufferReadCount\(8),
	cin => \sdram_controller|Add27~15\,
	combout => \sdram_controller|Add27~16_combout\);

-- Location: LCCOMB_X52_Y30_N24
\sdram_controller|readBufferReadAddress[8]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferReadAddress[8]~8_combout\ = (\sdram_controller|Add27~16_combout\ & \sdram_controller|readBufferState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|Add27~16_combout\,
	datad => \sdram_controller|readBufferState~q\,
	combout => \sdram_controller|readBufferReadAddress[8]~8_combout\);

-- Location: IOIBUF_X78_Y16_N8
\SDRAM_DATA[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SDRAM_DATA(1),
	o => \SDRAM_DATA[1]~input_o\);

-- Location: LCCOMB_X60_Y30_N2
\sdram_controller|readBufferDataIn[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferDataIn[1]~1_combout\ = (\sdram_controller|readBufferWriteEnable~2_combout\ & \SDRAM_DATA[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sdram_controller|readBufferWriteEnable~2_combout\,
	datad => \SDRAM_DATA[1]~input_o\,
	combout => \sdram_controller|readBufferDataIn[1]~1_combout\);

-- Location: IOIBUF_X78_Y3_N1
\SDRAM_DATA[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SDRAM_DATA(2),
	o => \SDRAM_DATA[2]~input_o\);

-- Location: LCCOMB_X60_Y30_N12
\sdram_controller|readBufferDataIn[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferDataIn[2]~2_combout\ = (\sdram_controller|readBufferWriteEnable~2_combout\ & \SDRAM_DATA[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sdram_controller|readBufferWriteEnable~2_combout\,
	datad => \SDRAM_DATA[2]~input_o\,
	combout => \sdram_controller|readBufferDataIn[2]~2_combout\);

-- Location: IOIBUF_X78_Y3_N8
\SDRAM_DATA[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SDRAM_DATA(3),
	o => \SDRAM_DATA[3]~input_o\);

-- Location: LCCOMB_X60_Y30_N18
\sdram_controller|readBufferDataIn[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferDataIn[3]~3_combout\ = (\sdram_controller|readBufferWriteEnable~2_combout\ & \SDRAM_DATA[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sdram_controller|readBufferWriteEnable~2_combout\,
	datad => \SDRAM_DATA[3]~input_o\,
	combout => \sdram_controller|readBufferDataIn[3]~3_combout\);

-- Location: IOIBUF_X78_Y15_N8
\SDRAM_DATA[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SDRAM_DATA(4),
	o => \SDRAM_DATA[4]~input_o\);

-- Location: LCCOMB_X60_Y30_N20
\sdram_controller|readBufferDataIn[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferDataIn[4]~4_combout\ = (\sdram_controller|readBufferWriteEnable~2_combout\ & \SDRAM_DATA[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sdram_controller|readBufferWriteEnable~2_combout\,
	datad => \SDRAM_DATA[4]~input_o\,
	combout => \sdram_controller|readBufferDataIn[4]~4_combout\);

-- Location: IOIBUF_X78_Y15_N1
\SDRAM_DATA[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SDRAM_DATA(5),
	o => \SDRAM_DATA[5]~input_o\);

-- Location: LCCOMB_X60_Y30_N10
\sdram_controller|readBufferDataIn[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferDataIn[5]~5_combout\ = (\sdram_controller|readBufferWriteEnable~2_combout\ & \SDRAM_DATA[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sdram_controller|readBufferWriteEnable~2_combout\,
	datad => \SDRAM_DATA[5]~input_o\,
	combout => \sdram_controller|readBufferDataIn[5]~5_combout\);

-- Location: IOIBUF_X78_Y16_N15
\SDRAM_DATA[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SDRAM_DATA(6),
	o => \SDRAM_DATA[6]~input_o\);

-- Location: LCCOMB_X60_Y30_N28
\sdram_controller|readBufferDataIn[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferDataIn[6]~6_combout\ = (\sdram_controller|readBufferWriteEnable~2_combout\ & \SDRAM_DATA[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sdram_controller|readBufferWriteEnable~2_combout\,
	datad => \SDRAM_DATA[6]~input_o\,
	combout => \sdram_controller|readBufferDataIn[6]~6_combout\);

-- Location: IOIBUF_X78_Y17_N8
\SDRAM_DATA[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SDRAM_DATA(7),
	o => \SDRAM_DATA[7]~input_o\);

-- Location: LCCOMB_X60_Y30_N22
\sdram_controller|readBufferDataIn[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferDataIn[7]~7_combout\ = (\sdram_controller|readBufferWriteEnable~2_combout\ & \SDRAM_DATA[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|readBufferWriteEnable~2_combout\,
	datac => \SDRAM_DATA[7]~input_o\,
	combout => \sdram_controller|readBufferDataIn[7]~7_combout\);

-- Location: M9K_X53_Y30_N0
\sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "SdramController:sdram_controller|creadBuffer:readBufferInstance|altsyncram:readBufferRAM_rtl_0|altsyncram_uac1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 9,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 18,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 511,
	port_b_logical_ram_depth => 512,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \sdram_controller|readBufferWriteEnable~2_combout\,
	portbre => VCC,
	clk0 => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \sdram_controller|readBufferWriteEnable~2_combout\,
	portadatain => \sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X54_Y34_N28
\LED_Reg[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED_Reg[0]~1_combout\ = (\sdram_controller|readBufferState~q\ & \sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a0~portbdataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|readBufferState~q\,
	datad => \sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \LED_Reg[0]~1_combout\);

-- Location: LCCOMB_X54_Y30_N20
\sdram_controller|readDeviceIndexReg[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readDeviceIndexReg[0]~2_combout\ = (!\sdram_controller|writeBufferEmpty~q\ & (\state.START_RECEIVING~q\ & \sdram_controller|readBufferEmpty~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|writeBufferEmpty~q\,
	datac => \state.START_RECEIVING~q\,
	datad => \sdram_controller|readBufferEmpty~q\,
	combout => \sdram_controller|readDeviceIndexReg[0]~2_combout\);

-- Location: LCCOMB_X54_Y30_N2
\sdram_controller|readByteMaskReg[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readByteMaskReg[0]~0_combout\ = (\sdram_controller|readByteMaskReg\(0)) # ((\s_enable~0_combout\ & (\sdram_controller|readDeviceIndexReg[0]~1_combout\ & \sdram_controller|readDeviceIndexReg[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_enable~0_combout\,
	datab => \sdram_controller|readDeviceIndexReg[0]~1_combout\,
	datac => \sdram_controller|readByteMaskReg\(0),
	datad => \sdram_controller|readDeviceIndexReg[0]~2_combout\,
	combout => \sdram_controller|readByteMaskReg[0]~0_combout\);

-- Location: FF_X54_Y30_N3
\sdram_controller|readByteMaskReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_generator|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sdram_controller|readByteMaskReg[0]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|readByteMaskReg\(0));

-- Location: LCCOMB_X54_Y34_N26
\LED_Reg[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED_Reg[0]~2_combout\ = (\LED_Reg[0]~0_combout\ & (\LED_Reg[0]~1_combout\ & (\sdram_controller|readByteMaskReg\(0)))) # (!\LED_Reg[0]~0_combout\ & (((LED_Reg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED_Reg[0]~0_combout\,
	datab => \LED_Reg[0]~1_combout\,
	datac => \sdram_controller|readByteMaskReg\(0),
	datad => LED_Reg(0),
	combout => \LED_Reg[0]~2_combout\);

-- Location: LCCOMB_X54_Y34_N12
\LED_Reg[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED_Reg[0]~feeder_combout\ = \LED_Reg[0]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED_Reg[0]~2_combout\,
	combout => \LED_Reg[0]~feeder_combout\);

-- Location: FF_X54_Y34_N13
\LED_Reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LED_Reg[0]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LED_Reg(0));

-- Location: LCCOMB_X54_Y34_N8
\Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a1\ & (\sdram_controller|readByteMaskReg\(0) & \sdram_controller|readBufferState~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a1\,
	datac => \sdram_controller|readByteMaskReg\(0),
	datad => \sdram_controller|readBufferState~q\,
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X54_Y34_N10
\LED_Reg[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED_Reg[1]~feeder_combout\ = \Selector13~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector13~0_combout\,
	combout => \LED_Reg[1]~feeder_combout\);

-- Location: FF_X54_Y34_N11
\LED_Reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LED_Reg[1]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \LED_Reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LED_Reg(1));

-- Location: LCCOMB_X54_Y34_N6
\LED_Reg[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED_Reg[2]~3_combout\ = (\sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a2\ & \sdram_controller|readBufferState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a2\,
	datad => \sdram_controller|readBufferState~q\,
	combout => \LED_Reg[2]~3_combout\);

-- Location: LCCOMB_X54_Y34_N20
\LED_Reg[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED_Reg[2]~4_combout\ = (\LED_Reg[0]~0_combout\ & (((\sdram_controller|readByteMaskReg\(0) & \LED_Reg[2]~3_combout\)))) # (!\LED_Reg[0]~0_combout\ & (LED_Reg(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED_Reg[0]~0_combout\,
	datab => LED_Reg(2),
	datac => \sdram_controller|readByteMaskReg\(0),
	datad => \LED_Reg[2]~3_combout\,
	combout => \LED_Reg[2]~4_combout\);

-- Location: LCCOMB_X54_Y34_N24
\LED_Reg[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED_Reg[2]~feeder_combout\ = \LED_Reg[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LED_Reg[2]~4_combout\,
	combout => \LED_Reg[2]~feeder_combout\);

-- Location: FF_X54_Y34_N25
\LED_Reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LED_Reg[2]~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LED_Reg(2));

-- Location: LCCOMB_X54_Y34_N30
\Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a3\ & (\sdram_controller|readByteMaskReg\(0) & \sdram_controller|readBufferState~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a3\,
	datac => \sdram_controller|readByteMaskReg\(0),
	datad => \sdram_controller|readBufferState~q\,
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X54_Y34_N18
\LED_Reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED_Reg[3]~feeder_combout\ = \Selector11~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector11~0_combout\,
	combout => \LED_Reg[3]~feeder_combout\);

-- Location: FF_X54_Y34_N19
\LED_Reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LED_Reg[3]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \LED_Reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LED_Reg(3));

-- Location: LCCOMB_X54_Y34_N2
\sdram_controller|dataOut[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|dataOut[6]~0_combout\ = (\sdram_controller|readByteMaskReg\(0) & \sdram_controller|readBufferState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|readByteMaskReg\(0),
	datad => \sdram_controller|readBufferState~q\,
	combout => \sdram_controller|dataOut[6]~0_combout\);

-- Location: LCCOMB_X54_Y34_N4
\LED_Reg[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED_Reg[4]~5_combout\ = (\LED_Reg[0]~0_combout\ & (\sdram_controller|dataOut[6]~0_combout\ & ((\sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a4\)))) # (!\LED_Reg[0]~0_combout\ & (((LED_Reg(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED_Reg[0]~0_combout\,
	datab => \sdram_controller|dataOut[6]~0_combout\,
	datac => LED_Reg(4),
	datad => \sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a4\,
	combout => \LED_Reg[4]~5_combout\);

-- Location: FF_X54_Y34_N5
\LED_Reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LED_Reg[4]~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LED_Reg(4));

-- Location: LCCOMB_X54_Y34_N0
\Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a5\ & (\sdram_controller|readByteMaskReg\(0) & \sdram_controller|readBufferState~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a5\,
	datac => \sdram_controller|readByteMaskReg\(0),
	datad => \sdram_controller|readBufferState~q\,
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X54_Y34_N14
\LED_Reg[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED_Reg[5]~feeder_combout\ = \Selector9~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector9~0_combout\,
	combout => \LED_Reg[5]~feeder_combout\);

-- Location: FF_X54_Y34_N15
\LED_Reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LED_Reg[5]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \LED_Reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LED_Reg(5));

-- Location: LCCOMB_X54_Y34_N16
\LED_Reg[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED_Reg[6]~6_combout\ = (\LED_Reg[0]~0_combout\ & (\sdram_controller|dataOut[6]~0_combout\ & ((\sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a6\)))) # (!\LED_Reg[0]~0_combout\ & (((LED_Reg(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED_Reg[0]~0_combout\,
	datab => \sdram_controller|dataOut[6]~0_combout\,
	datac => LED_Reg(6),
	datad => \sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a6\,
	combout => \LED_Reg[6]~6_combout\);

-- Location: FF_X54_Y34_N17
\LED_Reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LED_Reg[6]~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LED_Reg(6));

-- Location: LCCOMB_X54_Y34_N22
\Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a7\ & (\sdram_controller|readByteMaskReg\(0) & \sdram_controller|readBufferState~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|readBufferInstance|readBufferRAM_rtl_0|auto_generated|ram_block1a7\,
	datac => \sdram_controller|readByteMaskReg\(0),
	datad => \sdram_controller|readBufferState~q\,
	combout => \Selector7~0_combout\);

-- Location: FF_X54_Y34_N3
\LED_Reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector7~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \LED_Reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LED_Reg(7));

-- Location: IOIBUF_X78_Y23_N8
\SDRAM_DATA[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SDRAM_DATA(8),
	o => \SDRAM_DATA[8]~input_o\);

-- Location: IOIBUF_X78_Y30_N8
\SDRAM_DATA[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SDRAM_DATA(9),
	o => \SDRAM_DATA[9]~input_o\);

-- Location: IOIBUF_X78_Y29_N1
\SDRAM_DATA[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SDRAM_DATA(10),
	o => \SDRAM_DATA[10]~input_o\);

-- Location: IOIBUF_X78_Y29_N8
\SDRAM_DATA[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SDRAM_DATA(11),
	o => \SDRAM_DATA[11]~input_o\);

-- Location: IOIBUF_X78_Y31_N8
\SDRAM_DATA[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SDRAM_DATA(12),
	o => \SDRAM_DATA[12]~input_o\);

-- Location: IOIBUF_X78_Y31_N22
\SDRAM_DATA[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SDRAM_DATA(13),
	o => \SDRAM_DATA[13]~input_o\);

-- Location: IOIBUF_X78_Y31_N15
\SDRAM_DATA[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SDRAM_DATA(14),
	o => \SDRAM_DATA[14]~input_o\);

-- Location: IOIBUF_X78_Y31_N1
\SDRAM_DATA[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SDRAM_DATA(15),
	o => \SDRAM_DATA[15]~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~GND~combout\,
	xe_ye => \~GND~combout\,
	se => \~GND~combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);
END structure;


