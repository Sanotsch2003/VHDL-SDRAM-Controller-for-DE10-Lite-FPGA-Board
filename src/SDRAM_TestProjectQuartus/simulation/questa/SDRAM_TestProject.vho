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

-- DATE "03/11/2025 18:27:11"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top IS
    PORT (
	memClk : IN std_logic;
	sysClk : IN std_logic;
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
	SDRAM_CHIP_SEL : OUT std_logic
	);
END top;

-- Design Ports Information
-- SDRAM_ADDR[0]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDRAM_ADDR[1]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDRAM_ADDR[2]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDRAM_ADDR[3]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDRAM_ADDR[4]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDRAM_ADDR[5]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDRAM_ADDR[6]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDRAM_ADDR[7]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDRAM_ADDR[8]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDRAM_ADDR[9]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDRAM_ADDR[10]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDRAM_ADDR[11]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDRAM_ADDR[12]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDRAM_BANK_ADDR[0]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDRAM_BANK_ADDR[1]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDRAM_BYTE_MASK[0]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDRAM_BYTE_MASK[1]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDRAM_RAS	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDRAM_CAS	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDRAM_CLK_EN	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDRAM_CLK	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDRAM_WRITE_EN	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDRAM_CHIP_SEL	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDRAM_DATA[0]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDRAM_DATA[1]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDRAM_DATA[2]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDRAM_DATA[3]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDRAM_DATA[4]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDRAM_DATA[5]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDRAM_DATA[6]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDRAM_DATA[7]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDRAM_DATA[8]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDRAM_DATA[9]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDRAM_DATA[10]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDRAM_DATA[11]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDRAM_DATA[12]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDRAM_DATA[13]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDRAM_DATA[14]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDRAM_DATA[15]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memClk	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sysClk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_memClk : std_logic;
SIGNAL ww_sysClk : std_logic;
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
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \memClk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sysClk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SDRAM_DATA[0]~input_o\ : std_logic;
SIGNAL \SDRAM_DATA[1]~input_o\ : std_logic;
SIGNAL \SDRAM_DATA[2]~input_o\ : std_logic;
SIGNAL \SDRAM_DATA[3]~input_o\ : std_logic;
SIGNAL \SDRAM_DATA[4]~input_o\ : std_logic;
SIGNAL \SDRAM_DATA[5]~input_o\ : std_logic;
SIGNAL \SDRAM_DATA[6]~input_o\ : std_logic;
SIGNAL \SDRAM_DATA[7]~input_o\ : std_logic;
SIGNAL \SDRAM_DATA[8]~input_o\ : std_logic;
SIGNAL \SDRAM_DATA[9]~input_o\ : std_logic;
SIGNAL \SDRAM_DATA[10]~input_o\ : std_logic;
SIGNAL \SDRAM_DATA[11]~input_o\ : std_logic;
SIGNAL \SDRAM_DATA[12]~input_o\ : std_logic;
SIGNAL \SDRAM_DATA[13]~input_o\ : std_logic;
SIGNAL \SDRAM_DATA[14]~input_o\ : std_logic;
SIGNAL \SDRAM_DATA[15]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \SDRAM_DATA[0]~output_o\ : std_logic;
SIGNAL \SDRAM_DATA[1]~output_o\ : std_logic;
SIGNAL \SDRAM_DATA[2]~output_o\ : std_logic;
SIGNAL \SDRAM_DATA[3]~output_o\ : std_logic;
SIGNAL \SDRAM_DATA[4]~output_o\ : std_logic;
SIGNAL \SDRAM_DATA[5]~output_o\ : std_logic;
SIGNAL \SDRAM_DATA[6]~output_o\ : std_logic;
SIGNAL \SDRAM_DATA[7]~output_o\ : std_logic;
SIGNAL \SDRAM_DATA[8]~output_o\ : std_logic;
SIGNAL \SDRAM_DATA[9]~output_o\ : std_logic;
SIGNAL \SDRAM_DATA[10]~output_o\ : std_logic;
SIGNAL \SDRAM_DATA[11]~output_o\ : std_logic;
SIGNAL \SDRAM_DATA[12]~output_o\ : std_logic;
SIGNAL \SDRAM_DATA[13]~output_o\ : std_logic;
SIGNAL \SDRAM_DATA[14]~output_o\ : std_logic;
SIGNAL \SDRAM_DATA[15]~output_o\ : std_logic;
SIGNAL \SDRAM_ADDR[0]~output_o\ : std_logic;
SIGNAL \SDRAM_ADDR[1]~output_o\ : std_logic;
SIGNAL \SDRAM_ADDR[2]~output_o\ : std_logic;
SIGNAL \SDRAM_ADDR[3]~output_o\ : std_logic;
SIGNAL \SDRAM_ADDR[4]~output_o\ : std_logic;
SIGNAL \SDRAM_ADDR[5]~output_o\ : std_logic;
SIGNAL \SDRAM_ADDR[6]~output_o\ : std_logic;
SIGNAL \SDRAM_ADDR[7]~output_o\ : std_logic;
SIGNAL \SDRAM_ADDR[8]~output_o\ : std_logic;
SIGNAL \SDRAM_ADDR[9]~output_o\ : std_logic;
SIGNAL \SDRAM_ADDR[10]~output_o\ : std_logic;
SIGNAL \SDRAM_ADDR[11]~output_o\ : std_logic;
SIGNAL \SDRAM_ADDR[12]~output_o\ : std_logic;
SIGNAL \SDRAM_BANK_ADDR[0]~output_o\ : std_logic;
SIGNAL \SDRAM_BANK_ADDR[1]~output_o\ : std_logic;
SIGNAL \SDRAM_BYTE_MASK[0]~output_o\ : std_logic;
SIGNAL \SDRAM_BYTE_MASK[1]~output_o\ : std_logic;
SIGNAL \SDRAM_RAS~output_o\ : std_logic;
SIGNAL \SDRAM_CAS~output_o\ : std_logic;
SIGNAL \SDRAM_CLK_EN~output_o\ : std_logic;
SIGNAL \SDRAM_CLK~output_o\ : std_logic;
SIGNAL \SDRAM_WRITE_EN~output_o\ : std_logic;
SIGNAL \SDRAM_CHIP_SEL~output_o\ : std_logic;
SIGNAL \memClk~input_o\ : std_logic;
SIGNAL \memClk~inputclkctrl_outclk\ : std_logic;
SIGNAL \sdram_controller|stateCycleCount[0]~17_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \sdram_controller|stateCycleCount[0]~18\ : std_logic;
SIGNAL \sdram_controller|stateCycleCount[1]~19_combout\ : std_logic;
SIGNAL \sdram_controller|stateCycleCount[1]~20\ : std_logic;
SIGNAL \sdram_controller|stateCycleCount[2]~21_combout\ : std_logic;
SIGNAL \sysClk~input_o\ : std_logic;
SIGNAL \sysClk~inputclkctrl_outclk\ : std_logic;
SIGNAL \sdram_controller|controllerState.SDRAM_POWER_UP~feeder_combout\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \sdram_controller|SDRAM_Ready[0]~0_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferWriteCount[0]~9_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferWriteCount[0]~10\ : std_logic;
SIGNAL \sdram_controller|writeBufferWriteCount[1]~11_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferWriteCount[1]~12\ : std_logic;
SIGNAL \sdram_controller|writeBufferWriteCount[2]~13_combout\ : std_logic;
SIGNAL \sdram_controller|writeAddressReg[0]~0_combout\ : std_logic;
SIGNAL \sdram_controller|LessThan17~0_combout\ : std_logic;
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
SIGNAL \sdram_controller|LessThan17~1_combout\ : std_logic;
SIGNAL \sdram_controller|LessThan17~2_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferState~0_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferState~q\ : std_logic;
SIGNAL \sdram_controller|writeBufferEmpty~0_combout\ : std_logic;
SIGNAL \sdram_controller|memOperationReg~0_combout\ : std_logic;
SIGNAL \transmitCount[0]~6_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferReadCount[0]~10_combout\ : std_logic;
SIGNAL \Selector0~4_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferReadCount[0]~11\ : std_logic;
SIGNAL \sdram_controller|readBufferReadCount[1]~12_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferReadCount[1]~13\ : std_logic;
SIGNAL \sdram_controller|readBufferReadCount[2]~14_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferReadCount[2]~15\ : std_logic;
SIGNAL \sdram_controller|readBufferReadCount[3]~16_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferReadCount[3]~17\ : std_logic;
SIGNAL \sdram_controller|readBufferReadCount[4]~18_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferReadCount[4]~19\ : std_logic;
SIGNAL \sdram_controller|readBufferReadCount[5]~20_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferReadCount[5]~21\ : std_logic;
SIGNAL \sdram_controller|readBufferReadCount[6]~22_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferReadCount[6]~23\ : std_logic;
SIGNAL \sdram_controller|readBufferReadCount[7]~24_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferReadCount[7]~25\ : std_logic;
SIGNAL \sdram_controller|readBufferReadCount[8]~26_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferReadCount[8]~27\ : std_logic;
SIGNAL \sdram_controller|readBufferReadCount[9]~28_combout\ : std_logic;
SIGNAL \sdram_controller|LessThan18~2_combout\ : std_logic;
SIGNAL \sdram_controller|LessThan18~1_combout\ : std_logic;
SIGNAL \sdram_controller|readDeviceIndexReg[0]~2_combout\ : std_logic;
SIGNAL \sdram_controller|readBurstLengthReg[0]~0_combout\ : std_logic;
SIGNAL \sdram_controller|LessThan18~0_combout\ : std_logic;
SIGNAL \sdram_controller|LessThan18~3_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferState~2_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferState~q\ : std_logic;
SIGNAL \Selector6~3_combout\ : std_logic;
SIGNAL \transmitCount[0]~7\ : std_logic;
SIGNAL \transmitCount[1]~8_combout\ : std_logic;
SIGNAL \transmitCount[1]~9\ : std_logic;
SIGNAL \transmitCount[2]~10_combout\ : std_logic;
SIGNAL \transmitCount[2]~11\ : std_logic;
SIGNAL \transmitCount[3]~12_combout\ : std_logic;
SIGNAL \transmitCount[3]~13\ : std_logic;
SIGNAL \transmitCount[4]~14_combout\ : std_logic;
SIGNAL \transmitCount[4]~15\ : std_logic;
SIGNAL \transmitCount[5]~16_combout\ : std_logic;
SIGNAL \state.IDLE~feeder_combout\ : std_logic;
SIGNAL \state.IDLE~q\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \state.TRANSMIT~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \state.START_RECEIVING~q\ : std_logic;
SIGNAL \sdram_controller|readDeviceIndexReg[0]~1_combout\ : std_logic;
SIGNAL \sdram_controller|addressReg[0]~1_combout\ : std_logic;
SIGNAL \sdram_controller|memOperationReg~q\ : std_logic;
SIGNAL \sdram_controller|controllerState~25_combout\ : std_logic;
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
SIGNAL \sdram_controller|process_1~3_combout\ : std_logic;
SIGNAL \sdram_controller|process_1~2_combout\ : std_logic;
SIGNAL \sdram_controller|stateCycleCount[14]~46\ : std_logic;
SIGNAL \sdram_controller|stateCycleCount[15]~47_combout\ : std_logic;
SIGNAL \sdram_controller|stateCycleCount[15]~48\ : std_logic;
SIGNAL \sdram_controller|stateCycleCount[16]~49_combout\ : std_logic;
SIGNAL \sdram_controller|Equal1~2_combout\ : std_logic;
SIGNAL \sdram_controller|Equal1~3_combout\ : std_logic;
SIGNAL \sdram_controller|LessThan0~0_combout\ : std_logic;
SIGNAL \sdram_controller|Selector0~1_combout\ : std_logic;
SIGNAL \sdram_controller|Equal1~4_combout\ : std_logic;
SIGNAL \sdram_controller|controllerState~15_combout\ : std_logic;
SIGNAL \sdram_controller|controllerState.SDRAM_INIT~0_combout\ : std_logic;
SIGNAL \sdram_controller|controllerState.SDRAM_INIT~q\ : std_logic;
SIGNAL \sdram_controller|process_1~5_combout\ : std_logic;
SIGNAL \sdram_controller|process_1~6_combout\ : std_logic;
SIGNAL \sdram_controller|LessThan1~0_combout\ : std_logic;
SIGNAL \sdram_controller|controllerState~12_combout\ : std_logic;
SIGNAL \sdram_controller|Add24~0_combout\ : std_logic;
SIGNAL \sdram_controller|Add24~1\ : std_logic;
SIGNAL \sdram_controller|Add24~2_combout\ : std_logic;
SIGNAL \sdram_controller|refreshCount~4_combout\ : std_logic;
SIGNAL \sdram_controller|Add24~3\ : std_logic;
SIGNAL \sdram_controller|Add24~4_combout\ : std_logic;
SIGNAL \sdram_controller|Add24~5\ : std_logic;
SIGNAL \sdram_controller|Add24~6_combout\ : std_logic;
SIGNAL \sdram_controller|refreshCount~3_combout\ : std_logic;
SIGNAL \sdram_controller|Add24~7\ : std_logic;
SIGNAL \sdram_controller|Add24~8_combout\ : std_logic;
SIGNAL \sdram_controller|refreshCount~2_combout\ : std_logic;
SIGNAL \sdram_controller|Add24~9\ : std_logic;
SIGNAL \sdram_controller|Add24~10_combout\ : std_logic;
SIGNAL \sdram_controller|Add24~11\ : std_logic;
SIGNAL \sdram_controller|Add24~12_combout\ : std_logic;
SIGNAL \sdram_controller|refreshCount~1_combout\ : std_logic;
SIGNAL \sdram_controller|Equal15~7_combout\ : std_logic;
SIGNAL \sdram_controller|Equal15~8_combout\ : std_logic;
SIGNAL \sdram_controller|Add24~13\ : std_logic;
SIGNAL \sdram_controller|Add24~14_combout\ : std_logic;
SIGNAL \sdram_controller|Add24~15\ : std_logic;
SIGNAL \sdram_controller|Add24~16_combout\ : std_logic;
SIGNAL \sdram_controller|Add24~17\ : std_logic;
SIGNAL \sdram_controller|Add24~18_combout\ : std_logic;
SIGNAL \sdram_controller|Add24~19\ : std_logic;
SIGNAL \sdram_controller|Add24~20_combout\ : std_logic;
SIGNAL \sdram_controller|refreshCount~0_combout\ : std_logic;
SIGNAL \sdram_controller|Add24~21\ : std_logic;
SIGNAL \sdram_controller|Add24~22_combout\ : std_logic;
SIGNAL \sdram_controller|Add24~23\ : std_logic;
SIGNAL \sdram_controller|Add24~24_combout\ : std_logic;
SIGNAL \sdram_controller|Add24~25\ : std_logic;
SIGNAL \sdram_controller|Add24~26_combout\ : std_logic;
SIGNAL \sdram_controller|Add24~27\ : std_logic;
SIGNAL \sdram_controller|Add24~28_combout\ : std_logic;
SIGNAL \sdram_controller|Add24~29\ : std_logic;
SIGNAL \sdram_controller|Add24~30_combout\ : std_logic;
SIGNAL \sdram_controller|Add24~31\ : std_logic;
SIGNAL \sdram_controller|Add24~32_combout\ : std_logic;
SIGNAL \sdram_controller|Add24~33\ : std_logic;
SIGNAL \sdram_controller|Add24~34_combout\ : std_logic;
SIGNAL \sdram_controller|Add24~35\ : std_logic;
SIGNAL \sdram_controller|Add24~36_combout\ : std_logic;
SIGNAL \sdram_controller|Add24~37\ : std_logic;
SIGNAL \sdram_controller|Add24~38_combout\ : std_logic;
SIGNAL \sdram_controller|Add24~39\ : std_logic;
SIGNAL \sdram_controller|Add24~40_combout\ : std_logic;
SIGNAL \sdram_controller|Add24~41\ : std_logic;
SIGNAL \sdram_controller|Add24~42_combout\ : std_logic;
SIGNAL \sdram_controller|Add24~43\ : std_logic;
SIGNAL \sdram_controller|Add24~44_combout\ : std_logic;
SIGNAL \sdram_controller|Add24~45\ : std_logic;
SIGNAL \sdram_controller|Add24~46_combout\ : std_logic;
SIGNAL \sdram_controller|Add24~47\ : std_logic;
SIGNAL \sdram_controller|Add24~48_combout\ : std_logic;
SIGNAL \sdram_controller|Add24~49\ : std_logic;
SIGNAL \sdram_controller|Add24~50_combout\ : std_logic;
SIGNAL \sdram_controller|Add24~51\ : std_logic;
SIGNAL \sdram_controller|Add24~52_combout\ : std_logic;
SIGNAL \sdram_controller|Add24~53\ : std_logic;
SIGNAL \sdram_controller|Add24~54_combout\ : std_logic;
SIGNAL \sdram_controller|Add24~55\ : std_logic;
SIGNAL \sdram_controller|Add24~56_combout\ : std_logic;
SIGNAL \sdram_controller|Add24~57\ : std_logic;
SIGNAL \sdram_controller|Add24~58_combout\ : std_logic;
SIGNAL \sdram_controller|Add24~59\ : std_logic;
SIGNAL \sdram_controller|Add24~60_combout\ : std_logic;
SIGNAL \sdram_controller|Equal15~0_combout\ : std_logic;
SIGNAL \sdram_controller|Equal15~1_combout\ : std_logic;
SIGNAL \sdram_controller|Equal15~3_combout\ : std_logic;
SIGNAL \sdram_controller|Equal15~2_combout\ : std_logic;
SIGNAL \sdram_controller|Equal15~4_combout\ : std_logic;
SIGNAL \sdram_controller|Equal15~5_combout\ : std_logic;
SIGNAL \sdram_controller|Equal15~6_combout\ : std_logic;
SIGNAL \sdram_controller|Equal15~9_combout\ : std_logic;
SIGNAL \sdram_controller|refreshPending~0_combout\ : std_logic;
SIGNAL \sdram_controller|refreshPending~q\ : std_logic;
SIGNAL \sdram_controller|controllerState~26_combout\ : std_logic;
SIGNAL \sdram_controller|controllerState.SDRAM_AUTO_REFRESH~q\ : std_logic;
SIGNAL \sdram_controller|Selector0~3_combout\ : std_logic;
SIGNAL \sdram_controller|Selector0~4_combout\ : std_logic;
SIGNAL \sdram_controller|Selector0~5_combout\ : std_logic;
SIGNAL \sdram_controller|addressReg[0]~0_combout\ : std_logic;
SIGNAL \sdram_controller|burstLengthReg[1]~0_combout\ : std_logic;
SIGNAL \sdram_controller|burstLengthReg[0]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|LessThan8~0_combout\ : std_logic;
SIGNAL \sdram_controller|LessThan8~1_combout\ : std_logic;
SIGNAL \sdram_controller|LessThan8~2_combout\ : std_logic;
SIGNAL \sdram_controller|controllerState~13_combout\ : std_logic;
SIGNAL \sdram_controller|controllerState~14_combout\ : std_logic;
SIGNAL \sdram_controller|controllerState~20_combout\ : std_logic;
SIGNAL \sdram_controller|controllerState~21_combout\ : std_logic;
SIGNAL \sdram_controller|controllerState~22_combout\ : std_logic;
SIGNAL \sdram_controller|controllerState~23_combout\ : std_logic;
SIGNAL \sdram_controller|controllerState~24_combout\ : std_logic;
SIGNAL \sdram_controller|controllerState.SDRAM_WRITE~q\ : std_logic;
SIGNAL \sdram_controller|Selector27~0_combout\ : std_logic;
SIGNAL \sdram_controller|Selector27~1_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferEmpty~1_combout\ : std_logic;
SIGNAL \sdram_controller|writeBufferEmpty~q\ : std_logic;
SIGNAL \sdram_controller|controllerState~16_combout\ : std_logic;
SIGNAL \sdram_controller|controllerState.SDRAM_IDLE~2_combout\ : std_logic;
SIGNAL \sdram_controller|controllerState~17_combout\ : std_logic;
SIGNAL \sdram_controller|controllerState~18_combout\ : std_logic;
SIGNAL \sdram_controller|controllerState.SDRAM_POWER_UP~q\ : std_logic;
SIGNAL \sdram_controller|controllerState.SDRAM_IDLE~3_combout\ : std_logic;
SIGNAL \sdram_controller|controllerState.SDRAM_IDLE~q\ : std_logic;
SIGNAL \sdram_controller|readDeviceIndexReg[0]~0_combout\ : std_logic;
SIGNAL \sdram_controller|controllerState.SDRAM_ACTIVATE_ROW~q\ : std_logic;
SIGNAL \sdram_controller|controllerState~19_combout\ : std_logic;
SIGNAL \sdram_controller|controllerState.SDRAM_READ~q\ : std_logic;
SIGNAL \sdram_controller|readBufferEmpty~3_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferEmpty~0_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferEmpty~1_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferEmpty~2_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferEmpty~4_combout\ : std_logic;
SIGNAL \sdram_controller|readBufferEmpty~q\ : std_logic;
SIGNAL \Selector6~2_combout\ : std_logic;
SIGNAL \Selector0~3_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \state.START_TRANSMISSION~q\ : std_logic;
SIGNAL \sdram_controller|LessThan7~0_combout\ : std_logic;
SIGNAL \sdram_controller|LessThan7~1_combout\ : std_logic;
SIGNAL \sdram_controller|Selector0~2_combout\ : std_logic;
SIGNAL \sdram_controller|Selector0~0_combout\ : std_logic;
SIGNAL \sdram_controller|Selector0~6_combout\ : std_logic;
SIGNAL \sdram_controller|Selector0~7_combout\ : std_logic;
SIGNAL \sdram_controller|Selector0~8_combout\ : std_logic;
SIGNAL \sdram_controller|Selector0~9_combout\ : std_logic;
SIGNAL \sdram_controller|Selector0~10_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~0_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~47_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~48_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[65][0]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[81][0]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~45_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~46_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[81][0]~q\ : std_logic;
SIGNAL \sdram_controller|Mux31~20_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[73][0]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~43_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~44_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[73][0]~q\ : std_logic;
SIGNAL \sdram_controller|Decoder3~49_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~50_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[89][0]~q\ : std_logic;
SIGNAL \sdram_controller|Mux31~21_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[105][0]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~57_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~62_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[105][0]~q\ : std_logic;
SIGNAL \sdram_controller|Decoder3~66_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[121][0]~q\ : std_logic;
SIGNAL \sdram_controller|Decoder3~64_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~65_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[97][0]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[113][0]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~63_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[113][0]~q\ : std_logic;
SIGNAL \sdram_controller|Mux31~27_combout\ : std_logic;
SIGNAL \sdram_controller|Mux31~28_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[9][0]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~58_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[9][0]~q\ : std_logic;
SIGNAL \sdram_controller|Decoder3~61_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[25][0]~q\ : std_logic;
SIGNAL \sdram_controller|Decoder3~60_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[1][0]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[17][0]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~59_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[17][0]~q\ : std_logic;
SIGNAL \sdram_controller|Mux31~24_combout\ : std_logic;
SIGNAL \sdram_controller|Mux31~25_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[41][0]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~51_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~52_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[41][0]~q\ : std_logic;
SIGNAL \sdram_controller|Decoder3~55_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~56_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[57][0]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[49][0]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~53_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[49][0]~q\ : std_logic;
SIGNAL \sdram_controller|Decoder3~54_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[33][0]~q\ : std_logic;
SIGNAL \sdram_controller|Mux31~22_combout\ : std_logic;
SIGNAL \sdram_controller|Mux31~23_combout\ : std_logic;
SIGNAL \sdram_controller|Mux31~26_combout\ : std_logic;
SIGNAL \sdram_controller|Mux31~29_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[77][0]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~19_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~26_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[77][0]~q\ : std_logic;
SIGNAL \sdram_controller|Decoder3~30_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[93][0]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[85][0]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~21_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~27_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[85][0]~q\ : std_logic;
SIGNAL \sdram_controller|Decoder3~28_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~29_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[69][0]~q\ : std_logic;
SIGNAL \sdram_controller|Mux31~12_combout\ : std_logic;
SIGNAL \sdram_controller|Mux31~13_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~34_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~35_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[5][0]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[21][0]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~32_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~33_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[21][0]~q\ : std_logic;
SIGNAL \sdram_controller|Mux31~14_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~36_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[29][0]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[13][0]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~31_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[13][0]~q\ : std_logic;
SIGNAL \sdram_controller|Mux31~15_combout\ : std_logic;
SIGNAL \sdram_controller|Mux31~16_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~40_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~41_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[101][0]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[109][0]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~39_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[109][0]~q\ : std_logic;
SIGNAL \sdram_controller|Mux31~17_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[117][0]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~37_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~38_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[117][0]~q\ : std_logic;
SIGNAL \sdram_controller|Decoder3~42_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[125][0]~q\ : std_logic;
SIGNAL \sdram_controller|Mux31~18_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[45][0]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~20_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[45][0]~q\ : std_logic;
SIGNAL \sdram_controller|Decoder3~25_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[61][0]~q\ : std_logic;
SIGNAL \sdram_controller|Decoder3~23_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~24_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[37][0]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[53][0]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~22_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[53][0]~q\ : std_logic;
SIGNAL \sdram_controller|Mux31~10_combout\ : std_logic;
SIGNAL \sdram_controller|Mux31~11_combout\ : std_logic;
SIGNAL \sdram_controller|Mux31~19_combout\ : std_logic;
SIGNAL \sdram_controller|Mux31~30_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~69_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~89_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[127][0]~q\ : std_logic;
SIGNAL \sdram_controller|Decoder3~86_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[63][0]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[95][0]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~87_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[95][0]~q\ : std_logic;
SIGNAL \sdram_controller|Decoder3~88_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[31][0]~q\ : std_logic;
SIGNAL \sdram_controller|Mux31~38_combout\ : std_logic;
SIGNAL \sdram_controller|Mux31~39_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[71][0]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~75_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~81_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[71][0]~q\ : std_logic;
SIGNAL \sdram_controller|Decoder3~84_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~85_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[103][0]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[39][0]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~82_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[39][0]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[7][0]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~83_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[7][0]~q\ : std_logic;
SIGNAL \sdram_controller|Mux31~35_combout\ : std_logic;
SIGNAL \sdram_controller|Mux31~36_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[87][0]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~76_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[87][0]~q\ : std_logic;
SIGNAL \sdram_controller|Decoder3~79_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~80_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[119][0]~q\ : std_logic;
SIGNAL \sdram_controller|Decoder3~78_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[23][0]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[55][0]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~77_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[55][0]~q\ : std_logic;
SIGNAL \sdram_controller|Mux31~33_combout\ : std_logic;
SIGNAL \sdram_controller|Mux31~34_combout\ : std_logic;
SIGNAL \sdram_controller|Mux31~37_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[47][0]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~67_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~68_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[47][0]~q\ : std_logic;
SIGNAL \sdram_controller|Decoder3~73_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~74_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[111][0]~q\ : std_logic;
SIGNAL \sdram_controller|Decoder3~71_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~72_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[15][0]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[79][0]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~70_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[79][0]~q\ : std_logic;
SIGNAL \sdram_controller|Mux31~31_combout\ : std_logic;
SIGNAL \sdram_controller|Mux31~32_combout\ : std_logic;
SIGNAL \sdram_controller|Mux31~40_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[43][0]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~1_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~3_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[43][0]~q\ : std_logic;
SIGNAL \sdram_controller|Decoder3~4_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[11][0]~q\ : std_logic;
SIGNAL \sdram_controller|Mux31~0_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~5_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[107][0]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[75][0]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~2_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[75][0]~q\ : std_logic;
SIGNAL \sdram_controller|Mux31~1_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[35][0]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~6_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~11_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[35][0]~q\ : std_logic;
SIGNAL \sdram_controller|Decoder3~14_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[99][0]~q\ : std_logic;
SIGNAL \sdram_controller|Decoder3~13_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[3][0]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[67][0]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~12_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[67][0]~q\ : std_logic;
SIGNAL \sdram_controller|Mux31~4_combout\ : std_logic;
SIGNAL \sdram_controller|Mux31~5_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[51][0]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~7_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[51][0]~q\ : std_logic;
SIGNAL \sdram_controller|Decoder3~10_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[115][0]~q\ : std_logic;
SIGNAL \sdram_controller|Decoder3~9_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[19][0]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[83][0]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~8_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[83][0]~q\ : std_logic;
SIGNAL \sdram_controller|Mux31~2_combout\ : std_logic;
SIGNAL \sdram_controller|Mux31~3_combout\ : std_logic;
SIGNAL \sdram_controller|Mux31~6_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~17_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[27][0]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[59][0]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~16_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[59][0]~q\ : std_logic;
SIGNAL \sdram_controller|Mux31~7_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~18_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[123][0]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[91][0]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|Decoder3~15_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[91][0]~q\ : std_logic;
SIGNAL \sdram_controller|Mux31~8_combout\ : std_logic;
SIGNAL \sdram_controller|Mux31~9_combout\ : std_logic;
SIGNAL \sdram_controller|Mux31~41_combout\ : std_logic;
SIGNAL \sdram_controller|Mux31~42_combout\ : std_logic;
SIGNAL \sdram_controller|LessThan11~0_combout\ : std_logic;
SIGNAL \sdram_controller|LessThan11~1_combout\ : std_logic;
SIGNAL \sdram_controller|LessThan11~2_combout\ : std_logic;
SIGNAL \sdram_controller|SDRAM_DATA[15]~16_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[59][1]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[59][1]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[57][1]~q\ : std_logic;
SIGNAL \sdram_controller|Mux30~17_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[63][1]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[61][1]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[61][1]~q\ : std_logic;
SIGNAL \sdram_controller|Mux30~18_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[43][1]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[43][1]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[47][1]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[41][1]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[45][1]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[45][1]~q\ : std_logic;
SIGNAL \sdram_controller|Mux30~10_combout\ : std_logic;
SIGNAL \sdram_controller|Mux30~11_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[53][1]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[53][1]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[49][1]~q\ : std_logic;
SIGNAL \sdram_controller|Mux30~12_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[55][1]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[51][1]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[51][1]~q\ : std_logic;
SIGNAL \sdram_controller|Mux30~13_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[35][1]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[35][1]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[39][1]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[33][1]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[37][1]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[37][1]~q\ : std_logic;
SIGNAL \sdram_controller|Mux30~14_combout\ : std_logic;
SIGNAL \sdram_controller|Mux30~15_combout\ : std_logic;
SIGNAL \sdram_controller|Mux30~16_combout\ : std_logic;
SIGNAL \sdram_controller|Mux30~19_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[9][1]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[13][1]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[13][1]~q\ : std_logic;
SIGNAL \sdram_controller|Mux30~22_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[15][1]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[11][1]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[11][1]~q\ : std_logic;
SIGNAL \sdram_controller|Mux30~23_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[1][1]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[5][1]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[5][1]~q\ : std_logic;
SIGNAL \sdram_controller|Mux30~24_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[7][1]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[3][1]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[3][1]~q\ : std_logic;
SIGNAL \sdram_controller|Mux30~25_combout\ : std_logic;
SIGNAL \sdram_controller|Mux30~26_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[19][1]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[19][1]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[23][1]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[21][1]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[21][1]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[17][1]~q\ : std_logic;
SIGNAL \sdram_controller|Mux30~20_combout\ : std_logic;
SIGNAL \sdram_controller|Mux30~21_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[27][1]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[27][1]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[31][1]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[29][1]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[29][1]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[25][1]~q\ : std_logic;
SIGNAL \sdram_controller|Mux30~27_combout\ : std_logic;
SIGNAL \sdram_controller|Mux30~28_combout\ : std_logic;
SIGNAL \sdram_controller|Mux30~29_combout\ : std_logic;
SIGNAL \sdram_controller|Mux30~30_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[89][1]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[91][1]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[91][1]~q\ : std_logic;
SIGNAL \sdram_controller|Mux30~7_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[95][1]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[93][1]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[93][1]~q\ : std_logic;
SIGNAL \sdram_controller|Mux30~8_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[83][1]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[83][1]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[87][1]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[81][1]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[85][1]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[85][1]~q\ : std_logic;
SIGNAL \sdram_controller|Mux30~0_combout\ : std_logic;
SIGNAL \sdram_controller|Mux30~1_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[69][1]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[69][1]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[65][1]~q\ : std_logic;
SIGNAL \sdram_controller|Mux30~4_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[67][1]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[67][1]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[71][1]~q\ : std_logic;
SIGNAL \sdram_controller|Mux30~5_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[77][1]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[77][1]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[79][1]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[73][1]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[75][1]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[75][1]~q\ : std_logic;
SIGNAL \sdram_controller|Mux30~2_combout\ : std_logic;
SIGNAL \sdram_controller|Mux30~3_combout\ : std_logic;
SIGNAL \sdram_controller|Mux30~6_combout\ : std_logic;
SIGNAL \sdram_controller|Mux30~9_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[101][1]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[101][1]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[97][1]~q\ : std_logic;
SIGNAL \sdram_controller|Mux30~35_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[99][1]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[99][1]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[103][1]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[103][1]~q\ : std_logic;
SIGNAL \sdram_controller|Mux30~36_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[117][1]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[117][1]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[113][1]~q\ : std_logic;
SIGNAL \sdram_controller|Mux30~33_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[119][1]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[115][1]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[115][1]~q\ : std_logic;
SIGNAL \sdram_controller|Mux30~34_combout\ : std_logic;
SIGNAL \sdram_controller|Mux30~37_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[109][1]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[109][1]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[105][1]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[107][1]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[107][1]~q\ : std_logic;
SIGNAL \sdram_controller|Mux30~31_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[111][1]~q\ : std_logic;
SIGNAL \sdram_controller|Mux30~32_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[127][1]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[125][1]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[123][1]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[123][1]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[121][1]~q\ : std_logic;
SIGNAL \sdram_controller|Mux30~38_combout\ : std_logic;
SIGNAL \sdram_controller|Mux30~39_combout\ : std_logic;
SIGNAL \sdram_controller|Mux30~40_combout\ : std_logic;
SIGNAL \sdram_controller|Mux30~41_combout\ : std_logic;
SIGNAL \sdram_controller|Mux30~42_combout\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[83][2]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[83][2]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[89][2]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[89][2]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[81][2]~q\ : std_logic;
SIGNAL \sdram_controller|Mux29~10_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[91][2]~q\ : std_logic;
SIGNAL \sdram_controller|Mux29~11_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[121][2]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[121][2]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[123][2]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[113][2]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[115][2]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[115][2]~q\ : std_logic;
SIGNAL \sdram_controller|Mux29~17_combout\ : std_logic;
SIGNAL \sdram_controller|Mux29~18_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[17][2]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[19][2]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[19][2]~q\ : std_logic;
SIGNAL \sdram_controller|Mux29~14_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[27][2]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[25][2]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[25][2]~q\ : std_logic;
SIGNAL \sdram_controller|Mux29~15_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[57][2]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[57][2]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[51][2]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[49][2]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[49][2]~q\ : std_logic;
SIGNAL \sdram_controller|Mux29~12_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[59][2]~q\ : std_logic;
SIGNAL \sdram_controller|Mux29~13_combout\ : std_logic;
SIGNAL \sdram_controller|Mux29~16_combout\ : std_logic;
SIGNAL \sdram_controller|Mux29~19_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[73][2]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[73][2]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[9][2]~q\ : std_logic;
SIGNAL \sdram_controller|Mux29~20_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[41][2]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[41][2]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[105][2]~q\ : std_logic;
SIGNAL \sdram_controller|Mux29~21_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[75][2]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[75][2]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[11][2]~q\ : std_logic;
SIGNAL \sdram_controller|Mux29~27_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[107][2]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[43][2]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[43][2]~q\ : std_logic;
SIGNAL \sdram_controller|Mux29~28_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[33][2]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[33][2]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[1][2]~q\ : std_logic;
SIGNAL \sdram_controller|Mux29~24_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[65][2]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[65][2]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[97][2]~q\ : std_logic;
SIGNAL \sdram_controller|Mux29~25_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[3][2]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[35][2]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[35][2]~q\ : std_logic;
SIGNAL \sdram_controller|Mux29~22_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[99][2]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[67][2]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[67][2]~q\ : std_logic;
SIGNAL \sdram_controller|Mux29~23_combout\ : std_logic;
SIGNAL \sdram_controller|Mux29~26_combout\ : std_logic;
SIGNAL \sdram_controller|Mux29~29_combout\ : std_logic;
SIGNAL \sdram_controller|Mux29~30_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[45][2]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[45][2]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[13][2]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[77][2]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[77][2]~q\ : std_logic;
SIGNAL \sdram_controller|Mux29~0_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[109][2]~q\ : std_logic;
SIGNAL \sdram_controller|Mux29~1_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[101][2]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[101][2]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[69][2]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[37][2]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[37][2]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[5][2]~q\ : std_logic;
SIGNAL \sdram_controller|Mux29~4_combout\ : std_logic;
SIGNAL \sdram_controller|Mux29~5_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[71][2]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[71][2]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[103][2]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[39][2]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[39][2]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[7][2]~q\ : std_logic;
SIGNAL \sdram_controller|Mux29~2_combout\ : std_logic;
SIGNAL \sdram_controller|Mux29~3_combout\ : std_logic;
SIGNAL \sdram_controller|Mux29~6_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[79][2]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[79][2]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[15][2]~q\ : std_logic;
SIGNAL \sdram_controller|Mux29~7_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[111][2]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[47][2]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[47][2]~q\ : std_logic;
SIGNAL \sdram_controller|Mux29~8_combout\ : std_logic;
SIGNAL \sdram_controller|Mux29~9_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[127][2]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[95][2]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[63][2]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[63][2]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[31][2]~q\ : std_logic;
SIGNAL \sdram_controller|Mux29~38_combout\ : std_logic;
SIGNAL \sdram_controller|Mux29~39_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[53][2]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[53][2]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[117][2]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[85][2]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[85][2]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[21][2]~q\ : std_logic;
SIGNAL \sdram_controller|Mux29~35_combout\ : std_logic;
SIGNAL \sdram_controller|Mux29~36_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[93][2]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[93][2]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[125][2]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[29][2]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[61][2]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[61][2]~q\ : std_logic;
SIGNAL \sdram_controller|Mux29~33_combout\ : std_logic;
SIGNAL \sdram_controller|Mux29~34_combout\ : std_logic;
SIGNAL \sdram_controller|Mux29~37_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[55][2]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[55][2]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[119][2]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[23][2]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[87][2]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[87][2]~q\ : std_logic;
SIGNAL \sdram_controller|Mux29~31_combout\ : std_logic;
SIGNAL \sdram_controller|Mux29~32_combout\ : std_logic;
SIGNAL \sdram_controller|Mux29~40_combout\ : std_logic;
SIGNAL \sdram_controller|Mux29~41_combout\ : std_logic;
SIGNAL \sdram_controller|Mux29~42_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[71][3]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[71][3]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[87][3]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[83][3]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[83][3]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[67][3]~q\ : std_logic;
SIGNAL \sdram_controller|Mux28~12_combout\ : std_logic;
SIGNAL \sdram_controller|Mux28~13_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[7][3]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[7][3]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[23][3]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[19][3]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[19][3]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[3][3]~q\ : std_logic;
SIGNAL \sdram_controller|Mux28~14_combout\ : std_logic;
SIGNAL \sdram_controller|Mux28~15_combout\ : std_logic;
SIGNAL \sdram_controller|Mux28~16_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[115][3]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[115][3]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[119][3]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[103][3]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[103][3]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[99][3]~q\ : std_logic;
SIGNAL \sdram_controller|Mux28~17_combout\ : std_logic;
SIGNAL \sdram_controller|Mux28~18_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[35][3]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[39][3]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[39][3]~q\ : std_logic;
SIGNAL \sdram_controller|Mux28~10_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[51][3]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[51][3]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[55][3]~q\ : std_logic;
SIGNAL \sdram_controller|Mux28~11_combout\ : std_logic;
SIGNAL \sdram_controller|Mux28~19_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[65][3]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[69][3]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[69][3]~q\ : std_logic;
SIGNAL \sdram_controller|Mux28~22_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[85][3]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[81][3]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[81][3]~q\ : std_logic;
SIGNAL \sdram_controller|Mux28~23_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[17][3]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[17][3]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[21][3]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[1][3]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[5][3]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[5][3]~q\ : std_logic;
SIGNAL \sdram_controller|Mux28~24_combout\ : std_logic;
SIGNAL \sdram_controller|Mux28~25_combout\ : std_logic;
SIGNAL \sdram_controller|Mux28~26_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[97][3]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[101][3]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[101][3]~q\ : std_logic;
SIGNAL \sdram_controller|Mux28~27_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[117][3]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[113][3]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[113][3]~q\ : std_logic;
SIGNAL \sdram_controller|Mux28~28_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[33][3]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[37][3]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[37][3]~q\ : std_logic;
SIGNAL \sdram_controller|Mux28~20_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[53][3]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[49][3]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[49][3]~q\ : std_logic;
SIGNAL \sdram_controller|Mux28~21_combout\ : std_logic;
SIGNAL \sdram_controller|Mux28~29_combout\ : std_logic;
SIGNAL \sdram_controller|Mux28~30_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[43][3]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[43][3]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[11][3]~q\ : std_logic;
SIGNAL \sdram_controller|Mux28~35_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[59][3]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[27][3]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[27][3]~q\ : std_logic;
SIGNAL \sdram_controller|Mux28~36_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[107][3]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[107][3]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[123][3]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[91][3]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[91][3]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[75][3]~q\ : std_logic;
SIGNAL \sdram_controller|Mux28~33_combout\ : std_logic;
SIGNAL \sdram_controller|Mux28~34_combout\ : std_logic;
SIGNAL \sdram_controller|Mux28~37_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[47][3]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[47][3]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[15][3]~q\ : std_logic;
SIGNAL \sdram_controller|Mux28~31_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[63][3]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[31][3]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[31][3]~q\ : std_logic;
SIGNAL \sdram_controller|Mux28~32_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[127][3]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[111][3]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[79][3]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[95][3]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[95][3]~q\ : std_logic;
SIGNAL \sdram_controller|Mux28~38_combout\ : std_logic;
SIGNAL \sdram_controller|Mux28~39_combout\ : std_logic;
SIGNAL \sdram_controller|Mux28~40_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[77][3]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[77][3]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[93][3]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[73][3]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[89][3]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[89][3]~q\ : std_logic;
SIGNAL \sdram_controller|Mux28~0_combout\ : std_logic;
SIGNAL \sdram_controller|Mux28~1_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[121][3]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[121][3]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[125][3]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[105][3]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[109][3]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[109][3]~q\ : std_logic;
SIGNAL \sdram_controller|Mux28~7_combout\ : std_logic;
SIGNAL \sdram_controller|Mux28~8_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[25][3]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[25][3]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[29][3]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[9][3]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[13][3]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[13][3]~q\ : std_logic;
SIGNAL \sdram_controller|Mux28~4_combout\ : std_logic;
SIGNAL \sdram_controller|Mux28~5_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[57][3]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[57][3]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[61][3]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[41][3]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[45][3]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[45][3]~q\ : std_logic;
SIGNAL \sdram_controller|Mux28~2_combout\ : std_logic;
SIGNAL \sdram_controller|Mux28~3_combout\ : std_logic;
SIGNAL \sdram_controller|Mux28~6_combout\ : std_logic;
SIGNAL \sdram_controller|Mux28~9_combout\ : std_logic;
SIGNAL \sdram_controller|Mux28~41_combout\ : std_logic;
SIGNAL \sdram_controller|Mux28~42_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[99][4]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[99][4]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[105][4]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[105][4]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[97][4]~q\ : std_logic;
SIGNAL \sdram_controller|Mux27~35_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[107][4]~q\ : std_logic;
SIGNAL \sdram_controller|Mux27~36_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[103][4]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[103][4]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[101][4]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[109][4]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[109][4]~q\ : std_logic;
SIGNAL \sdram_controller|Mux27~33_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[111][4]~q\ : std_logic;
SIGNAL \sdram_controller|Mux27~34_combout\ : std_logic;
SIGNAL \sdram_controller|Mux27~37_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[127][4]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[119][4]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[117][4]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[125][4]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[125][4]~q\ : std_logic;
SIGNAL \sdram_controller|Mux27~38_combout\ : std_logic;
SIGNAL \sdram_controller|Mux27~39_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[115][4]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[115][4]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[123][4]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[113][4]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[121][4]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[121][4]~q\ : std_logic;
SIGNAL \sdram_controller|Mux27~31_combout\ : std_logic;
SIGNAL \sdram_controller|Mux27~32_combout\ : std_logic;
SIGNAL \sdram_controller|Mux27~40_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[67][4]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[71][4]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[71][4]~q\ : std_logic;
SIGNAL \sdram_controller|Mux27~0_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[79][4]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[75][4]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[75][4]~q\ : std_logic;
SIGNAL \sdram_controller|Mux27~1_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[91][4]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[91][4]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[95][4]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[83][4]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[87][4]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[87][4]~q\ : std_logic;
SIGNAL \sdram_controller|Mux27~7_combout\ : std_logic;
SIGNAL \sdram_controller|Mux27~8_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[85][4]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[85][4]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[93][4]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[89][4]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[89][4]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[81][4]~q\ : std_logic;
SIGNAL \sdram_controller|Mux27~2_combout\ : std_logic;
SIGNAL \sdram_controller|Mux27~3_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[69][4]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[69][4]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[65][4]~q\ : std_logic;
SIGNAL \sdram_controller|Mux27~4_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[77][4]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[73][4]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[73][4]~q\ : std_logic;
SIGNAL \sdram_controller|Mux27~5_combout\ : std_logic;
SIGNAL \sdram_controller|Mux27~6_combout\ : std_logic;
SIGNAL \sdram_controller|Mux27~9_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[7][4]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[7][4]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[15][4]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[5][4]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[13][4]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[13][4]~q\ : std_logic;
SIGNAL \sdram_controller|Mux27~20_combout\ : std_logic;
SIGNAL \sdram_controller|Mux27~21_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[23][4]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[23][4]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[31][4]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[21][4]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[29][4]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[29][4]~q\ : std_logic;
SIGNAL \sdram_controller|Mux27~27_combout\ : std_logic;
SIGNAL \sdram_controller|Mux27~28_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[9][4]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[9][4]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[11][4]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[1][4]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[3][4]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[3][4]~q\ : std_logic;
SIGNAL \sdram_controller|Mux27~24_combout\ : std_logic;
SIGNAL \sdram_controller|Mux27~25_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[25][4]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[25][4]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[17][4]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[19][4]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[19][4]~q\ : std_logic;
SIGNAL \sdram_controller|Mux27~22_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[27][4]~q\ : std_logic;
SIGNAL \sdram_controller|Mux27~23_combout\ : std_logic;
SIGNAL \sdram_controller|Mux27~26_combout\ : std_logic;
SIGNAL \sdram_controller|Mux27~29_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[53][4]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[61][4]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[61][4]~q\ : std_logic;
SIGNAL \sdram_controller|Mux27~17_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[55][4]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[55][4]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[63][4]~q\ : std_logic;
SIGNAL \sdram_controller|Mux27~18_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[45][4]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[45][4]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[37][4]~q\ : std_logic;
SIGNAL \sdram_controller|Mux27~10_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[47][4]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[39][4]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[39][4]~q\ : std_logic;
SIGNAL \sdram_controller|Mux27~11_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[33][4]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[35][4]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[35][4]~q\ : std_logic;
SIGNAL \sdram_controller|Mux27~14_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[41][4]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[41][4]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[43][4]~q\ : std_logic;
SIGNAL \sdram_controller|Mux27~15_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[57][4]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[57][4]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[49][4]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[51][4]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[51][4]~q\ : std_logic;
SIGNAL \sdram_controller|Mux27~12_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[59][4]~q\ : std_logic;
SIGNAL \sdram_controller|Mux27~13_combout\ : std_logic;
SIGNAL \sdram_controller|Mux27~16_combout\ : std_logic;
SIGNAL \sdram_controller|Mux27~19_combout\ : std_logic;
SIGNAL \sdram_controller|Mux27~30_combout\ : std_logic;
SIGNAL \sdram_controller|Mux27~41_combout\ : std_logic;
SIGNAL \sdram_controller|Mux27~42_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[93][5]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[93][5]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[29][5]~q\ : std_logic;
SIGNAL \sdram_controller|Mux26~31_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[61][5]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[61][5]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[125][5]~q\ : std_logic;
SIGNAL \sdram_controller|Mux26~32_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[21][5]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[85][5]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[85][5]~q\ : std_logic;
SIGNAL \sdram_controller|Mux26~35_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[117][5]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[53][5]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[53][5]~q\ : std_logic;
SIGNAL \sdram_controller|Mux26~36_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[55][5]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[55][5]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[119][5]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[23][5]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[87][5]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[87][5]~q\ : std_logic;
SIGNAL \sdram_controller|Mux26~33_combout\ : std_logic;
SIGNAL \sdram_controller|Mux26~34_combout\ : std_logic;
SIGNAL \sdram_controller|Mux26~37_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[95][5]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[95][5]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[31][5]~q\ : std_logic;
SIGNAL \sdram_controller|Mux26~38_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[63][5]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[127][5]~q\ : std_logic;
SIGNAL \sdram_controller|Mux26~39_combout\ : std_logic;
SIGNAL \sdram_controller|Mux26~40_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[3][5]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[35][5]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[35][5]~q\ : std_logic;
SIGNAL \sdram_controller|Mux26~20_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[99][5]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[67][5]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[67][5]~q\ : std_logic;
SIGNAL \sdram_controller|Mux26~21_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[33][5]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[33][5]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[1][5]~q\ : std_logic;
SIGNAL \sdram_controller|Mux26~24_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[65][5]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[65][5]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[97][5]~q\ : std_logic;
SIGNAL \sdram_controller|Mux26~25_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[73][5]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[73][5]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[105][5]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[9][5]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[41][5]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[41][5]~q\ : std_logic;
SIGNAL \sdram_controller|Mux26~22_combout\ : std_logic;
SIGNAL \sdram_controller|Mux26~23_combout\ : std_logic;
SIGNAL \sdram_controller|Mux26~26_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[43][5]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[43][5]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[11][5]~q\ : std_logic;
SIGNAL \sdram_controller|Mux26~27_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[107][5]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[75][5]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[75][5]~q\ : std_logic;
SIGNAL \sdram_controller|Mux26~28_combout\ : std_logic;
SIGNAL \sdram_controller|Mux26~29_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[121][5]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[121][5]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[123][5]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[57][5]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[59][5]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[59][5]~q\ : std_logic;
SIGNAL \sdram_controller|Mux26~17_combout\ : std_logic;
SIGNAL \sdram_controller|Mux26~18_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[113][5]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[113][5]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[49][5]~q\ : std_logic;
SIGNAL \sdram_controller|Mux26~10_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[51][5]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[51][5]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[115][5]~q\ : std_logic;
SIGNAL \sdram_controller|Mux26~11_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[19][5]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[19][5]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[17][5]~q\ : std_logic;
SIGNAL \sdram_controller|Mux26~14_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[83][5]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[81][5]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[81][5]~q\ : std_logic;
SIGNAL \sdram_controller|Mux26~15_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[25][5]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[27][5]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[27][5]~q\ : std_logic;
SIGNAL \sdram_controller|Mux26~12_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[91][5]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[89][5]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[89][5]~q\ : std_logic;
SIGNAL \sdram_controller|Mux26~13_combout\ : std_logic;
SIGNAL \sdram_controller|Mux26~16_combout\ : std_logic;
SIGNAL \sdram_controller|Mux26~19_combout\ : std_logic;
SIGNAL \sdram_controller|Mux26~30_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[13][5]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[77][5]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[77][5]~q\ : std_logic;
SIGNAL \sdram_controller|Mux26~0_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[45][5]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[45][5]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[109][5]~q\ : std_logic;
SIGNAL \sdram_controller|Mux26~1_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[37][5]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[37][5]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[5][5]~q\ : std_logic;
SIGNAL \sdram_controller|Mux26~4_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[69][5]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[69][5]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[101][5]~q\ : std_logic;
SIGNAL \sdram_controller|Mux26~5_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[71][5]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[71][5]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[103][5]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[7][5]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[39][5]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[39][5]~q\ : std_logic;
SIGNAL \sdram_controller|Mux26~2_combout\ : std_logic;
SIGNAL \sdram_controller|Mux26~3_combout\ : std_logic;
SIGNAL \sdram_controller|Mux26~6_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[79][5]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[79][5]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[47][5]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[47][5]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[15][5]~q\ : std_logic;
SIGNAL \sdram_controller|Mux26~7_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[111][5]~q\ : std_logic;
SIGNAL \sdram_controller|Mux26~8_combout\ : std_logic;
SIGNAL \sdram_controller|Mux26~9_combout\ : std_logic;
SIGNAL \sdram_controller|Mux26~41_combout\ : std_logic;
SIGNAL \sdram_controller|Mux26~42_combout\ : std_logic;
SIGNAL \Add0~16\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[19][6]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[19][6]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[23][6]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[3][6]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[7][6]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[7][6]~q\ : std_logic;
SIGNAL \sdram_controller|Mux25~14_combout\ : std_logic;
SIGNAL \sdram_controller|Mux25~15_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[51][6]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[51][6]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[35][6]~q\ : std_logic;
SIGNAL \sdram_controller|Mux25~12_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[39][6]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[39][6]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[55][6]~q\ : std_logic;
SIGNAL \sdram_controller|Mux25~13_combout\ : std_logic;
SIGNAL \sdram_controller|Mux25~16_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[67][6]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[71][6]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[71][6]~q\ : std_logic;
SIGNAL \sdram_controller|Mux25~10_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[87][6]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[87][6]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[83][6]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[83][6]~q\ : std_logic;
SIGNAL \sdram_controller|Mux25~11_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[103][6]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[103][6]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[119][6]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[115][6]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[115][6]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[99][6]~q\ : std_logic;
SIGNAL \sdram_controller|Mux25~17_combout\ : std_logic;
SIGNAL \sdram_controller|Mux25~18_combout\ : std_logic;
SIGNAL \sdram_controller|Mux25~19_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[113][6]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[113][6]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[97][6]~q\ : std_logic;
SIGNAL \sdram_controller|Mux25~27_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[117][6]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[101][6]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[101][6]~q\ : std_logic;
SIGNAL \sdram_controller|Mux25~28_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[65][6]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[69][6]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[69][6]~q\ : std_logic;
SIGNAL \sdram_controller|Mux25~22_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[81][6]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[81][6]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[85][6]~q\ : std_logic;
SIGNAL \sdram_controller|Mux25~23_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[1][6]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[5][6]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[5][6]~q\ : std_logic;
SIGNAL \sdram_controller|Mux25~24_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[21][6]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[17][6]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[17][6]~q\ : std_logic;
SIGNAL \sdram_controller|Mux25~25_combout\ : std_logic;
SIGNAL \sdram_controller|Mux25~26_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[37][6]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[37][6]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[53][6]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[33][6]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[49][6]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[49][6]~q\ : std_logic;
SIGNAL \sdram_controller|Mux25~20_combout\ : std_logic;
SIGNAL \sdram_controller|Mux25~21_combout\ : std_logic;
SIGNAL \sdram_controller|Mux25~29_combout\ : std_logic;
SIGNAL \sdram_controller|Mux25~30_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[25][6]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[25][6]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[29][6]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[9][6]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[13][6]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[13][6]~q\ : std_logic;
SIGNAL \sdram_controller|Mux25~4_combout\ : std_logic;
SIGNAL \sdram_controller|Mux25~5_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[89][6]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[89][6]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[73][6]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[77][6]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[77][6]~q\ : std_logic;
SIGNAL \sdram_controller|Mux25~2_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[93][6]~q\ : std_logic;
SIGNAL \sdram_controller|Mux25~3_combout\ : std_logic;
SIGNAL \sdram_controller|Mux25~6_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[109][6]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[109][6]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[125][6]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[105][6]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[121][6]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[121][6]~q\ : std_logic;
SIGNAL \sdram_controller|Mux25~7_combout\ : std_logic;
SIGNAL \sdram_controller|Mux25~8_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[41][6]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[57][6]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[57][6]~q\ : std_logic;
SIGNAL \sdram_controller|Mux25~0_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[61][6]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[45][6]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[45][6]~q\ : std_logic;
SIGNAL \sdram_controller|Mux25~1_combout\ : std_logic;
SIGNAL \sdram_controller|Mux25~9_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[47][6]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[47][6]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[63][6]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[31][6]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[31][6]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[15][6]~q\ : std_logic;
SIGNAL \sdram_controller|Mux25~31_combout\ : std_logic;
SIGNAL \sdram_controller|Mux25~32_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[107][6]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[107][6]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[75][6]~q\ : std_logic;
SIGNAL \sdram_controller|Mux25~33_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[123][6]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[91][6]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[91][6]~q\ : std_logic;
SIGNAL \sdram_controller|Mux25~34_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[43][6]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[43][6]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[11][6]~q\ : std_logic;
SIGNAL \sdram_controller|Mux25~35_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[59][6]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[27][6]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[27][6]~q\ : std_logic;
SIGNAL \sdram_controller|Mux25~36_combout\ : std_logic;
SIGNAL \sdram_controller|Mux25~37_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[79][6]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[111][6]~feeder_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[111][6]~q\ : std_logic;
SIGNAL \sdram_controller|Mux25~38_combout\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[95][6]~q\ : std_logic;
SIGNAL \sdram_controller|writeBuffer[127][6]~q\ : std_logic;
SIGNAL \sdram_controller|Mux25~39_combout\ : std_logic;
SIGNAL \sdram_controller|Mux25~40_combout\ : std_logic;
SIGNAL \sdram_controller|Mux25~41_combout\ : std_logic;
SIGNAL \sdram_controller|Mux25~42_combout\ : std_logic;
SIGNAL \sdram_controller|process_1~4_combout\ : std_logic;
SIGNAL \sdram_controller|Equal11~0_combout\ : std_logic;
SIGNAL \sdram_controller|Selector10~0_combout\ : std_logic;
SIGNAL \sdram_controller|LessThan10~0_combout\ : std_logic;
SIGNAL \sdram_controller|process_1~7_combout\ : std_logic;
SIGNAL \sdram_controller|process_1~9_combout\ : std_logic;
SIGNAL \sdram_controller|process_1~10_combout\ : std_logic;
SIGNAL \sdram_controller|process_1~11_combout\ : std_logic;
SIGNAL \sdram_controller|process_1~8_combout\ : std_logic;
SIGNAL \sdram_controller|process_1~12_combout\ : std_logic;
SIGNAL \sdram_controller|process_1~14_combout\ : std_logic;
SIGNAL \sdram_controller|Equal10~0_combout\ : std_logic;
SIGNAL \sdram_controller|Equal10~1_combout\ : std_logic;
SIGNAL \sdram_controller|Equal10~2_combout\ : std_logic;
SIGNAL \sdram_controller|Selector24~0_combout\ : std_logic;
SIGNAL \sdram_controller|Selector24~1_combout\ : std_logic;
SIGNAL \sdram_controller|Selector12~0_combout\ : std_logic;
SIGNAL \sdram_controller|Equal13~0_combout\ : std_logic;
SIGNAL \sdram_controller|Equal12~0_combout\ : std_logic;
SIGNAL \sdram_controller|Equal12~1_combout\ : std_logic;
SIGNAL \sdram_controller|Selector12~1_combout\ : std_logic;
SIGNAL \sdram_controller|Equal12~2_combout\ : std_logic;
SIGNAL \sdram_controller|Selector12~2_combout\ : std_logic;
SIGNAL \sdram_controller|Equal14~0_combout\ : std_logic;
SIGNAL \sdram_controller|Equal14~1_combout\ : std_logic;
SIGNAL \sdram_controller|Selector9~0_combout\ : std_logic;
SIGNAL \sdram_controller|Selector12~3_combout\ : std_logic;
SIGNAL \sdram_controller|Selector26~0_combout\ : std_logic;
SIGNAL \sdram_controller|Selector9~1_combout\ : std_logic;
SIGNAL \sdram_controller|Selector9~3_combout\ : std_logic;
SIGNAL \sdram_controller|Selector9~2_combout\ : std_logic;
SIGNAL \sdram_controller|Selector9~4_combout\ : std_logic;
SIGNAL \sdram_controller|process_1~13_combout\ : std_logic;
SIGNAL \sdram_controller|Selector10~1_combout\ : std_logic;
SIGNAL \sdram_controller|Selector10~2_combout\ : std_logic;
SIGNAL \sdram_controller|Selector11~2_combout\ : std_logic;
SIGNAL \sdram_controller|Selector11~3_combout\ : std_logic;
SIGNAL \sdram_controller|Selector11~4_combout\ : std_logic;
SIGNAL \sdram_controller|Selector11~5_combout\ : std_logic;
SIGNAL \sdram_controller|readBurstLengthReg\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \sdram_controller|refreshCount\ : std_logic_vector(31 DOWNTO 0);
SIGNAL address : std_logic_vector(24 DOWNTO 0);
SIGNAL \sdram_controller|writeAddressReg\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \sdram_controller|byteMaskReg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sdram_controller|addressReg\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \sdram_controller|burstLengthReg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sdram_controller|stateCycleCount\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \sdram_controller|readBufferReadCount\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sdram_controller|writeBufferWriteCount\ : std_logic_vector(8 DOWNTO 0);
SIGNAL transmitCount : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_memClk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \sdram_controller|ALT_INV_SDRAM_DATA[15]~16_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_memClk <= memClk;
ww_sysClk <= sysClk;
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
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\memClk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \memClk~input_o\);

\sysClk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sysClk~input_o\);
\ALT_INV_memClk~inputclkctrl_outclk\ <= NOT \memClk~inputclkctrl_outclk\;
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\sdram_controller|ALT_INV_SDRAM_DATA[15]~16_combout\ <= NOT \sdram_controller|SDRAM_DATA[15]~16_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N12
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X34_Y39_N30
\SDRAM_DATA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|Mux31~42_combout\,
	oe => \sdram_controller|SDRAM_DATA[15]~16_combout\,
	devoe => ww_devoe,
	o => \SDRAM_DATA[0]~output_o\);

-- Location: IOOBUF_X34_Y39_N2
\SDRAM_DATA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|Mux30~42_combout\,
	oe => \sdram_controller|SDRAM_DATA[15]~16_combout\,
	devoe => ww_devoe,
	o => \SDRAM_DATA[1]~output_o\);

-- Location: IOOBUF_X31_Y39_N16
\SDRAM_DATA[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|Mux29~42_combout\,
	oe => \sdram_controller|SDRAM_DATA[15]~16_combout\,
	devoe => ww_devoe,
	o => \SDRAM_DATA[2]~output_o\);

-- Location: IOOBUF_X31_Y39_N9
\SDRAM_DATA[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|Mux28~42_combout\,
	oe => \sdram_controller|SDRAM_DATA[15]~16_combout\,
	devoe => ww_devoe,
	o => \SDRAM_DATA[3]~output_o\);

-- Location: IOOBUF_X34_Y39_N23
\SDRAM_DATA[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|Mux27~42_combout\,
	oe => \sdram_controller|SDRAM_DATA[15]~16_combout\,
	devoe => ww_devoe,
	o => \SDRAM_DATA[4]~output_o\);

-- Location: IOOBUF_X34_Y39_N16
\SDRAM_DATA[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|Mux26~42_combout\,
	oe => \sdram_controller|SDRAM_DATA[15]~16_combout\,
	devoe => ww_devoe,
	o => \SDRAM_DATA[5]~output_o\);

-- Location: IOOBUF_X31_Y39_N2
\SDRAM_DATA[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|Mux25~42_combout\,
	oe => \sdram_controller|SDRAM_DATA[15]~16_combout\,
	devoe => ww_devoe,
	o => \SDRAM_DATA[6]~output_o\);

-- Location: IOOBUF_X31_Y39_N23
\SDRAM_DATA[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|ALT_INV_SDRAM_DATA[15]~16_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \SDRAM_DATA[7]~output_o\);

-- Location: IOOBUF_X20_Y39_N9
\SDRAM_DATA[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|ALT_INV_SDRAM_DATA[15]~16_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \SDRAM_DATA[8]~output_o\);

-- Location: IOOBUF_X22_Y0_N23
\SDRAM_DATA[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|ALT_INV_SDRAM_DATA[15]~16_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \SDRAM_DATA[9]~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\SDRAM_DATA[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|ALT_INV_SDRAM_DATA[15]~16_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \SDRAM_DATA[10]~output_o\);

-- Location: IOOBUF_X20_Y39_N16
\SDRAM_DATA[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|ALT_INV_SDRAM_DATA[15]~16_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \SDRAM_DATA[11]~output_o\);

-- Location: IOOBUF_X22_Y0_N30
\SDRAM_DATA[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|ALT_INV_SDRAM_DATA[15]~16_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \SDRAM_DATA[12]~output_o\);

-- Location: IOOBUF_X29_Y39_N16
\SDRAM_DATA[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|ALT_INV_SDRAM_DATA[15]~16_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \SDRAM_DATA[13]~output_o\);

-- Location: IOOBUF_X26_Y0_N23
\SDRAM_DATA[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|ALT_INV_SDRAM_DATA[15]~16_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \SDRAM_DATA[14]~output_o\);

-- Location: IOOBUF_X29_Y39_N9
\SDRAM_DATA[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|ALT_INV_SDRAM_DATA[15]~16_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \SDRAM_DATA[15]~output_o\);

-- Location: IOOBUF_X31_Y39_N30
\SDRAM_ADDR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|Selector24~1_combout\,
	devoe => ww_devoe,
	o => \SDRAM_ADDR[0]~output_o\);

-- Location: IOOBUF_X26_Y39_N30
\SDRAM_ADDR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|Selector24~0_combout\,
	devoe => ww_devoe,
	o => \SDRAM_ADDR[1]~output_o\);

-- Location: IOOBUF_X26_Y39_N2
\SDRAM_ADDR[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|Selector24~0_combout\,
	devoe => ww_devoe,
	o => \SDRAM_ADDR[2]~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\SDRAM_ADDR[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SDRAM_ADDR[3]~output_o\);

-- Location: IOOBUF_X26_Y39_N23
\SDRAM_ADDR[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|Selector24~0_combout\,
	devoe => ww_devoe,
	o => \SDRAM_ADDR[4]~output_o\);

-- Location: IOOBUF_X26_Y39_N9
\SDRAM_ADDR[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|Selector24~0_combout\,
	devoe => ww_devoe,
	o => \SDRAM_ADDR[5]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\SDRAM_ADDR[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SDRAM_ADDR[6]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\SDRAM_ADDR[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SDRAM_ADDR[7]~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\SDRAM_ADDR[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SDRAM_ADDR[8]~output_o\);

-- Location: IOOBUF_X51_Y0_N23
\SDRAM_ADDR[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SDRAM_ADDR[9]~output_o\);

-- Location: IOOBUF_X36_Y39_N23
\SDRAM_ADDR[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|Selector12~3_combout\,
	devoe => ww_devoe,
	o => \SDRAM_ADDR[10]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\SDRAM_ADDR[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SDRAM_ADDR[11]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\SDRAM_ADDR[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SDRAM_ADDR[12]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\SDRAM_BANK_ADDR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SDRAM_BANK_ADDR[0]~output_o\);

-- Location: IOOBUF_X51_Y0_N16
\SDRAM_BANK_ADDR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SDRAM_BANK_ADDR[1]~output_o\);

-- Location: IOOBUF_X24_Y39_N9
\SDRAM_BYTE_MASK[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|Selector26~0_combout\,
	devoe => ww_devoe,
	o => \SDRAM_BYTE_MASK[0]~output_o\);

-- Location: IOOBUF_X29_Y39_N2
\SDRAM_BYTE_MASK[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|Selector26~0_combout\,
	devoe => ww_devoe,
	o => \SDRAM_BYTE_MASK[1]~output_o\);

-- Location: IOOBUF_X36_Y39_N30
\SDRAM_RAS~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|Selector9~4_combout\,
	devoe => ww_devoe,
	o => \SDRAM_RAS~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\SDRAM_CAS~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|Selector10~2_combout\,
	devoe => ww_devoe,
	o => \SDRAM_CAS~output_o\);

-- Location: IOOBUF_X40_Y0_N30
\SDRAM_CLK_EN~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SDRAM_CLK_EN~output_o\);

-- Location: IOOBUF_X0_Y37_N16
\SDRAM_CLK~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memClk~input_o\,
	devoe => ww_devoe,
	o => \SDRAM_CLK~output_o\);

-- Location: IOOBUF_X34_Y39_N9
\SDRAM_WRITE_EN~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sdram_controller|Selector11~5_combout\,
	devoe => ww_devoe,
	o => \SDRAM_WRITE_EN~output_o\);

-- Location: IOOBUF_X46_Y0_N9
\SDRAM_CHIP_SEL~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SDRAM_CHIP_SEL~output_o\);

-- Location: IOIBUF_X0_Y18_N22
\memClk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memClk,
	o => \memClk~input_o\);

-- Location: CLKCTRL_G4
\memClk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \memClk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \memClk~inputclkctrl_outclk\);

-- Location: LCCOMB_X41_Y25_N16
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

-- Location: IOIBUF_X0_Y23_N15
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

-- Location: CLKCTRL_G2
\reset~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: LCCOMB_X41_Y25_N18
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

-- Location: FF_X41_Y25_N19
\sdram_controller|stateCycleCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|stateCycleCount[1]~19_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \sdram_controller|Selector0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|stateCycleCount\(1));

-- Location: LCCOMB_X41_Y25_N20
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

-- Location: FF_X41_Y25_N21
\sdram_controller|stateCycleCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|stateCycleCount[2]~21_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \sdram_controller|Selector0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|stateCycleCount\(2));

-- Location: IOIBUF_X0_Y18_N15
\sysClk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sysClk,
	o => \sysClk~input_o\);

-- Location: CLKCTRL_G3
\sysClk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sysClk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sysClk~inputclkctrl_outclk\);

-- Location: LCCOMB_X41_Y25_N6
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

-- Location: IOIBUF_X36_Y39_N15
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

-- Location: LCCOMB_X41_Y27_N20
\sdram_controller|SDRAM_Ready[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|SDRAM_Ready[0]~0_combout\ = (!\sdram_controller|writeBufferEmpty~q\ & (\state.START_TRANSMISSION~q\ & !\sdram_controller|writeBufferState~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|writeBufferEmpty~q\,
	datac => \state.START_TRANSMISSION~q\,
	datad => \sdram_controller|writeBufferState~q\,
	combout => \sdram_controller|SDRAM_Ready[0]~0_combout\);

-- Location: LCCOMB_X42_Y27_N12
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

-- Location: FF_X42_Y27_N13
\sdram_controller|writeBufferWriteCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBufferWriteCount[0]~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \sdram_controller|SDRAM_Ready[0]~0_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBufferWriteCount\(0));

-- Location: LCCOMB_X42_Y27_N14
\sdram_controller|writeBufferWriteCount[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferWriteCount[1]~11_combout\ = (\sdram_controller|writeBufferWriteCount\(1) & (!\sdram_controller|writeBufferWriteCount[0]~10\)) # (!\sdram_controller|writeBufferWriteCount\(1) & ((\sdram_controller|writeBufferWriteCount[0]~10\) 
-- # (GND)))
-- \sdram_controller|writeBufferWriteCount[1]~12\ = CARRY((!\sdram_controller|writeBufferWriteCount[0]~10\) # (!\sdram_controller|writeBufferWriteCount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|writeBufferWriteCount\(1),
	datad => VCC,
	cin => \sdram_controller|writeBufferWriteCount[0]~10\,
	combout => \sdram_controller|writeBufferWriteCount[1]~11_combout\,
	cout => \sdram_controller|writeBufferWriteCount[1]~12\);

-- Location: FF_X42_Y27_N15
\sdram_controller|writeBufferWriteCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBufferWriteCount[1]~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \sdram_controller|SDRAM_Ready[0]~0_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBufferWriteCount\(1));

-- Location: LCCOMB_X42_Y27_N16
\sdram_controller|writeBufferWriteCount[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferWriteCount[2]~13_combout\ = (\sdram_controller|writeBufferWriteCount\(2) & (\sdram_controller|writeBufferWriteCount[1]~12\ $ (GND))) # (!\sdram_controller|writeBufferWriteCount\(2) & 
-- (!\sdram_controller|writeBufferWriteCount[1]~12\ & VCC))
-- \sdram_controller|writeBufferWriteCount[2]~14\ = CARRY((\sdram_controller|writeBufferWriteCount\(2) & !\sdram_controller|writeBufferWriteCount[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(2),
	datad => VCC,
	cin => \sdram_controller|writeBufferWriteCount[1]~12\,
	combout => \sdram_controller|writeBufferWriteCount[2]~13_combout\,
	cout => \sdram_controller|writeBufferWriteCount[2]~14\);

-- Location: FF_X42_Y27_N17
\sdram_controller|writeBufferWriteCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBufferWriteCount[2]~13_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \sdram_controller|SDRAM_Ready[0]~0_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBufferWriteCount\(2));

-- Location: LCCOMB_X41_Y27_N14
\sdram_controller|writeAddressReg[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeAddressReg[0]~0_combout\ = (\sdram_controller|writeAddressReg\(0)) # ((\enable~input_o\ & \sdram_controller|SDRAM_Ready[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \sdram_controller|writeAddressReg\(0),
	datad => \sdram_controller|SDRAM_Ready[0]~0_combout\,
	combout => \sdram_controller|writeAddressReg[0]~0_combout\);

-- Location: FF_X41_Y27_N5
\sdram_controller|writeAddressReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \sdram_controller|writeAddressReg[0]~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeAddressReg\(0));

-- Location: LCCOMB_X40_Y27_N12
\sdram_controller|LessThan17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|LessThan17~0_combout\ = (\sdram_controller|writeAddressReg\(0) & (((!\sdram_controller|writeBufferWriteCount\(0) & !\sdram_controller|writeBufferWriteCount\(1))) # (!\sdram_controller|writeBufferWriteCount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(0),
	datab => \sdram_controller|writeBufferWriteCount\(2),
	datac => \sdram_controller|writeBufferWriteCount\(1),
	datad => \sdram_controller|writeAddressReg\(0),
	combout => \sdram_controller|LessThan17~0_combout\);

-- Location: LCCOMB_X42_Y27_N18
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

-- Location: FF_X42_Y27_N19
\sdram_controller|writeBufferWriteCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBufferWriteCount[3]~15_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \sdram_controller|SDRAM_Ready[0]~0_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBufferWriteCount\(3));

-- Location: LCCOMB_X42_Y27_N20
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

-- Location: FF_X42_Y27_N21
\sdram_controller|writeBufferWriteCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBufferWriteCount[4]~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \sdram_controller|SDRAM_Ready[0]~0_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBufferWriteCount\(4));

-- Location: LCCOMB_X42_Y27_N22
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

-- Location: FF_X42_Y27_N23
\sdram_controller|writeBufferWriteCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBufferWriteCount[5]~19_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \sdram_controller|SDRAM_Ready[0]~0_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBufferWriteCount\(5));

-- Location: LCCOMB_X42_Y27_N24
\sdram_controller|writeBufferWriteCount[6]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferWriteCount[6]~21_combout\ = (\sdram_controller|writeBufferWriteCount\(6) & (\sdram_controller|writeBufferWriteCount[5]~20\ $ (GND))) # (!\sdram_controller|writeBufferWriteCount\(6) & 
-- (!\sdram_controller|writeBufferWriteCount[5]~20\ & VCC))
-- \sdram_controller|writeBufferWriteCount[6]~22\ = CARRY((\sdram_controller|writeBufferWriteCount\(6) & !\sdram_controller|writeBufferWriteCount[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|writeBufferWriteCount\(6),
	datad => VCC,
	cin => \sdram_controller|writeBufferWriteCount[5]~20\,
	combout => \sdram_controller|writeBufferWriteCount[6]~21_combout\,
	cout => \sdram_controller|writeBufferWriteCount[6]~22\);

-- Location: FF_X42_Y27_N25
\sdram_controller|writeBufferWriteCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBufferWriteCount[6]~21_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \sdram_controller|SDRAM_Ready[0]~0_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBufferWriteCount\(6));

-- Location: LCCOMB_X42_Y27_N26
\sdram_controller|writeBufferWriteCount[7]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferWriteCount[7]~23_combout\ = (\sdram_controller|writeBufferWriteCount\(7) & (!\sdram_controller|writeBufferWriteCount[6]~22\)) # (!\sdram_controller|writeBufferWriteCount\(7) & ((\sdram_controller|writeBufferWriteCount[6]~22\) 
-- # (GND)))
-- \sdram_controller|writeBufferWriteCount[7]~24\ = CARRY((!\sdram_controller|writeBufferWriteCount[6]~22\) # (!\sdram_controller|writeBufferWriteCount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(7),
	datad => VCC,
	cin => \sdram_controller|writeBufferWriteCount[6]~22\,
	combout => \sdram_controller|writeBufferWriteCount[7]~23_combout\,
	cout => \sdram_controller|writeBufferWriteCount[7]~24\);

-- Location: FF_X42_Y27_N27
\sdram_controller|writeBufferWriteCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBufferWriteCount[7]~23_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \sdram_controller|SDRAM_Ready[0]~0_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBufferWriteCount\(7));

-- Location: LCCOMB_X42_Y27_N28
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

-- Location: FF_X42_Y27_N29
\sdram_controller|writeBufferWriteCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBufferWriteCount[8]~25_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \sdram_controller|SDRAM_Ready[0]~0_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBufferWriteCount\(8));

-- Location: LCCOMB_X41_Y27_N24
\sdram_controller|LessThan17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|LessThan17~1_combout\ = (!\sdram_controller|writeBufferWriteCount\(4) & (!\sdram_controller|writeBufferWriteCount\(3) & (!\sdram_controller|writeBufferWriteCount\(5) & !\sdram_controller|writeBufferWriteCount\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(4),
	datab => \sdram_controller|writeBufferWriteCount\(3),
	datac => \sdram_controller|writeBufferWriteCount\(5),
	datad => \sdram_controller|writeBufferWriteCount\(6),
	combout => \sdram_controller|LessThan17~1_combout\);

-- Location: LCCOMB_X40_Y27_N22
\sdram_controller|LessThan17~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|LessThan17~2_combout\ = (\sdram_controller|LessThan17~0_combout\ & (!\sdram_controller|writeBufferWriteCount\(7) & (!\sdram_controller|writeBufferWriteCount\(8) & \sdram_controller|LessThan17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|LessThan17~0_combout\,
	datab => \sdram_controller|writeBufferWriteCount\(7),
	datac => \sdram_controller|writeBufferWriteCount\(8),
	datad => \sdram_controller|LessThan17~1_combout\,
	combout => \sdram_controller|LessThan17~2_combout\);

-- Location: LCCOMB_X41_Y27_N2
\sdram_controller|writeBufferState~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferState~0_combout\ = (\enable~input_o\ & ((\sdram_controller|SDRAM_Ready[0]~0_combout\) # ((\sdram_controller|writeBufferState~q\ & \sdram_controller|LessThan17~2_combout\)))) # (!\enable~input_o\ & 
-- (((\sdram_controller|writeBufferState~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \sdram_controller|SDRAM_Ready[0]~0_combout\,
	datac => \sdram_controller|writeBufferState~q\,
	datad => \sdram_controller|LessThan17~2_combout\,
	combout => \sdram_controller|writeBufferState~0_combout\);

-- Location: FF_X41_Y27_N3
\sdram_controller|writeBufferState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBufferState~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBufferState~q\);

-- Location: LCCOMB_X41_Y27_N16
\sdram_controller|writeBufferEmpty~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferEmpty~0_combout\ = (!\sdram_controller|writeBufferEmpty~q\ & ((\sdram_controller|LessThan17~2_combout\) # (!\sdram_controller|writeBufferState~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|writeBufferState~q\,
	datac => \sdram_controller|writeBufferEmpty~q\,
	datad => \sdram_controller|LessThan17~2_combout\,
	combout => \sdram_controller|writeBufferEmpty~0_combout\);

-- Location: LCCOMB_X42_Y24_N6
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

-- Location: LCCOMB_X38_Y28_N4
\transmitCount[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \transmitCount[0]~6_combout\ = transmitCount(0) $ (VCC)
-- \transmitCount[0]~7\ = CARRY(transmitCount(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transmitCount(0),
	datad => VCC,
	combout => \transmitCount[0]~6_combout\,
	cout => \transmitCount[0]~7\);

-- Location: LCCOMB_X43_Y24_N10
\sdram_controller|readBufferReadCount[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferReadCount[0]~10_combout\ = \sdram_controller|readBufferReadCount\(0) $ (VCC)
-- \sdram_controller|readBufferReadCount[0]~11\ = CARRY(\sdram_controller|readBufferReadCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|readBufferReadCount\(0),
	datad => VCC,
	combout => \sdram_controller|readBufferReadCount[0]~10_combout\,
	cout => \sdram_controller|readBufferReadCount[0]~11\);

-- Location: LCCOMB_X42_Y24_N30
\Selector0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~4_combout\ = (!\sdram_controller|readBufferEmpty~q\ & !\sdram_controller|readBufferState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|readBufferEmpty~q\,
	datad => \sdram_controller|readBufferState~q\,
	combout => \Selector0~4_combout\);

-- Location: FF_X43_Y24_N11
\sdram_controller|readBufferReadCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|readBufferReadCount[0]~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \Selector0~4_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|readBufferReadCount\(0));

-- Location: LCCOMB_X43_Y24_N12
\sdram_controller|readBufferReadCount[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferReadCount[1]~12_combout\ = (\sdram_controller|readBufferReadCount\(1) & (!\sdram_controller|readBufferReadCount[0]~11\)) # (!\sdram_controller|readBufferReadCount\(1) & ((\sdram_controller|readBufferReadCount[0]~11\) # (GND)))
-- \sdram_controller|readBufferReadCount[1]~13\ = CARRY((!\sdram_controller|readBufferReadCount[0]~11\) # (!\sdram_controller|readBufferReadCount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|readBufferReadCount\(1),
	datad => VCC,
	cin => \sdram_controller|readBufferReadCount[0]~11\,
	combout => \sdram_controller|readBufferReadCount[1]~12_combout\,
	cout => \sdram_controller|readBufferReadCount[1]~13\);

-- Location: FF_X43_Y24_N13
\sdram_controller|readBufferReadCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|readBufferReadCount[1]~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \Selector0~4_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|readBufferReadCount\(1));

-- Location: LCCOMB_X43_Y24_N14
\sdram_controller|readBufferReadCount[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferReadCount[2]~14_combout\ = (\sdram_controller|readBufferReadCount\(2) & (\sdram_controller|readBufferReadCount[1]~13\ $ (GND))) # (!\sdram_controller|readBufferReadCount\(2) & (!\sdram_controller|readBufferReadCount[1]~13\ & 
-- VCC))
-- \sdram_controller|readBufferReadCount[2]~15\ = CARRY((\sdram_controller|readBufferReadCount\(2) & !\sdram_controller|readBufferReadCount[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|readBufferReadCount\(2),
	datad => VCC,
	cin => \sdram_controller|readBufferReadCount[1]~13\,
	combout => \sdram_controller|readBufferReadCount[2]~14_combout\,
	cout => \sdram_controller|readBufferReadCount[2]~15\);

-- Location: FF_X43_Y24_N15
\sdram_controller|readBufferReadCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|readBufferReadCount[2]~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \Selector0~4_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|readBufferReadCount\(2));

-- Location: LCCOMB_X43_Y24_N16
\sdram_controller|readBufferReadCount[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferReadCount[3]~16_combout\ = (\sdram_controller|readBufferReadCount\(3) & (!\sdram_controller|readBufferReadCount[2]~15\)) # (!\sdram_controller|readBufferReadCount\(3) & ((\sdram_controller|readBufferReadCount[2]~15\) # (GND)))
-- \sdram_controller|readBufferReadCount[3]~17\ = CARRY((!\sdram_controller|readBufferReadCount[2]~15\) # (!\sdram_controller|readBufferReadCount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|readBufferReadCount\(3),
	datad => VCC,
	cin => \sdram_controller|readBufferReadCount[2]~15\,
	combout => \sdram_controller|readBufferReadCount[3]~16_combout\,
	cout => \sdram_controller|readBufferReadCount[3]~17\);

-- Location: FF_X43_Y24_N17
\sdram_controller|readBufferReadCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|readBufferReadCount[3]~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \Selector0~4_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|readBufferReadCount\(3));

-- Location: LCCOMB_X43_Y24_N18
\sdram_controller|readBufferReadCount[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferReadCount[4]~18_combout\ = (\sdram_controller|readBufferReadCount\(4) & (\sdram_controller|readBufferReadCount[3]~17\ $ (GND))) # (!\sdram_controller|readBufferReadCount\(4) & (!\sdram_controller|readBufferReadCount[3]~17\ & 
-- VCC))
-- \sdram_controller|readBufferReadCount[4]~19\ = CARRY((\sdram_controller|readBufferReadCount\(4) & !\sdram_controller|readBufferReadCount[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|readBufferReadCount\(4),
	datad => VCC,
	cin => \sdram_controller|readBufferReadCount[3]~17\,
	combout => \sdram_controller|readBufferReadCount[4]~18_combout\,
	cout => \sdram_controller|readBufferReadCount[4]~19\);

-- Location: FF_X43_Y24_N19
\sdram_controller|readBufferReadCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|readBufferReadCount[4]~18_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \Selector0~4_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|readBufferReadCount\(4));

-- Location: LCCOMB_X43_Y24_N20
\sdram_controller|readBufferReadCount[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferReadCount[5]~20_combout\ = (\sdram_controller|readBufferReadCount\(5) & (!\sdram_controller|readBufferReadCount[4]~19\)) # (!\sdram_controller|readBufferReadCount\(5) & ((\sdram_controller|readBufferReadCount[4]~19\) # (GND)))
-- \sdram_controller|readBufferReadCount[5]~21\ = CARRY((!\sdram_controller|readBufferReadCount[4]~19\) # (!\sdram_controller|readBufferReadCount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|readBufferReadCount\(5),
	datad => VCC,
	cin => \sdram_controller|readBufferReadCount[4]~19\,
	combout => \sdram_controller|readBufferReadCount[5]~20_combout\,
	cout => \sdram_controller|readBufferReadCount[5]~21\);

-- Location: FF_X43_Y24_N21
\sdram_controller|readBufferReadCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|readBufferReadCount[5]~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \Selector0~4_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|readBufferReadCount\(5));

-- Location: LCCOMB_X43_Y24_N22
\sdram_controller|readBufferReadCount[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferReadCount[6]~22_combout\ = (\sdram_controller|readBufferReadCount\(6) & (\sdram_controller|readBufferReadCount[5]~21\ $ (GND))) # (!\sdram_controller|readBufferReadCount\(6) & (!\sdram_controller|readBufferReadCount[5]~21\ & 
-- VCC))
-- \sdram_controller|readBufferReadCount[6]~23\ = CARRY((\sdram_controller|readBufferReadCount\(6) & !\sdram_controller|readBufferReadCount[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|readBufferReadCount\(6),
	datad => VCC,
	cin => \sdram_controller|readBufferReadCount[5]~21\,
	combout => \sdram_controller|readBufferReadCount[6]~22_combout\,
	cout => \sdram_controller|readBufferReadCount[6]~23\);

-- Location: FF_X43_Y24_N23
\sdram_controller|readBufferReadCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|readBufferReadCount[6]~22_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \Selector0~4_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|readBufferReadCount\(6));

-- Location: LCCOMB_X43_Y24_N24
\sdram_controller|readBufferReadCount[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferReadCount[7]~24_combout\ = (\sdram_controller|readBufferReadCount\(7) & (!\sdram_controller|readBufferReadCount[6]~23\)) # (!\sdram_controller|readBufferReadCount\(7) & ((\sdram_controller|readBufferReadCount[6]~23\) # (GND)))
-- \sdram_controller|readBufferReadCount[7]~25\ = CARRY((!\sdram_controller|readBufferReadCount[6]~23\) # (!\sdram_controller|readBufferReadCount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|readBufferReadCount\(7),
	datad => VCC,
	cin => \sdram_controller|readBufferReadCount[6]~23\,
	combout => \sdram_controller|readBufferReadCount[7]~24_combout\,
	cout => \sdram_controller|readBufferReadCount[7]~25\);

-- Location: FF_X43_Y24_N25
\sdram_controller|readBufferReadCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|readBufferReadCount[7]~24_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \Selector0~4_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|readBufferReadCount\(7));

-- Location: LCCOMB_X43_Y24_N26
\sdram_controller|readBufferReadCount[8]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferReadCount[8]~26_combout\ = (\sdram_controller|readBufferReadCount\(8) & (\sdram_controller|readBufferReadCount[7]~25\ $ (GND))) # (!\sdram_controller|readBufferReadCount\(8) & (!\sdram_controller|readBufferReadCount[7]~25\ & 
-- VCC))
-- \sdram_controller|readBufferReadCount[8]~27\ = CARRY((\sdram_controller|readBufferReadCount\(8) & !\sdram_controller|readBufferReadCount[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|readBufferReadCount\(8),
	datad => VCC,
	cin => \sdram_controller|readBufferReadCount[7]~25\,
	combout => \sdram_controller|readBufferReadCount[8]~26_combout\,
	cout => \sdram_controller|readBufferReadCount[8]~27\);

-- Location: FF_X43_Y24_N27
\sdram_controller|readBufferReadCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|readBufferReadCount[8]~26_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \Selector0~4_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|readBufferReadCount\(8));

-- Location: LCCOMB_X43_Y24_N28
\sdram_controller|readBufferReadCount[9]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferReadCount[9]~28_combout\ = \sdram_controller|readBufferReadCount[8]~27\ $ (\sdram_controller|readBufferReadCount\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \sdram_controller|readBufferReadCount\(9),
	cin => \sdram_controller|readBufferReadCount[8]~27\,
	combout => \sdram_controller|readBufferReadCount[9]~28_combout\);

-- Location: FF_X43_Y24_N29
\sdram_controller|readBufferReadCount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|readBufferReadCount[9]~28_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \Selector0~4_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|readBufferReadCount\(9));

-- Location: LCCOMB_X43_Y24_N6
\sdram_controller|LessThan18~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|LessThan18~2_combout\ = (!\sdram_controller|readBufferReadCount\(9) & (!\sdram_controller|readBufferReadCount\(8) & !\sdram_controller|readBufferReadCount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|readBufferReadCount\(9),
	datac => \sdram_controller|readBufferReadCount\(8),
	datad => \sdram_controller|readBufferReadCount\(7),
	combout => \sdram_controller|LessThan18~2_combout\);

-- Location: LCCOMB_X43_Y24_N0
\sdram_controller|LessThan18~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|LessThan18~1_combout\ = (!\sdram_controller|readBufferReadCount\(4) & (!\sdram_controller|readBufferReadCount\(5) & (!\sdram_controller|readBufferReadCount\(6) & !\sdram_controller|readBufferReadCount\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|readBufferReadCount\(4),
	datab => \sdram_controller|readBufferReadCount\(5),
	datac => \sdram_controller|readBufferReadCount\(6),
	datad => \sdram_controller|readBufferReadCount\(3),
	combout => \sdram_controller|LessThan18~1_combout\);

-- Location: LCCOMB_X42_Y24_N20
\sdram_controller|readDeviceIndexReg[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readDeviceIndexReg[0]~2_combout\ = (!\sdram_controller|writeBufferEmpty~q\ & (\enable~input_o\ & (\sdram_controller|readDeviceIndexReg[0]~0_combout\ & \sdram_controller|readDeviceIndexReg[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferEmpty~q\,
	datab => \enable~input_o\,
	datac => \sdram_controller|readDeviceIndexReg[0]~0_combout\,
	datad => \sdram_controller|readDeviceIndexReg[0]~1_combout\,
	combout => \sdram_controller|readDeviceIndexReg[0]~2_combout\);

-- Location: LCCOMB_X43_Y24_N4
\sdram_controller|readBurstLengthReg[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBurstLengthReg[0]~0_combout\ = (\sdram_controller|readBurstLengthReg\(0)) # (\sdram_controller|readDeviceIndexReg[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sdram_controller|readBurstLengthReg\(0),
	datad => \sdram_controller|readDeviceIndexReg[0]~2_combout\,
	combout => \sdram_controller|readBurstLengthReg[0]~0_combout\);

-- Location: FF_X43_Y24_N5
\sdram_controller|readBurstLengthReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|readBurstLengthReg[0]~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|readBurstLengthReg\(0));

-- Location: LCCOMB_X43_Y24_N2
\sdram_controller|LessThan18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|LessThan18~0_combout\ = (\sdram_controller|readBurstLengthReg\(0) & (((!\sdram_controller|readBufferReadCount\(1) & !\sdram_controller|readBufferReadCount\(0))) # (!\sdram_controller|readBufferReadCount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|readBufferReadCount\(1),
	datab => \sdram_controller|readBufferReadCount\(2),
	datac => \sdram_controller|readBurstLengthReg\(0),
	datad => \sdram_controller|readBufferReadCount\(0),
	combout => \sdram_controller|LessThan18~0_combout\);

-- Location: LCCOMB_X43_Y24_N8
\sdram_controller|LessThan18~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|LessThan18~3_combout\ = (\sdram_controller|LessThan18~2_combout\ & (\sdram_controller|LessThan18~1_combout\ & \sdram_controller|LessThan18~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|LessThan18~2_combout\,
	datab => \sdram_controller|LessThan18~1_combout\,
	datad => \sdram_controller|LessThan18~0_combout\,
	combout => \sdram_controller|LessThan18~3_combout\);

-- Location: LCCOMB_X42_Y24_N16
\sdram_controller|readBufferState~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferState~2_combout\ = (\sdram_controller|readBufferState~q\ & ((\sdram_controller|LessThan18~3_combout\))) # (!\sdram_controller|readBufferState~q\ & (!\sdram_controller|readBufferEmpty~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|readBufferEmpty~q\,
	datac => \sdram_controller|readBufferState~q\,
	datad => \sdram_controller|LessThan18~3_combout\,
	combout => \sdram_controller|readBufferState~2_combout\);

-- Location: FF_X42_Y24_N17
\sdram_controller|readBufferState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|readBufferState~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|readBufferState~q\);

-- Location: LCCOMB_X39_Y27_N20
\Selector6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~3_combout\ = (\sdram_controller|SDRAM_Ready[0]~0_combout\) # ((\state.START_RECEIVING~q\ & (!\sdram_controller|readBufferEmpty~q\ & !\sdram_controller|readBufferState~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.START_RECEIVING~q\,
	datab => \sdram_controller|readBufferEmpty~q\,
	datac => \sdram_controller|readBufferState~q\,
	datad => \sdram_controller|SDRAM_Ready[0]~0_combout\,
	combout => \Selector6~3_combout\);

-- Location: FF_X38_Y28_N5
\transmitCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \transmitCount[0]~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \Selector6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => transmitCount(0));

-- Location: LCCOMB_X38_Y28_N6
\transmitCount[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \transmitCount[1]~8_combout\ = (transmitCount(1) & (!\transmitCount[0]~7\)) # (!transmitCount(1) & ((\transmitCount[0]~7\) # (GND)))
-- \transmitCount[1]~9\ = CARRY((!\transmitCount[0]~7\) # (!transmitCount(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => transmitCount(1),
	datad => VCC,
	cin => \transmitCount[0]~7\,
	combout => \transmitCount[1]~8_combout\,
	cout => \transmitCount[1]~9\);

-- Location: FF_X38_Y28_N7
\transmitCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \transmitCount[1]~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \Selector6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => transmitCount(1));

-- Location: LCCOMB_X38_Y28_N8
\transmitCount[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \transmitCount[2]~10_combout\ = (transmitCount(2) & (\transmitCount[1]~9\ $ (GND))) # (!transmitCount(2) & (!\transmitCount[1]~9\ & VCC))
-- \transmitCount[2]~11\ = CARRY((transmitCount(2) & !\transmitCount[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => transmitCount(2),
	datad => VCC,
	cin => \transmitCount[1]~9\,
	combout => \transmitCount[2]~10_combout\,
	cout => \transmitCount[2]~11\);

-- Location: FF_X38_Y28_N9
\transmitCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \transmitCount[2]~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \Selector6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => transmitCount(2));

-- Location: LCCOMB_X38_Y28_N10
\transmitCount[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \transmitCount[3]~12_combout\ = (transmitCount(3) & (!\transmitCount[2]~11\)) # (!transmitCount(3) & ((\transmitCount[2]~11\) # (GND)))
-- \transmitCount[3]~13\ = CARRY((!\transmitCount[2]~11\) # (!transmitCount(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => transmitCount(3),
	datad => VCC,
	cin => \transmitCount[2]~11\,
	combout => \transmitCount[3]~12_combout\,
	cout => \transmitCount[3]~13\);

-- Location: FF_X38_Y28_N11
\transmitCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \transmitCount[3]~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \Selector6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => transmitCount(3));

-- Location: LCCOMB_X38_Y28_N12
\transmitCount[4]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \transmitCount[4]~14_combout\ = (transmitCount(4) & (\transmitCount[3]~13\ $ (GND))) # (!transmitCount(4) & (!\transmitCount[3]~13\ & VCC))
-- \transmitCount[4]~15\ = CARRY((transmitCount(4) & !\transmitCount[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => transmitCount(4),
	datad => VCC,
	cin => \transmitCount[3]~13\,
	combout => \transmitCount[4]~14_combout\,
	cout => \transmitCount[4]~15\);

-- Location: FF_X38_Y28_N13
\transmitCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \transmitCount[4]~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \Selector6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => transmitCount(4));

-- Location: LCCOMB_X38_Y28_N14
\transmitCount[5]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \transmitCount[5]~16_combout\ = transmitCount(5) $ (\transmitCount[4]~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => transmitCount(5),
	cin => \transmitCount[4]~15\,
	combout => \transmitCount[5]~16_combout\);

-- Location: FF_X38_Y28_N15
\transmitCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \transmitCount[5]~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \Selector6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => transmitCount(5));

-- Location: LCCOMB_X41_Y27_N18
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

-- Location: FF_X41_Y27_N19
\state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \state.IDLE~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.IDLE~q\);

-- Location: LCCOMB_X42_Y27_N2
\Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (!\sdram_controller|SDRAM_Ready[0]~0_combout\ & (\state.IDLE~q\ & !\Selector0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|SDRAM_Ready[0]~0_combout\,
	datac => \state.IDLE~q\,
	datad => \Selector0~1_combout\,
	combout => \Selector0~2_combout\);

-- Location: LCCOMB_X42_Y27_N8
\Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!\Selector6~2_combout\ & ((\Selector0~2_combout\ & ((\state.TRANSMIT~q\))) # (!\Selector0~2_combout\ & (\sdram_controller|SDRAM_Ready[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|SDRAM_Ready[0]~0_combout\,
	datab => \Selector6~2_combout\,
	datac => \state.TRANSMIT~q\,
	datad => \Selector0~2_combout\,
	combout => \Selector2~0_combout\);

-- Location: FF_X42_Y27_N9
\state.TRANSMIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.TRANSMIT~q\);

-- Location: LCCOMB_X39_Y28_N4
\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (transmitCount(3)) # ((transmitCount(2) & ((transmitCount(0)) # (transmitCount(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transmitCount(2),
	datab => transmitCount(0),
	datac => transmitCount(3),
	datad => transmitCount(1),
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X42_Y28_N8
\Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\state.TRANSMIT~q\ & ((transmitCount(5)) # ((\Selector0~0_combout\) # (transmitCount(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transmitCount(5),
	datab => \state.TRANSMIT~q\,
	datac => \Selector0~0_combout\,
	datad => transmitCount(4),
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X42_Y27_N0
\Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (!\Selector6~2_combout\ & ((\Selector0~2_combout\ & ((\state.START_RECEIVING~q\))) # (!\Selector0~2_combout\ & (\Selector0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~2_combout\,
	datab => \Selector0~1_combout\,
	datac => \state.START_RECEIVING~q\,
	datad => \Selector0~2_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X42_Y27_N1
\state.START_RECEIVING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.START_RECEIVING~q\);

-- Location: LCCOMB_X42_Y24_N12
\sdram_controller|readDeviceIndexReg[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readDeviceIndexReg[0]~1_combout\ = (\sdram_controller|readBufferEmpty~q\ & \state.START_RECEIVING~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|readBufferEmpty~q\,
	datad => \state.START_RECEIVING~q\,
	combout => \sdram_controller|readDeviceIndexReg[0]~1_combout\);

-- Location: LCCOMB_X42_Y24_N8
\sdram_controller|addressReg[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|addressReg[0]~1_combout\ = (\enable~input_o\ & (\sdram_controller|readDeviceIndexReg[0]~0_combout\ & ((\sdram_controller|writeBufferEmpty~q\) # (\sdram_controller|readDeviceIndexReg[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferEmpty~q\,
	datab => \enable~input_o\,
	datac => \sdram_controller|readDeviceIndexReg[0]~0_combout\,
	datad => \sdram_controller|readDeviceIndexReg[0]~1_combout\,
	combout => \sdram_controller|addressReg[0]~1_combout\);

-- Location: FF_X42_Y24_N7
\sdram_controller|memOperationReg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|memOperationReg~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|addressReg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|memOperationReg~q\);

-- Location: LCCOMB_X42_Y25_N6
\sdram_controller|controllerState~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|controllerState~25_combout\ = (\sdram_controller|controllerState.SDRAM_ACTIVATE_ROW~q\ & !\sdram_controller|memOperationReg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|controllerState.SDRAM_ACTIVATE_ROW~q\,
	datad => \sdram_controller|memOperationReg~q\,
	combout => \sdram_controller|controllerState~25_combout\);

-- Location: LCCOMB_X41_Y25_N22
\sdram_controller|stateCycleCount[3]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|stateCycleCount[3]~23_combout\ = (\sdram_controller|stateCycleCount\(3) & (!\sdram_controller|stateCycleCount[2]~22\)) # (!\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|stateCycleCount[2]~22\) # (GND)))
-- \sdram_controller|stateCycleCount[3]~24\ = CARRY((!\sdram_controller|stateCycleCount[2]~22\) # (!\sdram_controller|stateCycleCount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|stateCycleCount\(3),
	datad => VCC,
	cin => \sdram_controller|stateCycleCount[2]~22\,
	combout => \sdram_controller|stateCycleCount[3]~23_combout\,
	cout => \sdram_controller|stateCycleCount[3]~24\);

-- Location: FF_X41_Y25_N23
\sdram_controller|stateCycleCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|stateCycleCount[3]~23_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \sdram_controller|Selector0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|stateCycleCount\(3));

-- Location: LCCOMB_X41_Y25_N24
\sdram_controller|stateCycleCount[4]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|stateCycleCount[4]~25_combout\ = (\sdram_controller|stateCycleCount\(4) & (\sdram_controller|stateCycleCount[3]~24\ $ (GND))) # (!\sdram_controller|stateCycleCount\(4) & (!\sdram_controller|stateCycleCount[3]~24\ & VCC))
-- \sdram_controller|stateCycleCount[4]~26\ = CARRY((\sdram_controller|stateCycleCount\(4) & !\sdram_controller|stateCycleCount[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|stateCycleCount\(4),
	datad => VCC,
	cin => \sdram_controller|stateCycleCount[3]~24\,
	combout => \sdram_controller|stateCycleCount[4]~25_combout\,
	cout => \sdram_controller|stateCycleCount[4]~26\);

-- Location: FF_X41_Y25_N25
\sdram_controller|stateCycleCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|stateCycleCount[4]~25_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \sdram_controller|Selector0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|stateCycleCount\(4));

-- Location: LCCOMB_X41_Y25_N26
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

-- Location: FF_X41_Y25_N27
\sdram_controller|stateCycleCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|stateCycleCount[5]~27_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \sdram_controller|Selector0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|stateCycleCount\(5));

-- Location: LCCOMB_X41_Y25_N28
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

-- Location: FF_X41_Y25_N29
\sdram_controller|stateCycleCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|stateCycleCount[6]~29_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \sdram_controller|Selector0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|stateCycleCount\(6));

-- Location: LCCOMB_X41_Y25_N30
\sdram_controller|stateCycleCount[7]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|stateCycleCount[7]~31_combout\ = (\sdram_controller|stateCycleCount\(7) & (!\sdram_controller|stateCycleCount[6]~30\)) # (!\sdram_controller|stateCycleCount\(7) & ((\sdram_controller|stateCycleCount[6]~30\) # (GND)))
-- \sdram_controller|stateCycleCount[7]~32\ = CARRY((!\sdram_controller|stateCycleCount[6]~30\) # (!\sdram_controller|stateCycleCount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(7),
	datad => VCC,
	cin => \sdram_controller|stateCycleCount[6]~30\,
	combout => \sdram_controller|stateCycleCount[7]~31_combout\,
	cout => \sdram_controller|stateCycleCount[7]~32\);

-- Location: FF_X41_Y25_N31
\sdram_controller|stateCycleCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|stateCycleCount[7]~31_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \sdram_controller|Selector0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|stateCycleCount\(7));

-- Location: LCCOMB_X41_Y24_N0
\sdram_controller|stateCycleCount[8]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|stateCycleCount[8]~33_combout\ = (\sdram_controller|stateCycleCount\(8) & (\sdram_controller|stateCycleCount[7]~32\ $ (GND))) # (!\sdram_controller|stateCycleCount\(8) & (!\sdram_controller|stateCycleCount[7]~32\ & VCC))
-- \sdram_controller|stateCycleCount[8]~34\ = CARRY((\sdram_controller|stateCycleCount\(8) & !\sdram_controller|stateCycleCount[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|stateCycleCount\(8),
	datad => VCC,
	cin => \sdram_controller|stateCycleCount[7]~32\,
	combout => \sdram_controller|stateCycleCount[8]~33_combout\,
	cout => \sdram_controller|stateCycleCount[8]~34\);

-- Location: FF_X41_Y24_N1
\sdram_controller|stateCycleCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|stateCycleCount[8]~33_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \sdram_controller|Selector0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|stateCycleCount\(8));

-- Location: LCCOMB_X41_Y24_N2
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

-- Location: FF_X41_Y24_N3
\sdram_controller|stateCycleCount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|stateCycleCount[9]~35_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \sdram_controller|Selector0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|stateCycleCount\(9));

-- Location: LCCOMB_X41_Y24_N4
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

-- Location: FF_X41_Y24_N5
\sdram_controller|stateCycleCount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|stateCycleCount[10]~37_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \sdram_controller|Selector0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|stateCycleCount\(10));

-- Location: LCCOMB_X41_Y24_N6
\sdram_controller|stateCycleCount[11]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|stateCycleCount[11]~39_combout\ = (\sdram_controller|stateCycleCount\(11) & (!\sdram_controller|stateCycleCount[10]~38\)) # (!\sdram_controller|stateCycleCount\(11) & ((\sdram_controller|stateCycleCount[10]~38\) # (GND)))
-- \sdram_controller|stateCycleCount[11]~40\ = CARRY((!\sdram_controller|stateCycleCount[10]~38\) # (!\sdram_controller|stateCycleCount\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|stateCycleCount\(11),
	datad => VCC,
	cin => \sdram_controller|stateCycleCount[10]~38\,
	combout => \sdram_controller|stateCycleCount[11]~39_combout\,
	cout => \sdram_controller|stateCycleCount[11]~40\);

-- Location: FF_X41_Y24_N7
\sdram_controller|stateCycleCount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|stateCycleCount[11]~39_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \sdram_controller|Selector0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|stateCycleCount\(11));

-- Location: LCCOMB_X41_Y24_N8
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

-- Location: FF_X41_Y24_N9
\sdram_controller|stateCycleCount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|stateCycleCount[12]~41_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \sdram_controller|Selector0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|stateCycleCount\(12));

-- Location: LCCOMB_X41_Y24_N10
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

-- Location: FF_X41_Y24_N11
\sdram_controller|stateCycleCount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|stateCycleCount[13]~43_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \sdram_controller|Selector0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|stateCycleCount\(13));

-- Location: LCCOMB_X41_Y24_N12
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

-- Location: FF_X41_Y24_N13
\sdram_controller|stateCycleCount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|stateCycleCount[14]~45_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \sdram_controller|Selector0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|stateCycleCount\(14));

-- Location: LCCOMB_X41_Y24_N20
\sdram_controller|process_1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|process_1~3_combout\ = (!\sdram_controller|stateCycleCount\(11) & (!\sdram_controller|stateCycleCount\(12) & (!\sdram_controller|stateCycleCount\(13) & !\sdram_controller|stateCycleCount\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(11),
	datab => \sdram_controller|stateCycleCount\(12),
	datac => \sdram_controller|stateCycleCount\(13),
	datad => \sdram_controller|stateCycleCount\(14),
	combout => \sdram_controller|process_1~3_combout\);

-- Location: LCCOMB_X41_Y24_N26
\sdram_controller|process_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|process_1~2_combout\ = (!\sdram_controller|stateCycleCount\(7) & (!\sdram_controller|stateCycleCount\(9) & (!\sdram_controller|stateCycleCount\(10) & !\sdram_controller|stateCycleCount\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(7),
	datab => \sdram_controller|stateCycleCount\(9),
	datac => \sdram_controller|stateCycleCount\(10),
	datad => \sdram_controller|stateCycleCount\(8),
	combout => \sdram_controller|process_1~2_combout\);

-- Location: LCCOMB_X41_Y24_N14
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

-- Location: FF_X41_Y24_N15
\sdram_controller|stateCycleCount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|stateCycleCount[15]~47_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \sdram_controller|Selector0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|stateCycleCount\(15));

-- Location: LCCOMB_X41_Y24_N16
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

-- Location: FF_X41_Y24_N17
\sdram_controller|stateCycleCount[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|stateCycleCount[16]~49_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \sdram_controller|Selector0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|stateCycleCount\(16));

-- Location: LCCOMB_X42_Y24_N28
\sdram_controller|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal1~2_combout\ = (!\sdram_controller|stateCycleCount\(15) & (!\sdram_controller|stateCycleCount\(16) & (!\sdram_controller|stateCycleCount\(4) & !\sdram_controller|stateCycleCount\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(15),
	datab => \sdram_controller|stateCycleCount\(16),
	datac => \sdram_controller|stateCycleCount\(4),
	datad => \sdram_controller|stateCycleCount\(5),
	combout => \sdram_controller|Equal1~2_combout\);

-- Location: LCCOMB_X42_Y24_N2
\sdram_controller|Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal1~3_combout\ = (!\sdram_controller|stateCycleCount\(6) & (\sdram_controller|process_1~3_combout\ & (\sdram_controller|process_1~2_combout\ & \sdram_controller|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(6),
	datab => \sdram_controller|process_1~3_combout\,
	datac => \sdram_controller|process_1~2_combout\,
	datad => \sdram_controller|Equal1~2_combout\,
	combout => \sdram_controller|Equal1~3_combout\);

-- Location: LCCOMB_X40_Y25_N6
\sdram_controller|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|LessThan0~0_combout\ = (\sdram_controller|stateCycleCount\(2) & \sdram_controller|stateCycleCount\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sdram_controller|stateCycleCount\(2),
	datad => \sdram_controller|stateCycleCount\(3),
	combout => \sdram_controller|LessThan0~0_combout\);

-- Location: LCCOMB_X42_Y25_N16
\sdram_controller|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector0~1_combout\ = (!\sdram_controller|controllerState.SDRAM_POWER_UP~q\ & (((\sdram_controller|LessThan0~0_combout\ & \sdram_controller|stateCycleCount\(1))) # (!\sdram_controller|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Equal1~3_combout\,
	datab => \sdram_controller|controllerState.SDRAM_POWER_UP~q\,
	datac => \sdram_controller|LessThan0~0_combout\,
	datad => \sdram_controller|stateCycleCount\(1),
	combout => \sdram_controller|Selector0~1_combout\);

-- Location: LCCOMB_X42_Y24_N18
\sdram_controller|Equal1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal1~4_combout\ = (!\sdram_controller|stateCycleCount\(2) & (!\sdram_controller|stateCycleCount\(0) & (!\sdram_controller|stateCycleCount\(3) & \sdram_controller|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(2),
	datab => \sdram_controller|stateCycleCount\(0),
	datac => \sdram_controller|stateCycleCount\(3),
	datad => \sdram_controller|Equal1~3_combout\,
	combout => \sdram_controller|Equal1~4_combout\);

-- Location: LCCOMB_X42_Y24_N22
\sdram_controller|controllerState~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|controllerState~15_combout\ = (\enable~input_o\ & (((\sdram_controller|stateCycleCount\(1) & \sdram_controller|Equal1~4_combout\)) # (!\sdram_controller|controllerState.SDRAM_ACTIVATE_ROW~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datab => \enable~input_o\,
	datac => \sdram_controller|controllerState.SDRAM_ACTIVATE_ROW~q\,
	datad => \sdram_controller|Equal1~4_combout\,
	combout => \sdram_controller|controllerState~15_combout\);

-- Location: LCCOMB_X41_Y25_N8
\sdram_controller|controllerState.SDRAM_INIT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|controllerState.SDRAM_INIT~0_combout\ = !\sdram_controller|controllerState.SDRAM_POWER_UP~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sdram_controller|controllerState.SDRAM_POWER_UP~q\,
	combout => \sdram_controller|controllerState.SDRAM_INIT~0_combout\);

-- Location: FF_X41_Y25_N9
\sdram_controller|controllerState.SDRAM_INIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|controllerState.SDRAM_INIT~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|controllerState~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|controllerState.SDRAM_INIT~q\);

-- Location: LCCOMB_X41_Y24_N30
\sdram_controller|process_1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|process_1~5_combout\ = (!\sdram_controller|stateCycleCount\(14) & (!\sdram_controller|stateCycleCount\(16) & (!\sdram_controller|stateCycleCount\(15) & !\sdram_controller|stateCycleCount\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(14),
	datab => \sdram_controller|stateCycleCount\(16),
	datac => \sdram_controller|stateCycleCount\(15),
	datad => \sdram_controller|stateCycleCount\(13),
	combout => \sdram_controller|process_1~5_combout\);

-- Location: LCCOMB_X41_Y24_N24
\sdram_controller|process_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|process_1~6_combout\ = (\sdram_controller|process_1~2_combout\ & (!\sdram_controller|stateCycleCount\(11) & (\sdram_controller|process_1~5_combout\ & !\sdram_controller|stateCycleCount\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|process_1~2_combout\,
	datab => \sdram_controller|stateCycleCount\(11),
	datac => \sdram_controller|process_1~5_combout\,
	datad => \sdram_controller|stateCycleCount\(12),
	combout => \sdram_controller|process_1~6_combout\);

-- Location: LCCOMB_X40_Y25_N30
\sdram_controller|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|LessThan1~0_combout\ = (!\sdram_controller|stateCycleCount\(4) & (!\sdram_controller|stateCycleCount\(5) & ((!\sdram_controller|stateCycleCount\(3)) # (!\sdram_controller|stateCycleCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(4),
	datab => \sdram_controller|stateCycleCount\(5),
	datac => \sdram_controller|stateCycleCount\(2),
	datad => \sdram_controller|stateCycleCount\(3),
	combout => \sdram_controller|LessThan1~0_combout\);

-- Location: LCCOMB_X42_Y25_N28
\sdram_controller|controllerState~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|controllerState~12_combout\ = (\sdram_controller|controllerState.SDRAM_INIT~q\ & (\sdram_controller|process_1~6_combout\ & ((\sdram_controller|LessThan1~0_combout\) # (!\sdram_controller|stateCycleCount\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|controllerState.SDRAM_INIT~q\,
	datab => \sdram_controller|stateCycleCount\(6),
	datac => \sdram_controller|process_1~6_combout\,
	datad => \sdram_controller|LessThan1~0_combout\,
	combout => \sdram_controller|controllerState~12_combout\);

-- Location: LCCOMB_X50_Y29_N2
\sdram_controller|Add24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add24~0_combout\ = \sdram_controller|refreshCount\(0) $ (VCC)
-- \sdram_controller|Add24~1\ = CARRY(\sdram_controller|refreshCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|refreshCount\(0),
	datad => VCC,
	combout => \sdram_controller|Add24~0_combout\,
	cout => \sdram_controller|Add24~1\);

-- Location: FF_X50_Y29_N3
\sdram_controller|refreshCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|Add24~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(0));

-- Location: LCCOMB_X50_Y29_N4
\sdram_controller|Add24~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add24~2_combout\ = (\sdram_controller|refreshCount\(1) & (!\sdram_controller|Add24~1\)) # (!\sdram_controller|refreshCount\(1) & ((\sdram_controller|Add24~1\) # (GND)))
-- \sdram_controller|Add24~3\ = CARRY((!\sdram_controller|Add24~1\) # (!\sdram_controller|refreshCount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|refreshCount\(1),
	datad => VCC,
	cin => \sdram_controller|Add24~1\,
	combout => \sdram_controller|Add24~2_combout\,
	cout => \sdram_controller|Add24~3\);

-- Location: LCCOMB_X49_Y29_N4
\sdram_controller|refreshCount~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|refreshCount~4_combout\ = (!\sdram_controller|Equal15~9_combout\ & \sdram_controller|Add24~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|Equal15~9_combout\,
	datad => \sdram_controller|Add24~2_combout\,
	combout => \sdram_controller|refreshCount~4_combout\);

-- Location: FF_X49_Y29_N5
\sdram_controller|refreshCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|refreshCount~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(1));

-- Location: LCCOMB_X50_Y29_N6
\sdram_controller|Add24~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add24~4_combout\ = (\sdram_controller|refreshCount\(2) & (\sdram_controller|Add24~3\ $ (GND))) # (!\sdram_controller|refreshCount\(2) & (!\sdram_controller|Add24~3\ & VCC))
-- \sdram_controller|Add24~5\ = CARRY((\sdram_controller|refreshCount\(2) & !\sdram_controller|Add24~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|refreshCount\(2),
	datad => VCC,
	cin => \sdram_controller|Add24~3\,
	combout => \sdram_controller|Add24~4_combout\,
	cout => \sdram_controller|Add24~5\);

-- Location: FF_X50_Y29_N7
\sdram_controller|refreshCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|Add24~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(2));

-- Location: LCCOMB_X50_Y29_N8
\sdram_controller|Add24~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add24~6_combout\ = (\sdram_controller|refreshCount\(3) & (!\sdram_controller|Add24~5\)) # (!\sdram_controller|refreshCount\(3) & ((\sdram_controller|Add24~5\) # (GND)))
-- \sdram_controller|Add24~7\ = CARRY((!\sdram_controller|Add24~5\) # (!\sdram_controller|refreshCount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|refreshCount\(3),
	datad => VCC,
	cin => \sdram_controller|Add24~5\,
	combout => \sdram_controller|Add24~6_combout\,
	cout => \sdram_controller|Add24~7\);

-- Location: LCCOMB_X49_Y29_N16
\sdram_controller|refreshCount~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|refreshCount~3_combout\ = (\sdram_controller|Add24~6_combout\ & !\sdram_controller|Equal15~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sdram_controller|Add24~6_combout\,
	datad => \sdram_controller|Equal15~9_combout\,
	combout => \sdram_controller|refreshCount~3_combout\);

-- Location: FF_X49_Y29_N17
\sdram_controller|refreshCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|refreshCount~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(3));

-- Location: LCCOMB_X50_Y29_N10
\sdram_controller|Add24~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add24~8_combout\ = (\sdram_controller|refreshCount\(4) & (\sdram_controller|Add24~7\ $ (GND))) # (!\sdram_controller|refreshCount\(4) & (!\sdram_controller|Add24~7\ & VCC))
-- \sdram_controller|Add24~9\ = CARRY((\sdram_controller|refreshCount\(4) & !\sdram_controller|Add24~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|refreshCount\(4),
	datad => VCC,
	cin => \sdram_controller|Add24~7\,
	combout => \sdram_controller|Add24~8_combout\,
	cout => \sdram_controller|Add24~9\);

-- Location: LCCOMB_X49_Y29_N6
\sdram_controller|refreshCount~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|refreshCount~2_combout\ = (\sdram_controller|Add24~8_combout\ & !\sdram_controller|Equal15~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sdram_controller|Add24~8_combout\,
	datad => \sdram_controller|Equal15~9_combout\,
	combout => \sdram_controller|refreshCount~2_combout\);

-- Location: FF_X49_Y29_N7
\sdram_controller|refreshCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|refreshCount~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(4));

-- Location: LCCOMB_X50_Y29_N12
\sdram_controller|Add24~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add24~10_combout\ = (\sdram_controller|refreshCount\(5) & (!\sdram_controller|Add24~9\)) # (!\sdram_controller|refreshCount\(5) & ((\sdram_controller|Add24~9\) # (GND)))
-- \sdram_controller|Add24~11\ = CARRY((!\sdram_controller|Add24~9\) # (!\sdram_controller|refreshCount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|refreshCount\(5),
	datad => VCC,
	cin => \sdram_controller|Add24~9\,
	combout => \sdram_controller|Add24~10_combout\,
	cout => \sdram_controller|Add24~11\);

-- Location: FF_X50_Y29_N13
\sdram_controller|refreshCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|Add24~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(5));

-- Location: LCCOMB_X50_Y29_N14
\sdram_controller|Add24~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add24~12_combout\ = (\sdram_controller|refreshCount\(6) & (\sdram_controller|Add24~11\ $ (GND))) # (!\sdram_controller|refreshCount\(6) & (!\sdram_controller|Add24~11\ & VCC))
-- \sdram_controller|Add24~13\ = CARRY((\sdram_controller|refreshCount\(6) & !\sdram_controller|Add24~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|refreshCount\(6),
	datad => VCC,
	cin => \sdram_controller|Add24~11\,
	combout => \sdram_controller|Add24~12_combout\,
	cout => \sdram_controller|Add24~13\);

-- Location: LCCOMB_X49_Y29_N20
\sdram_controller|refreshCount~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|refreshCount~1_combout\ = (\sdram_controller|Add24~12_combout\ & !\sdram_controller|Equal15~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sdram_controller|Add24~12_combout\,
	datad => \sdram_controller|Equal15~9_combout\,
	combout => \sdram_controller|refreshCount~1_combout\);

-- Location: FF_X49_Y29_N21
\sdram_controller|refreshCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|refreshCount~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(6));

-- Location: LCCOMB_X49_Y29_N30
\sdram_controller|Equal15~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal15~7_combout\ = (\sdram_controller|refreshCount\(4) & (\sdram_controller|refreshCount\(6) & (!\sdram_controller|refreshCount\(5) & \sdram_controller|refreshCount\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|refreshCount\(4),
	datab => \sdram_controller|refreshCount\(6),
	datac => \sdram_controller|refreshCount\(5),
	datad => \sdram_controller|refreshCount\(3),
	combout => \sdram_controller|Equal15~7_combout\);

-- Location: LCCOMB_X49_Y29_N22
\sdram_controller|Equal15~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal15~8_combout\ = (!\sdram_controller|refreshCount\(2) & (!\sdram_controller|refreshCount\(1) & (\sdram_controller|Equal15~7_combout\ & \sdram_controller|refreshCount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|refreshCount\(2),
	datab => \sdram_controller|refreshCount\(1),
	datac => \sdram_controller|Equal15~7_combout\,
	datad => \sdram_controller|refreshCount\(0),
	combout => \sdram_controller|Equal15~8_combout\);

-- Location: LCCOMB_X50_Y29_N16
\sdram_controller|Add24~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add24~14_combout\ = (\sdram_controller|refreshCount\(7) & (!\sdram_controller|Add24~13\)) # (!\sdram_controller|refreshCount\(7) & ((\sdram_controller|Add24~13\) # (GND)))
-- \sdram_controller|Add24~15\ = CARRY((!\sdram_controller|Add24~13\) # (!\sdram_controller|refreshCount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|refreshCount\(7),
	datad => VCC,
	cin => \sdram_controller|Add24~13\,
	combout => \sdram_controller|Add24~14_combout\,
	cout => \sdram_controller|Add24~15\);

-- Location: FF_X50_Y29_N17
\sdram_controller|refreshCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|Add24~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(7));

-- Location: LCCOMB_X50_Y29_N18
\sdram_controller|Add24~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add24~16_combout\ = (\sdram_controller|refreshCount\(8) & (\sdram_controller|Add24~15\ $ (GND))) # (!\sdram_controller|refreshCount\(8) & (!\sdram_controller|Add24~15\ & VCC))
-- \sdram_controller|Add24~17\ = CARRY((\sdram_controller|refreshCount\(8) & !\sdram_controller|Add24~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|refreshCount\(8),
	datad => VCC,
	cin => \sdram_controller|Add24~15\,
	combout => \sdram_controller|Add24~16_combout\,
	cout => \sdram_controller|Add24~17\);

-- Location: FF_X50_Y29_N19
\sdram_controller|refreshCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|Add24~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(8));

-- Location: LCCOMB_X50_Y29_N20
\sdram_controller|Add24~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add24~18_combout\ = (\sdram_controller|refreshCount\(9) & (!\sdram_controller|Add24~17\)) # (!\sdram_controller|refreshCount\(9) & ((\sdram_controller|Add24~17\) # (GND)))
-- \sdram_controller|Add24~19\ = CARRY((!\sdram_controller|Add24~17\) # (!\sdram_controller|refreshCount\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|refreshCount\(9),
	datad => VCC,
	cin => \sdram_controller|Add24~17\,
	combout => \sdram_controller|Add24~18_combout\,
	cout => \sdram_controller|Add24~19\);

-- Location: FF_X50_Y29_N21
\sdram_controller|refreshCount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|Add24~18_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(9));

-- Location: LCCOMB_X50_Y29_N22
\sdram_controller|Add24~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add24~20_combout\ = (\sdram_controller|refreshCount\(10) & (\sdram_controller|Add24~19\ $ (GND))) # (!\sdram_controller|refreshCount\(10) & (!\sdram_controller|Add24~19\ & VCC))
-- \sdram_controller|Add24~21\ = CARRY((\sdram_controller|refreshCount\(10) & !\sdram_controller|Add24~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|refreshCount\(10),
	datad => VCC,
	cin => \sdram_controller|Add24~19\,
	combout => \sdram_controller|Add24~20_combout\,
	cout => \sdram_controller|Add24~21\);

-- Location: LCCOMB_X49_Y29_N12
\sdram_controller|refreshCount~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|refreshCount~0_combout\ = (!\sdram_controller|Equal15~9_combout\ & \sdram_controller|Add24~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|Equal15~9_combout\,
	datad => \sdram_controller|Add24~20_combout\,
	combout => \sdram_controller|refreshCount~0_combout\);

-- Location: FF_X49_Y29_N13
\sdram_controller|refreshCount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|refreshCount~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(10));

-- Location: LCCOMB_X50_Y29_N24
\sdram_controller|Add24~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add24~22_combout\ = (\sdram_controller|refreshCount\(11) & (!\sdram_controller|Add24~21\)) # (!\sdram_controller|refreshCount\(11) & ((\sdram_controller|Add24~21\) # (GND)))
-- \sdram_controller|Add24~23\ = CARRY((!\sdram_controller|Add24~21\) # (!\sdram_controller|refreshCount\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|refreshCount\(11),
	datad => VCC,
	cin => \sdram_controller|Add24~21\,
	combout => \sdram_controller|Add24~22_combout\,
	cout => \sdram_controller|Add24~23\);

-- Location: FF_X50_Y29_N25
\sdram_controller|refreshCount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|Add24~22_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(11));

-- Location: LCCOMB_X50_Y29_N26
\sdram_controller|Add24~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add24~24_combout\ = (\sdram_controller|refreshCount\(12) & (\sdram_controller|Add24~23\ $ (GND))) # (!\sdram_controller|refreshCount\(12) & (!\sdram_controller|Add24~23\ & VCC))
-- \sdram_controller|Add24~25\ = CARRY((\sdram_controller|refreshCount\(12) & !\sdram_controller|Add24~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|refreshCount\(12),
	datad => VCC,
	cin => \sdram_controller|Add24~23\,
	combout => \sdram_controller|Add24~24_combout\,
	cout => \sdram_controller|Add24~25\);

-- Location: FF_X50_Y29_N27
\sdram_controller|refreshCount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|Add24~24_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(12));

-- Location: LCCOMB_X50_Y29_N28
\sdram_controller|Add24~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add24~26_combout\ = (\sdram_controller|refreshCount\(13) & (!\sdram_controller|Add24~25\)) # (!\sdram_controller|refreshCount\(13) & ((\sdram_controller|Add24~25\) # (GND)))
-- \sdram_controller|Add24~27\ = CARRY((!\sdram_controller|Add24~25\) # (!\sdram_controller|refreshCount\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|refreshCount\(13),
	datad => VCC,
	cin => \sdram_controller|Add24~25\,
	combout => \sdram_controller|Add24~26_combout\,
	cout => \sdram_controller|Add24~27\);

-- Location: FF_X50_Y29_N29
\sdram_controller|refreshCount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|Add24~26_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(13));

-- Location: LCCOMB_X50_Y29_N30
\sdram_controller|Add24~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add24~28_combout\ = (\sdram_controller|refreshCount\(14) & (\sdram_controller|Add24~27\ $ (GND))) # (!\sdram_controller|refreshCount\(14) & (!\sdram_controller|Add24~27\ & VCC))
-- \sdram_controller|Add24~29\ = CARRY((\sdram_controller|refreshCount\(14) & !\sdram_controller|Add24~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|refreshCount\(14),
	datad => VCC,
	cin => \sdram_controller|Add24~27\,
	combout => \sdram_controller|Add24~28_combout\,
	cout => \sdram_controller|Add24~29\);

-- Location: FF_X50_Y29_N31
\sdram_controller|refreshCount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|Add24~28_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(14));

-- Location: LCCOMB_X50_Y28_N0
\sdram_controller|Add24~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add24~30_combout\ = (\sdram_controller|refreshCount\(15) & (!\sdram_controller|Add24~29\)) # (!\sdram_controller|refreshCount\(15) & ((\sdram_controller|Add24~29\) # (GND)))
-- \sdram_controller|Add24~31\ = CARRY((!\sdram_controller|Add24~29\) # (!\sdram_controller|refreshCount\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|refreshCount\(15),
	datad => VCC,
	cin => \sdram_controller|Add24~29\,
	combout => \sdram_controller|Add24~30_combout\,
	cout => \sdram_controller|Add24~31\);

-- Location: FF_X50_Y28_N1
\sdram_controller|refreshCount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|Add24~30_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(15));

-- Location: LCCOMB_X50_Y28_N2
\sdram_controller|Add24~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add24~32_combout\ = (\sdram_controller|refreshCount\(16) & (\sdram_controller|Add24~31\ $ (GND))) # (!\sdram_controller|refreshCount\(16) & (!\sdram_controller|Add24~31\ & VCC))
-- \sdram_controller|Add24~33\ = CARRY((\sdram_controller|refreshCount\(16) & !\sdram_controller|Add24~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|refreshCount\(16),
	datad => VCC,
	cin => \sdram_controller|Add24~31\,
	combout => \sdram_controller|Add24~32_combout\,
	cout => \sdram_controller|Add24~33\);

-- Location: FF_X50_Y28_N3
\sdram_controller|refreshCount[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|Add24~32_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(16));

-- Location: LCCOMB_X50_Y28_N4
\sdram_controller|Add24~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add24~34_combout\ = (\sdram_controller|refreshCount\(17) & (!\sdram_controller|Add24~33\)) # (!\sdram_controller|refreshCount\(17) & ((\sdram_controller|Add24~33\) # (GND)))
-- \sdram_controller|Add24~35\ = CARRY((!\sdram_controller|Add24~33\) # (!\sdram_controller|refreshCount\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|refreshCount\(17),
	datad => VCC,
	cin => \sdram_controller|Add24~33\,
	combout => \sdram_controller|Add24~34_combout\,
	cout => \sdram_controller|Add24~35\);

-- Location: FF_X50_Y28_N5
\sdram_controller|refreshCount[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|Add24~34_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(17));

-- Location: LCCOMB_X50_Y28_N6
\sdram_controller|Add24~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add24~36_combout\ = (\sdram_controller|refreshCount\(18) & (\sdram_controller|Add24~35\ $ (GND))) # (!\sdram_controller|refreshCount\(18) & (!\sdram_controller|Add24~35\ & VCC))
-- \sdram_controller|Add24~37\ = CARRY((\sdram_controller|refreshCount\(18) & !\sdram_controller|Add24~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|refreshCount\(18),
	datad => VCC,
	cin => \sdram_controller|Add24~35\,
	combout => \sdram_controller|Add24~36_combout\,
	cout => \sdram_controller|Add24~37\);

-- Location: FF_X50_Y28_N7
\sdram_controller|refreshCount[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|Add24~36_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(18));

-- Location: LCCOMB_X50_Y28_N8
\sdram_controller|Add24~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add24~38_combout\ = (\sdram_controller|refreshCount\(19) & (!\sdram_controller|Add24~37\)) # (!\sdram_controller|refreshCount\(19) & ((\sdram_controller|Add24~37\) # (GND)))
-- \sdram_controller|Add24~39\ = CARRY((!\sdram_controller|Add24~37\) # (!\sdram_controller|refreshCount\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|refreshCount\(19),
	datad => VCC,
	cin => \sdram_controller|Add24~37\,
	combout => \sdram_controller|Add24~38_combout\,
	cout => \sdram_controller|Add24~39\);

-- Location: FF_X50_Y28_N9
\sdram_controller|refreshCount[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|Add24~38_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(19));

-- Location: LCCOMB_X50_Y28_N10
\sdram_controller|Add24~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add24~40_combout\ = (\sdram_controller|refreshCount\(20) & (\sdram_controller|Add24~39\ $ (GND))) # (!\sdram_controller|refreshCount\(20) & (!\sdram_controller|Add24~39\ & VCC))
-- \sdram_controller|Add24~41\ = CARRY((\sdram_controller|refreshCount\(20) & !\sdram_controller|Add24~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|refreshCount\(20),
	datad => VCC,
	cin => \sdram_controller|Add24~39\,
	combout => \sdram_controller|Add24~40_combout\,
	cout => \sdram_controller|Add24~41\);

-- Location: FF_X50_Y28_N11
\sdram_controller|refreshCount[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|Add24~40_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(20));

-- Location: LCCOMB_X50_Y28_N12
\sdram_controller|Add24~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add24~42_combout\ = (\sdram_controller|refreshCount\(21) & (!\sdram_controller|Add24~41\)) # (!\sdram_controller|refreshCount\(21) & ((\sdram_controller|Add24~41\) # (GND)))
-- \sdram_controller|Add24~43\ = CARRY((!\sdram_controller|Add24~41\) # (!\sdram_controller|refreshCount\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|refreshCount\(21),
	datad => VCC,
	cin => \sdram_controller|Add24~41\,
	combout => \sdram_controller|Add24~42_combout\,
	cout => \sdram_controller|Add24~43\);

-- Location: FF_X50_Y28_N13
\sdram_controller|refreshCount[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|Add24~42_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(21));

-- Location: LCCOMB_X50_Y28_N14
\sdram_controller|Add24~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add24~44_combout\ = (\sdram_controller|refreshCount\(22) & (\sdram_controller|Add24~43\ $ (GND))) # (!\sdram_controller|refreshCount\(22) & (!\sdram_controller|Add24~43\ & VCC))
-- \sdram_controller|Add24~45\ = CARRY((\sdram_controller|refreshCount\(22) & !\sdram_controller|Add24~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|refreshCount\(22),
	datad => VCC,
	cin => \sdram_controller|Add24~43\,
	combout => \sdram_controller|Add24~44_combout\,
	cout => \sdram_controller|Add24~45\);

-- Location: FF_X50_Y28_N15
\sdram_controller|refreshCount[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|Add24~44_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(22));

-- Location: LCCOMB_X50_Y28_N16
\sdram_controller|Add24~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add24~46_combout\ = (\sdram_controller|refreshCount\(23) & (!\sdram_controller|Add24~45\)) # (!\sdram_controller|refreshCount\(23) & ((\sdram_controller|Add24~45\) # (GND)))
-- \sdram_controller|Add24~47\ = CARRY((!\sdram_controller|Add24~45\) # (!\sdram_controller|refreshCount\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|refreshCount\(23),
	datad => VCC,
	cin => \sdram_controller|Add24~45\,
	combout => \sdram_controller|Add24~46_combout\,
	cout => \sdram_controller|Add24~47\);

-- Location: FF_X50_Y28_N17
\sdram_controller|refreshCount[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|Add24~46_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(23));

-- Location: LCCOMB_X50_Y28_N18
\sdram_controller|Add24~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add24~48_combout\ = (\sdram_controller|refreshCount\(24) & (\sdram_controller|Add24~47\ $ (GND))) # (!\sdram_controller|refreshCount\(24) & (!\sdram_controller|Add24~47\ & VCC))
-- \sdram_controller|Add24~49\ = CARRY((\sdram_controller|refreshCount\(24) & !\sdram_controller|Add24~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|refreshCount\(24),
	datad => VCC,
	cin => \sdram_controller|Add24~47\,
	combout => \sdram_controller|Add24~48_combout\,
	cout => \sdram_controller|Add24~49\);

-- Location: FF_X50_Y28_N19
\sdram_controller|refreshCount[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|Add24~48_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(24));

-- Location: LCCOMB_X50_Y28_N20
\sdram_controller|Add24~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add24~50_combout\ = (\sdram_controller|refreshCount\(25) & (!\sdram_controller|Add24~49\)) # (!\sdram_controller|refreshCount\(25) & ((\sdram_controller|Add24~49\) # (GND)))
-- \sdram_controller|Add24~51\ = CARRY((!\sdram_controller|Add24~49\) # (!\sdram_controller|refreshCount\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|refreshCount\(25),
	datad => VCC,
	cin => \sdram_controller|Add24~49\,
	combout => \sdram_controller|Add24~50_combout\,
	cout => \sdram_controller|Add24~51\);

-- Location: FF_X50_Y28_N21
\sdram_controller|refreshCount[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|Add24~50_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(25));

-- Location: LCCOMB_X50_Y28_N22
\sdram_controller|Add24~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add24~52_combout\ = (\sdram_controller|refreshCount\(26) & (\sdram_controller|Add24~51\ $ (GND))) # (!\sdram_controller|refreshCount\(26) & (!\sdram_controller|Add24~51\ & VCC))
-- \sdram_controller|Add24~53\ = CARRY((\sdram_controller|refreshCount\(26) & !\sdram_controller|Add24~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|refreshCount\(26),
	datad => VCC,
	cin => \sdram_controller|Add24~51\,
	combout => \sdram_controller|Add24~52_combout\,
	cout => \sdram_controller|Add24~53\);

-- Location: FF_X50_Y28_N23
\sdram_controller|refreshCount[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|Add24~52_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(26));

-- Location: LCCOMB_X50_Y28_N24
\sdram_controller|Add24~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add24~54_combout\ = (\sdram_controller|refreshCount\(27) & (!\sdram_controller|Add24~53\)) # (!\sdram_controller|refreshCount\(27) & ((\sdram_controller|Add24~53\) # (GND)))
-- \sdram_controller|Add24~55\ = CARRY((!\sdram_controller|Add24~53\) # (!\sdram_controller|refreshCount\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|refreshCount\(27),
	datad => VCC,
	cin => \sdram_controller|Add24~53\,
	combout => \sdram_controller|Add24~54_combout\,
	cout => \sdram_controller|Add24~55\);

-- Location: FF_X50_Y28_N25
\sdram_controller|refreshCount[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|Add24~54_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(27));

-- Location: LCCOMB_X50_Y28_N26
\sdram_controller|Add24~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add24~56_combout\ = (\sdram_controller|refreshCount\(28) & (\sdram_controller|Add24~55\ $ (GND))) # (!\sdram_controller|refreshCount\(28) & (!\sdram_controller|Add24~55\ & VCC))
-- \sdram_controller|Add24~57\ = CARRY((\sdram_controller|refreshCount\(28) & !\sdram_controller|Add24~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|refreshCount\(28),
	datad => VCC,
	cin => \sdram_controller|Add24~55\,
	combout => \sdram_controller|Add24~56_combout\,
	cout => \sdram_controller|Add24~57\);

-- Location: FF_X50_Y28_N27
\sdram_controller|refreshCount[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|Add24~56_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(28));

-- Location: LCCOMB_X50_Y28_N28
\sdram_controller|Add24~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add24~58_combout\ = (\sdram_controller|refreshCount\(29) & (!\sdram_controller|Add24~57\)) # (!\sdram_controller|refreshCount\(29) & ((\sdram_controller|Add24~57\) # (GND)))
-- \sdram_controller|Add24~59\ = CARRY((!\sdram_controller|Add24~57\) # (!\sdram_controller|refreshCount\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|refreshCount\(29),
	datad => VCC,
	cin => \sdram_controller|Add24~57\,
	combout => \sdram_controller|Add24~58_combout\,
	cout => \sdram_controller|Add24~59\);

-- Location: FF_X50_Y28_N29
\sdram_controller|refreshCount[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|Add24~58_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(29));

-- Location: LCCOMB_X50_Y28_N30
\sdram_controller|Add24~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Add24~60_combout\ = \sdram_controller|refreshCount\(30) $ (!\sdram_controller|Add24~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|refreshCount\(30),
	cin => \sdram_controller|Add24~59\,
	combout => \sdram_controller|Add24~60_combout\);

-- Location: FF_X50_Y28_N31
\sdram_controller|refreshCount[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|Add24~60_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshCount\(30));

-- Location: LCCOMB_X49_Y28_N12
\sdram_controller|Equal15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal15~0_combout\ = (!\sdram_controller|refreshCount\(30) & (!\sdram_controller|refreshCount\(29) & (!\sdram_controller|refreshCount\(28) & !\sdram_controller|refreshCount\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|refreshCount\(30),
	datab => \sdram_controller|refreshCount\(29),
	datac => \sdram_controller|refreshCount\(28),
	datad => \sdram_controller|refreshCount\(27),
	combout => \sdram_controller|Equal15~0_combout\);

-- Location: LCCOMB_X49_Y28_N18
\sdram_controller|Equal15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal15~1_combout\ = (!\sdram_controller|refreshCount\(26) & (!\sdram_controller|refreshCount\(24) & (!\sdram_controller|refreshCount\(25) & !\sdram_controller|refreshCount\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|refreshCount\(26),
	datab => \sdram_controller|refreshCount\(24),
	datac => \sdram_controller|refreshCount\(25),
	datad => \sdram_controller|refreshCount\(23),
	combout => \sdram_controller|Equal15~1_combout\);

-- Location: LCCOMB_X49_Y28_N30
\sdram_controller|Equal15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal15~3_combout\ = (!\sdram_controller|refreshCount\(18) & (!\sdram_controller|refreshCount\(15) & (!\sdram_controller|refreshCount\(17) & !\sdram_controller|refreshCount\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|refreshCount\(18),
	datab => \sdram_controller|refreshCount\(15),
	datac => \sdram_controller|refreshCount\(17),
	datad => \sdram_controller|refreshCount\(16),
	combout => \sdram_controller|Equal15~3_combout\);

-- Location: LCCOMB_X49_Y28_N28
\sdram_controller|Equal15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal15~2_combout\ = (!\sdram_controller|refreshCount\(22) & (!\sdram_controller|refreshCount\(21) & (!\sdram_controller|refreshCount\(19) & !\sdram_controller|refreshCount\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|refreshCount\(22),
	datab => \sdram_controller|refreshCount\(21),
	datac => \sdram_controller|refreshCount\(19),
	datad => \sdram_controller|refreshCount\(20),
	combout => \sdram_controller|Equal15~2_combout\);

-- Location: LCCOMB_X49_Y28_N0
\sdram_controller|Equal15~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal15~4_combout\ = (\sdram_controller|Equal15~0_combout\ & (\sdram_controller|Equal15~1_combout\ & (\sdram_controller|Equal15~3_combout\ & \sdram_controller|Equal15~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Equal15~0_combout\,
	datab => \sdram_controller|Equal15~1_combout\,
	datac => \sdram_controller|Equal15~3_combout\,
	datad => \sdram_controller|Equal15~2_combout\,
	combout => \sdram_controller|Equal15~4_combout\);

-- Location: LCCOMB_X50_Y29_N0
\sdram_controller|Equal15~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal15~5_combout\ = (!\sdram_controller|refreshCount\(12) & (!\sdram_controller|refreshCount\(13) & (!\sdram_controller|refreshCount\(14) & !\sdram_controller|refreshCount\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|refreshCount\(12),
	datab => \sdram_controller|refreshCount\(13),
	datac => \sdram_controller|refreshCount\(14),
	datad => \sdram_controller|refreshCount\(11),
	combout => \sdram_controller|Equal15~5_combout\);

-- Location: LCCOMB_X49_Y29_N10
\sdram_controller|Equal15~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal15~6_combout\ = (\sdram_controller|refreshCount\(10) & (!\sdram_controller|refreshCount\(8) & (!\sdram_controller|refreshCount\(9) & !\sdram_controller|refreshCount\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|refreshCount\(10),
	datab => \sdram_controller|refreshCount\(8),
	datac => \sdram_controller|refreshCount\(9),
	datad => \sdram_controller|refreshCount\(7),
	combout => \sdram_controller|Equal15~6_combout\);

-- Location: LCCOMB_X49_Y29_N24
\sdram_controller|Equal15~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal15~9_combout\ = (\sdram_controller|Equal15~8_combout\ & (\sdram_controller|Equal15~4_combout\ & (\sdram_controller|Equal15~5_combout\ & \sdram_controller|Equal15~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Equal15~8_combout\,
	datab => \sdram_controller|Equal15~4_combout\,
	datac => \sdram_controller|Equal15~5_combout\,
	datad => \sdram_controller|Equal15~6_combout\,
	combout => \sdram_controller|Equal15~9_combout\);

-- Location: LCCOMB_X43_Y26_N0
\sdram_controller|refreshPending~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|refreshPending~0_combout\ = (\sdram_controller|refreshPending~q\ & ((!\sdram_controller|Equal15~9_combout\))) # (!\sdram_controller|refreshPending~q\ & (\sdram_controller|controllerState.SDRAM_IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|controllerState.SDRAM_IDLE~q\,
	datac => \sdram_controller|refreshPending~q\,
	datad => \sdram_controller|Equal15~9_combout\,
	combout => \sdram_controller|refreshPending~0_combout\);

-- Location: FF_X43_Y26_N1
\sdram_controller|refreshPending\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|refreshPending~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|refreshPending~q\);

-- Location: LCCOMB_X41_Y25_N14
\sdram_controller|controllerState~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|controllerState~26_combout\ = (\sdram_controller|controllerState.SDRAM_IDLE~q\ & !\sdram_controller|refreshPending~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sdram_controller|controllerState.SDRAM_IDLE~q\,
	datad => \sdram_controller|refreshPending~q\,
	combout => \sdram_controller|controllerState~26_combout\);

-- Location: FF_X41_Y25_N15
\sdram_controller|controllerState.SDRAM_AUTO_REFRESH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|controllerState~26_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|controllerState~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|controllerState.SDRAM_AUTO_REFRESH~q\);

-- Location: LCCOMB_X40_Y25_N12
\sdram_controller|Selector0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector0~3_combout\ = (!\sdram_controller|stateCycleCount\(6) & (\sdram_controller|controllerState.SDRAM_AUTO_REFRESH~q\ & (\sdram_controller|stateCycleCount\(4) & !\sdram_controller|stateCycleCount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(6),
	datab => \sdram_controller|controllerState.SDRAM_AUTO_REFRESH~q\,
	datac => \sdram_controller|stateCycleCount\(4),
	datad => \sdram_controller|stateCycleCount\(1),
	combout => \sdram_controller|Selector0~3_combout\);

-- Location: LCCOMB_X43_Y25_N22
\sdram_controller|Selector0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector0~4_combout\ = (!\sdram_controller|stateCycleCount\(0) & (!\sdram_controller|stateCycleCount\(3) & \sdram_controller|stateCycleCount\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|stateCycleCount\(0),
	datac => \sdram_controller|stateCycleCount\(3),
	datad => \sdram_controller|stateCycleCount\(2),
	combout => \sdram_controller|Selector0~4_combout\);

-- Location: LCCOMB_X42_Y25_N26
\sdram_controller|Selector0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector0~5_combout\ = (!\sdram_controller|stateCycleCount\(5) & (\sdram_controller|Selector0~3_combout\ & (\sdram_controller|process_1~6_combout\ & \sdram_controller|Selector0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(5),
	datab => \sdram_controller|Selector0~3_combout\,
	datac => \sdram_controller|process_1~6_combout\,
	datad => \sdram_controller|Selector0~4_combout\,
	combout => \sdram_controller|Selector0~5_combout\);

-- Location: LCCOMB_X43_Y25_N24
\sdram_controller|addressReg[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|addressReg[0]~0_combout\ = (\sdram_controller|writeBufferEmpty~q\ & (((\sdram_controller|writeAddressReg\(0))))) # (!\sdram_controller|writeBufferEmpty~q\ & ((\state.START_TRANSMISSION~q\) # ((\state.START_RECEIVING~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.START_TRANSMISSION~q\,
	datab => \sdram_controller|writeBufferEmpty~q\,
	datac => \sdram_controller|writeAddressReg\(0),
	datad => \state.START_RECEIVING~q\,
	combout => \sdram_controller|addressReg[0]~0_combout\);

-- Location: LCCOMB_X43_Y25_N8
\sdram_controller|burstLengthReg[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|burstLengthReg[1]~0_combout\ = (\sdram_controller|addressReg[0]~1_combout\ & (\sdram_controller|addressReg[0]~0_combout\)) # (!\sdram_controller|addressReg[0]~1_combout\ & ((\sdram_controller|burstLengthReg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|addressReg[0]~0_combout\,
	datac => \sdram_controller|burstLengthReg\(1),
	datad => \sdram_controller|addressReg[0]~1_combout\,
	combout => \sdram_controller|burstLengthReg[1]~0_combout\);

-- Location: FF_X43_Y25_N9
\sdram_controller|burstLengthReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|burstLengthReg[1]~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|burstLengthReg\(1));

-- Location: LCCOMB_X43_Y25_N14
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

-- Location: FF_X43_Y25_N15
\sdram_controller|burstLengthReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|burstLengthReg[0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|addressReg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|burstLengthReg\(0));

-- Location: LCCOMB_X43_Y25_N2
\sdram_controller|LessThan8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|LessThan8~0_combout\ = (\sdram_controller|stateCycleCount\(1) & (((!\sdram_controller|burstLengthReg\(0) & \sdram_controller|stateCycleCount\(0))) # (!\sdram_controller|burstLengthReg\(1)))) # (!\sdram_controller|stateCycleCount\(1) & 
-- (!\sdram_controller|burstLengthReg\(1) & (!\sdram_controller|burstLengthReg\(0) & \sdram_controller|stateCycleCount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datab => \sdram_controller|burstLengthReg\(1),
	datac => \sdram_controller|burstLengthReg\(0),
	datad => \sdram_controller|stateCycleCount\(0),
	combout => \sdram_controller|LessThan8~0_combout\);

-- Location: LCCOMB_X43_Y25_N12
\sdram_controller|LessThan8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|LessThan8~1_combout\ = (\sdram_controller|stateCycleCount\(2) & (\sdram_controller|LessThan8~0_combout\ & ((\sdram_controller|stateCycleCount\(3)) # (!\sdram_controller|burstLengthReg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(2),
	datab => \sdram_controller|burstLengthReg\(3),
	datac => \sdram_controller|stateCycleCount\(3),
	datad => \sdram_controller|LessThan8~0_combout\,
	combout => \sdram_controller|LessThan8~1_combout\);

-- Location: LCCOMB_X42_Y25_N12
\sdram_controller|LessThan8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|LessThan8~2_combout\ = (\sdram_controller|LessThan8~1_combout\) # (((!\sdram_controller|burstLengthReg\(3) & \sdram_controller|stateCycleCount\(3))) # (!\sdram_controller|Equal1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|burstLengthReg\(3),
	datab => \sdram_controller|stateCycleCount\(3),
	datac => \sdram_controller|LessThan8~1_combout\,
	datad => \sdram_controller|Equal1~3_combout\,
	combout => \sdram_controller|LessThan8~2_combout\);

-- Location: LCCOMB_X42_Y25_N10
\sdram_controller|controllerState~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|controllerState~13_combout\ = (!\sdram_controller|controllerState.SDRAM_AUTO_REFRESH~q\ & ((\sdram_controller|Selector0~2_combout\) # ((!\sdram_controller|controllerState.SDRAM_WRITE~q\ & \sdram_controller|LessThan8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|controllerState.SDRAM_AUTO_REFRESH~q\,
	datab => \sdram_controller|controllerState.SDRAM_WRITE~q\,
	datac => \sdram_controller|Selector0~2_combout\,
	datad => \sdram_controller|LessThan8~2_combout\,
	combout => \sdram_controller|controllerState~13_combout\);

-- Location: LCCOMB_X42_Y25_N4
\sdram_controller|controllerState~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|controllerState~14_combout\ = (!\sdram_controller|controllerState~12_combout\ & ((\sdram_controller|controllerState.SDRAM_INIT~q\) # ((\sdram_controller|Selector0~5_combout\) # (\sdram_controller|controllerState~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|controllerState.SDRAM_INIT~q\,
	datab => \sdram_controller|controllerState~12_combout\,
	datac => \sdram_controller|Selector0~5_combout\,
	datad => \sdram_controller|controllerState~13_combout\,
	combout => \sdram_controller|controllerState~14_combout\);

-- Location: LCCOMB_X43_Y25_N26
\sdram_controller|controllerState~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|controllerState~20_combout\ = (\sdram_controller|controllerState.SDRAM_IDLE~q\ & !\sdram_controller|controllerState.SDRAM_INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sdram_controller|controllerState.SDRAM_IDLE~q\,
	datad => \sdram_controller|controllerState.SDRAM_INIT~q\,
	combout => \sdram_controller|controllerState~20_combout\);

-- Location: LCCOMB_X43_Y25_N16
\sdram_controller|controllerState~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|controllerState~21_combout\ = ((\sdram_controller|controllerState~20_combout\ & ((!\state.START_RECEIVING~q\) # (!\sdram_controller|readBufferEmpty~q\)))) # (!\sdram_controller|controllerState.SDRAM_POWER_UP~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|controllerState~20_combout\,
	datab => \sdram_controller|controllerState.SDRAM_POWER_UP~q\,
	datac => \sdram_controller|readBufferEmpty~q\,
	datad => \state.START_RECEIVING~q\,
	combout => \sdram_controller|controllerState~21_combout\);

-- Location: LCCOMB_X42_Y25_N18
\sdram_controller|controllerState~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|controllerState~22_combout\ = (!\sdram_controller|writeBufferEmpty~q\ & (\sdram_controller|refreshPending~q\ & ((\sdram_controller|controllerState~12_combout\) # (\sdram_controller|controllerState~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferEmpty~q\,
	datab => \sdram_controller|controllerState~12_combout\,
	datac => \sdram_controller|refreshPending~q\,
	datad => \sdram_controller|controllerState~21_combout\,
	combout => \sdram_controller|controllerState~22_combout\);

-- Location: LCCOMB_X42_Y25_N20
\sdram_controller|controllerState~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|controllerState~23_combout\ = (\sdram_controller|controllerState~22_combout\) # ((!\sdram_controller|controllerState.SDRAM_IDLE~q\ & ((!\sdram_controller|controllerState~14_combout\) # 
-- (!\sdram_controller|controllerState.SDRAM_POWER_UP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|controllerState.SDRAM_POWER_UP~q\,
	datab => \sdram_controller|controllerState.SDRAM_IDLE~q\,
	datac => \sdram_controller|controllerState~14_combout\,
	datad => \sdram_controller|controllerState~22_combout\,
	combout => \sdram_controller|controllerState~23_combout\);

-- Location: LCCOMB_X42_Y25_N14
\sdram_controller|controllerState~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|controllerState~24_combout\ = (\sdram_controller|controllerState~15_combout\ & ((\sdram_controller|controllerState.SDRAM_ACTIVATE_ROW~q\) # ((\sdram_controller|Selector0~1_combout\) # (!\sdram_controller|controllerState~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|controllerState.SDRAM_ACTIVATE_ROW~q\,
	datab => \sdram_controller|Selector0~1_combout\,
	datac => \sdram_controller|controllerState~15_combout\,
	datad => \sdram_controller|controllerState~23_combout\,
	combout => \sdram_controller|controllerState~24_combout\);

-- Location: FF_X42_Y25_N7
\sdram_controller|controllerState.SDRAM_WRITE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|controllerState~25_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|controllerState~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|controllerState.SDRAM_WRITE~q\);

-- Location: LCCOMB_X43_Y25_N18
\sdram_controller|Selector27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector27~0_combout\ = (\sdram_controller|stateCycleCount\(1) & (((!\sdram_controller|burstLengthReg\(0) & \sdram_controller|stateCycleCount\(0))) # (!\sdram_controller|burstLengthReg\(1)))) # (!\sdram_controller|stateCycleCount\(1) & 
-- (!\sdram_controller|burstLengthReg\(1) & (!\sdram_controller|burstLengthReg\(0) & \sdram_controller|stateCycleCount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datab => \sdram_controller|burstLengthReg\(1),
	datac => \sdram_controller|burstLengthReg\(0),
	datad => \sdram_controller|stateCycleCount\(0),
	combout => \sdram_controller|Selector27~0_combout\);

-- Location: LCCOMB_X43_Y25_N0
\sdram_controller|Selector27~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector27~1_combout\ = (\sdram_controller|burstLengthReg\(3) & (\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|stateCycleCount\(2)) # (\sdram_controller|Selector27~0_combout\)))) # (!\sdram_controller|burstLengthReg\(3) & 
-- ((\sdram_controller|stateCycleCount\(2)) # ((\sdram_controller|stateCycleCount\(3)) # (\sdram_controller|Selector27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(2),
	datab => \sdram_controller|burstLengthReg\(3),
	datac => \sdram_controller|stateCycleCount\(3),
	datad => \sdram_controller|Selector27~0_combout\,
	combout => \sdram_controller|Selector27~1_combout\);

-- Location: LCCOMB_X42_Y27_N4
\sdram_controller|writeBufferEmpty~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBufferEmpty~1_combout\ = (!\sdram_controller|writeBufferEmpty~0_combout\ & (((!\sdram_controller|Selector27~1_combout\ & \sdram_controller|Equal1~3_combout\)) # (!\sdram_controller|controllerState.SDRAM_WRITE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferEmpty~0_combout\,
	datab => \sdram_controller|controllerState.SDRAM_WRITE~q\,
	datac => \sdram_controller|Selector27~1_combout\,
	datad => \sdram_controller|Equal1~3_combout\,
	combout => \sdram_controller|writeBufferEmpty~1_combout\);

-- Location: FF_X42_Y27_N5
\sdram_controller|writeBufferEmpty\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBufferEmpty~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBufferEmpty~q\);

-- Location: LCCOMB_X41_Y25_N10
\sdram_controller|controllerState~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|controllerState~16_combout\ = (!\sdram_controller|controllerState.SDRAM_POWER_UP~q\ & (\sdram_controller|Equal1~3_combout\ & ((!\sdram_controller|stateCycleCount\(1)) # (!\sdram_controller|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|controllerState.SDRAM_POWER_UP~q\,
	datab => \sdram_controller|LessThan0~0_combout\,
	datac => \sdram_controller|stateCycleCount\(1),
	datad => \sdram_controller|Equal1~3_combout\,
	combout => \sdram_controller|controllerState~16_combout\);

-- Location: LCCOMB_X40_Y25_N20
\sdram_controller|controllerState.SDRAM_IDLE~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|controllerState.SDRAM_IDLE~2_combout\ = (!\sdram_controller|controllerState.SDRAM_IDLE~q\ & (!\sdram_controller|controllerState.SDRAM_ACTIVATE_ROW~q\ & \sdram_controller|controllerState.SDRAM_POWER_UP~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|controllerState.SDRAM_IDLE~q\,
	datac => \sdram_controller|controllerState.SDRAM_ACTIVATE_ROW~q\,
	datad => \sdram_controller|controllerState.SDRAM_POWER_UP~q\,
	combout => \sdram_controller|controllerState.SDRAM_IDLE~2_combout\);

-- Location: LCCOMB_X41_Y25_N0
\sdram_controller|controllerState~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|controllerState~17_combout\ = (\sdram_controller|controllerState~16_combout\) # (((\sdram_controller|controllerState.SDRAM_IDLE~2_combout\ & !\sdram_controller|controllerState~14_combout\)) # 
-- (!\sdram_controller|controllerState~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|controllerState~16_combout\,
	datab => \sdram_controller|controllerState.SDRAM_IDLE~2_combout\,
	datac => \sdram_controller|controllerState~15_combout\,
	datad => \sdram_controller|controllerState~14_combout\,
	combout => \sdram_controller|controllerState~17_combout\);

-- Location: LCCOMB_X41_Y25_N2
\sdram_controller|controllerState~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|controllerState~18_combout\ = (!\sdram_controller|controllerState~17_combout\ & (((\sdram_controller|writeBufferEmpty~q\) # (\sdram_controller|readDeviceIndexReg[0]~1_combout\)) # (!\sdram_controller|readDeviceIndexReg[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|readDeviceIndexReg[0]~0_combout\,
	datab => \sdram_controller|writeBufferEmpty~q\,
	datac => \sdram_controller|readDeviceIndexReg[0]~1_combout\,
	datad => \sdram_controller|controllerState~17_combout\,
	combout => \sdram_controller|controllerState~18_combout\);

-- Location: FF_X41_Y25_N7
\sdram_controller|controllerState.SDRAM_POWER_UP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|controllerState.SDRAM_POWER_UP~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|controllerState~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|controllerState.SDRAM_POWER_UP~q\);

-- Location: LCCOMB_X41_Y25_N4
\sdram_controller|controllerState.SDRAM_IDLE~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|controllerState.SDRAM_IDLE~3_combout\ = (\sdram_controller|controllerState.SDRAM_IDLE~q\ & (((!\sdram_controller|controllerState~18_combout\)))) # (!\sdram_controller|controllerState.SDRAM_IDLE~q\ & 
-- (\sdram_controller|controllerState.SDRAM_POWER_UP~q\ & (!\sdram_controller|controllerState.SDRAM_ACTIVATE_ROW~q\ & \sdram_controller|controllerState~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|controllerState.SDRAM_POWER_UP~q\,
	datab => \sdram_controller|controllerState.SDRAM_ACTIVATE_ROW~q\,
	datac => \sdram_controller|controllerState.SDRAM_IDLE~q\,
	datad => \sdram_controller|controllerState~18_combout\,
	combout => \sdram_controller|controllerState.SDRAM_IDLE~3_combout\);

-- Location: FF_X41_Y25_N5
\sdram_controller|controllerState.SDRAM_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|controllerState.SDRAM_IDLE~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|controllerState.SDRAM_IDLE~q\);

-- Location: LCCOMB_X41_Y25_N12
\sdram_controller|readDeviceIndexReg[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readDeviceIndexReg[0]~0_combout\ = (\sdram_controller|controllerState.SDRAM_IDLE~q\ & \sdram_controller|refreshPending~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sdram_controller|controllerState.SDRAM_IDLE~q\,
	datad => \sdram_controller|refreshPending~q\,
	combout => \sdram_controller|readDeviceIndexReg[0]~0_combout\);

-- Location: FF_X41_Y25_N13
\sdram_controller|controllerState.SDRAM_ACTIVATE_ROW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|readDeviceIndexReg[0]~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|controllerState~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|controllerState.SDRAM_ACTIVATE_ROW~q\);

-- Location: LCCOMB_X42_Y25_N0
\sdram_controller|controllerState~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|controllerState~19_combout\ = (\sdram_controller|controllerState.SDRAM_ACTIVATE_ROW~q\ & \sdram_controller|memOperationReg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|controllerState.SDRAM_ACTIVATE_ROW~q\,
	datad => \sdram_controller|memOperationReg~q\,
	combout => \sdram_controller|controllerState~19_combout\);

-- Location: FF_X42_Y25_N1
\sdram_controller|controllerState.SDRAM_READ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|controllerState~19_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|controllerState~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|controllerState.SDRAM_READ~q\);

-- Location: LCCOMB_X43_Y24_N30
\sdram_controller|readBufferEmpty~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferEmpty~3_combout\ = (\sdram_controller|readBufferEmpty~q\) # ((\sdram_controller|readBufferState~q\ & !\sdram_controller|LessThan18~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|readBufferState~q\,
	datac => \sdram_controller|LessThan18~3_combout\,
	datad => \sdram_controller|readBufferEmpty~q\,
	combout => \sdram_controller|readBufferEmpty~3_combout\);

-- Location: LCCOMB_X43_Y25_N10
\sdram_controller|readBufferEmpty~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferEmpty~0_combout\ = (\sdram_controller|burstLengthReg\(0) & !\sdram_controller|stateCycleCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sdram_controller|burstLengthReg\(0),
	datad => \sdram_controller|stateCycleCount\(0),
	combout => \sdram_controller|readBufferEmpty~0_combout\);

-- Location: LCCOMB_X43_Y25_N28
\sdram_controller|readBufferEmpty~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferEmpty~1_combout\ = (\sdram_controller|stateCycleCount\(2) & (((\sdram_controller|stateCycleCount\(1)) # (!\sdram_controller|readBufferEmpty~0_combout\)) # (!\sdram_controller|burstLengthReg\(1)))) # 
-- (!\sdram_controller|stateCycleCount\(2) & (!\sdram_controller|burstLengthReg\(1) & (\sdram_controller|stateCycleCount\(1) & !\sdram_controller|readBufferEmpty~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(2),
	datab => \sdram_controller|burstLengthReg\(1),
	datac => \sdram_controller|stateCycleCount\(1),
	datad => \sdram_controller|readBufferEmpty~0_combout\,
	combout => \sdram_controller|readBufferEmpty~1_combout\);

-- Location: LCCOMB_X43_Y25_N30
\sdram_controller|readBufferEmpty~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferEmpty~2_combout\ = (\sdram_controller|burstLengthReg\(3) & ((!\sdram_controller|readBufferEmpty~1_combout\) # (!\sdram_controller|stateCycleCount\(3)))) # (!\sdram_controller|burstLengthReg\(3) & 
-- (!\sdram_controller|stateCycleCount\(3) & !\sdram_controller|readBufferEmpty~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|burstLengthReg\(3),
	datac => \sdram_controller|stateCycleCount\(3),
	datad => \sdram_controller|readBufferEmpty~1_combout\,
	combout => \sdram_controller|readBufferEmpty~2_combout\);

-- Location: LCCOMB_X42_Y27_N30
\sdram_controller|readBufferEmpty~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|readBufferEmpty~4_combout\ = (\sdram_controller|readBufferEmpty~3_combout\ & (((\sdram_controller|Equal1~3_combout\ & \sdram_controller|readBufferEmpty~2_combout\)) # (!\sdram_controller|controllerState.SDRAM_READ~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|controllerState.SDRAM_READ~q\,
	datab => \sdram_controller|Equal1~3_combout\,
	datac => \sdram_controller|readBufferEmpty~3_combout\,
	datad => \sdram_controller|readBufferEmpty~2_combout\,
	combout => \sdram_controller|readBufferEmpty~4_combout\);

-- Location: FF_X42_Y27_N31
\sdram_controller|readBufferEmpty\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|readBufferEmpty~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|readBufferEmpty~q\);

-- Location: LCCOMB_X41_Y27_N4
\Selector6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~2_combout\ = (!\sdram_controller|readBufferEmpty~q\ & (\state.START_RECEIVING~q\ & !\sdram_controller|readBufferState~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|readBufferEmpty~q\,
	datab => \state.START_RECEIVING~q\,
	datad => \sdram_controller|readBufferState~q\,
	combout => \Selector6~2_combout\);

-- Location: LCCOMB_X40_Y28_N28
\Selector0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~3_combout\ = (transmitCount(5)) # (transmitCount(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => transmitCount(5),
	datac => transmitCount(4),
	combout => \Selector0~3_combout\);

-- Location: LCCOMB_X41_Y27_N12
\Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\sdram_controller|SDRAM_Ready[0]~0_combout\ & (((!\Selector0~0_combout\ & !\Selector0~3_combout\)) # (!\state.TRANSMIT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|SDRAM_Ready[0]~0_combout\,
	datab => \state.TRANSMIT~q\,
	datac => \Selector0~0_combout\,
	datad => \Selector0~3_combout\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X41_Y27_N26
\Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (!\Selector6~2_combout\ & (\Selector1~0_combout\ & ((\state.START_TRANSMISSION~q\) # (!\state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~2_combout\,
	datab => \state.IDLE~q\,
	datac => \state.START_TRANSMISSION~q\,
	datad => \Selector1~0_combout\,
	combout => \Selector1~1_combout\);

-- Location: FF_X41_Y27_N27
\state.START_TRANSMISSION\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \Selector1~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.START_TRANSMISSION~q\);

-- Location: LCCOMB_X43_Y25_N20
\address[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- address(0) = (\state.START_TRANSMISSION~q\) # (\state.START_RECEIVING~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.START_TRANSMISSION~q\,
	datad => \state.START_RECEIVING~q\,
	combout => address(0));

-- Location: FF_X43_Y25_N21
\sdram_controller|burstLengthReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => address(0),
	asdata => \sdram_controller|writeAddressReg\(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \sdram_controller|writeBufferEmpty~q\,
	ena => \sdram_controller|addressReg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|burstLengthReg\(3));

-- Location: LCCOMB_X43_Y25_N6
\sdram_controller|LessThan7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|LessThan7~0_combout\ = (\sdram_controller|stateCycleCount\(1) & (\sdram_controller|burstLengthReg\(1) & (\sdram_controller|burstLengthReg\(0) & !\sdram_controller|stateCycleCount\(0)))) # (!\sdram_controller|stateCycleCount\(1) & 
-- ((\sdram_controller|burstLengthReg\(1)) # ((\sdram_controller|burstLengthReg\(0) & !\sdram_controller|stateCycleCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datab => \sdram_controller|burstLengthReg\(1),
	datac => \sdram_controller|burstLengthReg\(0),
	datad => \sdram_controller|stateCycleCount\(0),
	combout => \sdram_controller|LessThan7~0_combout\);

-- Location: LCCOMB_X43_Y25_N4
\sdram_controller|LessThan7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|LessThan7~1_combout\ = (\sdram_controller|burstLengthReg\(3) & (((\sdram_controller|LessThan7~0_combout\) # (!\sdram_controller|stateCycleCount\(3))) # (!\sdram_controller|stateCycleCount\(2)))) # (!\sdram_controller|burstLengthReg\(3) & 
-- (!\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|LessThan7~0_combout\) # (!\sdram_controller|stateCycleCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(2),
	datab => \sdram_controller|burstLengthReg\(3),
	datac => \sdram_controller|stateCycleCount\(3),
	datad => \sdram_controller|LessThan7~0_combout\,
	combout => \sdram_controller|LessThan7~1_combout\);

-- Location: LCCOMB_X42_Y25_N22
\sdram_controller|Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector0~2_combout\ = (\sdram_controller|controllerState.SDRAM_WRITE~q\ & ((!\sdram_controller|Equal1~3_combout\) # (!\sdram_controller|LessThan7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|LessThan7~1_combout\,
	datac => \sdram_controller|controllerState.SDRAM_WRITE~q\,
	datad => \sdram_controller|Equal1~3_combout\,
	combout => \sdram_controller|Selector0~2_combout\);

-- Location: LCCOMB_X42_Y24_N0
\sdram_controller|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector0~0_combout\ = (\sdram_controller|stateCycleCount\(1) & (\sdram_controller|controllerState.SDRAM_ACTIVATE_ROW~q\ & \sdram_controller|Equal1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datac => \sdram_controller|controllerState.SDRAM_ACTIVATE_ROW~q\,
	datad => \sdram_controller|Equal1~4_combout\,
	combout => \sdram_controller|Selector0~0_combout\);

-- Location: LCCOMB_X42_Y25_N8
\sdram_controller|Selector0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector0~6_combout\ = (\sdram_controller|controllerState.SDRAM_INIT~q\ & (((\sdram_controller|stateCycleCount\(6) & !\sdram_controller|LessThan1~0_combout\)) # (!\sdram_controller|process_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|controllerState.SDRAM_INIT~q\,
	datab => \sdram_controller|stateCycleCount\(6),
	datac => \sdram_controller|process_1~6_combout\,
	datad => \sdram_controller|LessThan1~0_combout\,
	combout => \sdram_controller|Selector0~6_combout\);

-- Location: LCCOMB_X42_Y27_N10
\sdram_controller|Selector0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector0~7_combout\ = (\sdram_controller|refreshPending~q\ & ((!\state.START_RECEIVING~q\) # (!\sdram_controller|readBufferEmpty~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|refreshPending~q\,
	datac => \sdram_controller|readBufferEmpty~q\,
	datad => \state.START_RECEIVING~q\,
	combout => \sdram_controller|Selector0~7_combout\);

-- Location: LCCOMB_X42_Y25_N2
\sdram_controller|Selector0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector0~8_combout\ = (\sdram_controller|Selector0~6_combout\) # ((\sdram_controller|controllerState.SDRAM_IDLE~q\ & ((\sdram_controller|writeBufferEmpty~q\) # (!\sdram_controller|Selector0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferEmpty~q\,
	datab => \sdram_controller|controllerState.SDRAM_IDLE~q\,
	datac => \sdram_controller|Selector0~6_combout\,
	datad => \sdram_controller|Selector0~7_combout\,
	combout => \sdram_controller|Selector0~8_combout\);

-- Location: LCCOMB_X42_Y25_N24
\sdram_controller|Selector0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector0~9_combout\ = (\sdram_controller|Selector0~5_combout\) # ((\sdram_controller|Selector0~8_combout\) # ((\sdram_controller|LessThan8~2_combout\ & \sdram_controller|controllerState.SDRAM_READ~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|LessThan8~2_combout\,
	datab => \sdram_controller|controllerState.SDRAM_READ~q\,
	datac => \sdram_controller|Selector0~5_combout\,
	datad => \sdram_controller|Selector0~8_combout\,
	combout => \sdram_controller|Selector0~9_combout\);

-- Location: LCCOMB_X42_Y25_N30
\sdram_controller|Selector0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector0~10_combout\ = (\sdram_controller|Selector0~2_combout\) # ((\sdram_controller|Selector0~1_combout\) # ((\sdram_controller|Selector0~0_combout\) # (\sdram_controller|Selector0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Selector0~2_combout\,
	datab => \sdram_controller|Selector0~1_combout\,
	datac => \sdram_controller|Selector0~0_combout\,
	datad => \sdram_controller|Selector0~9_combout\,
	combout => \sdram_controller|Selector0~10_combout\);

-- Location: FF_X41_Y25_N17
\sdram_controller|stateCycleCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \sdram_controller|stateCycleCount[0]~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \sdram_controller|Selector0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|stateCycleCount\(0));

-- Location: LCCOMB_X38_Y28_N18
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = transmitCount(0) $ (VCC)
-- \Add0~1\ = CARRY(transmitCount(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => transmitCount(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X39_Y28_N2
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\state.TRANSMIT~q\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.TRANSMIT~q\,
	datad => \Add0~0_combout\,
	combout => \Add0~2_combout\);

-- Location: LCCOMB_X41_Y27_N0
\sdram_controller|Decoder3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~0_combout\ = (\enable~input_o\ & \sdram_controller|writeBufferState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datad => \sdram_controller|writeBufferState~q\,
	combout => \sdram_controller|Decoder3~0_combout\);

-- Location: LCCOMB_X41_Y27_N22
\sdram_controller|Decoder3~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~47_combout\ = (!\sdram_controller|writeBufferWriteCount\(4) & (!\sdram_controller|writeBufferWriteCount\(3) & (!\sdram_controller|writeBufferWriteCount\(1) & \sdram_controller|writeBufferWriteCount\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(4),
	datab => \sdram_controller|writeBufferWriteCount\(3),
	datac => \sdram_controller|writeBufferWriteCount\(1),
	datad => \sdram_controller|writeBufferWriteCount\(5),
	combout => \sdram_controller|Decoder3~47_combout\);

-- Location: LCCOMB_X37_Y26_N10
\sdram_controller|Decoder3~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~48_combout\ = (!\sdram_controller|writeBufferWriteCount\(2) & (\sdram_controller|Decoder3~0_combout\ & (\sdram_controller|Decoder3~47_combout\ & !\sdram_controller|writeBufferWriteCount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(2),
	datab => \sdram_controller|Decoder3~0_combout\,
	datac => \sdram_controller|Decoder3~47_combout\,
	datad => \sdram_controller|writeBufferWriteCount\(0),
	combout => \sdram_controller|Decoder3~48_combout\);

-- Location: FF_X37_Y26_N5
\sdram_controller|writeBuffer[65][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[65][0]~q\);

-- Location: LCCOMB_X42_Y26_N2
\sdram_controller|writeBuffer[81][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[81][0]~feeder_combout\ = \Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~2_combout\,
	combout => \sdram_controller|writeBuffer[81][0]~feeder_combout\);

-- Location: LCCOMB_X41_Y26_N30
\sdram_controller|Decoder3~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~45_combout\ = (!\sdram_controller|writeBufferWriteCount\(0) & (!\sdram_controller|writeBufferWriteCount\(1) & (!\sdram_controller|writeBufferWriteCount\(2) & \sdram_controller|Decoder3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(0),
	datab => \sdram_controller|writeBufferWriteCount\(1),
	datac => \sdram_controller|writeBufferWriteCount\(2),
	datad => \sdram_controller|Decoder3~0_combout\,
	combout => \sdram_controller|Decoder3~45_combout\);

-- Location: LCCOMB_X41_Y26_N24
\sdram_controller|Decoder3~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~46_combout\ = (\sdram_controller|Decoder3~45_combout\ & (\sdram_controller|writeBufferWriteCount\(3) & (\sdram_controller|writeBufferWriteCount\(5) & !\sdram_controller|writeBufferWriteCount\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Decoder3~45_combout\,
	datab => \sdram_controller|writeBufferWriteCount\(3),
	datac => \sdram_controller|writeBufferWriteCount\(5),
	datad => \sdram_controller|writeBufferWriteCount\(4),
	combout => \sdram_controller|Decoder3~46_combout\);

-- Location: FF_X42_Y26_N3
\sdram_controller|writeBuffer[81][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[81][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[81][0]~q\);

-- Location: LCCOMB_X37_Y26_N4
\sdram_controller|Mux31~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux31~20_combout\ = (\sdram_controller|stateCycleCount\(3) & (\sdram_controller|stateCycleCount\(4))) # (!\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|stateCycleCount\(4) & ((\sdram_controller|writeBuffer[81][0]~q\))) # 
-- (!\sdram_controller|stateCycleCount\(4) & (\sdram_controller|writeBuffer[65][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(3),
	datab => \sdram_controller|stateCycleCount\(4),
	datac => \sdram_controller|writeBuffer[65][0]~q\,
	datad => \sdram_controller|writeBuffer[81][0]~q\,
	combout => \sdram_controller|Mux31~20_combout\);

-- Location: LCCOMB_X39_Y29_N4
\sdram_controller|writeBuffer[73][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[73][0]~feeder_combout\ = \Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~2_combout\,
	combout => \sdram_controller|writeBuffer[73][0]~feeder_combout\);

-- Location: LCCOMB_X40_Y29_N18
\sdram_controller|Decoder3~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~43_combout\ = (\sdram_controller|writeBufferWriteCount\(5) & (!\sdram_controller|writeBufferWriteCount\(1) & (\sdram_controller|writeBufferWriteCount\(2) & !\sdram_controller|writeBufferWriteCount\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(5),
	datab => \sdram_controller|writeBufferWriteCount\(1),
	datac => \sdram_controller|writeBufferWriteCount\(2),
	datad => \sdram_controller|writeBufferWriteCount\(4),
	combout => \sdram_controller|Decoder3~43_combout\);

-- Location: LCCOMB_X40_Y29_N16
\sdram_controller|Decoder3~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~44_combout\ = (!\sdram_controller|writeBufferWriteCount\(3) & (!\sdram_controller|writeBufferWriteCount\(0) & (\sdram_controller|Decoder3~0_combout\ & \sdram_controller|Decoder3~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(3),
	datab => \sdram_controller|writeBufferWriteCount\(0),
	datac => \sdram_controller|Decoder3~0_combout\,
	datad => \sdram_controller|Decoder3~43_combout\,
	combout => \sdram_controller|Decoder3~44_combout\);

-- Location: FF_X39_Y29_N5
\sdram_controller|writeBuffer[73][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[73][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[73][0]~q\);

-- Location: LCCOMB_X42_Y29_N10
\sdram_controller|Decoder3~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~49_combout\ = (\sdram_controller|writeBufferWriteCount\(5) & (\sdram_controller|writeBufferWriteCount\(2) & (!\sdram_controller|writeBufferWriteCount\(0) & !\sdram_controller|writeBufferWriteCount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(5),
	datab => \sdram_controller|writeBufferWriteCount\(2),
	datac => \sdram_controller|writeBufferWriteCount\(0),
	datad => \sdram_controller|writeBufferWriteCount\(1),
	combout => \sdram_controller|Decoder3~49_combout\);

-- Location: LCCOMB_X42_Y29_N8
\sdram_controller|Decoder3~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~50_combout\ = (!\sdram_controller|writeBufferWriteCount\(4) & (\sdram_controller|writeBufferWriteCount\(3) & (\sdram_controller|Decoder3~0_combout\ & \sdram_controller|Decoder3~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(4),
	datab => \sdram_controller|writeBufferWriteCount\(3),
	datac => \sdram_controller|Decoder3~0_combout\,
	datad => \sdram_controller|Decoder3~49_combout\,
	combout => \sdram_controller|Decoder3~50_combout\);

-- Location: FF_X42_Y26_N21
\sdram_controller|writeBuffer[89][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[89][0]~q\);

-- Location: LCCOMB_X42_Y26_N20
\sdram_controller|Mux31~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux31~21_combout\ = (\sdram_controller|Mux31~20_combout\ & (((\sdram_controller|writeBuffer[89][0]~q\) # (!\sdram_controller|stateCycleCount\(3))))) # (!\sdram_controller|Mux31~20_combout\ & (\sdram_controller|writeBuffer[73][0]~q\ & 
-- ((\sdram_controller|stateCycleCount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux31~20_combout\,
	datab => \sdram_controller|writeBuffer[73][0]~q\,
	datac => \sdram_controller|writeBuffer[89][0]~q\,
	datad => \sdram_controller|stateCycleCount\(3),
	combout => \sdram_controller|Mux31~21_combout\);

-- Location: LCCOMB_X43_Y29_N30
\sdram_controller|writeBuffer[105][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[105][0]~feeder_combout\ = \Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~2_combout\,
	combout => \sdram_controller|writeBuffer[105][0]~feeder_combout\);

-- Location: LCCOMB_X42_Y29_N28
\sdram_controller|Decoder3~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~57_combout\ = (!\sdram_controller|writeBufferWriteCount\(1) & (!\sdram_controller|writeBufferWriteCount\(0) & (\sdram_controller|Decoder3~0_combout\ & \sdram_controller|writeBufferWriteCount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(1),
	datab => \sdram_controller|writeBufferWriteCount\(0),
	datac => \sdram_controller|Decoder3~0_combout\,
	datad => \sdram_controller|writeBufferWriteCount\(2),
	combout => \sdram_controller|Decoder3~57_combout\);

-- Location: LCCOMB_X42_Y29_N18
\sdram_controller|Decoder3~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~62_combout\ = (\sdram_controller|writeBufferWriteCount\(4) & (!\sdram_controller|writeBufferWriteCount\(3) & (\sdram_controller|writeBufferWriteCount\(5) & \sdram_controller|Decoder3~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(4),
	datab => \sdram_controller|writeBufferWriteCount\(3),
	datac => \sdram_controller|writeBufferWriteCount\(5),
	datad => \sdram_controller|Decoder3~57_combout\,
	combout => \sdram_controller|Decoder3~62_combout\);

-- Location: FF_X43_Y29_N31
\sdram_controller|writeBuffer[105][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[105][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[105][0]~q\);

-- Location: LCCOMB_X42_Y29_N12
\sdram_controller|Decoder3~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~66_combout\ = (\sdram_controller|writeBufferWriteCount\(4) & (\sdram_controller|writeBufferWriteCount\(3) & (\sdram_controller|writeBufferWriteCount\(5) & \sdram_controller|Decoder3~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(4),
	datab => \sdram_controller|writeBufferWriteCount\(3),
	datac => \sdram_controller|writeBufferWriteCount\(5),
	datad => \sdram_controller|Decoder3~57_combout\,
	combout => \sdram_controller|Decoder3~66_combout\);

-- Location: FF_X42_Y29_N17
\sdram_controller|writeBuffer[121][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[121][0]~q\);

-- Location: LCCOMB_X37_Y27_N0
\sdram_controller|Decoder3~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~64_combout\ = (!\sdram_controller|writeBufferWriteCount\(3) & (!\sdram_controller|writeBufferWriteCount\(1) & (!\sdram_controller|writeBufferWriteCount\(2) & \sdram_controller|writeBufferWriteCount\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(3),
	datab => \sdram_controller|writeBufferWriteCount\(1),
	datac => \sdram_controller|writeBufferWriteCount\(2),
	datad => \sdram_controller|writeBufferWriteCount\(5),
	combout => \sdram_controller|Decoder3~64_combout\);

-- Location: LCCOMB_X37_Y27_N30
\sdram_controller|Decoder3~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~65_combout\ = (\sdram_controller|writeBufferWriteCount\(4) & (!\sdram_controller|writeBufferWriteCount\(0) & (\sdram_controller|Decoder3~0_combout\ & \sdram_controller|Decoder3~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(4),
	datab => \sdram_controller|writeBufferWriteCount\(0),
	datac => \sdram_controller|Decoder3~0_combout\,
	datad => \sdram_controller|Decoder3~64_combout\,
	combout => \sdram_controller|Decoder3~65_combout\);

-- Location: FF_X37_Y26_N23
\sdram_controller|writeBuffer[97][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[97][0]~q\);

-- Location: LCCOMB_X41_Y26_N28
\sdram_controller|writeBuffer[113][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[113][0]~feeder_combout\ = \Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~2_combout\,
	combout => \sdram_controller|writeBuffer[113][0]~feeder_combout\);

-- Location: LCCOMB_X41_Y26_N18
\sdram_controller|Decoder3~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~63_combout\ = (\sdram_controller|Decoder3~45_combout\ & (\sdram_controller|writeBufferWriteCount\(3) & (\sdram_controller|writeBufferWriteCount\(5) & \sdram_controller|writeBufferWriteCount\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Decoder3~45_combout\,
	datab => \sdram_controller|writeBufferWriteCount\(3),
	datac => \sdram_controller|writeBufferWriteCount\(5),
	datad => \sdram_controller|writeBufferWriteCount\(4),
	combout => \sdram_controller|Decoder3~63_combout\);

-- Location: FF_X41_Y26_N29
\sdram_controller|writeBuffer[113][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[113][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[113][0]~q\);

-- Location: LCCOMB_X37_Y26_N22
\sdram_controller|Mux31~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux31~27_combout\ = (\sdram_controller|stateCycleCount\(3) & (\sdram_controller|stateCycleCount\(4))) # (!\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|stateCycleCount\(4) & ((\sdram_controller|writeBuffer[113][0]~q\))) # 
-- (!\sdram_controller|stateCycleCount\(4) & (\sdram_controller|writeBuffer[97][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(3),
	datab => \sdram_controller|stateCycleCount\(4),
	datac => \sdram_controller|writeBuffer[97][0]~q\,
	datad => \sdram_controller|writeBuffer[113][0]~q\,
	combout => \sdram_controller|Mux31~27_combout\);

-- Location: LCCOMB_X42_Y29_N16
\sdram_controller|Mux31~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux31~28_combout\ = (\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|Mux31~27_combout\ & ((\sdram_controller|writeBuffer[121][0]~q\))) # (!\sdram_controller|Mux31~27_combout\ & (\sdram_controller|writeBuffer[105][0]~q\)))) # 
-- (!\sdram_controller|stateCycleCount\(3) & (((\sdram_controller|Mux31~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[105][0]~q\,
	datab => \sdram_controller|stateCycleCount\(3),
	datac => \sdram_controller|writeBuffer[121][0]~q\,
	datad => \sdram_controller|Mux31~27_combout\,
	combout => \sdram_controller|Mux31~28_combout\);

-- Location: LCCOMB_X39_Y29_N10
\sdram_controller|writeBuffer[9][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[9][0]~feeder_combout\ = \Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~2_combout\,
	combout => \sdram_controller|writeBuffer[9][0]~feeder_combout\);

-- Location: LCCOMB_X39_Y29_N14
\sdram_controller|Decoder3~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~58_combout\ = (!\sdram_controller|writeBufferWriteCount\(4) & (!\sdram_controller|writeBufferWriteCount\(3) & (!\sdram_controller|writeBufferWriteCount\(5) & \sdram_controller|Decoder3~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(4),
	datab => \sdram_controller|writeBufferWriteCount\(3),
	datac => \sdram_controller|writeBufferWriteCount\(5),
	datad => \sdram_controller|Decoder3~57_combout\,
	combout => \sdram_controller|Decoder3~58_combout\);

-- Location: FF_X39_Y29_N11
\sdram_controller|writeBuffer[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[9][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[9][0]~q\);

-- Location: LCCOMB_X42_Y28_N30
\sdram_controller|Decoder3~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~61_combout\ = (\sdram_controller|writeBufferWriteCount\(3) & (!\sdram_controller|writeBufferWriteCount\(5) & (\sdram_controller|Decoder3~57_combout\ & !\sdram_controller|writeBufferWriteCount\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(3),
	datab => \sdram_controller|writeBufferWriteCount\(5),
	datac => \sdram_controller|Decoder3~57_combout\,
	datad => \sdram_controller|writeBufferWriteCount\(4),
	combout => \sdram_controller|Decoder3~61_combout\);

-- Location: FF_X42_Y28_N3
\sdram_controller|writeBuffer[25][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[25][0]~q\);

-- Location: LCCOMB_X38_Y26_N18
\sdram_controller|Decoder3~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~60_combout\ = (!\sdram_controller|writeBufferWriteCount\(4) & (!\sdram_controller|writeBufferWriteCount\(3) & (!\sdram_controller|writeBufferWriteCount\(5) & \sdram_controller|Decoder3~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(4),
	datab => \sdram_controller|writeBufferWriteCount\(3),
	datac => \sdram_controller|writeBufferWriteCount\(5),
	datad => \sdram_controller|Decoder3~45_combout\,
	combout => \sdram_controller|Decoder3~60_combout\);

-- Location: FF_X38_Y26_N27
\sdram_controller|writeBuffer[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[1][0]~q\);

-- Location: LCCOMB_X40_Y30_N22
\sdram_controller|writeBuffer[17][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[17][0]~feeder_combout\ = \Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~2_combout\,
	combout => \sdram_controller|writeBuffer[17][0]~feeder_combout\);

-- Location: LCCOMB_X40_Y30_N14
\sdram_controller|Decoder3~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~59_combout\ = (\sdram_controller|writeBufferWriteCount\(3) & (!\sdram_controller|writeBufferWriteCount\(4) & (!\sdram_controller|writeBufferWriteCount\(5) & \sdram_controller|Decoder3~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(3),
	datab => \sdram_controller|writeBufferWriteCount\(4),
	datac => \sdram_controller|writeBufferWriteCount\(5),
	datad => \sdram_controller|Decoder3~45_combout\,
	combout => \sdram_controller|Decoder3~59_combout\);

-- Location: FF_X40_Y30_N23
\sdram_controller|writeBuffer[17][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[17][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[17][0]~q\);

-- Location: LCCOMB_X38_Y26_N26
\sdram_controller|Mux31~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux31~24_combout\ = (\sdram_controller|stateCycleCount\(3) & (\sdram_controller|stateCycleCount\(4))) # (!\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|stateCycleCount\(4) & ((\sdram_controller|writeBuffer[17][0]~q\))) # 
-- (!\sdram_controller|stateCycleCount\(4) & (\sdram_controller|writeBuffer[1][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(3),
	datab => \sdram_controller|stateCycleCount\(4),
	datac => \sdram_controller|writeBuffer[1][0]~q\,
	datad => \sdram_controller|writeBuffer[17][0]~q\,
	combout => \sdram_controller|Mux31~24_combout\);

-- Location: LCCOMB_X42_Y28_N2
\sdram_controller|Mux31~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux31~25_combout\ = (\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|Mux31~24_combout\ & ((\sdram_controller|writeBuffer[25][0]~q\))) # (!\sdram_controller|Mux31~24_combout\ & (\sdram_controller|writeBuffer[9][0]~q\)))) # 
-- (!\sdram_controller|stateCycleCount\(3) & (((\sdram_controller|Mux31~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[9][0]~q\,
	datab => \sdram_controller|stateCycleCount\(3),
	datac => \sdram_controller|writeBuffer[25][0]~q\,
	datad => \sdram_controller|Mux31~24_combout\,
	combout => \sdram_controller|Mux31~25_combout\);

-- Location: LCCOMB_X43_Y29_N8
\sdram_controller|writeBuffer[41][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[41][0]~feeder_combout\ = \Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~2_combout\,
	combout => \sdram_controller|writeBuffer[41][0]~feeder_combout\);

-- Location: LCCOMB_X42_Y29_N14
\sdram_controller|Decoder3~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~51_combout\ = (!\sdram_controller|writeBufferWriteCount\(1) & (!\sdram_controller|writeBufferWriteCount\(0) & (!\sdram_controller|writeBufferWriteCount\(3) & \sdram_controller|writeBufferWriteCount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(1),
	datab => \sdram_controller|writeBufferWriteCount\(0),
	datac => \sdram_controller|writeBufferWriteCount\(3),
	datad => \sdram_controller|writeBufferWriteCount\(2),
	combout => \sdram_controller|Decoder3~51_combout\);

-- Location: LCCOMB_X43_Y29_N6
\sdram_controller|Decoder3~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~52_combout\ = (\sdram_controller|Decoder3~0_combout\ & (\sdram_controller|writeBufferWriteCount\(4) & (\sdram_controller|Decoder3~51_combout\ & !\sdram_controller|writeBufferWriteCount\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Decoder3~0_combout\,
	datab => \sdram_controller|writeBufferWriteCount\(4),
	datac => \sdram_controller|Decoder3~51_combout\,
	datad => \sdram_controller|writeBufferWriteCount\(5),
	combout => \sdram_controller|Decoder3~52_combout\);

-- Location: FF_X43_Y29_N9
\sdram_controller|writeBuffer[41][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[41][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[41][0]~q\);

-- Location: LCCOMB_X43_Y27_N22
\sdram_controller|Decoder3~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~55_combout\ = (!\sdram_controller|writeBufferWriteCount\(0) & (\sdram_controller|writeBufferWriteCount\(3) & (\sdram_controller|writeBufferWriteCount\(2) & !\sdram_controller|writeBufferWriteCount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(0),
	datab => \sdram_controller|writeBufferWriteCount\(3),
	datac => \sdram_controller|writeBufferWriteCount\(2),
	datad => \sdram_controller|writeBufferWriteCount\(1),
	combout => \sdram_controller|Decoder3~55_combout\);

-- Location: LCCOMB_X43_Y27_N20
\sdram_controller|Decoder3~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~56_combout\ = (\sdram_controller|Decoder3~0_combout\ & (!\sdram_controller|writeBufferWriteCount\(5) & (\sdram_controller|Decoder3~55_combout\ & \sdram_controller|writeBufferWriteCount\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Decoder3~0_combout\,
	datab => \sdram_controller|writeBufferWriteCount\(5),
	datac => \sdram_controller|Decoder3~55_combout\,
	datad => \sdram_controller|writeBufferWriteCount\(4),
	combout => \sdram_controller|Decoder3~56_combout\);

-- Location: FF_X43_Y27_N11
\sdram_controller|writeBuffer[57][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[57][0]~q\);

-- Location: LCCOMB_X40_Y26_N8
\sdram_controller|writeBuffer[49][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[49][0]~feeder_combout\ = \Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~2_combout\,
	combout => \sdram_controller|writeBuffer[49][0]~feeder_combout\);

-- Location: LCCOMB_X40_Y26_N0
\sdram_controller|Decoder3~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~53_combout\ = (\sdram_controller|writeBufferWriteCount\(3) & (\sdram_controller|writeBufferWriteCount\(4) & (\sdram_controller|Decoder3~45_combout\ & !\sdram_controller|writeBufferWriteCount\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(3),
	datab => \sdram_controller|writeBufferWriteCount\(4),
	datac => \sdram_controller|Decoder3~45_combout\,
	datad => \sdram_controller|writeBufferWriteCount\(5),
	combout => \sdram_controller|Decoder3~53_combout\);

-- Location: FF_X40_Y26_N9
\sdram_controller|writeBuffer[49][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[49][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[49][0]~q\);

-- Location: LCCOMB_X40_Y26_N10
\sdram_controller|Decoder3~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~54_combout\ = (\sdram_controller|Decoder3~45_combout\ & (\sdram_controller|writeBufferWriteCount\(4) & (!\sdram_controller|writeBufferWriteCount\(5) & !\sdram_controller|writeBufferWriteCount\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Decoder3~45_combout\,
	datab => \sdram_controller|writeBufferWriteCount\(4),
	datac => \sdram_controller|writeBufferWriteCount\(5),
	datad => \sdram_controller|writeBufferWriteCount\(3),
	combout => \sdram_controller|Decoder3~54_combout\);

-- Location: FF_X40_Y26_N7
\sdram_controller|writeBuffer[33][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[33][0]~q\);

-- Location: LCCOMB_X40_Y26_N6
\sdram_controller|Mux31~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux31~22_combout\ = (\sdram_controller|stateCycleCount\(3) & (((\sdram_controller|stateCycleCount\(4))))) # (!\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|stateCycleCount\(4) & (\sdram_controller|writeBuffer[49][0]~q\)) # 
-- (!\sdram_controller|stateCycleCount\(4) & ((\sdram_controller|writeBuffer[33][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(3),
	datab => \sdram_controller|writeBuffer[49][0]~q\,
	datac => \sdram_controller|writeBuffer[33][0]~q\,
	datad => \sdram_controller|stateCycleCount\(4),
	combout => \sdram_controller|Mux31~22_combout\);

-- Location: LCCOMB_X43_Y27_N10
\sdram_controller|Mux31~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux31~23_combout\ = (\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|Mux31~22_combout\ & ((\sdram_controller|writeBuffer[57][0]~q\))) # (!\sdram_controller|Mux31~22_combout\ & (\sdram_controller|writeBuffer[41][0]~q\)))) # 
-- (!\sdram_controller|stateCycleCount\(3) & (((\sdram_controller|Mux31~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[41][0]~q\,
	datab => \sdram_controller|stateCycleCount\(3),
	datac => \sdram_controller|writeBuffer[57][0]~q\,
	datad => \sdram_controller|Mux31~22_combout\,
	combout => \sdram_controller|Mux31~23_combout\);

-- Location: LCCOMB_X44_Y28_N0
\sdram_controller|Mux31~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux31~26_combout\ = (\sdram_controller|stateCycleCount\(5) & (((\sdram_controller|stateCycleCount\(6)) # (\sdram_controller|Mux31~23_combout\)))) # (!\sdram_controller|stateCycleCount\(5) & (\sdram_controller|Mux31~25_combout\ & 
-- (!\sdram_controller|stateCycleCount\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux31~25_combout\,
	datab => \sdram_controller|stateCycleCount\(5),
	datac => \sdram_controller|stateCycleCount\(6),
	datad => \sdram_controller|Mux31~23_combout\,
	combout => \sdram_controller|Mux31~26_combout\);

-- Location: LCCOMB_X43_Y29_N4
\sdram_controller|Mux31~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux31~29_combout\ = (\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|Mux31~26_combout\ & ((\sdram_controller|Mux31~28_combout\))) # (!\sdram_controller|Mux31~26_combout\ & (\sdram_controller|Mux31~21_combout\)))) # 
-- (!\sdram_controller|stateCycleCount\(6) & (((\sdram_controller|Mux31~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(6),
	datab => \sdram_controller|Mux31~21_combout\,
	datac => \sdram_controller|Mux31~28_combout\,
	datad => \sdram_controller|Mux31~26_combout\,
	combout => \sdram_controller|Mux31~29_combout\);

-- Location: LCCOMB_X40_Y29_N22
\sdram_controller|writeBuffer[77][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[77][0]~feeder_combout\ = \Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~2_combout\,
	combout => \sdram_controller|writeBuffer[77][0]~feeder_combout\);

-- Location: LCCOMB_X41_Y29_N18
\sdram_controller|Decoder3~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~19_combout\ = (\sdram_controller|writeBufferWriteCount\(1) & (\sdram_controller|writeBufferWriteCount\(2) & (!\sdram_controller|writeBufferWriteCount\(0) & \sdram_controller|Decoder3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(1),
	datab => \sdram_controller|writeBufferWriteCount\(2),
	datac => \sdram_controller|writeBufferWriteCount\(0),
	datad => \sdram_controller|Decoder3~0_combout\,
	combout => \sdram_controller|Decoder3~19_combout\);

-- Location: LCCOMB_X41_Y29_N4
\sdram_controller|Decoder3~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~26_combout\ = (!\sdram_controller|writeBufferWriteCount\(3) & (!\sdram_controller|writeBufferWriteCount\(4) & (\sdram_controller|writeBufferWriteCount\(5) & \sdram_controller|Decoder3~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(3),
	datab => \sdram_controller|writeBufferWriteCount\(4),
	datac => \sdram_controller|writeBufferWriteCount\(5),
	datad => \sdram_controller|Decoder3~19_combout\,
	combout => \sdram_controller|Decoder3~26_combout\);

-- Location: FF_X40_Y29_N23
\sdram_controller|writeBuffer[77][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[77][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[77][0]~q\);

-- Location: LCCOMB_X39_Y29_N0
\sdram_controller|Decoder3~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~30_combout\ = (!\sdram_controller|writeBufferWriteCount\(4) & (\sdram_controller|writeBufferWriteCount\(5) & (\sdram_controller|Decoder3~19_combout\ & \sdram_controller|writeBufferWriteCount\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(4),
	datab => \sdram_controller|writeBufferWriteCount\(5),
	datac => \sdram_controller|Decoder3~19_combout\,
	datad => \sdram_controller|writeBufferWriteCount\(3),
	combout => \sdram_controller|Decoder3~30_combout\);

-- Location: FF_X38_Y29_N9
\sdram_controller|writeBuffer[93][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[93][0]~q\);

-- Location: LCCOMB_X41_Y29_N0
\sdram_controller|writeBuffer[85][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[85][0]~feeder_combout\ = \Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~2_combout\,
	combout => \sdram_controller|writeBuffer[85][0]~feeder_combout\);

-- Location: LCCOMB_X40_Y27_N18
\sdram_controller|Decoder3~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~21_combout\ = (!\sdram_controller|writeBufferWriteCount\(0) & (\sdram_controller|writeBufferWriteCount\(1) & (\sdram_controller|Decoder3~0_combout\ & !\sdram_controller|writeBufferWriteCount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(0),
	datab => \sdram_controller|writeBufferWriteCount\(1),
	datac => \sdram_controller|Decoder3~0_combout\,
	datad => \sdram_controller|writeBufferWriteCount\(2),
	combout => \sdram_controller|Decoder3~21_combout\);

-- Location: LCCOMB_X40_Y27_N2
\sdram_controller|Decoder3~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~27_combout\ = (\sdram_controller|writeBufferWriteCount\(3) & (\sdram_controller|writeBufferWriteCount\(5) & (!\sdram_controller|writeBufferWriteCount\(4) & \sdram_controller|Decoder3~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(3),
	datab => \sdram_controller|writeBufferWriteCount\(5),
	datac => \sdram_controller|writeBufferWriteCount\(4),
	datad => \sdram_controller|Decoder3~21_combout\,
	combout => \sdram_controller|Decoder3~27_combout\);

-- Location: FF_X41_Y29_N1
\sdram_controller|writeBuffer[85][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[85][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[85][0]~q\);

-- Location: LCCOMB_X37_Y27_N22
\sdram_controller|Decoder3~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~28_combout\ = (!\sdram_controller|writeBufferWriteCount\(3) & (!\sdram_controller|writeBufferWriteCount\(4) & (!\sdram_controller|writeBufferWriteCount\(2) & \sdram_controller|writeBufferWriteCount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(3),
	datab => \sdram_controller|writeBufferWriteCount\(4),
	datac => \sdram_controller|writeBufferWriteCount\(2),
	datad => \sdram_controller|writeBufferWriteCount\(1),
	combout => \sdram_controller|Decoder3~28_combout\);

-- Location: LCCOMB_X37_Y27_N20
\sdram_controller|Decoder3~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~29_combout\ = (\sdram_controller|Decoder3~0_combout\ & (!\sdram_controller|writeBufferWriteCount\(0) & (\sdram_controller|Decoder3~28_combout\ & \sdram_controller|writeBufferWriteCount\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Decoder3~0_combout\,
	datab => \sdram_controller|writeBufferWriteCount\(0),
	datac => \sdram_controller|Decoder3~28_combout\,
	datad => \sdram_controller|writeBufferWriteCount\(5),
	combout => \sdram_controller|Decoder3~29_combout\);

-- Location: FF_X37_Y25_N5
\sdram_controller|writeBuffer[69][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[69][0]~q\);

-- Location: LCCOMB_X37_Y25_N4
\sdram_controller|Mux31~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux31~12_combout\ = (\sdram_controller|stateCycleCount\(4) & ((\sdram_controller|writeBuffer[85][0]~q\) # ((\sdram_controller|stateCycleCount\(3))))) # (!\sdram_controller|stateCycleCount\(4) & (((\sdram_controller|writeBuffer[69][0]~q\ 
-- & !\sdram_controller|stateCycleCount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[85][0]~q\,
	datab => \sdram_controller|stateCycleCount\(4),
	datac => \sdram_controller|writeBuffer[69][0]~q\,
	datad => \sdram_controller|stateCycleCount\(3),
	combout => \sdram_controller|Mux31~12_combout\);

-- Location: LCCOMB_X38_Y29_N8
\sdram_controller|Mux31~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux31~13_combout\ = (\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|Mux31~12_combout\ & ((\sdram_controller|writeBuffer[93][0]~q\))) # (!\sdram_controller|Mux31~12_combout\ & (\sdram_controller|writeBuffer[77][0]~q\)))) # 
-- (!\sdram_controller|stateCycleCount\(3) & (((\sdram_controller|Mux31~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(3),
	datab => \sdram_controller|writeBuffer[77][0]~q\,
	datac => \sdram_controller|writeBuffer[93][0]~q\,
	datad => \sdram_controller|Mux31~12_combout\,
	combout => \sdram_controller|Mux31~13_combout\);

-- Location: LCCOMB_X41_Y26_N20
\sdram_controller|Decoder3~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~34_combout\ = (!\sdram_controller|writeBufferWriteCount\(2) & (!\sdram_controller|writeBufferWriteCount\(3) & (!\sdram_controller|writeBufferWriteCount\(5) & \sdram_controller|writeBufferWriteCount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(2),
	datab => \sdram_controller|writeBufferWriteCount\(3),
	datac => \sdram_controller|writeBufferWriteCount\(5),
	datad => \sdram_controller|writeBufferWriteCount\(1),
	combout => \sdram_controller|Decoder3~34_combout\);

-- Location: LCCOMB_X38_Y26_N16
\sdram_controller|Decoder3~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~35_combout\ = (!\sdram_controller|writeBufferWriteCount\(4) & (\sdram_controller|Decoder3~0_combout\ & (!\sdram_controller|writeBufferWriteCount\(0) & \sdram_controller|Decoder3~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(4),
	datab => \sdram_controller|Decoder3~0_combout\,
	datac => \sdram_controller|writeBufferWriteCount\(0),
	datad => \sdram_controller|Decoder3~34_combout\,
	combout => \sdram_controller|Decoder3~35_combout\);

-- Location: FF_X38_Y26_N5
\sdram_controller|writeBuffer[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[5][0]~q\);

-- Location: LCCOMB_X41_Y29_N22
\sdram_controller|writeBuffer[21][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[21][0]~feeder_combout\ = \Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~2_combout\,
	combout => \sdram_controller|writeBuffer[21][0]~feeder_combout\);

-- Location: LCCOMB_X41_Y29_N10
\sdram_controller|Decoder3~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~32_combout\ = (\sdram_controller|writeBufferWriteCount\(1) & (!\sdram_controller|writeBufferWriteCount\(4) & (!\sdram_controller|writeBufferWriteCount\(5) & !\sdram_controller|writeBufferWriteCount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(1),
	datab => \sdram_controller|writeBufferWriteCount\(4),
	datac => \sdram_controller|writeBufferWriteCount\(5),
	datad => \sdram_controller|writeBufferWriteCount\(2),
	combout => \sdram_controller|Decoder3~32_combout\);

-- Location: LCCOMB_X41_Y29_N8
\sdram_controller|Decoder3~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~33_combout\ = (\sdram_controller|writeBufferWriteCount\(3) & (!\sdram_controller|writeBufferWriteCount\(0) & (\sdram_controller|Decoder3~0_combout\ & \sdram_controller|Decoder3~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(3),
	datab => \sdram_controller|writeBufferWriteCount\(0),
	datac => \sdram_controller|Decoder3~0_combout\,
	datad => \sdram_controller|Decoder3~32_combout\,
	combout => \sdram_controller|Decoder3~33_combout\);

-- Location: FF_X41_Y29_N23
\sdram_controller|writeBuffer[21][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[21][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[21][0]~q\);

-- Location: LCCOMB_X38_Y26_N4
\sdram_controller|Mux31~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux31~14_combout\ = (\sdram_controller|stateCycleCount\(3) & (\sdram_controller|stateCycleCount\(4))) # (!\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|stateCycleCount\(4) & ((\sdram_controller|writeBuffer[21][0]~q\))) # 
-- (!\sdram_controller|stateCycleCount\(4) & (\sdram_controller|writeBuffer[5][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(3),
	datab => \sdram_controller|stateCycleCount\(4),
	datac => \sdram_controller|writeBuffer[5][0]~q\,
	datad => \sdram_controller|writeBuffer[21][0]~q\,
	combout => \sdram_controller|Mux31~14_combout\);

-- Location: LCCOMB_X40_Y25_N10
\sdram_controller|Decoder3~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~36_combout\ = (!\sdram_controller|writeBufferWriteCount\(5) & (!\sdram_controller|writeBufferWriteCount\(4) & (\sdram_controller|writeBufferWriteCount\(3) & \sdram_controller|Decoder3~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(5),
	datab => \sdram_controller|writeBufferWriteCount\(4),
	datac => \sdram_controller|writeBufferWriteCount\(3),
	datad => \sdram_controller|Decoder3~19_combout\,
	combout => \sdram_controller|Decoder3~36_combout\);

-- Location: FF_X40_Y25_N19
\sdram_controller|writeBuffer[29][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[29][0]~q\);

-- Location: LCCOMB_X36_Y29_N12
\sdram_controller|writeBuffer[13][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[13][0]~feeder_combout\ = \Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~2_combout\,
	combout => \sdram_controller|writeBuffer[13][0]~feeder_combout\);

-- Location: LCCOMB_X36_Y29_N22
\sdram_controller|Decoder3~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~31_combout\ = (!\sdram_controller|writeBufferWriteCount\(5) & (!\sdram_controller|writeBufferWriteCount\(3) & (\sdram_controller|Decoder3~19_combout\ & !\sdram_controller|writeBufferWriteCount\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(5),
	datab => \sdram_controller|writeBufferWriteCount\(3),
	datac => \sdram_controller|Decoder3~19_combout\,
	datad => \sdram_controller|writeBufferWriteCount\(4),
	combout => \sdram_controller|Decoder3~31_combout\);

-- Location: FF_X36_Y29_N13
\sdram_controller|writeBuffer[13][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[13][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[13][0]~q\);

-- Location: LCCOMB_X40_Y25_N18
\sdram_controller|Mux31~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux31~15_combout\ = (\sdram_controller|Mux31~14_combout\ & (((\sdram_controller|writeBuffer[29][0]~q\)) # (!\sdram_controller|stateCycleCount\(3)))) # (!\sdram_controller|Mux31~14_combout\ & (\sdram_controller|stateCycleCount\(3) & 
-- ((\sdram_controller|writeBuffer[13][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux31~14_combout\,
	datab => \sdram_controller|stateCycleCount\(3),
	datac => \sdram_controller|writeBuffer[29][0]~q\,
	datad => \sdram_controller|writeBuffer[13][0]~q\,
	combout => \sdram_controller|Mux31~15_combout\);

-- Location: LCCOMB_X38_Y29_N10
\sdram_controller|Mux31~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux31~16_combout\ = (\sdram_controller|stateCycleCount\(5) & (((\sdram_controller|stateCycleCount\(6))))) # (!\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|stateCycleCount\(6) & (\sdram_controller|Mux31~13_combout\)) # 
-- (!\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|Mux31~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(5),
	datab => \sdram_controller|Mux31~13_combout\,
	datac => \sdram_controller|Mux31~15_combout\,
	datad => \sdram_controller|stateCycleCount\(6),
	combout => \sdram_controller|Mux31~16_combout\);

-- Location: LCCOMB_X37_Y27_N16
\sdram_controller|Decoder3~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~40_combout\ = (!\sdram_controller|writeBufferWriteCount\(3) & (\sdram_controller|writeBufferWriteCount\(1) & (!\sdram_controller|writeBufferWriteCount\(2) & \sdram_controller|writeBufferWriteCount\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(3),
	datab => \sdram_controller|writeBufferWriteCount\(1),
	datac => \sdram_controller|writeBufferWriteCount\(2),
	datad => \sdram_controller|writeBufferWriteCount\(5),
	combout => \sdram_controller|Decoder3~40_combout\);

-- Location: LCCOMB_X37_Y27_N14
\sdram_controller|Decoder3~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~41_combout\ = (\sdram_controller|Decoder3~0_combout\ & (!\sdram_controller|writeBufferWriteCount\(0) & (\sdram_controller|writeBufferWriteCount\(4) & \sdram_controller|Decoder3~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Decoder3~0_combout\,
	datab => \sdram_controller|writeBufferWriteCount\(0),
	datac => \sdram_controller|writeBufferWriteCount\(4),
	datad => \sdram_controller|Decoder3~40_combout\,
	combout => \sdram_controller|Decoder3~41_combout\);

-- Location: FF_X37_Y27_N3
\sdram_controller|writeBuffer[101][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[101][0]~q\);

-- Location: LCCOMB_X37_Y29_N18
\sdram_controller|writeBuffer[109][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[109][0]~feeder_combout\ = \Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~2_combout\,
	combout => \sdram_controller|writeBuffer[109][0]~feeder_combout\);

-- Location: LCCOMB_X37_Y29_N2
\sdram_controller|Decoder3~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~39_combout\ = (\sdram_controller|writeBufferWriteCount\(5) & (!\sdram_controller|writeBufferWriteCount\(3) & (\sdram_controller|writeBufferWriteCount\(4) & \sdram_controller|Decoder3~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(5),
	datab => \sdram_controller|writeBufferWriteCount\(3),
	datac => \sdram_controller|writeBufferWriteCount\(4),
	datad => \sdram_controller|Decoder3~19_combout\,
	combout => \sdram_controller|Decoder3~39_combout\);

-- Location: FF_X37_Y29_N19
\sdram_controller|writeBuffer[109][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[109][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[109][0]~q\);

-- Location: LCCOMB_X37_Y27_N2
\sdram_controller|Mux31~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux31~17_combout\ = (\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|stateCycleCount\(4)) # ((\sdram_controller|writeBuffer[109][0]~q\)))) # (!\sdram_controller|stateCycleCount\(3) & (!\sdram_controller|stateCycleCount\(4) & 
-- (\sdram_controller|writeBuffer[101][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(3),
	datab => \sdram_controller|stateCycleCount\(4),
	datac => \sdram_controller|writeBuffer[101][0]~q\,
	datad => \sdram_controller|writeBuffer[109][0]~q\,
	combout => \sdram_controller|Mux31~17_combout\);

-- Location: LCCOMB_X37_Y27_N28
\sdram_controller|writeBuffer[117][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[117][0]~feeder_combout\ = \Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~2_combout\,
	combout => \sdram_controller|writeBuffer[117][0]~feeder_combout\);

-- Location: LCCOMB_X37_Y27_N18
\sdram_controller|Decoder3~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~37_combout\ = (\sdram_controller|writeBufferWriteCount\(5) & (\sdram_controller|writeBufferWriteCount\(4) & (!\sdram_controller|writeBufferWriteCount\(2) & \sdram_controller|writeBufferWriteCount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(5),
	datab => \sdram_controller|writeBufferWriteCount\(4),
	datac => \sdram_controller|writeBufferWriteCount\(2),
	datad => \sdram_controller|writeBufferWriteCount\(1),
	combout => \sdram_controller|Decoder3~37_combout\);

-- Location: LCCOMB_X36_Y27_N20
\sdram_controller|Decoder3~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~38_combout\ = (\sdram_controller|Decoder3~0_combout\ & (!\sdram_controller|writeBufferWriteCount\(0) & (\sdram_controller|writeBufferWriteCount\(3) & \sdram_controller|Decoder3~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Decoder3~0_combout\,
	datab => \sdram_controller|writeBufferWriteCount\(0),
	datac => \sdram_controller|writeBufferWriteCount\(3),
	datad => \sdram_controller|Decoder3~37_combout\,
	combout => \sdram_controller|Decoder3~38_combout\);

-- Location: FF_X37_Y27_N29
\sdram_controller|writeBuffer[117][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[117][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[117][0]~q\);

-- Location: LCCOMB_X41_Y29_N30
\sdram_controller|Decoder3~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~42_combout\ = (\sdram_controller|writeBufferWriteCount\(3) & (\sdram_controller|writeBufferWriteCount\(4) & (\sdram_controller|writeBufferWriteCount\(5) & \sdram_controller|Decoder3~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(3),
	datab => \sdram_controller|writeBufferWriteCount\(4),
	datac => \sdram_controller|writeBufferWriteCount\(5),
	datad => \sdram_controller|Decoder3~19_combout\,
	combout => \sdram_controller|Decoder3~42_combout\);

-- Location: FF_X38_Y29_N1
\sdram_controller|writeBuffer[125][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[125][0]~q\);

-- Location: LCCOMB_X38_Y29_N0
\sdram_controller|Mux31~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux31~18_combout\ = (\sdram_controller|Mux31~17_combout\ & (((\sdram_controller|writeBuffer[125][0]~q\) # (!\sdram_controller|stateCycleCount\(4))))) # (!\sdram_controller|Mux31~17_combout\ & (\sdram_controller|writeBuffer[117][0]~q\ & 
-- ((\sdram_controller|stateCycleCount\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux31~17_combout\,
	datab => \sdram_controller|writeBuffer[117][0]~q\,
	datac => \sdram_controller|writeBuffer[125][0]~q\,
	datad => \sdram_controller|stateCycleCount\(4),
	combout => \sdram_controller|Mux31~18_combout\);

-- Location: LCCOMB_X37_Y29_N8
\sdram_controller|writeBuffer[45][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[45][0]~feeder_combout\ = \Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~2_combout\,
	combout => \sdram_controller|writeBuffer[45][0]~feeder_combout\);

-- Location: LCCOMB_X37_Y29_N28
\sdram_controller|Decoder3~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~20_combout\ = (!\sdram_controller|writeBufferWriteCount\(5) & (\sdram_controller|writeBufferWriteCount\(4) & (!\sdram_controller|writeBufferWriteCount\(3) & \sdram_controller|Decoder3~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(5),
	datab => \sdram_controller|writeBufferWriteCount\(4),
	datac => \sdram_controller|writeBufferWriteCount\(3),
	datad => \sdram_controller|Decoder3~19_combout\,
	combout => \sdram_controller|Decoder3~20_combout\);

-- Location: FF_X37_Y29_N9
\sdram_controller|writeBuffer[45][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[45][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[45][0]~q\);

-- Location: LCCOMB_X40_Y29_N4
\sdram_controller|Decoder3~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~25_combout\ = (!\sdram_controller|writeBufferWriteCount\(5) & (\sdram_controller|Decoder3~19_combout\ & (\sdram_controller|writeBufferWriteCount\(3) & \sdram_controller|writeBufferWriteCount\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(5),
	datab => \sdram_controller|Decoder3~19_combout\,
	datac => \sdram_controller|writeBufferWriteCount\(3),
	datad => \sdram_controller|writeBufferWriteCount\(4),
	combout => \sdram_controller|Decoder3~25_combout\);

-- Location: FF_X40_Y29_N9
\sdram_controller|writeBuffer[61][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[61][0]~q\);

-- Location: LCCOMB_X42_Y27_N6
\sdram_controller|Decoder3~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~23_combout\ = (!\sdram_controller|writeBufferWriteCount\(5) & (\sdram_controller|writeBufferWriteCount\(4) & (\sdram_controller|writeBufferWriteCount\(1) & !\sdram_controller|writeBufferWriteCount\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(5),
	datab => \sdram_controller|writeBufferWriteCount\(4),
	datac => \sdram_controller|writeBufferWriteCount\(1),
	datad => \sdram_controller|writeBufferWriteCount\(3),
	combout => \sdram_controller|Decoder3~23_combout\);

-- Location: LCCOMB_X39_Y26_N20
\sdram_controller|Decoder3~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~24_combout\ = (!\sdram_controller|writeBufferWriteCount\(0) & (\sdram_controller|Decoder3~23_combout\ & (!\sdram_controller|writeBufferWriteCount\(2) & \sdram_controller|Decoder3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(0),
	datab => \sdram_controller|Decoder3~23_combout\,
	datac => \sdram_controller|writeBufferWriteCount\(2),
	datad => \sdram_controller|Decoder3~0_combout\,
	combout => \sdram_controller|Decoder3~24_combout\);

-- Location: FF_X39_Y26_N17
\sdram_controller|writeBuffer[37][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[37][0]~q\);

-- Location: LCCOMB_X40_Y27_N8
\sdram_controller|writeBuffer[53][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[53][0]~feeder_combout\ = \Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~2_combout\,
	combout => \sdram_controller|writeBuffer[53][0]~feeder_combout\);

-- Location: LCCOMB_X40_Y27_N4
\sdram_controller|Decoder3~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~22_combout\ = (\sdram_controller|writeBufferWriteCount\(3) & (!\sdram_controller|writeBufferWriteCount\(5) & (\sdram_controller|writeBufferWriteCount\(4) & \sdram_controller|Decoder3~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(3),
	datab => \sdram_controller|writeBufferWriteCount\(5),
	datac => \sdram_controller|writeBufferWriteCount\(4),
	datad => \sdram_controller|Decoder3~21_combout\,
	combout => \sdram_controller|Decoder3~22_combout\);

-- Location: FF_X40_Y27_N9
\sdram_controller|writeBuffer[53][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[53][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[53][0]~q\);

-- Location: LCCOMB_X39_Y26_N16
\sdram_controller|Mux31~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux31~10_combout\ = (\sdram_controller|stateCycleCount\(4) & ((\sdram_controller|stateCycleCount\(3)) # ((\sdram_controller|writeBuffer[53][0]~q\)))) # (!\sdram_controller|stateCycleCount\(4) & (!\sdram_controller|stateCycleCount\(3) & 
-- (\sdram_controller|writeBuffer[37][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(4),
	datab => \sdram_controller|stateCycleCount\(3),
	datac => \sdram_controller|writeBuffer[37][0]~q\,
	datad => \sdram_controller|writeBuffer[53][0]~q\,
	combout => \sdram_controller|Mux31~10_combout\);

-- Location: LCCOMB_X40_Y29_N8
\sdram_controller|Mux31~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux31~11_combout\ = (\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|Mux31~10_combout\ & ((\sdram_controller|writeBuffer[61][0]~q\))) # (!\sdram_controller|Mux31~10_combout\ & (\sdram_controller|writeBuffer[45][0]~q\)))) # 
-- (!\sdram_controller|stateCycleCount\(3) & (((\sdram_controller|Mux31~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[45][0]~q\,
	datab => \sdram_controller|stateCycleCount\(3),
	datac => \sdram_controller|writeBuffer[61][0]~q\,
	datad => \sdram_controller|Mux31~10_combout\,
	combout => \sdram_controller|Mux31~11_combout\);

-- Location: LCCOMB_X38_Y29_N18
\sdram_controller|Mux31~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux31~19_combout\ = (\sdram_controller|Mux31~16_combout\ & ((\sdram_controller|Mux31~18_combout\) # ((!\sdram_controller|stateCycleCount\(5))))) # (!\sdram_controller|Mux31~16_combout\ & (((\sdram_controller|Mux31~11_combout\ & 
-- \sdram_controller|stateCycleCount\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux31~16_combout\,
	datab => \sdram_controller|Mux31~18_combout\,
	datac => \sdram_controller|Mux31~11_combout\,
	datad => \sdram_controller|stateCycleCount\(5),
	combout => \sdram_controller|Mux31~19_combout\);

-- Location: LCCOMB_X34_Y29_N12
\sdram_controller|Mux31~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux31~30_combout\ = (\sdram_controller|stateCycleCount\(1) & (((\sdram_controller|stateCycleCount\(2))))) # (!\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|Mux31~19_combout\))) # 
-- (!\sdram_controller|stateCycleCount\(2) & (\sdram_controller|Mux31~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux31~29_combout\,
	datab => \sdram_controller|Mux31~19_combout\,
	datac => \sdram_controller|stateCycleCount\(1),
	datad => \sdram_controller|stateCycleCount\(2),
	combout => \sdram_controller|Mux31~30_combout\);

-- Location: LCCOMB_X39_Y28_N26
\sdram_controller|Decoder3~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~69_combout\ = (\sdram_controller|writeBufferWriteCount\(2) & (\sdram_controller|writeBufferWriteCount\(0) & (\sdram_controller|writeBufferWriteCount\(1) & \sdram_controller|Decoder3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(2),
	datab => \sdram_controller|writeBufferWriteCount\(0),
	datac => \sdram_controller|writeBufferWriteCount\(1),
	datad => \sdram_controller|Decoder3~0_combout\,
	combout => \sdram_controller|Decoder3~69_combout\);

-- Location: LCCOMB_X39_Y28_N18
\sdram_controller|Decoder3~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~89_combout\ = (\sdram_controller|Decoder3~69_combout\ & (\sdram_controller|writeBufferWriteCount\(3) & (\sdram_controller|writeBufferWriteCount\(4) & \sdram_controller|writeBufferWriteCount\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Decoder3~69_combout\,
	datab => \sdram_controller|writeBufferWriteCount\(3),
	datac => \sdram_controller|writeBufferWriteCount\(4),
	datad => \sdram_controller|writeBufferWriteCount\(5),
	combout => \sdram_controller|Decoder3~89_combout\);

-- Location: FF_X39_Y28_N3
\sdram_controller|writeBuffer[127][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[127][0]~q\);

-- Location: LCCOMB_X39_Y28_N22
\sdram_controller|Decoder3~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~86_combout\ = (\sdram_controller|Decoder3~69_combout\ & (\sdram_controller|writeBufferWriteCount\(3) & (\sdram_controller|writeBufferWriteCount\(4) & !\sdram_controller|writeBufferWriteCount\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Decoder3~69_combout\,
	datab => \sdram_controller|writeBufferWriteCount\(3),
	datac => \sdram_controller|writeBufferWriteCount\(4),
	datad => \sdram_controller|writeBufferWriteCount\(5),
	combout => \sdram_controller|Decoder3~86_combout\);

-- Location: FF_X35_Y28_N31
\sdram_controller|writeBuffer[63][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[63][0]~q\);

-- Location: LCCOMB_X37_Y28_N22
\sdram_controller|writeBuffer[95][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[95][0]~feeder_combout\ = \Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~2_combout\,
	combout => \sdram_controller|writeBuffer[95][0]~feeder_combout\);

-- Location: LCCOMB_X38_Y28_N16
\sdram_controller|Decoder3~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~87_combout\ = (\sdram_controller|writeBufferWriteCount\(5) & (!\sdram_controller|writeBufferWriteCount\(4) & (\sdram_controller|writeBufferWriteCount\(3) & \sdram_controller|Decoder3~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(5),
	datab => \sdram_controller|writeBufferWriteCount\(4),
	datac => \sdram_controller|writeBufferWriteCount\(3),
	datad => \sdram_controller|Decoder3~69_combout\,
	combout => \sdram_controller|Decoder3~87_combout\);

-- Location: FF_X37_Y28_N23
\sdram_controller|writeBuffer[95][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[95][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[95][0]~q\);

-- Location: LCCOMB_X39_Y28_N24
\sdram_controller|Decoder3~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~88_combout\ = (\sdram_controller|Decoder3~69_combout\ & (\sdram_controller|writeBufferWriteCount\(3) & (!\sdram_controller|writeBufferWriteCount\(4) & !\sdram_controller|writeBufferWriteCount\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Decoder3~69_combout\,
	datab => \sdram_controller|writeBufferWriteCount\(3),
	datac => \sdram_controller|writeBufferWriteCount\(4),
	datad => \sdram_controller|writeBufferWriteCount\(5),
	combout => \sdram_controller|Decoder3~88_combout\);

-- Location: FF_X36_Y28_N7
\sdram_controller|writeBuffer[31][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[31][0]~q\);

-- Location: LCCOMB_X36_Y28_N6
\sdram_controller|Mux31~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux31~38_combout\ = (\sdram_controller|stateCycleCount\(5) & (((\sdram_controller|stateCycleCount\(6))))) # (!\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|stateCycleCount\(6) & (\sdram_controller|writeBuffer[95][0]~q\)) # 
-- (!\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|writeBuffer[31][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(5),
	datab => \sdram_controller|writeBuffer[95][0]~q\,
	datac => \sdram_controller|writeBuffer[31][0]~q\,
	datad => \sdram_controller|stateCycleCount\(6),
	combout => \sdram_controller|Mux31~38_combout\);

-- Location: LCCOMB_X35_Y28_N30
\sdram_controller|Mux31~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux31~39_combout\ = (\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|Mux31~38_combout\ & (\sdram_controller|writeBuffer[127][0]~q\)) # (!\sdram_controller|Mux31~38_combout\ & ((\sdram_controller|writeBuffer[63][0]~q\))))) # 
-- (!\sdram_controller|stateCycleCount\(5) & (((\sdram_controller|Mux31~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[127][0]~q\,
	datab => \sdram_controller|stateCycleCount\(5),
	datac => \sdram_controller|writeBuffer[63][0]~q\,
	datad => \sdram_controller|Mux31~38_combout\,
	combout => \sdram_controller|Mux31~39_combout\);

-- Location: LCCOMB_X34_Y27_N28
\sdram_controller|writeBuffer[71][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[71][0]~feeder_combout\ = \Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~2_combout\,
	combout => \sdram_controller|writeBuffer[71][0]~feeder_combout\);

-- Location: LCCOMB_X36_Y27_N28
\sdram_controller|Decoder3~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~75_combout\ = (!\sdram_controller|writeBufferWriteCount\(2) & (\sdram_controller|writeBufferWriteCount\(0) & (\sdram_controller|writeBufferWriteCount\(1) & \sdram_controller|Decoder3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(2),
	datab => \sdram_controller|writeBufferWriteCount\(0),
	datac => \sdram_controller|writeBufferWriteCount\(1),
	datad => \sdram_controller|Decoder3~0_combout\,
	combout => \sdram_controller|Decoder3~75_combout\);

-- Location: LCCOMB_X35_Y27_N30
\sdram_controller|Decoder3~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~81_combout\ = (!\sdram_controller|writeBufferWriteCount\(3) & (!\sdram_controller|writeBufferWriteCount\(4) & (\sdram_controller|writeBufferWriteCount\(5) & \sdram_controller|Decoder3~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(3),
	datab => \sdram_controller|writeBufferWriteCount\(4),
	datac => \sdram_controller|writeBufferWriteCount\(5),
	datad => \sdram_controller|Decoder3~75_combout\,
	combout => \sdram_controller|Decoder3~81_combout\);

-- Location: FF_X34_Y27_N29
\sdram_controller|writeBuffer[71][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[71][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[71][0]~q\);

-- Location: LCCOMB_X43_Y27_N18
\sdram_controller|Decoder3~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~84_combout\ = (!\sdram_controller|writeBufferWriteCount\(2) & (!\sdram_controller|writeBufferWriteCount\(3) & (\sdram_controller|writeBufferWriteCount\(4) & \sdram_controller|writeBufferWriteCount\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(2),
	datab => \sdram_controller|writeBufferWriteCount\(3),
	datac => \sdram_controller|writeBufferWriteCount\(4),
	datad => \sdram_controller|writeBufferWriteCount\(5),
	combout => \sdram_controller|Decoder3~84_combout\);

-- Location: LCCOMB_X43_Y27_N28
\sdram_controller|Decoder3~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~85_combout\ = (\sdram_controller|writeBufferWriteCount\(1) & (\sdram_controller|Decoder3~84_combout\ & (\sdram_controller|writeBufferWriteCount\(0) & \sdram_controller|Decoder3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(1),
	datab => \sdram_controller|Decoder3~84_combout\,
	datac => \sdram_controller|writeBufferWriteCount\(0),
	datad => \sdram_controller|Decoder3~0_combout\,
	combout => \sdram_controller|Decoder3~85_combout\);

-- Location: FF_X34_Y27_N3
\sdram_controller|writeBuffer[103][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[103][0]~q\);

-- Location: LCCOMB_X36_Y27_N2
\sdram_controller|writeBuffer[39][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[39][0]~feeder_combout\ = \Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~2_combout\,
	combout => \sdram_controller|writeBuffer[39][0]~feeder_combout\);

-- Location: LCCOMB_X36_Y27_N16
\sdram_controller|Decoder3~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~82_combout\ = (!\sdram_controller|writeBufferWriteCount\(5) & (\sdram_controller|writeBufferWriteCount\(4) & (!\sdram_controller|writeBufferWriteCount\(3) & \sdram_controller|Decoder3~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(5),
	datab => \sdram_controller|writeBufferWriteCount\(4),
	datac => \sdram_controller|writeBufferWriteCount\(3),
	datad => \sdram_controller|Decoder3~75_combout\,
	combout => \sdram_controller|Decoder3~82_combout\);

-- Location: FF_X36_Y27_N3
\sdram_controller|writeBuffer[39][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[39][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[39][0]~q\);

-- Location: LCCOMB_X38_Y25_N16
\sdram_controller|writeBuffer[7][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[7][0]~feeder_combout\ = \Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~2_combout\,
	combout => \sdram_controller|writeBuffer[7][0]~feeder_combout\);

-- Location: LCCOMB_X38_Y25_N22
\sdram_controller|Decoder3~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~83_combout\ = (\sdram_controller|Decoder3~0_combout\ & (\sdram_controller|writeBufferWriteCount\(0) & (!\sdram_controller|writeBufferWriteCount\(3) & \sdram_controller|Decoder3~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Decoder3~0_combout\,
	datab => \sdram_controller|writeBufferWriteCount\(0),
	datac => \sdram_controller|writeBufferWriteCount\(3),
	datad => \sdram_controller|Decoder3~32_combout\,
	combout => \sdram_controller|Decoder3~83_combout\);

-- Location: FF_X38_Y25_N17
\sdram_controller|writeBuffer[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[7][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[7][0]~q\);

-- Location: LCCOMB_X39_Y25_N12
\sdram_controller|Mux31~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux31~35_combout\ = (\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|writeBuffer[39][0]~q\) # ((\sdram_controller|stateCycleCount\(6))))) # (!\sdram_controller|stateCycleCount\(5) & (((\sdram_controller|writeBuffer[7][0]~q\ & 
-- !\sdram_controller|stateCycleCount\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[39][0]~q\,
	datab => \sdram_controller|stateCycleCount\(5),
	datac => \sdram_controller|writeBuffer[7][0]~q\,
	datad => \sdram_controller|stateCycleCount\(6),
	combout => \sdram_controller|Mux31~35_combout\);

-- Location: LCCOMB_X34_Y27_N2
\sdram_controller|Mux31~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux31~36_combout\ = (\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|Mux31~35_combout\ & ((\sdram_controller|writeBuffer[103][0]~q\))) # (!\sdram_controller|Mux31~35_combout\ & (\sdram_controller|writeBuffer[71][0]~q\)))) # 
-- (!\sdram_controller|stateCycleCount\(6) & (((\sdram_controller|Mux31~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(6),
	datab => \sdram_controller|writeBuffer[71][0]~q\,
	datac => \sdram_controller|writeBuffer[103][0]~q\,
	datad => \sdram_controller|Mux31~35_combout\,
	combout => \sdram_controller|Mux31~36_combout\);

-- Location: LCCOMB_X37_Y30_N16
\sdram_controller|writeBuffer[87][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[87][0]~feeder_combout\ = \Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~2_combout\,
	combout => \sdram_controller|writeBuffer[87][0]~feeder_combout\);

-- Location: LCCOMB_X37_Y30_N18
\sdram_controller|Decoder3~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~76_combout\ = (\sdram_controller|writeBufferWriteCount\(3) & (!\sdram_controller|writeBufferWriteCount\(4) & (\sdram_controller|writeBufferWriteCount\(5) & \sdram_controller|Decoder3~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(3),
	datab => \sdram_controller|writeBufferWriteCount\(4),
	datac => \sdram_controller|writeBufferWriteCount\(5),
	datad => \sdram_controller|Decoder3~75_combout\,
	combout => \sdram_controller|Decoder3~76_combout\);

-- Location: FF_X37_Y30_N17
\sdram_controller|writeBuffer[87][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[87][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[87][0]~q\);

-- Location: LCCOMB_X37_Y27_N10
\sdram_controller|Decoder3~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~79_combout\ = (\sdram_controller|writeBufferWriteCount\(5) & (\sdram_controller|writeBufferWriteCount\(0) & (!\sdram_controller|writeBufferWriteCount\(2) & \sdram_controller|writeBufferWriteCount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(5),
	datab => \sdram_controller|writeBufferWriteCount\(0),
	datac => \sdram_controller|writeBufferWriteCount\(2),
	datad => \sdram_controller|writeBufferWriteCount\(1),
	combout => \sdram_controller|Decoder3~79_combout\);

-- Location: LCCOMB_X38_Y27_N16
\sdram_controller|Decoder3~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~80_combout\ = (\sdram_controller|Decoder3~79_combout\ & (\sdram_controller|writeBufferWriteCount\(3) & (\sdram_controller|Decoder3~0_combout\ & \sdram_controller|writeBufferWriteCount\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Decoder3~79_combout\,
	datab => \sdram_controller|writeBufferWriteCount\(3),
	datac => \sdram_controller|Decoder3~0_combout\,
	datad => \sdram_controller|writeBufferWriteCount\(4),
	combout => \sdram_controller|Decoder3~80_combout\);

-- Location: FF_X38_Y27_N27
\sdram_controller|writeBuffer[119][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[119][0]~q\);

-- Location: LCCOMB_X37_Y30_N4
\sdram_controller|Decoder3~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~78_combout\ = (\sdram_controller|writeBufferWriteCount\(3) & (!\sdram_controller|writeBufferWriteCount\(4) & (!\sdram_controller|writeBufferWriteCount\(5) & \sdram_controller|Decoder3~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(3),
	datab => \sdram_controller|writeBufferWriteCount\(4),
	datac => \sdram_controller|writeBufferWriteCount\(5),
	datad => \sdram_controller|Decoder3~75_combout\,
	combout => \sdram_controller|Decoder3~78_combout\);

-- Location: FF_X37_Y30_N15
\sdram_controller|writeBuffer[23][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[23][0]~q\);

-- Location: LCCOMB_X35_Y27_N20
\sdram_controller|writeBuffer[55][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[55][0]~feeder_combout\ = \Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~2_combout\,
	combout => \sdram_controller|writeBuffer[55][0]~feeder_combout\);

-- Location: LCCOMB_X36_Y27_N10
\sdram_controller|Decoder3~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~77_combout\ = (!\sdram_controller|writeBufferWriteCount\(5) & (\sdram_controller|writeBufferWriteCount\(4) & (\sdram_controller|writeBufferWriteCount\(3) & \sdram_controller|Decoder3~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(5),
	datab => \sdram_controller|writeBufferWriteCount\(4),
	datac => \sdram_controller|writeBufferWriteCount\(3),
	datad => \sdram_controller|Decoder3~75_combout\,
	combout => \sdram_controller|Decoder3~77_combout\);

-- Location: FF_X35_Y27_N21
\sdram_controller|writeBuffer[55][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[55][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[55][0]~q\);

-- Location: LCCOMB_X37_Y30_N14
\sdram_controller|Mux31~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux31~33_combout\ = (\sdram_controller|stateCycleCount\(6) & (\sdram_controller|stateCycleCount\(5))) # (!\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|writeBuffer[55][0]~q\))) # 
-- (!\sdram_controller|stateCycleCount\(5) & (\sdram_controller|writeBuffer[23][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(6),
	datab => \sdram_controller|stateCycleCount\(5),
	datac => \sdram_controller|writeBuffer[23][0]~q\,
	datad => \sdram_controller|writeBuffer[55][0]~q\,
	combout => \sdram_controller|Mux31~33_combout\);

-- Location: LCCOMB_X38_Y27_N26
\sdram_controller|Mux31~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux31~34_combout\ = (\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|Mux31~33_combout\ & ((\sdram_controller|writeBuffer[119][0]~q\))) # (!\sdram_controller|Mux31~33_combout\ & (\sdram_controller|writeBuffer[87][0]~q\)))) # 
-- (!\sdram_controller|stateCycleCount\(6) & (((\sdram_controller|Mux31~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[87][0]~q\,
	datab => \sdram_controller|stateCycleCount\(6),
	datac => \sdram_controller|writeBuffer[119][0]~q\,
	datad => \sdram_controller|Mux31~33_combout\,
	combout => \sdram_controller|Mux31~34_combout\);

-- Location: LCCOMB_X34_Y29_N26
\sdram_controller|Mux31~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux31~37_combout\ = (\sdram_controller|stateCycleCount\(3) & (((\sdram_controller|stateCycleCount\(4))))) # (!\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|stateCycleCount\(4) & ((\sdram_controller|Mux31~34_combout\))) # 
-- (!\sdram_controller|stateCycleCount\(4) & (\sdram_controller|Mux31~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux31~36_combout\,
	datab => \sdram_controller|stateCycleCount\(3),
	datac => \sdram_controller|stateCycleCount\(4),
	datad => \sdram_controller|Mux31~34_combout\,
	combout => \sdram_controller|Mux31~37_combout\);

-- Location: LCCOMB_X35_Y28_N28
\sdram_controller|writeBuffer[47][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[47][0]~feeder_combout\ = \Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~2_combout\,
	combout => \sdram_controller|writeBuffer[47][0]~feeder_combout\);

-- Location: LCCOMB_X39_Y28_N16
\sdram_controller|Decoder3~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~67_combout\ = (!\sdram_controller|writeBufferWriteCount\(5) & (\sdram_controller|writeBufferWriteCount\(4) & (\sdram_controller|writeBufferWriteCount\(0) & !\sdram_controller|writeBufferWriteCount\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(5),
	datab => \sdram_controller|writeBufferWriteCount\(4),
	datac => \sdram_controller|writeBufferWriteCount\(0),
	datad => \sdram_controller|writeBufferWriteCount\(3),
	combout => \sdram_controller|Decoder3~67_combout\);

-- Location: LCCOMB_X35_Y28_N4
\sdram_controller|Decoder3~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~68_combout\ = (\sdram_controller|Decoder3~0_combout\ & (\sdram_controller|Decoder3~67_combout\ & (\sdram_controller|writeBufferWriteCount\(2) & \sdram_controller|writeBufferWriteCount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Decoder3~0_combout\,
	datab => \sdram_controller|Decoder3~67_combout\,
	datac => \sdram_controller|writeBufferWriteCount\(2),
	datad => \sdram_controller|writeBufferWriteCount\(1),
	combout => \sdram_controller|Decoder3~68_combout\);

-- Location: FF_X35_Y28_N29
\sdram_controller|writeBuffer[47][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[47][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[47][0]~q\);

-- Location: LCCOMB_X37_Y27_N24
\sdram_controller|Decoder3~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~73_combout\ = (!\sdram_controller|writeBufferWriteCount\(3) & (\sdram_controller|writeBufferWriteCount\(4) & (\sdram_controller|writeBufferWriteCount\(0) & \sdram_controller|writeBufferWriteCount\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(3),
	datab => \sdram_controller|writeBufferWriteCount\(4),
	datac => \sdram_controller|writeBufferWriteCount\(0),
	datad => \sdram_controller|writeBufferWriteCount\(5),
	combout => \sdram_controller|Decoder3~73_combout\);

-- Location: LCCOMB_X36_Y27_N14
\sdram_controller|Decoder3~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~74_combout\ = (\sdram_controller|Decoder3~0_combout\ & (\sdram_controller|writeBufferWriteCount\(2) & (\sdram_controller|writeBufferWriteCount\(1) & \sdram_controller|Decoder3~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Decoder3~0_combout\,
	datab => \sdram_controller|writeBufferWriteCount\(2),
	datac => \sdram_controller|writeBufferWriteCount\(1),
	datad => \sdram_controller|Decoder3~73_combout\,
	combout => \sdram_controller|Decoder3~74_combout\);

-- Location: FF_X35_Y29_N29
\sdram_controller|writeBuffer[111][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[111][0]~q\);

-- Location: LCCOMB_X36_Y28_N4
\sdram_controller|Decoder3~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~71_combout\ = (!\sdram_controller|writeBufferWriteCount\(5) & (\sdram_controller|writeBufferWriteCount\(2) & (\sdram_controller|writeBufferWriteCount\(0) & !\sdram_controller|writeBufferWriteCount\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(5),
	datab => \sdram_controller|writeBufferWriteCount\(2),
	datac => \sdram_controller|writeBufferWriteCount\(0),
	datad => \sdram_controller|writeBufferWriteCount\(3),
	combout => \sdram_controller|Decoder3~71_combout\);

-- Location: LCCOMB_X36_Y28_N22
\sdram_controller|Decoder3~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~72_combout\ = (\sdram_controller|writeBufferWriteCount\(1) & (\sdram_controller|Decoder3~0_combout\ & (\sdram_controller|Decoder3~71_combout\ & !\sdram_controller|writeBufferWriteCount\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(1),
	datab => \sdram_controller|Decoder3~0_combout\,
	datac => \sdram_controller|Decoder3~71_combout\,
	datad => \sdram_controller|writeBufferWriteCount\(4),
	combout => \sdram_controller|Decoder3~72_combout\);

-- Location: FF_X36_Y28_N1
\sdram_controller|writeBuffer[15][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[15][0]~q\);

-- Location: LCCOMB_X37_Y28_N28
\sdram_controller|writeBuffer[79][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[79][0]~feeder_combout\ = \Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~2_combout\,
	combout => \sdram_controller|writeBuffer[79][0]~feeder_combout\);

-- Location: LCCOMB_X39_Y28_N8
\sdram_controller|Decoder3~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~70_combout\ = (\sdram_controller|Decoder3~69_combout\ & (!\sdram_controller|writeBufferWriteCount\(3) & (!\sdram_controller|writeBufferWriteCount\(4) & \sdram_controller|writeBufferWriteCount\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Decoder3~69_combout\,
	datab => \sdram_controller|writeBufferWriteCount\(3),
	datac => \sdram_controller|writeBufferWriteCount\(4),
	datad => \sdram_controller|writeBufferWriteCount\(5),
	combout => \sdram_controller|Decoder3~70_combout\);

-- Location: FF_X37_Y28_N29
\sdram_controller|writeBuffer[79][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[79][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[79][0]~q\);

-- Location: LCCOMB_X36_Y28_N0
\sdram_controller|Mux31~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux31~31_combout\ = (\sdram_controller|stateCycleCount\(5) & (\sdram_controller|stateCycleCount\(6))) # (!\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|writeBuffer[79][0]~q\))) # 
-- (!\sdram_controller|stateCycleCount\(6) & (\sdram_controller|writeBuffer[15][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(5),
	datab => \sdram_controller|stateCycleCount\(6),
	datac => \sdram_controller|writeBuffer[15][0]~q\,
	datad => \sdram_controller|writeBuffer[79][0]~q\,
	combout => \sdram_controller|Mux31~31_combout\);

-- Location: LCCOMB_X35_Y29_N28
\sdram_controller|Mux31~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux31~32_combout\ = (\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|Mux31~31_combout\ & ((\sdram_controller|writeBuffer[111][0]~q\))) # (!\sdram_controller|Mux31~31_combout\ & (\sdram_controller|writeBuffer[47][0]~q\)))) # 
-- (!\sdram_controller|stateCycleCount\(5) & (((\sdram_controller|Mux31~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(5),
	datab => \sdram_controller|writeBuffer[47][0]~q\,
	datac => \sdram_controller|writeBuffer[111][0]~q\,
	datad => \sdram_controller|Mux31~31_combout\,
	combout => \sdram_controller|Mux31~32_combout\);

-- Location: LCCOMB_X34_Y29_N24
\sdram_controller|Mux31~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux31~40_combout\ = (\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|Mux31~37_combout\ & (\sdram_controller|Mux31~39_combout\)) # (!\sdram_controller|Mux31~37_combout\ & ((\sdram_controller|Mux31~32_combout\))))) # 
-- (!\sdram_controller|stateCycleCount\(3) & (((\sdram_controller|Mux31~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux31~39_combout\,
	datab => \sdram_controller|stateCycleCount\(3),
	datac => \sdram_controller|Mux31~37_combout\,
	datad => \sdram_controller|Mux31~32_combout\,
	combout => \sdram_controller|Mux31~40_combout\);

-- Location: LCCOMB_X40_Y28_N30
\sdram_controller|writeBuffer[43][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[43][0]~feeder_combout\ = \Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~2_combout\,
	combout => \sdram_controller|writeBuffer[43][0]~feeder_combout\);

-- Location: LCCOMB_X41_Y27_N6
\sdram_controller|Decoder3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~1_combout\ = (!\sdram_controller|writeBufferWriteCount\(1) & (\sdram_controller|writeBufferWriteCount\(2) & (\sdram_controller|writeBufferWriteCount\(0) & \sdram_controller|Decoder3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(1),
	datab => \sdram_controller|writeBufferWriteCount\(2),
	datac => \sdram_controller|writeBufferWriteCount\(0),
	datad => \sdram_controller|Decoder3~0_combout\,
	combout => \sdram_controller|Decoder3~1_combout\);

-- Location: LCCOMB_X41_Y27_N28
\sdram_controller|Decoder3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~3_combout\ = (\sdram_controller|Decoder3~1_combout\ & (!\sdram_controller|writeBufferWriteCount\(5) & (\sdram_controller|writeBufferWriteCount\(4) & !\sdram_controller|writeBufferWriteCount\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Decoder3~1_combout\,
	datab => \sdram_controller|writeBufferWriteCount\(5),
	datac => \sdram_controller|writeBufferWriteCount\(4),
	datad => \sdram_controller|writeBufferWriteCount\(3),
	combout => \sdram_controller|Decoder3~3_combout\);

-- Location: FF_X40_Y28_N31
\sdram_controller|writeBuffer[43][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[43][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[43][0]~q\);

-- Location: LCCOMB_X40_Y28_N18
\sdram_controller|Decoder3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~4_combout\ = (!\sdram_controller|writeBufferWriteCount\(3) & (!\sdram_controller|writeBufferWriteCount\(4) & (!\sdram_controller|writeBufferWriteCount\(5) & \sdram_controller|Decoder3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(3),
	datab => \sdram_controller|writeBufferWriteCount\(4),
	datac => \sdram_controller|writeBufferWriteCount\(5),
	datad => \sdram_controller|Decoder3~1_combout\,
	combout => \sdram_controller|Decoder3~4_combout\);

-- Location: FF_X40_Y28_N25
\sdram_controller|writeBuffer[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[11][0]~q\);

-- Location: LCCOMB_X40_Y28_N24
\sdram_controller|Mux31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux31~0_combout\ = (\sdram_controller|stateCycleCount\(6) & (((\sdram_controller|stateCycleCount\(5))))) # (!\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|stateCycleCount\(5) & (\sdram_controller|writeBuffer[43][0]~q\)) # 
-- (!\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|writeBuffer[11][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[43][0]~q\,
	datab => \sdram_controller|stateCycleCount\(6),
	datac => \sdram_controller|writeBuffer[11][0]~q\,
	datad => \sdram_controller|stateCycleCount\(5),
	combout => \sdram_controller|Mux31~0_combout\);

-- Location: LCCOMB_X41_Y28_N14
\sdram_controller|Decoder3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~5_combout\ = (\sdram_controller|writeBufferWriteCount\(5) & (!\sdram_controller|writeBufferWriteCount\(3) & (\sdram_controller|writeBufferWriteCount\(4) & \sdram_controller|Decoder3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(5),
	datab => \sdram_controller|writeBufferWriteCount\(3),
	datac => \sdram_controller|writeBufferWriteCount\(4),
	datad => \sdram_controller|Decoder3~1_combout\,
	combout => \sdram_controller|Decoder3~5_combout\);

-- Location: FF_X41_Y28_N3
\sdram_controller|writeBuffer[107][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[107][0]~q\);

-- Location: LCCOMB_X41_Y28_N12
\sdram_controller|writeBuffer[75][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[75][0]~feeder_combout\ = \Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~2_combout\,
	combout => \sdram_controller|writeBuffer[75][0]~feeder_combout\);

-- Location: LCCOMB_X42_Y28_N12
\sdram_controller|Decoder3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~2_combout\ = (!\sdram_controller|writeBufferWriteCount\(3) & (\sdram_controller|writeBufferWriteCount\(5) & (\sdram_controller|Decoder3~1_combout\ & !\sdram_controller|writeBufferWriteCount\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(3),
	datab => \sdram_controller|writeBufferWriteCount\(5),
	datac => \sdram_controller|Decoder3~1_combout\,
	datad => \sdram_controller|writeBufferWriteCount\(4),
	combout => \sdram_controller|Decoder3~2_combout\);

-- Location: FF_X41_Y28_N13
\sdram_controller|writeBuffer[75][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[75][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[75][0]~q\);

-- Location: LCCOMB_X41_Y28_N2
\sdram_controller|Mux31~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux31~1_combout\ = (\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|Mux31~0_combout\ & (\sdram_controller|writeBuffer[107][0]~q\)) # (!\sdram_controller|Mux31~0_combout\ & ((\sdram_controller|writeBuffer[75][0]~q\))))) # 
-- (!\sdram_controller|stateCycleCount\(6) & (\sdram_controller|Mux31~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(6),
	datab => \sdram_controller|Mux31~0_combout\,
	datac => \sdram_controller|writeBuffer[107][0]~q\,
	datad => \sdram_controller|writeBuffer[75][0]~q\,
	combout => \sdram_controller|Mux31~1_combout\);

-- Location: LCCOMB_X36_Y27_N4
\sdram_controller|writeBuffer[35][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[35][0]~feeder_combout\ = \Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~2_combout\,
	combout => \sdram_controller|writeBuffer[35][0]~feeder_combout\);

-- Location: LCCOMB_X41_Y27_N10
\sdram_controller|Decoder3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~6_combout\ = (!\sdram_controller|writeBufferWriteCount\(1) & (!\sdram_controller|writeBufferWriteCount\(2) & (\sdram_controller|writeBufferWriteCount\(0) & \sdram_controller|Decoder3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(1),
	datab => \sdram_controller|writeBufferWriteCount\(2),
	datac => \sdram_controller|writeBufferWriteCount\(0),
	datad => \sdram_controller|Decoder3~0_combout\,
	combout => \sdram_controller|Decoder3~6_combout\);

-- Location: LCCOMB_X40_Y27_N16
\sdram_controller|Decoder3~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~11_combout\ = (!\sdram_controller|writeBufferWriteCount\(3) & (\sdram_controller|Decoder3~6_combout\ & (\sdram_controller|writeBufferWriteCount\(4) & !\sdram_controller|writeBufferWriteCount\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(3),
	datab => \sdram_controller|Decoder3~6_combout\,
	datac => \sdram_controller|writeBufferWriteCount\(4),
	datad => \sdram_controller|writeBufferWriteCount\(5),
	combout => \sdram_controller|Decoder3~11_combout\);

-- Location: FF_X36_Y27_N5
\sdram_controller|writeBuffer[35][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[35][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[35][0]~q\);

-- Location: LCCOMB_X39_Y30_N18
\sdram_controller|Decoder3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~14_combout\ = (!\sdram_controller|writeBufferWriteCount\(3) & (\sdram_controller|writeBufferWriteCount\(4) & (\sdram_controller|writeBufferWriteCount\(5) & \sdram_controller|Decoder3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(3),
	datab => \sdram_controller|writeBufferWriteCount\(4),
	datac => \sdram_controller|writeBufferWriteCount\(5),
	datad => \sdram_controller|Decoder3~6_combout\,
	combout => \sdram_controller|Decoder3~14_combout\);

-- Location: FF_X39_Y30_N31
\sdram_controller|writeBuffer[99][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[99][0]~q\);

-- Location: LCCOMB_X39_Y30_N4
\sdram_controller|Decoder3~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~13_combout\ = (!\sdram_controller|writeBufferWriteCount\(3) & (!\sdram_controller|writeBufferWriteCount\(4) & (!\sdram_controller|writeBufferWriteCount\(5) & \sdram_controller|Decoder3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(3),
	datab => \sdram_controller|writeBufferWriteCount\(4),
	datac => \sdram_controller|writeBufferWriteCount\(5),
	datad => \sdram_controller|Decoder3~6_combout\,
	combout => \sdram_controller|Decoder3~13_combout\);

-- Location: FF_X39_Y30_N13
\sdram_controller|writeBuffer[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[3][0]~q\);

-- Location: LCCOMB_X34_Y28_N8
\sdram_controller|writeBuffer[67][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[67][0]~feeder_combout\ = \Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~2_combout\,
	combout => \sdram_controller|writeBuffer[67][0]~feeder_combout\);

-- Location: LCCOMB_X39_Y28_N30
\sdram_controller|Decoder3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~12_combout\ = (\sdram_controller|writeBufferWriteCount\(5) & (!\sdram_controller|writeBufferWriteCount\(3) & (!\sdram_controller|writeBufferWriteCount\(4) & \sdram_controller|Decoder3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(5),
	datab => \sdram_controller|writeBufferWriteCount\(3),
	datac => \sdram_controller|writeBufferWriteCount\(4),
	datad => \sdram_controller|Decoder3~6_combout\,
	combout => \sdram_controller|Decoder3~12_combout\);

-- Location: FF_X34_Y28_N9
\sdram_controller|writeBuffer[67][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[67][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[67][0]~q\);

-- Location: LCCOMB_X39_Y30_N12
\sdram_controller|Mux31~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux31~4_combout\ = (\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|stateCycleCount\(5)) # ((\sdram_controller|writeBuffer[67][0]~q\)))) # (!\sdram_controller|stateCycleCount\(6) & (!\sdram_controller|stateCycleCount\(5) & 
-- (\sdram_controller|writeBuffer[3][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(6),
	datab => \sdram_controller|stateCycleCount\(5),
	datac => \sdram_controller|writeBuffer[3][0]~q\,
	datad => \sdram_controller|writeBuffer[67][0]~q\,
	combout => \sdram_controller|Mux31~4_combout\);

-- Location: LCCOMB_X39_Y30_N30
\sdram_controller|Mux31~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux31~5_combout\ = (\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|Mux31~4_combout\ & ((\sdram_controller|writeBuffer[99][0]~q\))) # (!\sdram_controller|Mux31~4_combout\ & (\sdram_controller|writeBuffer[35][0]~q\)))) # 
-- (!\sdram_controller|stateCycleCount\(5) & (((\sdram_controller|Mux31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[35][0]~q\,
	datab => \sdram_controller|stateCycleCount\(5),
	datac => \sdram_controller|writeBuffer[99][0]~q\,
	datad => \sdram_controller|Mux31~4_combout\,
	combout => \sdram_controller|Mux31~5_combout\);

-- Location: LCCOMB_X39_Y27_N4
\sdram_controller|writeBuffer[51][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[51][0]~feeder_combout\ = \Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~2_combout\,
	combout => \sdram_controller|writeBuffer[51][0]~feeder_combout\);

-- Location: LCCOMB_X39_Y27_N8
\sdram_controller|Decoder3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~7_combout\ = (\sdram_controller|writeBufferWriteCount\(4) & (!\sdram_controller|writeBufferWriteCount\(5) & (\sdram_controller|Decoder3~6_combout\ & \sdram_controller|writeBufferWriteCount\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(4),
	datab => \sdram_controller|writeBufferWriteCount\(5),
	datac => \sdram_controller|Decoder3~6_combout\,
	datad => \sdram_controller|writeBufferWriteCount\(3),
	combout => \sdram_controller|Decoder3~7_combout\);

-- Location: FF_X39_Y27_N5
\sdram_controller|writeBuffer[51][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[51][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[51][0]~q\);

-- Location: LCCOMB_X39_Y27_N14
\sdram_controller|Decoder3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~10_combout\ = (\sdram_controller|writeBufferWriteCount\(4) & (\sdram_controller|writeBufferWriteCount\(5) & (\sdram_controller|Decoder3~6_combout\ & \sdram_controller|writeBufferWriteCount\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(4),
	datab => \sdram_controller|writeBufferWriteCount\(5),
	datac => \sdram_controller|Decoder3~6_combout\,
	datad => \sdram_controller|writeBufferWriteCount\(3),
	combout => \sdram_controller|Decoder3~10_combout\);

-- Location: FF_X38_Y27_N5
\sdram_controller|writeBuffer[115][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[115][0]~q\);

-- Location: LCCOMB_X41_Y27_N8
\sdram_controller|Decoder3~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~9_combout\ = (\sdram_controller|Decoder3~6_combout\ & (\sdram_controller|writeBufferWriteCount\(3) & (!\sdram_controller|writeBufferWriteCount\(4) & !\sdram_controller|writeBufferWriteCount\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Decoder3~6_combout\,
	datab => \sdram_controller|writeBufferWriteCount\(3),
	datac => \sdram_controller|writeBufferWriteCount\(4),
	datad => \sdram_controller|writeBufferWriteCount\(5),
	combout => \sdram_controller|Decoder3~9_combout\);

-- Location: FF_X40_Y30_N25
\sdram_controller|writeBuffer[19][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[19][0]~q\);

-- Location: LCCOMB_X41_Y30_N24
\sdram_controller|writeBuffer[83][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[83][0]~feeder_combout\ = \Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~2_combout\,
	combout => \sdram_controller|writeBuffer[83][0]~feeder_combout\);

-- Location: LCCOMB_X41_Y30_N26
\sdram_controller|Decoder3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~8_combout\ = (!\sdram_controller|writeBufferWriteCount\(4) & (\sdram_controller|writeBufferWriteCount\(5) & (\sdram_controller|writeBufferWriteCount\(3) & \sdram_controller|Decoder3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(4),
	datab => \sdram_controller|writeBufferWriteCount\(5),
	datac => \sdram_controller|writeBufferWriteCount\(3),
	datad => \sdram_controller|Decoder3~6_combout\,
	combout => \sdram_controller|Decoder3~8_combout\);

-- Location: FF_X41_Y30_N25
\sdram_controller|writeBuffer[83][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[83][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[83][0]~q\);

-- Location: LCCOMB_X40_Y30_N24
\sdram_controller|Mux31~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux31~2_combout\ = (\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|stateCycleCount\(5)) # ((\sdram_controller|writeBuffer[83][0]~q\)))) # (!\sdram_controller|stateCycleCount\(6) & (!\sdram_controller|stateCycleCount\(5) & 
-- (\sdram_controller|writeBuffer[19][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(6),
	datab => \sdram_controller|stateCycleCount\(5),
	datac => \sdram_controller|writeBuffer[19][0]~q\,
	datad => \sdram_controller|writeBuffer[83][0]~q\,
	combout => \sdram_controller|Mux31~2_combout\);

-- Location: LCCOMB_X38_Y27_N4
\sdram_controller|Mux31~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux31~3_combout\ = (\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|Mux31~2_combout\ & ((\sdram_controller|writeBuffer[115][0]~q\))) # (!\sdram_controller|Mux31~2_combout\ & (\sdram_controller|writeBuffer[51][0]~q\)))) # 
-- (!\sdram_controller|stateCycleCount\(5) & (((\sdram_controller|Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[51][0]~q\,
	datab => \sdram_controller|stateCycleCount\(5),
	datac => \sdram_controller|writeBuffer[115][0]~q\,
	datad => \sdram_controller|Mux31~2_combout\,
	combout => \sdram_controller|Mux31~3_combout\);

-- Location: LCCOMB_X34_Y29_N16
\sdram_controller|Mux31~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux31~6_combout\ = (\sdram_controller|stateCycleCount\(4) & (((\sdram_controller|Mux31~3_combout\) # (\sdram_controller|stateCycleCount\(3))))) # (!\sdram_controller|stateCycleCount\(4) & (\sdram_controller|Mux31~5_combout\ & 
-- ((!\sdram_controller|stateCycleCount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(4),
	datab => \sdram_controller|Mux31~5_combout\,
	datac => \sdram_controller|Mux31~3_combout\,
	datad => \sdram_controller|stateCycleCount\(3),
	combout => \sdram_controller|Mux31~6_combout\);

-- Location: LCCOMB_X43_Y28_N14
\sdram_controller|Decoder3~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~17_combout\ = (!\sdram_controller|writeBufferWriteCount\(4) & (!\sdram_controller|writeBufferWriteCount\(5) & (\sdram_controller|writeBufferWriteCount\(3) & \sdram_controller|Decoder3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(4),
	datab => \sdram_controller|writeBufferWriteCount\(5),
	datac => \sdram_controller|writeBufferWriteCount\(3),
	datad => \sdram_controller|Decoder3~1_combout\,
	combout => \sdram_controller|Decoder3~17_combout\);

-- Location: FF_X43_Y28_N31
\sdram_controller|writeBuffer[27][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[27][0]~q\);

-- Location: LCCOMB_X43_Y28_N12
\sdram_controller|writeBuffer[59][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[59][0]~feeder_combout\ = \Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~2_combout\,
	combout => \sdram_controller|writeBuffer[59][0]~feeder_combout\);

-- Location: LCCOMB_X43_Y28_N4
\sdram_controller|Decoder3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~16_combout\ = (\sdram_controller|writeBufferWriteCount\(4) & (!\sdram_controller|writeBufferWriteCount\(5) & (\sdram_controller|writeBufferWriteCount\(3) & \sdram_controller|Decoder3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(4),
	datab => \sdram_controller|writeBufferWriteCount\(5),
	datac => \sdram_controller|writeBufferWriteCount\(3),
	datad => \sdram_controller|Decoder3~1_combout\,
	combout => \sdram_controller|Decoder3~16_combout\);

-- Location: FF_X43_Y28_N13
\sdram_controller|writeBuffer[59][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[59][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[59][0]~q\);

-- Location: LCCOMB_X43_Y28_N30
\sdram_controller|Mux31~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux31~7_combout\ = (\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|stateCycleCount\(6)) # ((\sdram_controller|writeBuffer[59][0]~q\)))) # (!\sdram_controller|stateCycleCount\(5) & (!\sdram_controller|stateCycleCount\(6) & 
-- (\sdram_controller|writeBuffer[27][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(5),
	datab => \sdram_controller|stateCycleCount\(6),
	datac => \sdram_controller|writeBuffer[27][0]~q\,
	datad => \sdram_controller|writeBuffer[59][0]~q\,
	combout => \sdram_controller|Mux31~7_combout\);

-- Location: LCCOMB_X43_Y27_N4
\sdram_controller|Decoder3~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~18_combout\ = (\sdram_controller|writeBufferWriteCount\(4) & (\sdram_controller|writeBufferWriteCount\(3) & (\sdram_controller|Decoder3~1_combout\ & \sdram_controller|writeBufferWriteCount\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(4),
	datab => \sdram_controller|writeBufferWriteCount\(3),
	datac => \sdram_controller|Decoder3~1_combout\,
	datad => \sdram_controller|writeBufferWriteCount\(5),
	combout => \sdram_controller|Decoder3~18_combout\);

-- Location: FF_X43_Y27_N17
\sdram_controller|writeBuffer[123][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[123][0]~q\);

-- Location: LCCOMB_X41_Y30_N2
\sdram_controller|writeBuffer[91][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[91][0]~feeder_combout\ = \Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~2_combout\,
	combout => \sdram_controller|writeBuffer[91][0]~feeder_combout\);

-- Location: LCCOMB_X42_Y30_N16
\sdram_controller|Decoder3~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Decoder3~15_combout\ = (!\sdram_controller|writeBufferWriteCount\(4) & (\sdram_controller|writeBufferWriteCount\(3) & (\sdram_controller|Decoder3~1_combout\ & \sdram_controller|writeBufferWriteCount\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBufferWriteCount\(4),
	datab => \sdram_controller|writeBufferWriteCount\(3),
	datac => \sdram_controller|Decoder3~1_combout\,
	datad => \sdram_controller|writeBufferWriteCount\(5),
	combout => \sdram_controller|Decoder3~15_combout\);

-- Location: FF_X41_Y30_N3
\sdram_controller|writeBuffer[91][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[91][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[91][0]~q\);

-- Location: LCCOMB_X43_Y27_N16
\sdram_controller|Mux31~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux31~8_combout\ = (\sdram_controller|Mux31~7_combout\ & (((\sdram_controller|writeBuffer[123][0]~q\)) # (!\sdram_controller|stateCycleCount\(6)))) # (!\sdram_controller|Mux31~7_combout\ & (\sdram_controller|stateCycleCount\(6) & 
-- ((\sdram_controller|writeBuffer[91][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux31~7_combout\,
	datab => \sdram_controller|stateCycleCount\(6),
	datac => \sdram_controller|writeBuffer[123][0]~q\,
	datad => \sdram_controller|writeBuffer[91][0]~q\,
	combout => \sdram_controller|Mux31~8_combout\);

-- Location: LCCOMB_X34_Y29_N10
\sdram_controller|Mux31~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux31~9_combout\ = (\sdram_controller|Mux31~6_combout\ & (((\sdram_controller|Mux31~8_combout\) # (!\sdram_controller|stateCycleCount\(3))))) # (!\sdram_controller|Mux31~6_combout\ & (\sdram_controller|Mux31~1_combout\ & 
-- ((\sdram_controller|stateCycleCount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux31~1_combout\,
	datab => \sdram_controller|Mux31~6_combout\,
	datac => \sdram_controller|Mux31~8_combout\,
	datad => \sdram_controller|stateCycleCount\(3),
	combout => \sdram_controller|Mux31~9_combout\);

-- Location: LCCOMB_X34_Y29_N18
\sdram_controller|Mux31~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux31~41_combout\ = (\sdram_controller|Mux31~30_combout\ & ((\sdram_controller|Mux31~40_combout\) # ((!\sdram_controller|stateCycleCount\(1))))) # (!\sdram_controller|Mux31~30_combout\ & (((\sdram_controller|stateCycleCount\(1) & 
-- \sdram_controller|Mux31~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux31~30_combout\,
	datab => \sdram_controller|Mux31~40_combout\,
	datac => \sdram_controller|stateCycleCount\(1),
	datad => \sdram_controller|Mux31~9_combout\,
	combout => \sdram_controller|Mux31~41_combout\);

-- Location: LCCOMB_X34_Y29_N4
\sdram_controller|Mux31~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux31~42_combout\ = (\sdram_controller|stateCycleCount\(0) & \sdram_controller|Mux31~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sdram_controller|stateCycleCount\(0),
	datad => \sdram_controller|Mux31~41_combout\,
	combout => \sdram_controller|Mux31~42_combout\);

-- Location: LCCOMB_X40_Y24_N6
\sdram_controller|LessThan11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|LessThan11~0_combout\ = (\sdram_controller|stateCycleCount\(0) & (!\sdram_controller|burstLengthReg\(0) & (\sdram_controller|stateCycleCount\(1) $ (!\sdram_controller|burstLengthReg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(0),
	datab => \sdram_controller|stateCycleCount\(1),
	datac => \sdram_controller|burstLengthReg\(0),
	datad => \sdram_controller|burstLengthReg\(1),
	combout => \sdram_controller|LessThan11~0_combout\);

-- Location: LCCOMB_X40_Y24_N8
\sdram_controller|LessThan11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|LessThan11~1_combout\ = (\sdram_controller|LessThan11~0_combout\) # ((\sdram_controller|stateCycleCount\(2)) # ((!\sdram_controller|burstLengthReg\(1) & \sdram_controller|stateCycleCount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|LessThan11~0_combout\,
	datab => \sdram_controller|burstLengthReg\(1),
	datac => \sdram_controller|stateCycleCount\(1),
	datad => \sdram_controller|stateCycleCount\(2),
	combout => \sdram_controller|LessThan11~1_combout\);

-- Location: LCCOMB_X39_Y24_N10
\sdram_controller|LessThan11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|LessThan11~2_combout\ = ((\sdram_controller|burstLengthReg\(3) & (\sdram_controller|stateCycleCount\(3) & \sdram_controller|LessThan11~1_combout\)) # (!\sdram_controller|burstLengthReg\(3) & ((\sdram_controller|stateCycleCount\(3)) # 
-- (\sdram_controller|LessThan11~1_combout\)))) # (!\sdram_controller|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|burstLengthReg\(3),
	datab => \sdram_controller|stateCycleCount\(3),
	datac => \sdram_controller|LessThan11~1_combout\,
	datad => \sdram_controller|Equal1~3_combout\,
	combout => \sdram_controller|LessThan11~2_combout\);

-- Location: LCCOMB_X39_Y24_N6
\sdram_controller|SDRAM_DATA[15]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|SDRAM_DATA[15]~16_combout\ = (!\sdram_controller|LessThan11~2_combout\ & \sdram_controller|controllerState.SDRAM_WRITE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|LessThan11~2_combout\,
	datad => \sdram_controller|controllerState.SDRAM_WRITE~q\,
	combout => \sdram_controller|SDRAM_DATA[15]~16_combout\);

-- Location: LCCOMB_X38_Y28_N20
\Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (transmitCount(1) & (\Add0~1\ & VCC)) # (!transmitCount(1) & (!\Add0~1\))
-- \Add0~4\ = CARRY((!transmitCount(1) & !\Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => transmitCount(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

-- Location: LCCOMB_X39_Y28_N28
\Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = (\state.TRANSMIT~q\ & \Add0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.TRANSMIT~q\,
	datad => \Add0~3_combout\,
	combout => \Add0~5_combout\);

-- Location: LCCOMB_X43_Y28_N8
\sdram_controller|writeBuffer[59][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[59][1]~feeder_combout\ = \Add0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~5_combout\,
	combout => \sdram_controller|writeBuffer[59][1]~feeder_combout\);

-- Location: FF_X43_Y28_N9
\sdram_controller|writeBuffer[59][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[59][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[59][1]~q\);

-- Location: FF_X42_Y28_N21
\sdram_controller|writeBuffer[57][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[57][1]~q\);

-- Location: LCCOMB_X42_Y28_N20
\sdram_controller|Mux30~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux30~17_combout\ = (\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|writeBuffer[59][1]~q\) # ((\sdram_controller|stateCycleCount\(2))))) # (!\sdram_controller|stateCycleCount\(1) & (((\sdram_controller|writeBuffer[57][1]~q\ 
-- & !\sdram_controller|stateCycleCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datab => \sdram_controller|writeBuffer[59][1]~q\,
	datac => \sdram_controller|writeBuffer[57][1]~q\,
	datad => \sdram_controller|stateCycleCount\(2),
	combout => \sdram_controller|Mux30~17_combout\);

-- Location: FF_X35_Y28_N3
\sdram_controller|writeBuffer[63][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[63][1]~q\);

-- Location: LCCOMB_X40_Y29_N14
\sdram_controller|writeBuffer[61][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[61][1]~feeder_combout\ = \Add0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~5_combout\,
	combout => \sdram_controller|writeBuffer[61][1]~feeder_combout\);

-- Location: FF_X40_Y29_N15
\sdram_controller|writeBuffer[61][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[61][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[61][1]~q\);

-- Location: LCCOMB_X35_Y28_N2
\sdram_controller|Mux30~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux30~18_combout\ = (\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|Mux30~17_combout\ & (\sdram_controller|writeBuffer[63][1]~q\)) # (!\sdram_controller|Mux30~17_combout\ & ((\sdram_controller|writeBuffer[61][1]~q\))))) # 
-- (!\sdram_controller|stateCycleCount\(2) & (\sdram_controller|Mux30~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(2),
	datab => \sdram_controller|Mux30~17_combout\,
	datac => \sdram_controller|writeBuffer[63][1]~q\,
	datad => \sdram_controller|writeBuffer[61][1]~q\,
	combout => \sdram_controller|Mux30~18_combout\);

-- Location: LCCOMB_X40_Y28_N14
\sdram_controller|writeBuffer[43][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[43][1]~feeder_combout\ = \Add0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~5_combout\,
	combout => \sdram_controller|writeBuffer[43][1]~feeder_combout\);

-- Location: FF_X40_Y28_N15
\sdram_controller|writeBuffer[43][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[43][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[43][1]~q\);

-- Location: FF_X35_Y28_N21
\sdram_controller|writeBuffer[47][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[47][1]~q\);

-- Location: FF_X43_Y29_N3
\sdram_controller|writeBuffer[41][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[41][1]~q\);

-- Location: LCCOMB_X37_Y29_N0
\sdram_controller|writeBuffer[45][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[45][1]~feeder_combout\ = \Add0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~5_combout\,
	combout => \sdram_controller|writeBuffer[45][1]~feeder_combout\);

-- Location: FF_X37_Y29_N1
\sdram_controller|writeBuffer[45][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[45][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[45][1]~q\);

-- Location: LCCOMB_X43_Y29_N2
\sdram_controller|Mux30~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux30~10_combout\ = (\sdram_controller|stateCycleCount\(1) & (\sdram_controller|stateCycleCount\(2))) # (!\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|writeBuffer[45][1]~q\))) # 
-- (!\sdram_controller|stateCycleCount\(2) & (\sdram_controller|writeBuffer[41][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datab => \sdram_controller|stateCycleCount\(2),
	datac => \sdram_controller|writeBuffer[41][1]~q\,
	datad => \sdram_controller|writeBuffer[45][1]~q\,
	combout => \sdram_controller|Mux30~10_combout\);

-- Location: LCCOMB_X35_Y28_N20
\sdram_controller|Mux30~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux30~11_combout\ = (\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|Mux30~10_combout\ & ((\sdram_controller|writeBuffer[47][1]~q\))) # (!\sdram_controller|Mux30~10_combout\ & (\sdram_controller|writeBuffer[43][1]~q\)))) # 
-- (!\sdram_controller|stateCycleCount\(1) & (((\sdram_controller|Mux30~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[43][1]~q\,
	datab => \sdram_controller|stateCycleCount\(1),
	datac => \sdram_controller|writeBuffer[47][1]~q\,
	datad => \sdram_controller|Mux30~10_combout\,
	combout => \sdram_controller|Mux30~11_combout\);

-- Location: LCCOMB_X40_Y27_N14
\sdram_controller|writeBuffer[53][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[53][1]~feeder_combout\ = \Add0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~5_combout\,
	combout => \sdram_controller|writeBuffer[53][1]~feeder_combout\);

-- Location: FF_X40_Y27_N15
\sdram_controller|writeBuffer[53][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[53][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[53][1]~q\);

-- Location: FF_X40_Y26_N13
\sdram_controller|writeBuffer[49][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[49][1]~q\);

-- Location: LCCOMB_X40_Y26_N12
\sdram_controller|Mux30~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux30~12_combout\ = (\sdram_controller|stateCycleCount\(1) & (((\sdram_controller|stateCycleCount\(2))))) # (!\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|stateCycleCount\(2) & (\sdram_controller|writeBuffer[53][1]~q\)) # 
-- (!\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|writeBuffer[49][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datab => \sdram_controller|writeBuffer[53][1]~q\,
	datac => \sdram_controller|writeBuffer[49][1]~q\,
	datad => \sdram_controller|stateCycleCount\(2),
	combout => \sdram_controller|Mux30~12_combout\);

-- Location: FF_X35_Y27_N7
\sdram_controller|writeBuffer[55][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[55][1]~q\);

-- Location: LCCOMB_X39_Y27_N2
\sdram_controller|writeBuffer[51][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[51][1]~feeder_combout\ = \Add0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~5_combout\,
	combout => \sdram_controller|writeBuffer[51][1]~feeder_combout\);

-- Location: FF_X39_Y27_N3
\sdram_controller|writeBuffer[51][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[51][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[51][1]~q\);

-- Location: LCCOMB_X35_Y27_N6
\sdram_controller|Mux30~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux30~13_combout\ = (\sdram_controller|Mux30~12_combout\ & (((\sdram_controller|writeBuffer[55][1]~q\)) # (!\sdram_controller|stateCycleCount\(1)))) # (!\sdram_controller|Mux30~12_combout\ & (\sdram_controller|stateCycleCount\(1) & 
-- ((\sdram_controller|writeBuffer[51][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux30~12_combout\,
	datab => \sdram_controller|stateCycleCount\(1),
	datac => \sdram_controller|writeBuffer[55][1]~q\,
	datad => \sdram_controller|writeBuffer[51][1]~q\,
	combout => \sdram_controller|Mux30~13_combout\);

-- Location: LCCOMB_X36_Y27_N0
\sdram_controller|writeBuffer[35][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[35][1]~feeder_combout\ = \Add0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~5_combout\,
	combout => \sdram_controller|writeBuffer[35][1]~feeder_combout\);

-- Location: FF_X36_Y27_N1
\sdram_controller|writeBuffer[35][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[35][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[35][1]~q\);

-- Location: FF_X36_Y27_N31
\sdram_controller|writeBuffer[39][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[39][1]~q\);

-- Location: FF_X40_Y26_N3
\sdram_controller|writeBuffer[33][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[33][1]~q\);

-- Location: LCCOMB_X39_Y26_N14
\sdram_controller|writeBuffer[37][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[37][1]~feeder_combout\ = \Add0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~5_combout\,
	combout => \sdram_controller|writeBuffer[37][1]~feeder_combout\);

-- Location: FF_X39_Y26_N15
\sdram_controller|writeBuffer[37][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[37][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[37][1]~q\);

-- Location: LCCOMB_X40_Y26_N2
\sdram_controller|Mux30~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux30~14_combout\ = (\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|stateCycleCount\(1)) # ((\sdram_controller|writeBuffer[37][1]~q\)))) # (!\sdram_controller|stateCycleCount\(2) & (!\sdram_controller|stateCycleCount\(1) & 
-- (\sdram_controller|writeBuffer[33][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(2),
	datab => \sdram_controller|stateCycleCount\(1),
	datac => \sdram_controller|writeBuffer[33][1]~q\,
	datad => \sdram_controller|writeBuffer[37][1]~q\,
	combout => \sdram_controller|Mux30~14_combout\);

-- Location: LCCOMB_X36_Y27_N30
\sdram_controller|Mux30~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux30~15_combout\ = (\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|Mux30~14_combout\ & ((\sdram_controller|writeBuffer[39][1]~q\))) # (!\sdram_controller|Mux30~14_combout\ & (\sdram_controller|writeBuffer[35][1]~q\)))) # 
-- (!\sdram_controller|stateCycleCount\(1) & (((\sdram_controller|Mux30~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datab => \sdram_controller|writeBuffer[35][1]~q\,
	datac => \sdram_controller|writeBuffer[39][1]~q\,
	datad => \sdram_controller|Mux30~14_combout\,
	combout => \sdram_controller|Mux30~15_combout\);

-- Location: LCCOMB_X37_Y27_N4
\sdram_controller|Mux30~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux30~16_combout\ = (\sdram_controller|stateCycleCount\(4) & ((\sdram_controller|Mux30~13_combout\) # ((\sdram_controller|stateCycleCount\(3))))) # (!\sdram_controller|stateCycleCount\(4) & (((\sdram_controller|Mux30~15_combout\ & 
-- !\sdram_controller|stateCycleCount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux30~13_combout\,
	datab => \sdram_controller|Mux30~15_combout\,
	datac => \sdram_controller|stateCycleCount\(4),
	datad => \sdram_controller|stateCycleCount\(3),
	combout => \sdram_controller|Mux30~16_combout\);

-- Location: LCCOMB_X36_Y30_N12
\sdram_controller|Mux30~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux30~19_combout\ = (\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|Mux30~16_combout\ & (\sdram_controller|Mux30~18_combout\)) # (!\sdram_controller|Mux30~16_combout\ & ((\sdram_controller|Mux30~11_combout\))))) # 
-- (!\sdram_controller|stateCycleCount\(3) & (((\sdram_controller|Mux30~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux30~18_combout\,
	datab => \sdram_controller|Mux30~11_combout\,
	datac => \sdram_controller|stateCycleCount\(3),
	datad => \sdram_controller|Mux30~16_combout\,
	combout => \sdram_controller|Mux30~19_combout\);

-- Location: FF_X39_Y29_N7
\sdram_controller|writeBuffer[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[9][1]~q\);

-- Location: LCCOMB_X36_Y29_N30
\sdram_controller|writeBuffer[13][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[13][1]~feeder_combout\ = \Add0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~5_combout\,
	combout => \sdram_controller|writeBuffer[13][1]~feeder_combout\);

-- Location: FF_X36_Y29_N31
\sdram_controller|writeBuffer[13][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[13][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[13][1]~q\);

-- Location: LCCOMB_X39_Y29_N6
\sdram_controller|Mux30~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux30~22_combout\ = (\sdram_controller|stateCycleCount\(1) & (\sdram_controller|stateCycleCount\(2))) # (!\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|writeBuffer[13][1]~q\))) # 
-- (!\sdram_controller|stateCycleCount\(2) & (\sdram_controller|writeBuffer[9][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datab => \sdram_controller|stateCycleCount\(2),
	datac => \sdram_controller|writeBuffer[9][1]~q\,
	datad => \sdram_controller|writeBuffer[13][1]~q\,
	combout => \sdram_controller|Mux30~22_combout\);

-- Location: FF_X36_Y28_N17
\sdram_controller|writeBuffer[15][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[15][1]~q\);

-- Location: LCCOMB_X40_Y28_N4
\sdram_controller|writeBuffer[11][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[11][1]~feeder_combout\ = \Add0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~5_combout\,
	combout => \sdram_controller|writeBuffer[11][1]~feeder_combout\);

-- Location: FF_X40_Y28_N5
\sdram_controller|writeBuffer[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[11][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[11][1]~q\);

-- Location: LCCOMB_X36_Y28_N16
\sdram_controller|Mux30~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux30~23_combout\ = (\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|Mux30~22_combout\ & (\sdram_controller|writeBuffer[15][1]~q\)) # (!\sdram_controller|Mux30~22_combout\ & ((\sdram_controller|writeBuffer[11][1]~q\))))) # 
-- (!\sdram_controller|stateCycleCount\(1) & (\sdram_controller|Mux30~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datab => \sdram_controller|Mux30~22_combout\,
	datac => \sdram_controller|writeBuffer[15][1]~q\,
	datad => \sdram_controller|writeBuffer[11][1]~q\,
	combout => \sdram_controller|Mux30~23_combout\);

-- Location: FF_X38_Y26_N31
\sdram_controller|writeBuffer[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[1][1]~q\);

-- Location: LCCOMB_X38_Y26_N12
\sdram_controller|writeBuffer[5][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[5][1]~feeder_combout\ = \Add0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~5_combout\,
	combout => \sdram_controller|writeBuffer[5][1]~feeder_combout\);

-- Location: FF_X38_Y26_N13
\sdram_controller|writeBuffer[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[5][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[5][1]~q\);

-- Location: LCCOMB_X38_Y26_N30
\sdram_controller|Mux30~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux30~24_combout\ = (\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|stateCycleCount\(1)) # ((\sdram_controller|writeBuffer[5][1]~q\)))) # (!\sdram_controller|stateCycleCount\(2) & (!\sdram_controller|stateCycleCount\(1) & 
-- (\sdram_controller|writeBuffer[1][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(2),
	datab => \sdram_controller|stateCycleCount\(1),
	datac => \sdram_controller|writeBuffer[1][1]~q\,
	datad => \sdram_controller|writeBuffer[5][1]~q\,
	combout => \sdram_controller|Mux30~24_combout\);

-- Location: FF_X38_Y25_N11
\sdram_controller|writeBuffer[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[7][1]~q\);

-- Location: LCCOMB_X39_Y30_N24
\sdram_controller|writeBuffer[3][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[3][1]~feeder_combout\ = \Add0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~5_combout\,
	combout => \sdram_controller|writeBuffer[3][1]~feeder_combout\);

-- Location: FF_X39_Y30_N25
\sdram_controller|writeBuffer[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[3][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[3][1]~q\);

-- Location: LCCOMB_X38_Y25_N10
\sdram_controller|Mux30~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux30~25_combout\ = (\sdram_controller|Mux30~24_combout\ & (((\sdram_controller|writeBuffer[7][1]~q\)) # (!\sdram_controller|stateCycleCount\(1)))) # (!\sdram_controller|Mux30~24_combout\ & (\sdram_controller|stateCycleCount\(1) & 
-- ((\sdram_controller|writeBuffer[3][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux30~24_combout\,
	datab => \sdram_controller|stateCycleCount\(1),
	datac => \sdram_controller|writeBuffer[7][1]~q\,
	datad => \sdram_controller|writeBuffer[3][1]~q\,
	combout => \sdram_controller|Mux30~25_combout\);

-- Location: LCCOMB_X36_Y30_N10
\sdram_controller|Mux30~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux30~26_combout\ = (\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|Mux30~23_combout\) # ((\sdram_controller|stateCycleCount\(4))))) # (!\sdram_controller|stateCycleCount\(3) & (((!\sdram_controller|stateCycleCount\(4) & 
-- \sdram_controller|Mux30~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(3),
	datab => \sdram_controller|Mux30~23_combout\,
	datac => \sdram_controller|stateCycleCount\(4),
	datad => \sdram_controller|Mux30~25_combout\,
	combout => \sdram_controller|Mux30~26_combout\);

-- Location: LCCOMB_X40_Y30_N4
\sdram_controller|writeBuffer[19][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[19][1]~feeder_combout\ = \Add0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~5_combout\,
	combout => \sdram_controller|writeBuffer[19][1]~feeder_combout\);

-- Location: FF_X40_Y30_N5
\sdram_controller|writeBuffer[19][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[19][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[19][1]~q\);

-- Location: FF_X37_Y30_N27
\sdram_controller|writeBuffer[23][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[23][1]~q\);

-- Location: LCCOMB_X41_Y29_N6
\sdram_controller|writeBuffer[21][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[21][1]~feeder_combout\ = \Add0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~5_combout\,
	combout => \sdram_controller|writeBuffer[21][1]~feeder_combout\);

-- Location: FF_X41_Y29_N7
\sdram_controller|writeBuffer[21][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[21][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[21][1]~q\);

-- Location: FF_X40_Y30_N11
\sdram_controller|writeBuffer[17][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[17][1]~q\);

-- Location: LCCOMB_X40_Y30_N10
\sdram_controller|Mux30~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux30~20_combout\ = (\sdram_controller|stateCycleCount\(1) & (((\sdram_controller|stateCycleCount\(2))))) # (!\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|stateCycleCount\(2) & (\sdram_controller|writeBuffer[21][1]~q\)) # 
-- (!\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|writeBuffer[17][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datab => \sdram_controller|writeBuffer[21][1]~q\,
	datac => \sdram_controller|writeBuffer[17][1]~q\,
	datad => \sdram_controller|stateCycleCount\(2),
	combout => \sdram_controller|Mux30~20_combout\);

-- Location: LCCOMB_X37_Y30_N26
\sdram_controller|Mux30~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux30~21_combout\ = (\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|Mux30~20_combout\ & ((\sdram_controller|writeBuffer[23][1]~q\))) # (!\sdram_controller|Mux30~20_combout\ & (\sdram_controller|writeBuffer[19][1]~q\)))) # 
-- (!\sdram_controller|stateCycleCount\(1) & (((\sdram_controller|Mux30~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datab => \sdram_controller|writeBuffer[19][1]~q\,
	datac => \sdram_controller|writeBuffer[23][1]~q\,
	datad => \sdram_controller|Mux30~20_combout\,
	combout => \sdram_controller|Mux30~21_combout\);

-- Location: LCCOMB_X43_Y28_N10
\sdram_controller|writeBuffer[27][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[27][1]~feeder_combout\ = \Add0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~5_combout\,
	combout => \sdram_controller|writeBuffer[27][1]~feeder_combout\);

-- Location: FF_X43_Y28_N11
\sdram_controller|writeBuffer[27][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[27][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[27][1]~q\);

-- Location: FF_X36_Y28_N3
\sdram_controller|writeBuffer[31][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[31][1]~q\);

-- Location: LCCOMB_X39_Y25_N14
\sdram_controller|writeBuffer[29][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[29][1]~feeder_combout\ = \Add0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~5_combout\,
	combout => \sdram_controller|writeBuffer[29][1]~feeder_combout\);

-- Location: FF_X39_Y25_N15
\sdram_controller|writeBuffer[29][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[29][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[29][1]~q\);

-- Location: FF_X42_Y28_N23
\sdram_controller|writeBuffer[25][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[25][1]~q\);

-- Location: LCCOMB_X42_Y28_N22
\sdram_controller|Mux30~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux30~27_combout\ = (\sdram_controller|stateCycleCount\(1) & (((\sdram_controller|stateCycleCount\(2))))) # (!\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|stateCycleCount\(2) & (\sdram_controller|writeBuffer[29][1]~q\)) # 
-- (!\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|writeBuffer[25][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[29][1]~q\,
	datab => \sdram_controller|stateCycleCount\(1),
	datac => \sdram_controller|writeBuffer[25][1]~q\,
	datad => \sdram_controller|stateCycleCount\(2),
	combout => \sdram_controller|Mux30~27_combout\);

-- Location: LCCOMB_X36_Y28_N2
\sdram_controller|Mux30~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux30~28_combout\ = (\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|Mux30~27_combout\ & ((\sdram_controller|writeBuffer[31][1]~q\))) # (!\sdram_controller|Mux30~27_combout\ & (\sdram_controller|writeBuffer[27][1]~q\)))) # 
-- (!\sdram_controller|stateCycleCount\(1) & (((\sdram_controller|Mux30~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datab => \sdram_controller|writeBuffer[27][1]~q\,
	datac => \sdram_controller|writeBuffer[31][1]~q\,
	datad => \sdram_controller|Mux30~27_combout\,
	combout => \sdram_controller|Mux30~28_combout\);

-- Location: LCCOMB_X36_Y30_N28
\sdram_controller|Mux30~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux30~29_combout\ = (\sdram_controller|Mux30~26_combout\ & (((\sdram_controller|Mux30~28_combout\) # (!\sdram_controller|stateCycleCount\(4))))) # (!\sdram_controller|Mux30~26_combout\ & (\sdram_controller|Mux30~21_combout\ & 
-- (\sdram_controller|stateCycleCount\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux30~26_combout\,
	datab => \sdram_controller|Mux30~21_combout\,
	datac => \sdram_controller|stateCycleCount\(4),
	datad => \sdram_controller|Mux30~28_combout\,
	combout => \sdram_controller|Mux30~29_combout\);

-- Location: LCCOMB_X36_Y30_N6
\sdram_controller|Mux30~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux30~30_combout\ = (\sdram_controller|stateCycleCount\(6) & (((\sdram_controller|stateCycleCount\(5))))) # (!\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|stateCycleCount\(5) & (\sdram_controller|Mux30~19_combout\)) # 
-- (!\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|Mux30~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux30~19_combout\,
	datab => \sdram_controller|stateCycleCount\(6),
	datac => \sdram_controller|stateCycleCount\(5),
	datad => \sdram_controller|Mux30~29_combout\,
	combout => \sdram_controller|Mux30~30_combout\);

-- Location: FF_X42_Y30_N21
\sdram_controller|writeBuffer[89][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[89][1]~q\);

-- Location: LCCOMB_X41_Y30_N10
\sdram_controller|writeBuffer[91][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[91][1]~feeder_combout\ = \Add0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~5_combout\,
	combout => \sdram_controller|writeBuffer[91][1]~feeder_combout\);

-- Location: FF_X41_Y30_N11
\sdram_controller|writeBuffer[91][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[91][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[91][1]~q\);

-- Location: LCCOMB_X42_Y30_N20
\sdram_controller|Mux30~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux30~7_combout\ = (\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|stateCycleCount\(2)) # ((\sdram_controller|writeBuffer[91][1]~q\)))) # (!\sdram_controller|stateCycleCount\(1) & (!\sdram_controller|stateCycleCount\(2) & 
-- (\sdram_controller|writeBuffer[89][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datab => \sdram_controller|stateCycleCount\(2),
	datac => \sdram_controller|writeBuffer[89][1]~q\,
	datad => \sdram_controller|writeBuffer[91][1]~q\,
	combout => \sdram_controller|Mux30~7_combout\);

-- Location: FF_X37_Y28_N5
\sdram_controller|writeBuffer[95][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[95][1]~q\);

-- Location: LCCOMB_X38_Y29_N24
\sdram_controller|writeBuffer[93][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[93][1]~feeder_combout\ = \Add0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~5_combout\,
	combout => \sdram_controller|writeBuffer[93][1]~feeder_combout\);

-- Location: FF_X38_Y29_N25
\sdram_controller|writeBuffer[93][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[93][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[93][1]~q\);

-- Location: LCCOMB_X37_Y28_N4
\sdram_controller|Mux30~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux30~8_combout\ = (\sdram_controller|Mux30~7_combout\ & (((\sdram_controller|writeBuffer[95][1]~q\)) # (!\sdram_controller|stateCycleCount\(2)))) # (!\sdram_controller|Mux30~7_combout\ & (\sdram_controller|stateCycleCount\(2) & 
-- ((\sdram_controller|writeBuffer[93][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux30~7_combout\,
	datab => \sdram_controller|stateCycleCount\(2),
	datac => \sdram_controller|writeBuffer[95][1]~q\,
	datad => \sdram_controller|writeBuffer[93][1]~q\,
	combout => \sdram_controller|Mux30~8_combout\);

-- Location: LCCOMB_X41_Y30_N0
\sdram_controller|writeBuffer[83][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[83][1]~feeder_combout\ = \Add0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~5_combout\,
	combout => \sdram_controller|writeBuffer[83][1]~feeder_combout\);

-- Location: FF_X41_Y30_N1
\sdram_controller|writeBuffer[83][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[83][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[83][1]~q\);

-- Location: FF_X37_Y30_N29
\sdram_controller|writeBuffer[87][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[87][1]~q\);

-- Location: FF_X41_Y26_N23
\sdram_controller|writeBuffer[81][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[81][1]~q\);

-- Location: LCCOMB_X41_Y29_N16
\sdram_controller|writeBuffer[85][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[85][1]~feeder_combout\ = \Add0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~5_combout\,
	combout => \sdram_controller|writeBuffer[85][1]~feeder_combout\);

-- Location: FF_X41_Y29_N17
\sdram_controller|writeBuffer[85][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[85][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[85][1]~q\);

-- Location: LCCOMB_X41_Y26_N22
\sdram_controller|Mux30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux30~0_combout\ = (\sdram_controller|stateCycleCount\(1) & (\sdram_controller|stateCycleCount\(2))) # (!\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|writeBuffer[85][1]~q\))) # 
-- (!\sdram_controller|stateCycleCount\(2) & (\sdram_controller|writeBuffer[81][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datab => \sdram_controller|stateCycleCount\(2),
	datac => \sdram_controller|writeBuffer[81][1]~q\,
	datad => \sdram_controller|writeBuffer[85][1]~q\,
	combout => \sdram_controller|Mux30~0_combout\);

-- Location: LCCOMB_X37_Y30_N28
\sdram_controller|Mux30~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux30~1_combout\ = (\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|Mux30~0_combout\ & ((\sdram_controller|writeBuffer[87][1]~q\))) # (!\sdram_controller|Mux30~0_combout\ & (\sdram_controller|writeBuffer[83][1]~q\)))) # 
-- (!\sdram_controller|stateCycleCount\(1) & (((\sdram_controller|Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datab => \sdram_controller|writeBuffer[83][1]~q\,
	datac => \sdram_controller|writeBuffer[87][1]~q\,
	datad => \sdram_controller|Mux30~0_combout\,
	combout => \sdram_controller|Mux30~1_combout\);

-- Location: LCCOMB_X37_Y25_N26
\sdram_controller|writeBuffer[69][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[69][1]~feeder_combout\ = \Add0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~5_combout\,
	combout => \sdram_controller|writeBuffer[69][1]~feeder_combout\);

-- Location: FF_X37_Y25_N27
\sdram_controller|writeBuffer[69][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[69][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[69][1]~q\);

-- Location: FF_X37_Y26_N25
\sdram_controller|writeBuffer[65][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[65][1]~q\);

-- Location: LCCOMB_X37_Y26_N24
\sdram_controller|Mux30~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux30~4_combout\ = (\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|writeBuffer[69][1]~q\) # ((\sdram_controller|stateCycleCount\(1))))) # (!\sdram_controller|stateCycleCount\(2) & (((\sdram_controller|writeBuffer[65][1]~q\ & 
-- !\sdram_controller|stateCycleCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(2),
	datab => \sdram_controller|writeBuffer[69][1]~q\,
	datac => \sdram_controller|writeBuffer[65][1]~q\,
	datad => \sdram_controller|stateCycleCount\(1),
	combout => \sdram_controller|Mux30~4_combout\);

-- Location: LCCOMB_X34_Y28_N18
\sdram_controller|writeBuffer[67][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[67][1]~feeder_combout\ = \Add0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~5_combout\,
	combout => \sdram_controller|writeBuffer[67][1]~feeder_combout\);

-- Location: FF_X34_Y28_N19
\sdram_controller|writeBuffer[67][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[67][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[67][1]~q\);

-- Location: FF_X34_Y28_N21
\sdram_controller|writeBuffer[71][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[71][1]~q\);

-- Location: LCCOMB_X34_Y28_N20
\sdram_controller|Mux30~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux30~5_combout\ = (\sdram_controller|Mux30~4_combout\ & (((\sdram_controller|writeBuffer[71][1]~q\) # (!\sdram_controller|stateCycleCount\(1))))) # (!\sdram_controller|Mux30~4_combout\ & (\sdram_controller|writeBuffer[67][1]~q\ & 
-- ((\sdram_controller|stateCycleCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux30~4_combout\,
	datab => \sdram_controller|writeBuffer[67][1]~q\,
	datac => \sdram_controller|writeBuffer[71][1]~q\,
	datad => \sdram_controller|stateCycleCount\(1),
	combout => \sdram_controller|Mux30~5_combout\);

-- Location: LCCOMB_X40_Y29_N28
\sdram_controller|writeBuffer[77][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[77][1]~feeder_combout\ = \Add0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~5_combout\,
	combout => \sdram_controller|writeBuffer[77][1]~feeder_combout\);

-- Location: FF_X40_Y29_N29
\sdram_controller|writeBuffer[77][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[77][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[77][1]~q\);

-- Location: FF_X37_Y28_N9
\sdram_controller|writeBuffer[79][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[79][1]~q\);

-- Location: FF_X39_Y29_N21
\sdram_controller|writeBuffer[73][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[73][1]~q\);

-- Location: LCCOMB_X41_Y28_N8
\sdram_controller|writeBuffer[75][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[75][1]~feeder_combout\ = \Add0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~5_combout\,
	combout => \sdram_controller|writeBuffer[75][1]~feeder_combout\);

-- Location: FF_X41_Y28_N9
\sdram_controller|writeBuffer[75][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[75][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[75][1]~q\);

-- Location: LCCOMB_X39_Y29_N20
\sdram_controller|Mux30~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux30~2_combout\ = (\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|stateCycleCount\(2)) # ((\sdram_controller|writeBuffer[75][1]~q\)))) # (!\sdram_controller|stateCycleCount\(1) & (!\sdram_controller|stateCycleCount\(2) & 
-- (\sdram_controller|writeBuffer[73][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datab => \sdram_controller|stateCycleCount\(2),
	datac => \sdram_controller|writeBuffer[73][1]~q\,
	datad => \sdram_controller|writeBuffer[75][1]~q\,
	combout => \sdram_controller|Mux30~2_combout\);

-- Location: LCCOMB_X37_Y28_N8
\sdram_controller|Mux30~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux30~3_combout\ = (\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|Mux30~2_combout\ & ((\sdram_controller|writeBuffer[79][1]~q\))) # (!\sdram_controller|Mux30~2_combout\ & (\sdram_controller|writeBuffer[77][1]~q\)))) # 
-- (!\sdram_controller|stateCycleCount\(2) & (((\sdram_controller|Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[77][1]~q\,
	datab => \sdram_controller|stateCycleCount\(2),
	datac => \sdram_controller|writeBuffer[79][1]~q\,
	datad => \sdram_controller|Mux30~2_combout\,
	combout => \sdram_controller|Mux30~3_combout\);

-- Location: LCCOMB_X37_Y28_N10
\sdram_controller|Mux30~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux30~6_combout\ = (\sdram_controller|stateCycleCount\(3) & (((\sdram_controller|stateCycleCount\(4)) # (\sdram_controller|Mux30~3_combout\)))) # (!\sdram_controller|stateCycleCount\(3) & (\sdram_controller|Mux30~5_combout\ & 
-- (!\sdram_controller|stateCycleCount\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(3),
	datab => \sdram_controller|Mux30~5_combout\,
	datac => \sdram_controller|stateCycleCount\(4),
	datad => \sdram_controller|Mux30~3_combout\,
	combout => \sdram_controller|Mux30~6_combout\);

-- Location: LCCOMB_X37_Y28_N26
\sdram_controller|Mux30~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux30~9_combout\ = (\sdram_controller|stateCycleCount\(4) & ((\sdram_controller|Mux30~6_combout\ & (\sdram_controller|Mux30~8_combout\)) # (!\sdram_controller|Mux30~6_combout\ & ((\sdram_controller|Mux30~1_combout\))))) # 
-- (!\sdram_controller|stateCycleCount\(4) & (((\sdram_controller|Mux30~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(4),
	datab => \sdram_controller|Mux30~8_combout\,
	datac => \sdram_controller|Mux30~1_combout\,
	datad => \sdram_controller|Mux30~6_combout\,
	combout => \sdram_controller|Mux30~9_combout\);

-- Location: LCCOMB_X37_Y27_N26
\sdram_controller|writeBuffer[101][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[101][1]~feeder_combout\ = \Add0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~5_combout\,
	combout => \sdram_controller|writeBuffer[101][1]~feeder_combout\);

-- Location: FF_X37_Y27_N27
\sdram_controller|writeBuffer[101][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[101][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[101][1]~q\);

-- Location: FF_X37_Y26_N27
\sdram_controller|writeBuffer[97][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[97][1]~q\);

-- Location: LCCOMB_X37_Y26_N26
\sdram_controller|Mux30~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux30~35_combout\ = (\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|writeBuffer[101][1]~q\) # ((\sdram_controller|stateCycleCount\(1))))) # (!\sdram_controller|stateCycleCount\(2) & (((\sdram_controller|writeBuffer[97][1]~q\ 
-- & !\sdram_controller|stateCycleCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(2),
	datab => \sdram_controller|writeBuffer[101][1]~q\,
	datac => \sdram_controller|writeBuffer[97][1]~q\,
	datad => \sdram_controller|stateCycleCount\(1),
	combout => \sdram_controller|Mux30~35_combout\);

-- Location: LCCOMB_X39_Y30_N2
\sdram_controller|writeBuffer[99][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[99][1]~feeder_combout\ = \Add0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~5_combout\,
	combout => \sdram_controller|writeBuffer[99][1]~feeder_combout\);

-- Location: FF_X39_Y30_N3
\sdram_controller|writeBuffer[99][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[99][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[99][1]~q\);

-- Location: LCCOMB_X42_Y30_N14
\sdram_controller|writeBuffer[103][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[103][1]~feeder_combout\ = \Add0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~5_combout\,
	combout => \sdram_controller|writeBuffer[103][1]~feeder_combout\);

-- Location: FF_X42_Y30_N15
\sdram_controller|writeBuffer[103][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[103][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[103][1]~q\);

-- Location: LCCOMB_X43_Y30_N0
\sdram_controller|Mux30~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux30~36_combout\ = (\sdram_controller|Mux30~35_combout\ & (((\sdram_controller|writeBuffer[103][1]~q\) # (!\sdram_controller|stateCycleCount\(1))))) # (!\sdram_controller|Mux30~35_combout\ & (\sdram_controller|writeBuffer[99][1]~q\ & 
-- (\sdram_controller|stateCycleCount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux30~35_combout\,
	datab => \sdram_controller|writeBuffer[99][1]~q\,
	datac => \sdram_controller|stateCycleCount\(1),
	datad => \sdram_controller|writeBuffer[103][1]~q\,
	combout => \sdram_controller|Mux30~36_combout\);

-- Location: LCCOMB_X36_Y26_N10
\sdram_controller|writeBuffer[117][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[117][1]~feeder_combout\ = \Add0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~5_combout\,
	combout => \sdram_controller|writeBuffer[117][1]~feeder_combout\);

-- Location: FF_X36_Y26_N11
\sdram_controller|writeBuffer[117][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[117][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[117][1]~q\);

-- Location: FF_X41_Y26_N13
\sdram_controller|writeBuffer[113][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[113][1]~q\);

-- Location: LCCOMB_X41_Y26_N12
\sdram_controller|Mux30~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux30~33_combout\ = (\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|writeBuffer[117][1]~q\) # ((\sdram_controller|stateCycleCount\(1))))) # (!\sdram_controller|stateCycleCount\(2) & 
-- (((\sdram_controller|writeBuffer[113][1]~q\ & !\sdram_controller|stateCycleCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[117][1]~q\,
	datab => \sdram_controller|stateCycleCount\(2),
	datac => \sdram_controller|writeBuffer[113][1]~q\,
	datad => \sdram_controller|stateCycleCount\(1),
	combout => \sdram_controller|Mux30~33_combout\);

-- Location: FF_X38_Y27_N23
\sdram_controller|writeBuffer[119][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[119][1]~q\);

-- Location: LCCOMB_X38_Y27_N0
\sdram_controller|writeBuffer[115][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[115][1]~feeder_combout\ = \Add0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~5_combout\,
	combout => \sdram_controller|writeBuffer[115][1]~feeder_combout\);

-- Location: FF_X38_Y27_N1
\sdram_controller|writeBuffer[115][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[115][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[115][1]~q\);

-- Location: LCCOMB_X38_Y27_N22
\sdram_controller|Mux30~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux30~34_combout\ = (\sdram_controller|Mux30~33_combout\ & (((\sdram_controller|writeBuffer[119][1]~q\)) # (!\sdram_controller|stateCycleCount\(1)))) # (!\sdram_controller|Mux30~33_combout\ & (\sdram_controller|stateCycleCount\(1) & 
-- ((\sdram_controller|writeBuffer[115][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux30~33_combout\,
	datab => \sdram_controller|stateCycleCount\(1),
	datac => \sdram_controller|writeBuffer[119][1]~q\,
	datad => \sdram_controller|writeBuffer[115][1]~q\,
	combout => \sdram_controller|Mux30~34_combout\);

-- Location: LCCOMB_X36_Y30_N8
\sdram_controller|Mux30~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux30~37_combout\ = (\sdram_controller|stateCycleCount\(3) & (((\sdram_controller|stateCycleCount\(4))))) # (!\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|stateCycleCount\(4) & ((\sdram_controller|Mux30~34_combout\))) # 
-- (!\sdram_controller|stateCycleCount\(4) & (\sdram_controller|Mux30~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(3),
	datab => \sdram_controller|Mux30~36_combout\,
	datac => \sdram_controller|stateCycleCount\(4),
	datad => \sdram_controller|Mux30~34_combout\,
	combout => \sdram_controller|Mux30~37_combout\);

-- Location: LCCOMB_X37_Y29_N10
\sdram_controller|writeBuffer[109][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[109][1]~feeder_combout\ = \Add0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~5_combout\,
	combout => \sdram_controller|writeBuffer[109][1]~feeder_combout\);

-- Location: FF_X37_Y29_N11
\sdram_controller|writeBuffer[109][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[109][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[109][1]~q\);

-- Location: FF_X43_Y29_N1
\sdram_controller|writeBuffer[105][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[105][1]~q\);

-- Location: LCCOMB_X41_Y28_N10
\sdram_controller|writeBuffer[107][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[107][1]~feeder_combout\ = \Add0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~5_combout\,
	combout => \sdram_controller|writeBuffer[107][1]~feeder_combout\);

-- Location: FF_X41_Y28_N11
\sdram_controller|writeBuffer[107][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[107][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[107][1]~q\);

-- Location: LCCOMB_X43_Y29_N0
\sdram_controller|Mux30~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux30~31_combout\ = (\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|stateCycleCount\(2)) # ((\sdram_controller|writeBuffer[107][1]~q\)))) # (!\sdram_controller|stateCycleCount\(1) & (!\sdram_controller|stateCycleCount\(2) & 
-- (\sdram_controller|writeBuffer[105][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datab => \sdram_controller|stateCycleCount\(2),
	datac => \sdram_controller|writeBuffer[105][1]~q\,
	datad => \sdram_controller|writeBuffer[107][1]~q\,
	combout => \sdram_controller|Mux30~31_combout\);

-- Location: FF_X38_Y30_N9
\sdram_controller|writeBuffer[111][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[111][1]~q\);

-- Location: LCCOMB_X38_Y30_N8
\sdram_controller|Mux30~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux30~32_combout\ = (\sdram_controller|Mux30~31_combout\ & (((\sdram_controller|writeBuffer[111][1]~q\) # (!\sdram_controller|stateCycleCount\(2))))) # (!\sdram_controller|Mux30~31_combout\ & (\sdram_controller|writeBuffer[109][1]~q\ & 
-- ((\sdram_controller|stateCycleCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[109][1]~q\,
	datab => \sdram_controller|Mux30~31_combout\,
	datac => \sdram_controller|writeBuffer[111][1]~q\,
	datad => \sdram_controller|stateCycleCount\(2),
	combout => \sdram_controller|Mux30~32_combout\);

-- Location: FF_X39_Y28_N29
\sdram_controller|writeBuffer[127][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \Add0~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[127][1]~q\);

-- Location: FF_X42_Y29_N3
\sdram_controller|writeBuffer[125][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[125][1]~q\);

-- Location: LCCOMB_X43_Y27_N0
\sdram_controller|writeBuffer[123][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[123][1]~feeder_combout\ = \Add0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~5_combout\,
	combout => \sdram_controller|writeBuffer[123][1]~feeder_combout\);

-- Location: FF_X43_Y27_N1
\sdram_controller|writeBuffer[123][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[123][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[123][1]~q\);

-- Location: FF_X42_Y29_N1
\sdram_controller|writeBuffer[121][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[121][1]~q\);

-- Location: LCCOMB_X42_Y29_N0
\sdram_controller|Mux30~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux30~38_combout\ = (\sdram_controller|stateCycleCount\(2) & (((\sdram_controller|stateCycleCount\(1))))) # (!\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|stateCycleCount\(1) & (\sdram_controller|writeBuffer[123][1]~q\)) # 
-- (!\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|writeBuffer[121][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(2),
	datab => \sdram_controller|writeBuffer[123][1]~q\,
	datac => \sdram_controller|writeBuffer[121][1]~q\,
	datad => \sdram_controller|stateCycleCount\(1),
	combout => \sdram_controller|Mux30~38_combout\);

-- Location: LCCOMB_X42_Y29_N2
\sdram_controller|Mux30~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux30~39_combout\ = (\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|Mux30~38_combout\ & (\sdram_controller|writeBuffer[127][1]~q\)) # (!\sdram_controller|Mux30~38_combout\ & ((\sdram_controller|writeBuffer[125][1]~q\))))) # 
-- (!\sdram_controller|stateCycleCount\(2) & (((\sdram_controller|Mux30~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(2),
	datab => \sdram_controller|writeBuffer[127][1]~q\,
	datac => \sdram_controller|writeBuffer[125][1]~q\,
	datad => \sdram_controller|Mux30~38_combout\,
	combout => \sdram_controller|Mux30~39_combout\);

-- Location: LCCOMB_X36_Y30_N18
\sdram_controller|Mux30~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux30~40_combout\ = (\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|Mux30~37_combout\ & ((\sdram_controller|Mux30~39_combout\))) # (!\sdram_controller|Mux30~37_combout\ & (\sdram_controller|Mux30~32_combout\)))) # 
-- (!\sdram_controller|stateCycleCount\(3) & (\sdram_controller|Mux30~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(3),
	datab => \sdram_controller|Mux30~37_combout\,
	datac => \sdram_controller|Mux30~32_combout\,
	datad => \sdram_controller|Mux30~39_combout\,
	combout => \sdram_controller|Mux30~40_combout\);

-- Location: LCCOMB_X36_Y30_N20
\sdram_controller|Mux30~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux30~41_combout\ = (\sdram_controller|Mux30~30_combout\ & (((\sdram_controller|Mux30~40_combout\)) # (!\sdram_controller|stateCycleCount\(6)))) # (!\sdram_controller|Mux30~30_combout\ & (\sdram_controller|stateCycleCount\(6) & 
-- (\sdram_controller|Mux30~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux30~30_combout\,
	datab => \sdram_controller|stateCycleCount\(6),
	datac => \sdram_controller|Mux30~9_combout\,
	datad => \sdram_controller|Mux30~40_combout\,
	combout => \sdram_controller|Mux30~41_combout\);

-- Location: LCCOMB_X36_Y30_N2
\sdram_controller|Mux30~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux30~42_combout\ = (\sdram_controller|stateCycleCount\(0) & \sdram_controller|Mux30~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(0),
	datad => \sdram_controller|Mux30~41_combout\,
	combout => \sdram_controller|Mux30~42_combout\);

-- Location: LCCOMB_X38_Y28_N22
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (transmitCount(2) & (\Add0~4\ $ (GND))) # (!transmitCount(2) & (!\Add0~4\ & VCC))
-- \Add0~7\ = CARRY((transmitCount(2) & !\Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => transmitCount(2),
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X39_Y28_N0
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\state.TRANSMIT~q\ & \Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.TRANSMIT~q\,
	datad => \Add0~6_combout\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X41_Y30_N12
\sdram_controller|writeBuffer[83][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[83][2]~feeder_combout\ = \Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~8_combout\,
	combout => \sdram_controller|writeBuffer[83][2]~feeder_combout\);

-- Location: FF_X41_Y30_N13
\sdram_controller|writeBuffer[83][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[83][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[83][2]~q\);

-- Location: LCCOMB_X42_Y26_N10
\sdram_controller|writeBuffer[89][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[89][2]~feeder_combout\ = \Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~8_combout\,
	combout => \sdram_controller|writeBuffer[89][2]~feeder_combout\);

-- Location: FF_X42_Y26_N11
\sdram_controller|writeBuffer[89][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[89][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[89][2]~q\);

-- Location: FF_X41_Y26_N7
\sdram_controller|writeBuffer[81][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[81][2]~q\);

-- Location: LCCOMB_X41_Y26_N6
\sdram_controller|Mux29~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux29~10_combout\ = (\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|writeBuffer[89][2]~q\) # ((\sdram_controller|stateCycleCount\(1))))) # (!\sdram_controller|stateCycleCount\(3) & (((\sdram_controller|writeBuffer[81][2]~q\ 
-- & !\sdram_controller|stateCycleCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(3),
	datab => \sdram_controller|writeBuffer[89][2]~q\,
	datac => \sdram_controller|writeBuffer[81][2]~q\,
	datad => \sdram_controller|stateCycleCount\(1),
	combout => \sdram_controller|Mux29~10_combout\);

-- Location: FF_X41_Y30_N19
\sdram_controller|writeBuffer[91][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[91][2]~q\);

-- Location: LCCOMB_X41_Y30_N18
\sdram_controller|Mux29~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux29~11_combout\ = (\sdram_controller|Mux29~10_combout\ & (((\sdram_controller|writeBuffer[91][2]~q\) # (!\sdram_controller|stateCycleCount\(1))))) # (!\sdram_controller|Mux29~10_combout\ & (\sdram_controller|writeBuffer[83][2]~q\ & 
-- ((\sdram_controller|stateCycleCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[83][2]~q\,
	datab => \sdram_controller|Mux29~10_combout\,
	datac => \sdram_controller|writeBuffer[91][2]~q\,
	datad => \sdram_controller|stateCycleCount\(1),
	combout => \sdram_controller|Mux29~11_combout\);

-- Location: LCCOMB_X42_Y29_N30
\sdram_controller|writeBuffer[121][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[121][2]~feeder_combout\ = \Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~8_combout\,
	combout => \sdram_controller|writeBuffer[121][2]~feeder_combout\);

-- Location: FF_X42_Y29_N31
\sdram_controller|writeBuffer[121][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[121][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[121][2]~q\);

-- Location: FF_X43_Y27_N9
\sdram_controller|writeBuffer[123][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[123][2]~q\);

-- Location: FF_X41_Y26_N5
\sdram_controller|writeBuffer[113][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[113][2]~q\);

-- Location: LCCOMB_X38_Y27_N28
\sdram_controller|writeBuffer[115][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[115][2]~feeder_combout\ = \Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~8_combout\,
	combout => \sdram_controller|writeBuffer[115][2]~feeder_combout\);

-- Location: FF_X38_Y27_N29
\sdram_controller|writeBuffer[115][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[115][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[115][2]~q\);

-- Location: LCCOMB_X41_Y26_N4
\sdram_controller|Mux29~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux29~17_combout\ = (\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|stateCycleCount\(3)) # ((\sdram_controller|writeBuffer[115][2]~q\)))) # (!\sdram_controller|stateCycleCount\(1) & (!\sdram_controller|stateCycleCount\(3) & 
-- (\sdram_controller|writeBuffer[113][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datab => \sdram_controller|stateCycleCount\(3),
	datac => \sdram_controller|writeBuffer[113][2]~q\,
	datad => \sdram_controller|writeBuffer[115][2]~q\,
	combout => \sdram_controller|Mux29~17_combout\);

-- Location: LCCOMB_X43_Y27_N8
\sdram_controller|Mux29~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux29~18_combout\ = (\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|Mux29~17_combout\ & ((\sdram_controller|writeBuffer[123][2]~q\))) # (!\sdram_controller|Mux29~17_combout\ & (\sdram_controller|writeBuffer[121][2]~q\)))) # 
-- (!\sdram_controller|stateCycleCount\(3) & (((\sdram_controller|Mux29~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[121][2]~q\,
	datab => \sdram_controller|stateCycleCount\(3),
	datac => \sdram_controller|writeBuffer[123][2]~q\,
	datad => \sdram_controller|Mux29~17_combout\,
	combout => \sdram_controller|Mux29~18_combout\);

-- Location: FF_X40_Y30_N7
\sdram_controller|writeBuffer[17][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[17][2]~q\);

-- Location: LCCOMB_X40_Y30_N12
\sdram_controller|writeBuffer[19][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[19][2]~feeder_combout\ = \Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~8_combout\,
	combout => \sdram_controller|writeBuffer[19][2]~feeder_combout\);

-- Location: FF_X40_Y30_N13
\sdram_controller|writeBuffer[19][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[19][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[19][2]~q\);

-- Location: LCCOMB_X40_Y30_N6
\sdram_controller|Mux29~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux29~14_combout\ = (\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|stateCycleCount\(3)) # ((\sdram_controller|writeBuffer[19][2]~q\)))) # (!\sdram_controller|stateCycleCount\(1) & (!\sdram_controller|stateCycleCount\(3) & 
-- (\sdram_controller|writeBuffer[17][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datab => \sdram_controller|stateCycleCount\(3),
	datac => \sdram_controller|writeBuffer[17][2]~q\,
	datad => \sdram_controller|writeBuffer[19][2]~q\,
	combout => \sdram_controller|Mux29~14_combout\);

-- Location: FF_X43_Y28_N7
\sdram_controller|writeBuffer[27][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[27][2]~q\);

-- Location: LCCOMB_X42_Y28_N28
\sdram_controller|writeBuffer[25][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[25][2]~feeder_combout\ = \Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~8_combout\,
	combout => \sdram_controller|writeBuffer[25][2]~feeder_combout\);

-- Location: FF_X42_Y28_N29
\sdram_controller|writeBuffer[25][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[25][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[25][2]~q\);

-- Location: LCCOMB_X43_Y28_N6
\sdram_controller|Mux29~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux29~15_combout\ = (\sdram_controller|Mux29~14_combout\ & (((\sdram_controller|writeBuffer[27][2]~q\)) # (!\sdram_controller|stateCycleCount\(3)))) # (!\sdram_controller|Mux29~14_combout\ & (\sdram_controller|stateCycleCount\(3) & 
-- ((\sdram_controller|writeBuffer[25][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux29~14_combout\,
	datab => \sdram_controller|stateCycleCount\(3),
	datac => \sdram_controller|writeBuffer[27][2]~q\,
	datad => \sdram_controller|writeBuffer[25][2]~q\,
	combout => \sdram_controller|Mux29~15_combout\);

-- Location: LCCOMB_X43_Y27_N14
\sdram_controller|writeBuffer[57][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[57][2]~feeder_combout\ = \Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~8_combout\,
	combout => \sdram_controller|writeBuffer[57][2]~feeder_combout\);

-- Location: FF_X43_Y27_N15
\sdram_controller|writeBuffer[57][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[57][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[57][2]~q\);

-- Location: FF_X39_Y27_N1
\sdram_controller|writeBuffer[51][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[51][2]~q\);

-- Location: LCCOMB_X40_Y26_N4
\sdram_controller|writeBuffer[49][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[49][2]~feeder_combout\ = \Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~8_combout\,
	combout => \sdram_controller|writeBuffer[49][2]~feeder_combout\);

-- Location: FF_X40_Y26_N5
\sdram_controller|writeBuffer[49][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[49][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[49][2]~q\);

-- Location: LCCOMB_X39_Y27_N0
\sdram_controller|Mux29~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux29~12_combout\ = (\sdram_controller|stateCycleCount\(3) & (\sdram_controller|stateCycleCount\(1))) # (!\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|stateCycleCount\(1) & (\sdram_controller|writeBuffer[51][2]~q\)) # 
-- (!\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|writeBuffer[49][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(3),
	datab => \sdram_controller|stateCycleCount\(1),
	datac => \sdram_controller|writeBuffer[51][2]~q\,
	datad => \sdram_controller|writeBuffer[49][2]~q\,
	combout => \sdram_controller|Mux29~12_combout\);

-- Location: FF_X43_Y28_N17
\sdram_controller|writeBuffer[59][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[59][2]~q\);

-- Location: LCCOMB_X43_Y28_N16
\sdram_controller|Mux29~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux29~13_combout\ = (\sdram_controller|Mux29~12_combout\ & (((\sdram_controller|writeBuffer[59][2]~q\) # (!\sdram_controller|stateCycleCount\(3))))) # (!\sdram_controller|Mux29~12_combout\ & (\sdram_controller|writeBuffer[57][2]~q\ & 
-- ((\sdram_controller|stateCycleCount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[57][2]~q\,
	datab => \sdram_controller|Mux29~12_combout\,
	datac => \sdram_controller|writeBuffer[59][2]~q\,
	datad => \sdram_controller|stateCycleCount\(3),
	combout => \sdram_controller|Mux29~13_combout\);

-- Location: LCCOMB_X41_Y28_N28
\sdram_controller|Mux29~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux29~16_combout\ = (\sdram_controller|stateCycleCount\(5) & (((\sdram_controller|Mux29~13_combout\) # (\sdram_controller|stateCycleCount\(6))))) # (!\sdram_controller|stateCycleCount\(5) & (\sdram_controller|Mux29~15_combout\ & 
-- ((!\sdram_controller|stateCycleCount\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux29~15_combout\,
	datab => \sdram_controller|stateCycleCount\(5),
	datac => \sdram_controller|Mux29~13_combout\,
	datad => \sdram_controller|stateCycleCount\(6),
	combout => \sdram_controller|Mux29~16_combout\);

-- Location: LCCOMB_X42_Y28_N26
\sdram_controller|Mux29~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux29~19_combout\ = (\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|Mux29~16_combout\ & ((\sdram_controller|Mux29~18_combout\))) # (!\sdram_controller|Mux29~16_combout\ & (\sdram_controller|Mux29~11_combout\)))) # 
-- (!\sdram_controller|stateCycleCount\(6) & (((\sdram_controller|Mux29~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux29~11_combout\,
	datab => \sdram_controller|Mux29~18_combout\,
	datac => \sdram_controller|stateCycleCount\(6),
	datad => \sdram_controller|Mux29~16_combout\,
	combout => \sdram_controller|Mux29~19_combout\);

-- Location: LCCOMB_X39_Y29_N24
\sdram_controller|writeBuffer[73][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[73][2]~feeder_combout\ = \Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~8_combout\,
	combout => \sdram_controller|writeBuffer[73][2]~feeder_combout\);

-- Location: FF_X39_Y29_N25
\sdram_controller|writeBuffer[73][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[73][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[73][2]~q\);

-- Location: FF_X39_Y29_N23
\sdram_controller|writeBuffer[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[9][2]~q\);

-- Location: LCCOMB_X39_Y29_N22
\sdram_controller|Mux29~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux29~20_combout\ = (\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|writeBuffer[73][2]~q\) # ((\sdram_controller|stateCycleCount\(5))))) # (!\sdram_controller|stateCycleCount\(6) & (((\sdram_controller|writeBuffer[9][2]~q\ & 
-- !\sdram_controller|stateCycleCount\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(6),
	datab => \sdram_controller|writeBuffer[73][2]~q\,
	datac => \sdram_controller|writeBuffer[9][2]~q\,
	datad => \sdram_controller|stateCycleCount\(5),
	combout => \sdram_controller|Mux29~20_combout\);

-- Location: LCCOMB_X43_Y29_N18
\sdram_controller|writeBuffer[41][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[41][2]~feeder_combout\ = \Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~8_combout\,
	combout => \sdram_controller|writeBuffer[41][2]~feeder_combout\);

-- Location: FF_X43_Y29_N19
\sdram_controller|writeBuffer[41][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[41][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[41][2]~q\);

-- Location: FF_X43_Y29_N13
\sdram_controller|writeBuffer[105][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[105][2]~q\);

-- Location: LCCOMB_X43_Y29_N12
\sdram_controller|Mux29~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux29~21_combout\ = (\sdram_controller|Mux29~20_combout\ & (((\sdram_controller|writeBuffer[105][2]~q\) # (!\sdram_controller|stateCycleCount\(5))))) # (!\sdram_controller|Mux29~20_combout\ & (\sdram_controller|writeBuffer[41][2]~q\ & 
-- ((\sdram_controller|stateCycleCount\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux29~20_combout\,
	datab => \sdram_controller|writeBuffer[41][2]~q\,
	datac => \sdram_controller|writeBuffer[105][2]~q\,
	datad => \sdram_controller|stateCycleCount\(5),
	combout => \sdram_controller|Mux29~21_combout\);

-- Location: LCCOMB_X41_Y28_N22
\sdram_controller|writeBuffer[75][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[75][2]~feeder_combout\ = \Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~8_combout\,
	combout => \sdram_controller|writeBuffer[75][2]~feeder_combout\);

-- Location: FF_X41_Y28_N23
\sdram_controller|writeBuffer[75][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[75][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[75][2]~q\);

-- Location: FF_X40_Y28_N17
\sdram_controller|writeBuffer[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[11][2]~q\);

-- Location: LCCOMB_X40_Y28_N16
\sdram_controller|Mux29~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux29~27_combout\ = (\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|writeBuffer[75][2]~q\) # ((\sdram_controller|stateCycleCount\(5))))) # (!\sdram_controller|stateCycleCount\(6) & (((\sdram_controller|writeBuffer[11][2]~q\ 
-- & !\sdram_controller|stateCycleCount\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[75][2]~q\,
	datab => \sdram_controller|stateCycleCount\(6),
	datac => \sdram_controller|writeBuffer[11][2]~q\,
	datad => \sdram_controller|stateCycleCount\(5),
	combout => \sdram_controller|Mux29~27_combout\);

-- Location: FF_X41_Y28_N1
\sdram_controller|writeBuffer[107][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[107][2]~q\);

-- Location: LCCOMB_X40_Y28_N22
\sdram_controller|writeBuffer[43][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[43][2]~feeder_combout\ = \Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~8_combout\,
	combout => \sdram_controller|writeBuffer[43][2]~feeder_combout\);

-- Location: FF_X40_Y28_N23
\sdram_controller|writeBuffer[43][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[43][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[43][2]~q\);

-- Location: LCCOMB_X41_Y28_N0
\sdram_controller|Mux29~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux29~28_combout\ = (\sdram_controller|Mux29~27_combout\ & (((\sdram_controller|writeBuffer[107][2]~q\)) # (!\sdram_controller|stateCycleCount\(5)))) # (!\sdram_controller|Mux29~27_combout\ & (\sdram_controller|stateCycleCount\(5) & 
-- ((\sdram_controller|writeBuffer[43][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux29~27_combout\,
	datab => \sdram_controller|stateCycleCount\(5),
	datac => \sdram_controller|writeBuffer[107][2]~q\,
	datad => \sdram_controller|writeBuffer[43][2]~q\,
	combout => \sdram_controller|Mux29~28_combout\);

-- Location: LCCOMB_X40_Y26_N14
\sdram_controller|writeBuffer[33][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[33][2]~feeder_combout\ = \Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~8_combout\,
	combout => \sdram_controller|writeBuffer[33][2]~feeder_combout\);

-- Location: FF_X40_Y26_N15
\sdram_controller|writeBuffer[33][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[33][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[33][2]~q\);

-- Location: FF_X38_Y26_N3
\sdram_controller|writeBuffer[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[1][2]~q\);

-- Location: LCCOMB_X38_Y26_N2
\sdram_controller|Mux29~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux29~24_combout\ = (\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|writeBuffer[33][2]~q\) # ((\sdram_controller|stateCycleCount\(6))))) # (!\sdram_controller|stateCycleCount\(5) & (((\sdram_controller|writeBuffer[1][2]~q\ & 
-- !\sdram_controller|stateCycleCount\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[33][2]~q\,
	datab => \sdram_controller|stateCycleCount\(5),
	datac => \sdram_controller|writeBuffer[1][2]~q\,
	datad => \sdram_controller|stateCycleCount\(6),
	combout => \sdram_controller|Mux29~24_combout\);

-- Location: LCCOMB_X37_Y26_N20
\sdram_controller|writeBuffer[65][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[65][2]~feeder_combout\ = \Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~8_combout\,
	combout => \sdram_controller|writeBuffer[65][2]~feeder_combout\);

-- Location: FF_X37_Y26_N21
\sdram_controller|writeBuffer[65][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[65][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[65][2]~q\);

-- Location: FF_X37_Y26_N3
\sdram_controller|writeBuffer[97][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[97][2]~q\);

-- Location: LCCOMB_X37_Y26_N2
\sdram_controller|Mux29~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux29~25_combout\ = (\sdram_controller|Mux29~24_combout\ & (((\sdram_controller|writeBuffer[97][2]~q\) # (!\sdram_controller|stateCycleCount\(6))))) # (!\sdram_controller|Mux29~24_combout\ & (\sdram_controller|writeBuffer[65][2]~q\ & 
-- ((\sdram_controller|stateCycleCount\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux29~24_combout\,
	datab => \sdram_controller|writeBuffer[65][2]~q\,
	datac => \sdram_controller|writeBuffer[97][2]~q\,
	datad => \sdram_controller|stateCycleCount\(6),
	combout => \sdram_controller|Mux29~25_combout\);

-- Location: FF_X39_Y30_N1
\sdram_controller|writeBuffer[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[3][2]~q\);

-- Location: LCCOMB_X36_Y27_N22
\sdram_controller|writeBuffer[35][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[35][2]~feeder_combout\ = \Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~8_combout\,
	combout => \sdram_controller|writeBuffer[35][2]~feeder_combout\);

-- Location: FF_X36_Y27_N23
\sdram_controller|writeBuffer[35][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[35][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[35][2]~q\);

-- Location: LCCOMB_X39_Y30_N0
\sdram_controller|Mux29~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux29~22_combout\ = (\sdram_controller|stateCycleCount\(6) & (\sdram_controller|stateCycleCount\(5))) # (!\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|writeBuffer[35][2]~q\))) # 
-- (!\sdram_controller|stateCycleCount\(5) & (\sdram_controller|writeBuffer[3][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(6),
	datab => \sdram_controller|stateCycleCount\(5),
	datac => \sdram_controller|writeBuffer[3][2]~q\,
	datad => \sdram_controller|writeBuffer[35][2]~q\,
	combout => \sdram_controller|Mux29~22_combout\);

-- Location: FF_X39_Y30_N15
\sdram_controller|writeBuffer[99][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[99][2]~q\);

-- Location: LCCOMB_X39_Y28_N10
\sdram_controller|writeBuffer[67][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[67][2]~feeder_combout\ = \Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~8_combout\,
	combout => \sdram_controller|writeBuffer[67][2]~feeder_combout\);

-- Location: FF_X39_Y28_N11
\sdram_controller|writeBuffer[67][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[67][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[67][2]~q\);

-- Location: LCCOMB_X39_Y30_N14
\sdram_controller|Mux29~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux29~23_combout\ = (\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|Mux29~22_combout\ & (\sdram_controller|writeBuffer[99][2]~q\)) # (!\sdram_controller|Mux29~22_combout\ & ((\sdram_controller|writeBuffer[67][2]~q\))))) # 
-- (!\sdram_controller|stateCycleCount\(6) & (\sdram_controller|Mux29~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(6),
	datab => \sdram_controller|Mux29~22_combout\,
	datac => \sdram_controller|writeBuffer[99][2]~q\,
	datad => \sdram_controller|writeBuffer[67][2]~q\,
	combout => \sdram_controller|Mux29~23_combout\);

-- Location: LCCOMB_X34_Y29_N22
\sdram_controller|Mux29~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux29~26_combout\ = (\sdram_controller|stateCycleCount\(3) & (((\sdram_controller|stateCycleCount\(1))))) # (!\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|Mux29~23_combout\))) # 
-- (!\sdram_controller|stateCycleCount\(1) & (\sdram_controller|Mux29~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux29~25_combout\,
	datab => \sdram_controller|stateCycleCount\(3),
	datac => \sdram_controller|stateCycleCount\(1),
	datad => \sdram_controller|Mux29~23_combout\,
	combout => \sdram_controller|Mux29~26_combout\);

-- Location: LCCOMB_X34_Y29_N0
\sdram_controller|Mux29~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux29~29_combout\ = (\sdram_controller|Mux29~26_combout\ & (((\sdram_controller|Mux29~28_combout\) # (!\sdram_controller|stateCycleCount\(3))))) # (!\sdram_controller|Mux29~26_combout\ & (\sdram_controller|Mux29~21_combout\ & 
-- ((\sdram_controller|stateCycleCount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux29~21_combout\,
	datab => \sdram_controller|Mux29~28_combout\,
	datac => \sdram_controller|Mux29~26_combout\,
	datad => \sdram_controller|stateCycleCount\(3),
	combout => \sdram_controller|Mux29~29_combout\);

-- Location: LCCOMB_X34_Y29_N6
\sdram_controller|Mux29~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux29~30_combout\ = (\sdram_controller|stateCycleCount\(4) & ((\sdram_controller|Mux29~19_combout\) # ((\sdram_controller|stateCycleCount\(2))))) # (!\sdram_controller|stateCycleCount\(4) & (((\sdram_controller|Mux29~29_combout\ & 
-- !\sdram_controller|stateCycleCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux29~19_combout\,
	datab => \sdram_controller|Mux29~29_combout\,
	datac => \sdram_controller|stateCycleCount\(4),
	datad => \sdram_controller|stateCycleCount\(2),
	combout => \sdram_controller|Mux29~30_combout\);

-- Location: LCCOMB_X37_Y29_N12
\sdram_controller|writeBuffer[45][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[45][2]~feeder_combout\ = \Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~8_combout\,
	combout => \sdram_controller|writeBuffer[45][2]~feeder_combout\);

-- Location: FF_X37_Y29_N13
\sdram_controller|writeBuffer[45][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[45][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[45][2]~q\);

-- Location: FF_X36_Y29_N19
\sdram_controller|writeBuffer[13][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[13][2]~q\);

-- Location: LCCOMB_X36_Y29_N20
\sdram_controller|writeBuffer[77][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[77][2]~feeder_combout\ = \Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~8_combout\,
	combout => \sdram_controller|writeBuffer[77][2]~feeder_combout\);

-- Location: FF_X36_Y29_N21
\sdram_controller|writeBuffer[77][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[77][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[77][2]~q\);

-- Location: LCCOMB_X36_Y29_N18
\sdram_controller|Mux29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux29~0_combout\ = (\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|stateCycleCount\(5)) # ((\sdram_controller|writeBuffer[77][2]~q\)))) # (!\sdram_controller|stateCycleCount\(6) & (!\sdram_controller|stateCycleCount\(5) & 
-- (\sdram_controller|writeBuffer[13][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(6),
	datab => \sdram_controller|stateCycleCount\(5),
	datac => \sdram_controller|writeBuffer[13][2]~q\,
	datad => \sdram_controller|writeBuffer[77][2]~q\,
	combout => \sdram_controller|Mux29~0_combout\);

-- Location: FF_X37_Y29_N23
\sdram_controller|writeBuffer[109][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[109][2]~q\);

-- Location: LCCOMB_X37_Y29_N22
\sdram_controller|Mux29~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux29~1_combout\ = (\sdram_controller|Mux29~0_combout\ & (((\sdram_controller|writeBuffer[109][2]~q\) # (!\sdram_controller|stateCycleCount\(5))))) # (!\sdram_controller|Mux29~0_combout\ & (\sdram_controller|writeBuffer[45][2]~q\ & 
-- ((\sdram_controller|stateCycleCount\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[45][2]~q\,
	datab => \sdram_controller|Mux29~0_combout\,
	datac => \sdram_controller|writeBuffer[109][2]~q\,
	datad => \sdram_controller|stateCycleCount\(5),
	combout => \sdram_controller|Mux29~1_combout\);

-- Location: LCCOMB_X38_Y25_N6
\sdram_controller|writeBuffer[101][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[101][2]~feeder_combout\ = \Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~8_combout\,
	combout => \sdram_controller|writeBuffer[101][2]~feeder_combout\);

-- Location: FF_X38_Y25_N7
\sdram_controller|writeBuffer[101][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[101][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[101][2]~q\);

-- Location: FF_X37_Y25_N13
\sdram_controller|writeBuffer[69][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[69][2]~q\);

-- Location: LCCOMB_X39_Y26_N24
\sdram_controller|writeBuffer[37][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[37][2]~feeder_combout\ = \Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~8_combout\,
	combout => \sdram_controller|writeBuffer[37][2]~feeder_combout\);

-- Location: FF_X39_Y26_N25
\sdram_controller|writeBuffer[37][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[37][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[37][2]~q\);

-- Location: FF_X38_Y26_N29
\sdram_controller|writeBuffer[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[5][2]~q\);

-- Location: LCCOMB_X38_Y26_N28
\sdram_controller|Mux29~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux29~4_combout\ = (\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|writeBuffer[37][2]~q\) # ((\sdram_controller|stateCycleCount\(6))))) # (!\sdram_controller|stateCycleCount\(5) & (((\sdram_controller|writeBuffer[5][2]~q\ & 
-- !\sdram_controller|stateCycleCount\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(5),
	datab => \sdram_controller|writeBuffer[37][2]~q\,
	datac => \sdram_controller|writeBuffer[5][2]~q\,
	datad => \sdram_controller|stateCycleCount\(6),
	combout => \sdram_controller|Mux29~4_combout\);

-- Location: LCCOMB_X37_Y25_N12
\sdram_controller|Mux29~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux29~5_combout\ = (\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|Mux29~4_combout\ & (\sdram_controller|writeBuffer[101][2]~q\)) # (!\sdram_controller|Mux29~4_combout\ & ((\sdram_controller|writeBuffer[69][2]~q\))))) # 
-- (!\sdram_controller|stateCycleCount\(6) & (((\sdram_controller|Mux29~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[101][2]~q\,
	datab => \sdram_controller|stateCycleCount\(6),
	datac => \sdram_controller|writeBuffer[69][2]~q\,
	datad => \sdram_controller|Mux29~4_combout\,
	combout => \sdram_controller|Mux29~5_combout\);

-- Location: LCCOMB_X34_Y28_N2
\sdram_controller|writeBuffer[71][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[71][2]~feeder_combout\ = \Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~8_combout\,
	combout => \sdram_controller|writeBuffer[71][2]~feeder_combout\);

-- Location: FF_X34_Y28_N3
\sdram_controller|writeBuffer[71][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[71][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[71][2]~q\);

-- Location: FF_X42_Y30_N29
\sdram_controller|writeBuffer[103][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[103][2]~q\);

-- Location: LCCOMB_X36_Y27_N8
\sdram_controller|writeBuffer[39][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[39][2]~feeder_combout\ = \Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~8_combout\,
	combout => \sdram_controller|writeBuffer[39][2]~feeder_combout\);

-- Location: FF_X36_Y27_N9
\sdram_controller|writeBuffer[39][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[39][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[39][2]~q\);

-- Location: FF_X38_Y25_N21
\sdram_controller|writeBuffer[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[7][2]~q\);

-- Location: LCCOMB_X38_Y25_N20
\sdram_controller|Mux29~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux29~2_combout\ = (\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|writeBuffer[39][2]~q\) # ((\sdram_controller|stateCycleCount\(6))))) # (!\sdram_controller|stateCycleCount\(5) & (((\sdram_controller|writeBuffer[7][2]~q\ & 
-- !\sdram_controller|stateCycleCount\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[39][2]~q\,
	datab => \sdram_controller|stateCycleCount\(5),
	datac => \sdram_controller|writeBuffer[7][2]~q\,
	datad => \sdram_controller|stateCycleCount\(6),
	combout => \sdram_controller|Mux29~2_combout\);

-- Location: LCCOMB_X42_Y30_N28
\sdram_controller|Mux29~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux29~3_combout\ = (\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|Mux29~2_combout\ & ((\sdram_controller|writeBuffer[103][2]~q\))) # (!\sdram_controller|Mux29~2_combout\ & (\sdram_controller|writeBuffer[71][2]~q\)))) # 
-- (!\sdram_controller|stateCycleCount\(6) & (((\sdram_controller|Mux29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(6),
	datab => \sdram_controller|writeBuffer[71][2]~q\,
	datac => \sdram_controller|writeBuffer[103][2]~q\,
	datad => \sdram_controller|Mux29~2_combout\,
	combout => \sdram_controller|Mux29~3_combout\);

-- Location: LCCOMB_X34_Y29_N14
\sdram_controller|Mux29~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux29~6_combout\ = (\sdram_controller|stateCycleCount\(3) & (((\sdram_controller|stateCycleCount\(1))))) # (!\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|Mux29~3_combout\))) # 
-- (!\sdram_controller|stateCycleCount\(1) & (\sdram_controller|Mux29~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux29~5_combout\,
	datab => \sdram_controller|stateCycleCount\(3),
	datac => \sdram_controller|stateCycleCount\(1),
	datad => \sdram_controller|Mux29~3_combout\,
	combout => \sdram_controller|Mux29~6_combout\);

-- Location: LCCOMB_X37_Y28_N12
\sdram_controller|writeBuffer[79][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[79][2]~feeder_combout\ = \Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~8_combout\,
	combout => \sdram_controller|writeBuffer[79][2]~feeder_combout\);

-- Location: FF_X37_Y28_N13
\sdram_controller|writeBuffer[79][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[79][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[79][2]~q\);

-- Location: FF_X36_Y28_N9
\sdram_controller|writeBuffer[15][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[15][2]~q\);

-- Location: LCCOMB_X36_Y28_N8
\sdram_controller|Mux29~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux29~7_combout\ = (\sdram_controller|stateCycleCount\(5) & (((\sdram_controller|stateCycleCount\(6))))) # (!\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|stateCycleCount\(6) & (\sdram_controller|writeBuffer[79][2]~q\)) # 
-- (!\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|writeBuffer[15][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(5),
	datab => \sdram_controller|writeBuffer[79][2]~q\,
	datac => \sdram_controller|writeBuffer[15][2]~q\,
	datad => \sdram_controller|stateCycleCount\(6),
	combout => \sdram_controller|Mux29~7_combout\);

-- Location: FF_X35_Y29_N11
\sdram_controller|writeBuffer[111][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[111][2]~q\);

-- Location: LCCOMB_X35_Y28_N0
\sdram_controller|writeBuffer[47][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[47][2]~feeder_combout\ = \Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~8_combout\,
	combout => \sdram_controller|writeBuffer[47][2]~feeder_combout\);

-- Location: FF_X35_Y28_N1
\sdram_controller|writeBuffer[47][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[47][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[47][2]~q\);

-- Location: LCCOMB_X35_Y29_N10
\sdram_controller|Mux29~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux29~8_combout\ = (\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|Mux29~7_combout\ & (\sdram_controller|writeBuffer[111][2]~q\)) # (!\sdram_controller|Mux29~7_combout\ & ((\sdram_controller|writeBuffer[47][2]~q\))))) # 
-- (!\sdram_controller|stateCycleCount\(5) & (\sdram_controller|Mux29~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(5),
	datab => \sdram_controller|Mux29~7_combout\,
	datac => \sdram_controller|writeBuffer[111][2]~q\,
	datad => \sdram_controller|writeBuffer[47][2]~q\,
	combout => \sdram_controller|Mux29~8_combout\);

-- Location: LCCOMB_X34_Y29_N28
\sdram_controller|Mux29~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux29~9_combout\ = (\sdram_controller|Mux29~6_combout\ & (((\sdram_controller|Mux29~8_combout\) # (!\sdram_controller|stateCycleCount\(3))))) # (!\sdram_controller|Mux29~6_combout\ & (\sdram_controller|Mux29~1_combout\ & 
-- ((\sdram_controller|stateCycleCount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux29~1_combout\,
	datab => \sdram_controller|Mux29~6_combout\,
	datac => \sdram_controller|Mux29~8_combout\,
	datad => \sdram_controller|stateCycleCount\(3),
	combout => \sdram_controller|Mux29~9_combout\);

-- Location: FF_X39_Y28_N1
\sdram_controller|writeBuffer[127][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[127][2]~q\);

-- Location: FF_X37_Y28_N31
\sdram_controller|writeBuffer[95][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[95][2]~q\);

-- Location: LCCOMB_X35_Y28_N6
\sdram_controller|writeBuffer[63][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[63][2]~feeder_combout\ = \Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~8_combout\,
	combout => \sdram_controller|writeBuffer[63][2]~feeder_combout\);

-- Location: FF_X35_Y28_N7
\sdram_controller|writeBuffer[63][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[63][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[63][2]~q\);

-- Location: FF_X36_Y28_N15
\sdram_controller|writeBuffer[31][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[31][2]~q\);

-- Location: LCCOMB_X36_Y28_N14
\sdram_controller|Mux29~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux29~38_combout\ = (\sdram_controller|stateCycleCount\(6) & (((\sdram_controller|stateCycleCount\(5))))) # (!\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|stateCycleCount\(5) & (\sdram_controller|writeBuffer[63][2]~q\)) # 
-- (!\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|writeBuffer[31][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[63][2]~q\,
	datab => \sdram_controller|stateCycleCount\(6),
	datac => \sdram_controller|writeBuffer[31][2]~q\,
	datad => \sdram_controller|stateCycleCount\(5),
	combout => \sdram_controller|Mux29~38_combout\);

-- Location: LCCOMB_X37_Y28_N30
\sdram_controller|Mux29~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux29~39_combout\ = (\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|Mux29~38_combout\ & (\sdram_controller|writeBuffer[127][2]~q\)) # (!\sdram_controller|Mux29~38_combout\ & ((\sdram_controller|writeBuffer[95][2]~q\))))) # 
-- (!\sdram_controller|stateCycleCount\(6) & (((\sdram_controller|Mux29~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[127][2]~q\,
	datab => \sdram_controller|stateCycleCount\(6),
	datac => \sdram_controller|writeBuffer[95][2]~q\,
	datad => \sdram_controller|Mux29~38_combout\,
	combout => \sdram_controller|Mux29~39_combout\);

-- Location: LCCOMB_X40_Y27_N28
\sdram_controller|writeBuffer[53][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[53][2]~feeder_combout\ = \Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~8_combout\,
	combout => \sdram_controller|writeBuffer[53][2]~feeder_combout\);

-- Location: FF_X40_Y27_N29
\sdram_controller|writeBuffer[53][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[53][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[53][2]~q\);

-- Location: FF_X35_Y29_N21
\sdram_controller|writeBuffer[117][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[117][2]~q\);

-- Location: LCCOMB_X41_Y29_N12
\sdram_controller|writeBuffer[85][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[85][2]~feeder_combout\ = \Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~8_combout\,
	combout => \sdram_controller|writeBuffer[85][2]~feeder_combout\);

-- Location: FF_X41_Y29_N13
\sdram_controller|writeBuffer[85][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[85][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[85][2]~q\);

-- Location: FF_X41_Y29_N27
\sdram_controller|writeBuffer[21][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[21][2]~q\);

-- Location: LCCOMB_X41_Y29_N26
\sdram_controller|Mux29~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux29~35_combout\ = (\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|writeBuffer[85][2]~q\) # ((\sdram_controller|stateCycleCount\(5))))) # (!\sdram_controller|stateCycleCount\(6) & (((\sdram_controller|writeBuffer[21][2]~q\ 
-- & !\sdram_controller|stateCycleCount\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[85][2]~q\,
	datab => \sdram_controller|stateCycleCount\(6),
	datac => \sdram_controller|writeBuffer[21][2]~q\,
	datad => \sdram_controller|stateCycleCount\(5),
	combout => \sdram_controller|Mux29~35_combout\);

-- Location: LCCOMB_X35_Y29_N20
\sdram_controller|Mux29~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux29~36_combout\ = (\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|Mux29~35_combout\ & ((\sdram_controller|writeBuffer[117][2]~q\))) # (!\sdram_controller|Mux29~35_combout\ & (\sdram_controller|writeBuffer[53][2]~q\)))) # 
-- (!\sdram_controller|stateCycleCount\(5) & (((\sdram_controller|Mux29~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[53][2]~q\,
	datab => \sdram_controller|stateCycleCount\(5),
	datac => \sdram_controller|writeBuffer[117][2]~q\,
	datad => \sdram_controller|Mux29~35_combout\,
	combout => \sdram_controller|Mux29~36_combout\);

-- Location: LCCOMB_X38_Y29_N22
\sdram_controller|writeBuffer[93][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[93][2]~feeder_combout\ = \Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~8_combout\,
	combout => \sdram_controller|writeBuffer[93][2]~feeder_combout\);

-- Location: FF_X38_Y29_N23
\sdram_controller|writeBuffer[93][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[93][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[93][2]~q\);

-- Location: FF_X38_Y29_N21
\sdram_controller|writeBuffer[125][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[125][2]~q\);

-- Location: FF_X40_Y25_N9
\sdram_controller|writeBuffer[29][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[29][2]~q\);

-- Location: LCCOMB_X40_Y29_N24
\sdram_controller|writeBuffer[61][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[61][2]~feeder_combout\ = \Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~8_combout\,
	combout => \sdram_controller|writeBuffer[61][2]~feeder_combout\);

-- Location: FF_X40_Y29_N25
\sdram_controller|writeBuffer[61][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[61][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[61][2]~q\);

-- Location: LCCOMB_X40_Y25_N8
\sdram_controller|Mux29~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux29~33_combout\ = (\sdram_controller|stateCycleCount\(6) & (\sdram_controller|stateCycleCount\(5))) # (!\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|writeBuffer[61][2]~q\))) # 
-- (!\sdram_controller|stateCycleCount\(5) & (\sdram_controller|writeBuffer[29][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(6),
	datab => \sdram_controller|stateCycleCount\(5),
	datac => \sdram_controller|writeBuffer[29][2]~q\,
	datad => \sdram_controller|writeBuffer[61][2]~q\,
	combout => \sdram_controller|Mux29~33_combout\);

-- Location: LCCOMB_X38_Y29_N20
\sdram_controller|Mux29~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux29~34_combout\ = (\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|Mux29~33_combout\ & ((\sdram_controller|writeBuffer[125][2]~q\))) # (!\sdram_controller|Mux29~33_combout\ & (\sdram_controller|writeBuffer[93][2]~q\)))) # 
-- (!\sdram_controller|stateCycleCount\(6) & (((\sdram_controller|Mux29~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[93][2]~q\,
	datab => \sdram_controller|stateCycleCount\(6),
	datac => \sdram_controller|writeBuffer[125][2]~q\,
	datad => \sdram_controller|Mux29~33_combout\,
	combout => \sdram_controller|Mux29~34_combout\);

-- Location: LCCOMB_X34_Y29_N8
\sdram_controller|Mux29~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux29~37_combout\ = (\sdram_controller|stateCycleCount\(3) & (((\sdram_controller|stateCycleCount\(1)) # (\sdram_controller|Mux29~34_combout\)))) # (!\sdram_controller|stateCycleCount\(3) & (\sdram_controller|Mux29~36_combout\ & 
-- (!\sdram_controller|stateCycleCount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux29~36_combout\,
	datab => \sdram_controller|stateCycleCount\(3),
	datac => \sdram_controller|stateCycleCount\(1),
	datad => \sdram_controller|Mux29~34_combout\,
	combout => \sdram_controller|Mux29~37_combout\);

-- Location: LCCOMB_X35_Y27_N24
\sdram_controller|writeBuffer[55][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[55][2]~feeder_combout\ = \Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~8_combout\,
	combout => \sdram_controller|writeBuffer[55][2]~feeder_combout\);

-- Location: FF_X35_Y27_N25
\sdram_controller|writeBuffer[55][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[55][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[55][2]~q\);

-- Location: FF_X38_Y27_N11
\sdram_controller|writeBuffer[119][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[119][2]~q\);

-- Location: FF_X37_Y30_N23
\sdram_controller|writeBuffer[23][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[23][2]~q\);

-- Location: LCCOMB_X37_Y30_N20
\sdram_controller|writeBuffer[87][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[87][2]~feeder_combout\ = \Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~8_combout\,
	combout => \sdram_controller|writeBuffer[87][2]~feeder_combout\);

-- Location: FF_X37_Y30_N21
\sdram_controller|writeBuffer[87][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[87][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[87][2]~q\);

-- Location: LCCOMB_X37_Y30_N22
\sdram_controller|Mux29~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux29~31_combout\ = (\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|stateCycleCount\(5)) # ((\sdram_controller|writeBuffer[87][2]~q\)))) # (!\sdram_controller|stateCycleCount\(6) & (!\sdram_controller|stateCycleCount\(5) & 
-- (\sdram_controller|writeBuffer[23][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(6),
	datab => \sdram_controller|stateCycleCount\(5),
	datac => \sdram_controller|writeBuffer[23][2]~q\,
	datad => \sdram_controller|writeBuffer[87][2]~q\,
	combout => \sdram_controller|Mux29~31_combout\);

-- Location: LCCOMB_X38_Y27_N10
\sdram_controller|Mux29~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux29~32_combout\ = (\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|Mux29~31_combout\ & ((\sdram_controller|writeBuffer[119][2]~q\))) # (!\sdram_controller|Mux29~31_combout\ & (\sdram_controller|writeBuffer[55][2]~q\)))) # 
-- (!\sdram_controller|stateCycleCount\(5) & (((\sdram_controller|Mux29~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[55][2]~q\,
	datab => \sdram_controller|stateCycleCount\(5),
	datac => \sdram_controller|writeBuffer[119][2]~q\,
	datad => \sdram_controller|Mux29~31_combout\,
	combout => \sdram_controller|Mux29~32_combout\);

-- Location: LCCOMB_X34_Y29_N2
\sdram_controller|Mux29~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux29~40_combout\ = (\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|Mux29~37_combout\ & (\sdram_controller|Mux29~39_combout\)) # (!\sdram_controller|Mux29~37_combout\ & ((\sdram_controller|Mux29~32_combout\))))) # 
-- (!\sdram_controller|stateCycleCount\(1) & (((\sdram_controller|Mux29~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux29~39_combout\,
	datab => \sdram_controller|stateCycleCount\(1),
	datac => \sdram_controller|Mux29~37_combout\,
	datad => \sdram_controller|Mux29~32_combout\,
	combout => \sdram_controller|Mux29~40_combout\);

-- Location: LCCOMB_X34_Y29_N20
\sdram_controller|Mux29~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux29~41_combout\ = (\sdram_controller|Mux29~30_combout\ & (((\sdram_controller|Mux29~40_combout\) # (!\sdram_controller|stateCycleCount\(2))))) # (!\sdram_controller|Mux29~30_combout\ & (\sdram_controller|Mux29~9_combout\ & 
-- ((\sdram_controller|stateCycleCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux29~30_combout\,
	datab => \sdram_controller|Mux29~9_combout\,
	datac => \sdram_controller|Mux29~40_combout\,
	datad => \sdram_controller|stateCycleCount\(2),
	combout => \sdram_controller|Mux29~41_combout\);

-- Location: LCCOMB_X34_Y29_N30
\sdram_controller|Mux29~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux29~42_combout\ = (\sdram_controller|stateCycleCount\(0) & \sdram_controller|Mux29~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sdram_controller|stateCycleCount\(0),
	datad => \sdram_controller|Mux29~41_combout\,
	combout => \sdram_controller|Mux29~42_combout\);

-- Location: LCCOMB_X38_Y28_N24
\Add0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (transmitCount(3) & (!\Add0~7\)) # (!transmitCount(3) & ((\Add0~7\) # (GND)))
-- \Add0~10\ = CARRY((!\Add0~7\) # (!transmitCount(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => transmitCount(3),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

-- Location: LCCOMB_X38_Y28_N0
\Add0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = (\state.TRANSMIT~q\ & \Add0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.TRANSMIT~q\,
	datad => \Add0~9_combout\,
	combout => \Add0~11_combout\);

-- Location: LCCOMB_X34_Y28_N12
\sdram_controller|writeBuffer[71][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[71][3]~feeder_combout\ = \Add0~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~11_combout\,
	combout => \sdram_controller|writeBuffer[71][3]~feeder_combout\);

-- Location: FF_X34_Y28_N13
\sdram_controller|writeBuffer[71][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[71][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[71][3]~q\);

-- Location: FF_X37_Y30_N9
\sdram_controller|writeBuffer[87][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[87][3]~q\);

-- Location: LCCOMB_X41_Y30_N4
\sdram_controller|writeBuffer[83][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[83][3]~feeder_combout\ = \Add0~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~11_combout\,
	combout => \sdram_controller|writeBuffer[83][3]~feeder_combout\);

-- Location: FF_X41_Y30_N5
\sdram_controller|writeBuffer[83][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[83][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[83][3]~q\);

-- Location: FF_X39_Y28_N7
\sdram_controller|writeBuffer[67][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[67][3]~q\);

-- Location: LCCOMB_X39_Y28_N6
\sdram_controller|Mux28~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux28~12_combout\ = (\sdram_controller|stateCycleCount\(2) & (((\sdram_controller|stateCycleCount\(4))))) # (!\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|stateCycleCount\(4) & (\sdram_controller|writeBuffer[83][3]~q\)) # 
-- (!\sdram_controller|stateCycleCount\(4) & ((\sdram_controller|writeBuffer[67][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(2),
	datab => \sdram_controller|writeBuffer[83][3]~q\,
	datac => \sdram_controller|writeBuffer[67][3]~q\,
	datad => \sdram_controller|stateCycleCount\(4),
	combout => \sdram_controller|Mux28~12_combout\);

-- Location: LCCOMB_X37_Y30_N8
\sdram_controller|Mux28~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux28~13_combout\ = (\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|Mux28~12_combout\ & ((\sdram_controller|writeBuffer[87][3]~q\))) # (!\sdram_controller|Mux28~12_combout\ & (\sdram_controller|writeBuffer[71][3]~q\)))) # 
-- (!\sdram_controller|stateCycleCount\(2) & (((\sdram_controller|Mux28~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(2),
	datab => \sdram_controller|writeBuffer[71][3]~q\,
	datac => \sdram_controller|writeBuffer[87][3]~q\,
	datad => \sdram_controller|Mux28~12_combout\,
	combout => \sdram_controller|Mux28~13_combout\);

-- Location: LCCOMB_X38_Y25_N0
\sdram_controller|writeBuffer[7][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[7][3]~feeder_combout\ = \Add0~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~11_combout\,
	combout => \sdram_controller|writeBuffer[7][3]~feeder_combout\);

-- Location: FF_X38_Y25_N1
\sdram_controller|writeBuffer[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[7][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[7][3]~q\);

-- Location: FF_X37_Y30_N7
\sdram_controller|writeBuffer[23][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[23][3]~q\);

-- Location: LCCOMB_X40_Y30_N28
\sdram_controller|writeBuffer[19][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[19][3]~feeder_combout\ = \Add0~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~11_combout\,
	combout => \sdram_controller|writeBuffer[19][3]~feeder_combout\);

-- Location: FF_X40_Y30_N29
\sdram_controller|writeBuffer[19][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[19][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[19][3]~q\);

-- Location: FF_X39_Y30_N9
\sdram_controller|writeBuffer[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[3][3]~q\);

-- Location: LCCOMB_X39_Y30_N8
\sdram_controller|Mux28~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux28~14_combout\ = (\sdram_controller|stateCycleCount\(4) & ((\sdram_controller|writeBuffer[19][3]~q\) # ((\sdram_controller|stateCycleCount\(2))))) # (!\sdram_controller|stateCycleCount\(4) & (((\sdram_controller|writeBuffer[3][3]~q\ & 
-- !\sdram_controller|stateCycleCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(4),
	datab => \sdram_controller|writeBuffer[19][3]~q\,
	datac => \sdram_controller|writeBuffer[3][3]~q\,
	datad => \sdram_controller|stateCycleCount\(2),
	combout => \sdram_controller|Mux28~14_combout\);

-- Location: LCCOMB_X37_Y30_N6
\sdram_controller|Mux28~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux28~15_combout\ = (\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|Mux28~14_combout\ & ((\sdram_controller|writeBuffer[23][3]~q\))) # (!\sdram_controller|Mux28~14_combout\ & (\sdram_controller|writeBuffer[7][3]~q\)))) # 
-- (!\sdram_controller|stateCycleCount\(2) & (((\sdram_controller|Mux28~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(2),
	datab => \sdram_controller|writeBuffer[7][3]~q\,
	datac => \sdram_controller|writeBuffer[23][3]~q\,
	datad => \sdram_controller|Mux28~14_combout\,
	combout => \sdram_controller|Mux28~15_combout\);

-- Location: LCCOMB_X36_Y26_N16
\sdram_controller|Mux28~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux28~16_combout\ = (\sdram_controller|stateCycleCount\(5) & (\sdram_controller|stateCycleCount\(6))) # (!\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|stateCycleCount\(6) & (\sdram_controller|Mux28~13_combout\)) # 
-- (!\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|Mux28~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(5),
	datab => \sdram_controller|stateCycleCount\(6),
	datac => \sdram_controller|Mux28~13_combout\,
	datad => \sdram_controller|Mux28~15_combout\,
	combout => \sdram_controller|Mux28~16_combout\);

-- Location: LCCOMB_X38_Y27_N24
\sdram_controller|writeBuffer[115][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[115][3]~feeder_combout\ = \Add0~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~11_combout\,
	combout => \sdram_controller|writeBuffer[115][3]~feeder_combout\);

-- Location: FF_X38_Y27_N25
\sdram_controller|writeBuffer[115][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[115][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[115][3]~q\);

-- Location: FF_X38_Y27_N31
\sdram_controller|writeBuffer[119][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[119][3]~q\);

-- Location: LCCOMB_X42_Y30_N2
\sdram_controller|writeBuffer[103][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[103][3]~feeder_combout\ = \Add0~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~11_combout\,
	combout => \sdram_controller|writeBuffer[103][3]~feeder_combout\);

-- Location: FF_X42_Y30_N3
\sdram_controller|writeBuffer[103][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[103][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[103][3]~q\);

-- Location: FF_X39_Y30_N27
\sdram_controller|writeBuffer[99][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[99][3]~q\);

-- Location: LCCOMB_X39_Y30_N26
\sdram_controller|Mux28~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux28~17_combout\ = (\sdram_controller|stateCycleCount\(4) & (((\sdram_controller|stateCycleCount\(2))))) # (!\sdram_controller|stateCycleCount\(4) & ((\sdram_controller|stateCycleCount\(2) & (\sdram_controller|writeBuffer[103][3]~q\)) # 
-- (!\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|writeBuffer[99][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(4),
	datab => \sdram_controller|writeBuffer[103][3]~q\,
	datac => \sdram_controller|writeBuffer[99][3]~q\,
	datad => \sdram_controller|stateCycleCount\(2),
	combout => \sdram_controller|Mux28~17_combout\);

-- Location: LCCOMB_X38_Y27_N30
\sdram_controller|Mux28~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux28~18_combout\ = (\sdram_controller|stateCycleCount\(4) & ((\sdram_controller|Mux28~17_combout\ & ((\sdram_controller|writeBuffer[119][3]~q\))) # (!\sdram_controller|Mux28~17_combout\ & (\sdram_controller|writeBuffer[115][3]~q\)))) # 
-- (!\sdram_controller|stateCycleCount\(4) & (((\sdram_controller|Mux28~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(4),
	datab => \sdram_controller|writeBuffer[115][3]~q\,
	datac => \sdram_controller|writeBuffer[119][3]~q\,
	datad => \sdram_controller|Mux28~17_combout\,
	combout => \sdram_controller|Mux28~18_combout\);

-- Location: FF_X35_Y27_N11
\sdram_controller|writeBuffer[35][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[35][3]~q\);

-- Location: LCCOMB_X36_Y27_N24
\sdram_controller|writeBuffer[39][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[39][3]~feeder_combout\ = \Add0~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~11_combout\,
	combout => \sdram_controller|writeBuffer[39][3]~feeder_combout\);

-- Location: FF_X36_Y27_N25
\sdram_controller|writeBuffer[39][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[39][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[39][3]~q\);

-- Location: LCCOMB_X35_Y27_N10
\sdram_controller|Mux28~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux28~10_combout\ = (\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|stateCycleCount\(4)) # ((\sdram_controller|writeBuffer[39][3]~q\)))) # (!\sdram_controller|stateCycleCount\(2) & (!\sdram_controller|stateCycleCount\(4) & 
-- (\sdram_controller|writeBuffer[35][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(2),
	datab => \sdram_controller|stateCycleCount\(4),
	datac => \sdram_controller|writeBuffer[35][3]~q\,
	datad => \sdram_controller|writeBuffer[39][3]~q\,
	combout => \sdram_controller|Mux28~10_combout\);

-- Location: LCCOMB_X39_Y27_N10
\sdram_controller|writeBuffer[51][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[51][3]~feeder_combout\ = \Add0~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~11_combout\,
	combout => \sdram_controller|writeBuffer[51][3]~feeder_combout\);

-- Location: FF_X39_Y27_N11
\sdram_controller|writeBuffer[51][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[51][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[51][3]~q\);

-- Location: FF_X35_Y27_N9
\sdram_controller|writeBuffer[55][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[55][3]~q\);

-- Location: LCCOMB_X35_Y27_N8
\sdram_controller|Mux28~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux28~11_combout\ = (\sdram_controller|Mux28~10_combout\ & (((\sdram_controller|writeBuffer[55][3]~q\) # (!\sdram_controller|stateCycleCount\(4))))) # (!\sdram_controller|Mux28~10_combout\ & (\sdram_controller|writeBuffer[51][3]~q\ & 
-- ((\sdram_controller|stateCycleCount\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux28~10_combout\,
	datab => \sdram_controller|writeBuffer[51][3]~q\,
	datac => \sdram_controller|writeBuffer[55][3]~q\,
	datad => \sdram_controller|stateCycleCount\(4),
	combout => \sdram_controller|Mux28~11_combout\);

-- Location: LCCOMB_X36_Y26_N14
\sdram_controller|Mux28~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux28~19_combout\ = (\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|Mux28~16_combout\ & (\sdram_controller|Mux28~18_combout\)) # (!\sdram_controller|Mux28~16_combout\ & ((\sdram_controller|Mux28~11_combout\))))) # 
-- (!\sdram_controller|stateCycleCount\(5) & (\sdram_controller|Mux28~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(5),
	datab => \sdram_controller|Mux28~16_combout\,
	datac => \sdram_controller|Mux28~18_combout\,
	datad => \sdram_controller|Mux28~11_combout\,
	combout => \sdram_controller|Mux28~19_combout\);

-- Location: FF_X37_Y26_N1
\sdram_controller|writeBuffer[65][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[65][3]~q\);

-- Location: LCCOMB_X37_Y25_N6
\sdram_controller|writeBuffer[69][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[69][3]~feeder_combout\ = \Add0~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~11_combout\,
	combout => \sdram_controller|writeBuffer[69][3]~feeder_combout\);

-- Location: FF_X37_Y25_N7
\sdram_controller|writeBuffer[69][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[69][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[69][3]~q\);

-- Location: LCCOMB_X37_Y26_N0
\sdram_controller|Mux28~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux28~22_combout\ = (\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|stateCycleCount\(4)) # ((\sdram_controller|writeBuffer[69][3]~q\)))) # (!\sdram_controller|stateCycleCount\(2) & (!\sdram_controller|stateCycleCount\(4) & 
-- (\sdram_controller|writeBuffer[65][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(2),
	datab => \sdram_controller|stateCycleCount\(4),
	datac => \sdram_controller|writeBuffer[65][3]~q\,
	datad => \sdram_controller|writeBuffer[69][3]~q\,
	combout => \sdram_controller|Mux28~22_combout\);

-- Location: FF_X40_Y27_N25
\sdram_controller|writeBuffer[85][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[85][3]~q\);

-- Location: LCCOMB_X41_Y26_N2
\sdram_controller|writeBuffer[81][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[81][3]~feeder_combout\ = \Add0~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~11_combout\,
	combout => \sdram_controller|writeBuffer[81][3]~feeder_combout\);

-- Location: FF_X41_Y26_N3
\sdram_controller|writeBuffer[81][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[81][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[81][3]~q\);

-- Location: LCCOMB_X40_Y27_N24
\sdram_controller|Mux28~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux28~23_combout\ = (\sdram_controller|Mux28~22_combout\ & (((\sdram_controller|writeBuffer[85][3]~q\)) # (!\sdram_controller|stateCycleCount\(4)))) # (!\sdram_controller|Mux28~22_combout\ & (\sdram_controller|stateCycleCount\(4) & 
-- ((\sdram_controller|writeBuffer[81][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux28~22_combout\,
	datab => \sdram_controller|stateCycleCount\(4),
	datac => \sdram_controller|writeBuffer[85][3]~q\,
	datad => \sdram_controller|writeBuffer[81][3]~q\,
	combout => \sdram_controller|Mux28~23_combout\);

-- Location: LCCOMB_X40_Y30_N18
\sdram_controller|writeBuffer[17][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[17][3]~feeder_combout\ = \Add0~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~11_combout\,
	combout => \sdram_controller|writeBuffer[17][3]~feeder_combout\);

-- Location: FF_X40_Y30_N19
\sdram_controller|writeBuffer[17][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[17][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[17][3]~q\);

-- Location: FF_X41_Y29_N21
\sdram_controller|writeBuffer[21][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[21][3]~q\);

-- Location: FF_X38_Y26_N15
\sdram_controller|writeBuffer[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[1][3]~q\);

-- Location: LCCOMB_X38_Y26_N0
\sdram_controller|writeBuffer[5][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[5][3]~feeder_combout\ = \Add0~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~11_combout\,
	combout => \sdram_controller|writeBuffer[5][3]~feeder_combout\);

-- Location: FF_X38_Y26_N1
\sdram_controller|writeBuffer[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[5][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[5][3]~q\);

-- Location: LCCOMB_X38_Y26_N14
\sdram_controller|Mux28~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux28~24_combout\ = (\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|stateCycleCount\(4)) # ((\sdram_controller|writeBuffer[5][3]~q\)))) # (!\sdram_controller|stateCycleCount\(2) & (!\sdram_controller|stateCycleCount\(4) & 
-- (\sdram_controller|writeBuffer[1][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(2),
	datab => \sdram_controller|stateCycleCount\(4),
	datac => \sdram_controller|writeBuffer[1][3]~q\,
	datad => \sdram_controller|writeBuffer[5][3]~q\,
	combout => \sdram_controller|Mux28~24_combout\);

-- Location: LCCOMB_X41_Y29_N20
\sdram_controller|Mux28~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux28~25_combout\ = (\sdram_controller|stateCycleCount\(4) & ((\sdram_controller|Mux28~24_combout\ & ((\sdram_controller|writeBuffer[21][3]~q\))) # (!\sdram_controller|Mux28~24_combout\ & (\sdram_controller|writeBuffer[17][3]~q\)))) # 
-- (!\sdram_controller|stateCycleCount\(4) & (((\sdram_controller|Mux28~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(4),
	datab => \sdram_controller|writeBuffer[17][3]~q\,
	datac => \sdram_controller|writeBuffer[21][3]~q\,
	datad => \sdram_controller|Mux28~24_combout\,
	combout => \sdram_controller|Mux28~25_combout\);

-- Location: LCCOMB_X36_Y26_N28
\sdram_controller|Mux28~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux28~26_combout\ = (\sdram_controller|stateCycleCount\(5) & (\sdram_controller|stateCycleCount\(6))) # (!\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|stateCycleCount\(6) & (\sdram_controller|Mux28~23_combout\)) # 
-- (!\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|Mux28~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(5),
	datab => \sdram_controller|stateCycleCount\(6),
	datac => \sdram_controller|Mux28~23_combout\,
	datad => \sdram_controller|Mux28~25_combout\,
	combout => \sdram_controller|Mux28~26_combout\);

-- Location: FF_X37_Y26_N31
\sdram_controller|writeBuffer[97][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[97][3]~q\);

-- Location: LCCOMB_X37_Y25_N8
\sdram_controller|writeBuffer[101][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[101][3]~feeder_combout\ = \Add0~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~11_combout\,
	combout => \sdram_controller|writeBuffer[101][3]~feeder_combout\);

-- Location: FF_X37_Y25_N9
\sdram_controller|writeBuffer[101][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[101][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[101][3]~q\);

-- Location: LCCOMB_X37_Y26_N30
\sdram_controller|Mux28~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux28~27_combout\ = (\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|stateCycleCount\(4)) # ((\sdram_controller|writeBuffer[101][3]~q\)))) # (!\sdram_controller|stateCycleCount\(2) & (!\sdram_controller|stateCycleCount\(4) & 
-- (\sdram_controller|writeBuffer[97][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(2),
	datab => \sdram_controller|stateCycleCount\(4),
	datac => \sdram_controller|writeBuffer[97][3]~q\,
	datad => \sdram_controller|writeBuffer[101][3]~q\,
	combout => \sdram_controller|Mux28~27_combout\);

-- Location: FF_X36_Y26_N23
\sdram_controller|writeBuffer[117][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[117][3]~q\);

-- Location: LCCOMB_X41_Y26_N8
\sdram_controller|writeBuffer[113][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[113][3]~feeder_combout\ = \Add0~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~11_combout\,
	combout => \sdram_controller|writeBuffer[113][3]~feeder_combout\);

-- Location: FF_X41_Y26_N9
\sdram_controller|writeBuffer[113][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[113][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[113][3]~q\);

-- Location: LCCOMB_X36_Y26_N22
\sdram_controller|Mux28~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux28~28_combout\ = (\sdram_controller|Mux28~27_combout\ & (((\sdram_controller|writeBuffer[117][3]~q\)) # (!\sdram_controller|stateCycleCount\(4)))) # (!\sdram_controller|Mux28~27_combout\ & (\sdram_controller|stateCycleCount\(4) & 
-- ((\sdram_controller|writeBuffer[113][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux28~27_combout\,
	datab => \sdram_controller|stateCycleCount\(4),
	datac => \sdram_controller|writeBuffer[117][3]~q\,
	datad => \sdram_controller|writeBuffer[113][3]~q\,
	combout => \sdram_controller|Mux28~28_combout\);

-- Location: FF_X40_Y26_N31
\sdram_controller|writeBuffer[33][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[33][3]~q\);

-- Location: LCCOMB_X39_Y26_N28
\sdram_controller|writeBuffer[37][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[37][3]~feeder_combout\ = \Add0~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~11_combout\,
	combout => \sdram_controller|writeBuffer[37][3]~feeder_combout\);

-- Location: FF_X39_Y26_N29
\sdram_controller|writeBuffer[37][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[37][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[37][3]~q\);

-- Location: LCCOMB_X40_Y26_N30
\sdram_controller|Mux28~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux28~20_combout\ = (\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|stateCycleCount\(4)) # ((\sdram_controller|writeBuffer[37][3]~q\)))) # (!\sdram_controller|stateCycleCount\(2) & (!\sdram_controller|stateCycleCount\(4) & 
-- (\sdram_controller|writeBuffer[33][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(2),
	datab => \sdram_controller|stateCycleCount\(4),
	datac => \sdram_controller|writeBuffer[33][3]~q\,
	datad => \sdram_controller|writeBuffer[37][3]~q\,
	combout => \sdram_controller|Mux28~20_combout\);

-- Location: FF_X40_Y27_N31
\sdram_controller|writeBuffer[53][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[53][3]~q\);

-- Location: LCCOMB_X40_Y26_N28
\sdram_controller|writeBuffer[49][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[49][3]~feeder_combout\ = \Add0~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~11_combout\,
	combout => \sdram_controller|writeBuffer[49][3]~feeder_combout\);

-- Location: FF_X40_Y26_N29
\sdram_controller|writeBuffer[49][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[49][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[49][3]~q\);

-- Location: LCCOMB_X40_Y27_N30
\sdram_controller|Mux28~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux28~21_combout\ = (\sdram_controller|Mux28~20_combout\ & (((\sdram_controller|writeBuffer[53][3]~q\)) # (!\sdram_controller|stateCycleCount\(4)))) # (!\sdram_controller|Mux28~20_combout\ & (\sdram_controller|stateCycleCount\(4) & 
-- ((\sdram_controller|writeBuffer[49][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux28~20_combout\,
	datab => \sdram_controller|stateCycleCount\(4),
	datac => \sdram_controller|writeBuffer[53][3]~q\,
	datad => \sdram_controller|writeBuffer[49][3]~q\,
	combout => \sdram_controller|Mux28~21_combout\);

-- Location: LCCOMB_X36_Y26_N24
\sdram_controller|Mux28~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux28~29_combout\ = (\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|Mux28~26_combout\ & (\sdram_controller|Mux28~28_combout\)) # (!\sdram_controller|Mux28~26_combout\ & ((\sdram_controller|Mux28~21_combout\))))) # 
-- (!\sdram_controller|stateCycleCount\(5) & (\sdram_controller|Mux28~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(5),
	datab => \sdram_controller|Mux28~26_combout\,
	datac => \sdram_controller|Mux28~28_combout\,
	datad => \sdram_controller|Mux28~21_combout\,
	combout => \sdram_controller|Mux28~29_combout\);

-- Location: LCCOMB_X35_Y26_N26
\sdram_controller|Mux28~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux28~30_combout\ = (\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|stateCycleCount\(3)) # ((\sdram_controller|Mux28~19_combout\)))) # (!\sdram_controller|stateCycleCount\(1) & (!\sdram_controller|stateCycleCount\(3) & 
-- ((\sdram_controller|Mux28~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datab => \sdram_controller|stateCycleCount\(3),
	datac => \sdram_controller|Mux28~19_combout\,
	datad => \sdram_controller|Mux28~29_combout\,
	combout => \sdram_controller|Mux28~30_combout\);

-- Location: LCCOMB_X40_Y28_N6
\sdram_controller|writeBuffer[43][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[43][3]~feeder_combout\ = \Add0~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~11_combout\,
	combout => \sdram_controller|writeBuffer[43][3]~feeder_combout\);

-- Location: FF_X40_Y28_N7
\sdram_controller|writeBuffer[43][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[43][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[43][3]~q\);

-- Location: FF_X40_Y28_N1
\sdram_controller|writeBuffer[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[11][3]~q\);

-- Location: LCCOMB_X40_Y28_N0
\sdram_controller|Mux28~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux28~35_combout\ = (\sdram_controller|stateCycleCount\(4) & (((\sdram_controller|stateCycleCount\(5))))) # (!\sdram_controller|stateCycleCount\(4) & ((\sdram_controller|stateCycleCount\(5) & (\sdram_controller|writeBuffer[43][3]~q\)) # 
-- (!\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|writeBuffer[11][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[43][3]~q\,
	datab => \sdram_controller|stateCycleCount\(4),
	datac => \sdram_controller|writeBuffer[11][3]~q\,
	datad => \sdram_controller|stateCycleCount\(5),
	combout => \sdram_controller|Mux28~35_combout\);

-- Location: FF_X43_Y28_N3
\sdram_controller|writeBuffer[59][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[59][3]~q\);

-- Location: LCCOMB_X43_Y28_N0
\sdram_controller|writeBuffer[27][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[27][3]~feeder_combout\ = \Add0~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~11_combout\,
	combout => \sdram_controller|writeBuffer[27][3]~feeder_combout\);

-- Location: FF_X43_Y28_N1
\sdram_controller|writeBuffer[27][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[27][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[27][3]~q\);

-- Location: LCCOMB_X43_Y28_N2
\sdram_controller|Mux28~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux28~36_combout\ = (\sdram_controller|Mux28~35_combout\ & (((\sdram_controller|writeBuffer[59][3]~q\)) # (!\sdram_controller|stateCycleCount\(4)))) # (!\sdram_controller|Mux28~35_combout\ & (\sdram_controller|stateCycleCount\(4) & 
-- ((\sdram_controller|writeBuffer[27][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux28~35_combout\,
	datab => \sdram_controller|stateCycleCount\(4),
	datac => \sdram_controller|writeBuffer[59][3]~q\,
	datad => \sdram_controller|writeBuffer[27][3]~q\,
	combout => \sdram_controller|Mux28~36_combout\);

-- Location: LCCOMB_X41_Y28_N30
\sdram_controller|writeBuffer[107][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[107][3]~feeder_combout\ = \Add0~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~11_combout\,
	combout => \sdram_controller|writeBuffer[107][3]~feeder_combout\);

-- Location: FF_X41_Y28_N31
\sdram_controller|writeBuffer[107][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[107][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[107][3]~q\);

-- Location: FF_X43_Y27_N7
\sdram_controller|writeBuffer[123][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[123][3]~q\);

-- Location: LCCOMB_X41_Y30_N14
\sdram_controller|writeBuffer[91][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[91][3]~feeder_combout\ = \Add0~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~11_combout\,
	combout => \sdram_controller|writeBuffer[91][3]~feeder_combout\);

-- Location: FF_X41_Y30_N15
\sdram_controller|writeBuffer[91][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[91][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[91][3]~q\);

-- Location: FF_X41_Y28_N25
\sdram_controller|writeBuffer[75][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[75][3]~q\);

-- Location: LCCOMB_X41_Y28_N24
\sdram_controller|Mux28~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux28~33_combout\ = (\sdram_controller|stateCycleCount\(5) & (((\sdram_controller|stateCycleCount\(4))))) # (!\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|stateCycleCount\(4) & (\sdram_controller|writeBuffer[91][3]~q\)) # 
-- (!\sdram_controller|stateCycleCount\(4) & ((\sdram_controller|writeBuffer[75][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[91][3]~q\,
	datab => \sdram_controller|stateCycleCount\(5),
	datac => \sdram_controller|writeBuffer[75][3]~q\,
	datad => \sdram_controller|stateCycleCount\(4),
	combout => \sdram_controller|Mux28~33_combout\);

-- Location: LCCOMB_X43_Y27_N6
\sdram_controller|Mux28~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux28~34_combout\ = (\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|Mux28~33_combout\ & ((\sdram_controller|writeBuffer[123][3]~q\))) # (!\sdram_controller|Mux28~33_combout\ & (\sdram_controller|writeBuffer[107][3]~q\)))) # 
-- (!\sdram_controller|stateCycleCount\(5) & (((\sdram_controller|Mux28~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(5),
	datab => \sdram_controller|writeBuffer[107][3]~q\,
	datac => \sdram_controller|writeBuffer[123][3]~q\,
	datad => \sdram_controller|Mux28~33_combout\,
	combout => \sdram_controller|Mux28~34_combout\);

-- Location: LCCOMB_X42_Y28_N24
\sdram_controller|Mux28~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux28~37_combout\ = (\sdram_controller|stateCycleCount\(6) & (((\sdram_controller|Mux28~34_combout\) # (\sdram_controller|stateCycleCount\(2))))) # (!\sdram_controller|stateCycleCount\(6) & (\sdram_controller|Mux28~36_combout\ & 
-- ((!\sdram_controller|stateCycleCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux28~36_combout\,
	datab => \sdram_controller|Mux28~34_combout\,
	datac => \sdram_controller|stateCycleCount\(6),
	datad => \sdram_controller|stateCycleCount\(2),
	combout => \sdram_controller|Mux28~37_combout\);

-- Location: LCCOMB_X35_Y28_N8
\sdram_controller|writeBuffer[47][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[47][3]~feeder_combout\ = \Add0~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~11_combout\,
	combout => \sdram_controller|writeBuffer[47][3]~feeder_combout\);

-- Location: FF_X35_Y28_N9
\sdram_controller|writeBuffer[47][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[47][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[47][3]~q\);

-- Location: FF_X36_Y28_N27
\sdram_controller|writeBuffer[15][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[15][3]~q\);

-- Location: LCCOMB_X36_Y28_N26
\sdram_controller|Mux28~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux28~31_combout\ = (\sdram_controller|stateCycleCount\(4) & (((\sdram_controller|stateCycleCount\(5))))) # (!\sdram_controller|stateCycleCount\(4) & ((\sdram_controller|stateCycleCount\(5) & (\sdram_controller|writeBuffer[47][3]~q\)) # 
-- (!\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|writeBuffer[15][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[47][3]~q\,
	datab => \sdram_controller|stateCycleCount\(4),
	datac => \sdram_controller|writeBuffer[15][3]~q\,
	datad => \sdram_controller|stateCycleCount\(5),
	combout => \sdram_controller|Mux28~31_combout\);

-- Location: FF_X35_Y28_N19
\sdram_controller|writeBuffer[63][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[63][3]~q\);

-- Location: LCCOMB_X36_Y28_N28
\sdram_controller|writeBuffer[31][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[31][3]~feeder_combout\ = \Add0~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~11_combout\,
	combout => \sdram_controller|writeBuffer[31][3]~feeder_combout\);

-- Location: FF_X36_Y28_N29
\sdram_controller|writeBuffer[31][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[31][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[31][3]~q\);

-- Location: LCCOMB_X35_Y28_N18
\sdram_controller|Mux28~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux28~32_combout\ = (\sdram_controller|stateCycleCount\(4) & ((\sdram_controller|Mux28~31_combout\ & (\sdram_controller|writeBuffer[63][3]~q\)) # (!\sdram_controller|Mux28~31_combout\ & ((\sdram_controller|writeBuffer[31][3]~q\))))) # 
-- (!\sdram_controller|stateCycleCount\(4) & (\sdram_controller|Mux28~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(4),
	datab => \sdram_controller|Mux28~31_combout\,
	datac => \sdram_controller|writeBuffer[63][3]~q\,
	datad => \sdram_controller|writeBuffer[31][3]~q\,
	combout => \sdram_controller|Mux28~32_combout\);

-- Location: FF_X38_Y28_N1
\sdram_controller|writeBuffer[127][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \Add0~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[127][3]~q\);

-- Location: FF_X35_Y29_N7
\sdram_controller|writeBuffer[111][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[111][3]~q\);

-- Location: FF_X37_Y28_N7
\sdram_controller|writeBuffer[79][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[79][3]~q\);

-- Location: LCCOMB_X37_Y28_N24
\sdram_controller|writeBuffer[95][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[95][3]~feeder_combout\ = \Add0~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~11_combout\,
	combout => \sdram_controller|writeBuffer[95][3]~feeder_combout\);

-- Location: FF_X37_Y28_N25
\sdram_controller|writeBuffer[95][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[95][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[95][3]~q\);

-- Location: LCCOMB_X37_Y28_N6
\sdram_controller|Mux28~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux28~38_combout\ = (\sdram_controller|stateCycleCount\(4) & ((\sdram_controller|stateCycleCount\(5)) # ((\sdram_controller|writeBuffer[95][3]~q\)))) # (!\sdram_controller|stateCycleCount\(4) & (!\sdram_controller|stateCycleCount\(5) & 
-- (\sdram_controller|writeBuffer[79][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(4),
	datab => \sdram_controller|stateCycleCount\(5),
	datac => \sdram_controller|writeBuffer[79][3]~q\,
	datad => \sdram_controller|writeBuffer[95][3]~q\,
	combout => \sdram_controller|Mux28~38_combout\);

-- Location: LCCOMB_X35_Y29_N6
\sdram_controller|Mux28~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux28~39_combout\ = (\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|Mux28~38_combout\ & (\sdram_controller|writeBuffer[127][3]~q\)) # (!\sdram_controller|Mux28~38_combout\ & ((\sdram_controller|writeBuffer[111][3]~q\))))) # 
-- (!\sdram_controller|stateCycleCount\(5) & (((\sdram_controller|Mux28~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[127][3]~q\,
	datab => \sdram_controller|stateCycleCount\(5),
	datac => \sdram_controller|writeBuffer[111][3]~q\,
	datad => \sdram_controller|Mux28~38_combout\,
	combout => \sdram_controller|Mux28~39_combout\);

-- Location: LCCOMB_X35_Y26_N28
\sdram_controller|Mux28~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux28~40_combout\ = (\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|Mux28~37_combout\ & ((\sdram_controller|Mux28~39_combout\))) # (!\sdram_controller|Mux28~37_combout\ & (\sdram_controller|Mux28~32_combout\)))) # 
-- (!\sdram_controller|stateCycleCount\(2) & (\sdram_controller|Mux28~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(2),
	datab => \sdram_controller|Mux28~37_combout\,
	datac => \sdram_controller|Mux28~32_combout\,
	datad => \sdram_controller|Mux28~39_combout\,
	combout => \sdram_controller|Mux28~40_combout\);

-- Location: LCCOMB_X36_Y29_N0
\sdram_controller|writeBuffer[77][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[77][3]~feeder_combout\ = \Add0~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~11_combout\,
	combout => \sdram_controller|writeBuffer[77][3]~feeder_combout\);

-- Location: FF_X36_Y29_N1
\sdram_controller|writeBuffer[77][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[77][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[77][3]~q\);

-- Location: FF_X38_Y29_N7
\sdram_controller|writeBuffer[93][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[93][3]~q\);

-- Location: FF_X39_Y29_N17
\sdram_controller|writeBuffer[73][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[73][3]~q\);

-- Location: LCCOMB_X39_Y26_N10
\sdram_controller|writeBuffer[89][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[89][3]~feeder_combout\ = \Add0~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~11_combout\,
	combout => \sdram_controller|writeBuffer[89][3]~feeder_combout\);

-- Location: FF_X39_Y26_N11
\sdram_controller|writeBuffer[89][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[89][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[89][3]~q\);

-- Location: LCCOMB_X39_Y29_N16
\sdram_controller|Mux28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux28~0_combout\ = (\sdram_controller|stateCycleCount\(4) & ((\sdram_controller|stateCycleCount\(2)) # ((\sdram_controller|writeBuffer[89][3]~q\)))) # (!\sdram_controller|stateCycleCount\(4) & (!\sdram_controller|stateCycleCount\(2) & 
-- (\sdram_controller|writeBuffer[73][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(4),
	datab => \sdram_controller|stateCycleCount\(2),
	datac => \sdram_controller|writeBuffer[73][3]~q\,
	datad => \sdram_controller|writeBuffer[89][3]~q\,
	combout => \sdram_controller|Mux28~0_combout\);

-- Location: LCCOMB_X38_Y29_N6
\sdram_controller|Mux28~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux28~1_combout\ = (\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|Mux28~0_combout\ & ((\sdram_controller|writeBuffer[93][3]~q\))) # (!\sdram_controller|Mux28~0_combout\ & (\sdram_controller|writeBuffer[77][3]~q\)))) # 
-- (!\sdram_controller|stateCycleCount\(2) & (((\sdram_controller|Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[77][3]~q\,
	datab => \sdram_controller|stateCycleCount\(2),
	datac => \sdram_controller|writeBuffer[93][3]~q\,
	datad => \sdram_controller|Mux28~0_combout\,
	combout => \sdram_controller|Mux28~1_combout\);

-- Location: LCCOMB_X42_Y29_N20
\sdram_controller|writeBuffer[121][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[121][3]~feeder_combout\ = \Add0~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~11_combout\,
	combout => \sdram_controller|writeBuffer[121][3]~feeder_combout\);

-- Location: FF_X42_Y29_N21
\sdram_controller|writeBuffer[121][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[121][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[121][3]~q\);

-- Location: FF_X42_Y29_N7
\sdram_controller|writeBuffer[125][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[125][3]~q\);

-- Location: FF_X43_Y29_N17
\sdram_controller|writeBuffer[105][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[105][3]~q\);

-- Location: LCCOMB_X37_Y29_N6
\sdram_controller|writeBuffer[109][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[109][3]~feeder_combout\ = \Add0~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~11_combout\,
	combout => \sdram_controller|writeBuffer[109][3]~feeder_combout\);

-- Location: FF_X37_Y29_N7
\sdram_controller|writeBuffer[109][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[109][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[109][3]~q\);

-- Location: LCCOMB_X43_Y29_N16
\sdram_controller|Mux28~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux28~7_combout\ = (\sdram_controller|stateCycleCount\(4) & (\sdram_controller|stateCycleCount\(2))) # (!\sdram_controller|stateCycleCount\(4) & ((\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|writeBuffer[109][3]~q\))) # 
-- (!\sdram_controller|stateCycleCount\(2) & (\sdram_controller|writeBuffer[105][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(4),
	datab => \sdram_controller|stateCycleCount\(2),
	datac => \sdram_controller|writeBuffer[105][3]~q\,
	datad => \sdram_controller|writeBuffer[109][3]~q\,
	combout => \sdram_controller|Mux28~7_combout\);

-- Location: LCCOMB_X42_Y29_N6
\sdram_controller|Mux28~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux28~8_combout\ = (\sdram_controller|stateCycleCount\(4) & ((\sdram_controller|Mux28~7_combout\ & ((\sdram_controller|writeBuffer[125][3]~q\))) # (!\sdram_controller|Mux28~7_combout\ & (\sdram_controller|writeBuffer[121][3]~q\)))) # 
-- (!\sdram_controller|stateCycleCount\(4) & (((\sdram_controller|Mux28~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(4),
	datab => \sdram_controller|writeBuffer[121][3]~q\,
	datac => \sdram_controller|writeBuffer[125][3]~q\,
	datad => \sdram_controller|Mux28~7_combout\,
	combout => \sdram_controller|Mux28~8_combout\);

-- Location: LCCOMB_X42_Y28_N18
\sdram_controller|writeBuffer[25][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[25][3]~feeder_combout\ = \Add0~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~11_combout\,
	combout => \sdram_controller|writeBuffer[25][3]~feeder_combout\);

-- Location: FF_X42_Y28_N19
\sdram_controller|writeBuffer[25][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[25][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[25][3]~q\);

-- Location: FF_X39_Y25_N1
\sdram_controller|writeBuffer[29][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[29][3]~q\);

-- Location: FF_X39_Y29_N27
\sdram_controller|writeBuffer[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[9][3]~q\);

-- Location: LCCOMB_X36_Y29_N14
\sdram_controller|writeBuffer[13][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[13][3]~feeder_combout\ = \Add0~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~11_combout\,
	combout => \sdram_controller|writeBuffer[13][3]~feeder_combout\);

-- Location: FF_X36_Y29_N15
\sdram_controller|writeBuffer[13][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[13][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[13][3]~q\);

-- Location: LCCOMB_X39_Y29_N26
\sdram_controller|Mux28~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux28~4_combout\ = (\sdram_controller|stateCycleCount\(4) & (\sdram_controller|stateCycleCount\(2))) # (!\sdram_controller|stateCycleCount\(4) & ((\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|writeBuffer[13][3]~q\))) # 
-- (!\sdram_controller|stateCycleCount\(2) & (\sdram_controller|writeBuffer[9][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(4),
	datab => \sdram_controller|stateCycleCount\(2),
	datac => \sdram_controller|writeBuffer[9][3]~q\,
	datad => \sdram_controller|writeBuffer[13][3]~q\,
	combout => \sdram_controller|Mux28~4_combout\);

-- Location: LCCOMB_X39_Y25_N0
\sdram_controller|Mux28~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux28~5_combout\ = (\sdram_controller|stateCycleCount\(4) & ((\sdram_controller|Mux28~4_combout\ & ((\sdram_controller|writeBuffer[29][3]~q\))) # (!\sdram_controller|Mux28~4_combout\ & (\sdram_controller|writeBuffer[25][3]~q\)))) # 
-- (!\sdram_controller|stateCycleCount\(4) & (((\sdram_controller|Mux28~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[25][3]~q\,
	datab => \sdram_controller|stateCycleCount\(4),
	datac => \sdram_controller|writeBuffer[29][3]~q\,
	datad => \sdram_controller|Mux28~4_combout\,
	combout => \sdram_controller|Mux28~5_combout\);

-- Location: LCCOMB_X42_Y28_N0
\sdram_controller|writeBuffer[57][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[57][3]~feeder_combout\ = \Add0~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~11_combout\,
	combout => \sdram_controller|writeBuffer[57][3]~feeder_combout\);

-- Location: FF_X42_Y28_N1
\sdram_controller|writeBuffer[57][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[57][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[57][3]~q\);

-- Location: FF_X40_Y29_N27
\sdram_controller|writeBuffer[61][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[61][3]~q\);

-- Location: FF_X43_Y29_N27
\sdram_controller|writeBuffer[41][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[41][3]~q\);

-- Location: LCCOMB_X37_Y29_N4
\sdram_controller|writeBuffer[45][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[45][3]~feeder_combout\ = \Add0~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~11_combout\,
	combout => \sdram_controller|writeBuffer[45][3]~feeder_combout\);

-- Location: FF_X37_Y29_N5
\sdram_controller|writeBuffer[45][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[45][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[45][3]~q\);

-- Location: LCCOMB_X43_Y29_N26
\sdram_controller|Mux28~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux28~2_combout\ = (\sdram_controller|stateCycleCount\(4) & (\sdram_controller|stateCycleCount\(2))) # (!\sdram_controller|stateCycleCount\(4) & ((\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|writeBuffer[45][3]~q\))) # 
-- (!\sdram_controller|stateCycleCount\(2) & (\sdram_controller|writeBuffer[41][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(4),
	datab => \sdram_controller|stateCycleCount\(2),
	datac => \sdram_controller|writeBuffer[41][3]~q\,
	datad => \sdram_controller|writeBuffer[45][3]~q\,
	combout => \sdram_controller|Mux28~2_combout\);

-- Location: LCCOMB_X40_Y29_N26
\sdram_controller|Mux28~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux28~3_combout\ = (\sdram_controller|stateCycleCount\(4) & ((\sdram_controller|Mux28~2_combout\ & ((\sdram_controller|writeBuffer[61][3]~q\))) # (!\sdram_controller|Mux28~2_combout\ & (\sdram_controller|writeBuffer[57][3]~q\)))) # 
-- (!\sdram_controller|stateCycleCount\(4) & (((\sdram_controller|Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[57][3]~q\,
	datab => \sdram_controller|stateCycleCount\(4),
	datac => \sdram_controller|writeBuffer[61][3]~q\,
	datad => \sdram_controller|Mux28~2_combout\,
	combout => \sdram_controller|Mux28~3_combout\);

-- Location: LCCOMB_X40_Y25_N2
\sdram_controller|Mux28~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux28~6_combout\ = (\sdram_controller|stateCycleCount\(6) & (((\sdram_controller|stateCycleCount\(5))))) # (!\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|Mux28~3_combout\))) # 
-- (!\sdram_controller|stateCycleCount\(5) & (\sdram_controller|Mux28~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux28~5_combout\,
	datab => \sdram_controller|Mux28~3_combout\,
	datac => \sdram_controller|stateCycleCount\(6),
	datad => \sdram_controller|stateCycleCount\(5),
	combout => \sdram_controller|Mux28~6_combout\);

-- Location: LCCOMB_X39_Y25_N26
\sdram_controller|Mux28~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux28~9_combout\ = (\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|Mux28~6_combout\ & ((\sdram_controller|Mux28~8_combout\))) # (!\sdram_controller|Mux28~6_combout\ & (\sdram_controller|Mux28~1_combout\)))) # 
-- (!\sdram_controller|stateCycleCount\(6) & (((\sdram_controller|Mux28~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux28~1_combout\,
	datab => \sdram_controller|stateCycleCount\(6),
	datac => \sdram_controller|Mux28~8_combout\,
	datad => \sdram_controller|Mux28~6_combout\,
	combout => \sdram_controller|Mux28~9_combout\);

-- Location: LCCOMB_X35_Y26_N22
\sdram_controller|Mux28~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux28~41_combout\ = (\sdram_controller|Mux28~30_combout\ & ((\sdram_controller|Mux28~40_combout\) # ((!\sdram_controller|stateCycleCount\(3))))) # (!\sdram_controller|Mux28~30_combout\ & (((\sdram_controller|Mux28~9_combout\ & 
-- \sdram_controller|stateCycleCount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux28~30_combout\,
	datab => \sdram_controller|Mux28~40_combout\,
	datac => \sdram_controller|Mux28~9_combout\,
	datad => \sdram_controller|stateCycleCount\(3),
	combout => \sdram_controller|Mux28~41_combout\);

-- Location: LCCOMB_X35_Y26_N24
\sdram_controller|Mux28~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux28~42_combout\ = (\sdram_controller|Mux28~41_combout\ & \sdram_controller|stateCycleCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux28~41_combout\,
	datac => \sdram_controller|stateCycleCount\(0),
	combout => \sdram_controller|Mux28~42_combout\);

-- Location: LCCOMB_X38_Y28_N26
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (transmitCount(4) & (\Add0~10\ $ (GND))) # (!transmitCount(4) & (!\Add0~10\ & VCC))
-- \Add0~13\ = CARRY((transmitCount(4) & !\Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => transmitCount(4),
	datad => VCC,
	cin => \Add0~10\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X38_Y28_N2
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\state.TRANSMIT~q\ & \Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.TRANSMIT~q\,
	datac => \Add0~12_combout\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X39_Y30_N6
\sdram_controller|writeBuffer[99][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[99][4]~feeder_combout\ = \Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~14_combout\,
	combout => \sdram_controller|writeBuffer[99][4]~feeder_combout\);

-- Location: FF_X39_Y30_N7
\sdram_controller|writeBuffer[99][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[99][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[99][4]~q\);

-- Location: LCCOMB_X43_Y29_N20
\sdram_controller|writeBuffer[105][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[105][4]~feeder_combout\ = \Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~14_combout\,
	combout => \sdram_controller|writeBuffer[105][4]~feeder_combout\);

-- Location: FF_X43_Y29_N21
\sdram_controller|writeBuffer[105][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[105][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[105][4]~q\);

-- Location: FF_X37_Y26_N15
\sdram_controller|writeBuffer[97][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[97][4]~q\);

-- Location: LCCOMB_X37_Y26_N14
\sdram_controller|Mux27~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux27~35_combout\ = (\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|writeBuffer[105][4]~q\) # ((\sdram_controller|stateCycleCount\(1))))) # (!\sdram_controller|stateCycleCount\(3) & (((\sdram_controller|writeBuffer[97][4]~q\ 
-- & !\sdram_controller|stateCycleCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(3),
	datab => \sdram_controller|writeBuffer[105][4]~q\,
	datac => \sdram_controller|writeBuffer[97][4]~q\,
	datad => \sdram_controller|stateCycleCount\(1),
	combout => \sdram_controller|Mux27~35_combout\);

-- Location: FF_X41_Y28_N21
\sdram_controller|writeBuffer[107][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[107][4]~q\);

-- Location: LCCOMB_X41_Y28_N20
\sdram_controller|Mux27~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux27~36_combout\ = (\sdram_controller|Mux27~35_combout\ & (((\sdram_controller|writeBuffer[107][4]~q\) # (!\sdram_controller|stateCycleCount\(1))))) # (!\sdram_controller|Mux27~35_combout\ & (\sdram_controller|writeBuffer[99][4]~q\ & 
-- ((\sdram_controller|stateCycleCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[99][4]~q\,
	datab => \sdram_controller|Mux27~35_combout\,
	datac => \sdram_controller|writeBuffer[107][4]~q\,
	datad => \sdram_controller|stateCycleCount\(1),
	combout => \sdram_controller|Mux27~36_combout\);

-- Location: LCCOMB_X42_Y30_N24
\sdram_controller|writeBuffer[103][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[103][4]~feeder_combout\ = \Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~14_combout\,
	combout => \sdram_controller|writeBuffer[103][4]~feeder_combout\);

-- Location: FF_X42_Y30_N25
\sdram_controller|writeBuffer[103][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[103][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[103][4]~q\);

-- Location: FF_X37_Y25_N29
\sdram_controller|writeBuffer[101][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[101][4]~q\);

-- Location: LCCOMB_X37_Y29_N30
\sdram_controller|writeBuffer[109][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[109][4]~feeder_combout\ = \Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~14_combout\,
	combout => \sdram_controller|writeBuffer[109][4]~feeder_combout\);

-- Location: FF_X37_Y29_N31
\sdram_controller|writeBuffer[109][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[109][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[109][4]~q\);

-- Location: LCCOMB_X37_Y25_N28
\sdram_controller|Mux27~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux27~33_combout\ = (\sdram_controller|stateCycleCount\(1) & (\sdram_controller|stateCycleCount\(3))) # (!\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|writeBuffer[109][4]~q\))) # 
-- (!\sdram_controller|stateCycleCount\(3) & (\sdram_controller|writeBuffer[101][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datab => \sdram_controller|stateCycleCount\(3),
	datac => \sdram_controller|writeBuffer[101][4]~q\,
	datad => \sdram_controller|writeBuffer[109][4]~q\,
	combout => \sdram_controller|Mux27~33_combout\);

-- Location: FF_X35_Y29_N13
\sdram_controller|writeBuffer[111][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[111][4]~q\);

-- Location: LCCOMB_X35_Y29_N12
\sdram_controller|Mux27~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux27~34_combout\ = (\sdram_controller|Mux27~33_combout\ & (((\sdram_controller|writeBuffer[111][4]~q\) # (!\sdram_controller|stateCycleCount\(1))))) # (!\sdram_controller|Mux27~33_combout\ & (\sdram_controller|writeBuffer[103][4]~q\ & 
-- ((\sdram_controller|stateCycleCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[103][4]~q\,
	datab => \sdram_controller|Mux27~33_combout\,
	datac => \sdram_controller|writeBuffer[111][4]~q\,
	datad => \sdram_controller|stateCycleCount\(1),
	combout => \sdram_controller|Mux27~34_combout\);

-- Location: LCCOMB_X40_Y25_N22
\sdram_controller|Mux27~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux27~37_combout\ = (\sdram_controller|stateCycleCount\(2) & (((\sdram_controller|stateCycleCount\(4)) # (\sdram_controller|Mux27~34_combout\)))) # (!\sdram_controller|stateCycleCount\(2) & (\sdram_controller|Mux27~36_combout\ & 
-- (!\sdram_controller|stateCycleCount\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(2),
	datab => \sdram_controller|Mux27~36_combout\,
	datac => \sdram_controller|stateCycleCount\(4),
	datad => \sdram_controller|Mux27~34_combout\,
	combout => \sdram_controller|Mux27~37_combout\);

-- Location: FF_X38_Y28_N3
\sdram_controller|writeBuffer[127][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[127][4]~q\);

-- Location: FF_X38_Y27_N15
\sdram_controller|writeBuffer[119][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[119][4]~q\);

-- Location: FF_X37_Y27_N13
\sdram_controller|writeBuffer[117][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[117][4]~q\);

-- Location: LCCOMB_X38_Y29_N26
\sdram_controller|writeBuffer[125][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[125][4]~feeder_combout\ = \Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~14_combout\,
	combout => \sdram_controller|writeBuffer[125][4]~feeder_combout\);

-- Location: FF_X38_Y29_N27
\sdram_controller|writeBuffer[125][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[125][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[125][4]~q\);

-- Location: LCCOMB_X37_Y27_N12
\sdram_controller|Mux27~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux27~38_combout\ = (\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|stateCycleCount\(1)) # ((\sdram_controller|writeBuffer[125][4]~q\)))) # (!\sdram_controller|stateCycleCount\(3) & (!\sdram_controller|stateCycleCount\(1) & 
-- (\sdram_controller|writeBuffer[117][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(3),
	datab => \sdram_controller|stateCycleCount\(1),
	datac => \sdram_controller|writeBuffer[117][4]~q\,
	datad => \sdram_controller|writeBuffer[125][4]~q\,
	combout => \sdram_controller|Mux27~38_combout\);

-- Location: LCCOMB_X38_Y27_N14
\sdram_controller|Mux27~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux27~39_combout\ = (\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|Mux27~38_combout\ & (\sdram_controller|writeBuffer[127][4]~q\)) # (!\sdram_controller|Mux27~38_combout\ & ((\sdram_controller|writeBuffer[119][4]~q\))))) # 
-- (!\sdram_controller|stateCycleCount\(1) & (((\sdram_controller|Mux27~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[127][4]~q\,
	datab => \sdram_controller|stateCycleCount\(1),
	datac => \sdram_controller|writeBuffer[119][4]~q\,
	datad => \sdram_controller|Mux27~38_combout\,
	combout => \sdram_controller|Mux27~39_combout\);

-- Location: LCCOMB_X38_Y27_N8
\sdram_controller|writeBuffer[115][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[115][4]~feeder_combout\ = \Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~14_combout\,
	combout => \sdram_controller|writeBuffer[115][4]~feeder_combout\);

-- Location: FF_X38_Y27_N9
\sdram_controller|writeBuffer[115][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[115][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[115][4]~q\);

-- Location: FF_X41_Y27_N31
\sdram_controller|writeBuffer[123][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[123][4]~q\);

-- Location: FF_X41_Y26_N17
\sdram_controller|writeBuffer[113][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[113][4]~q\);

-- Location: LCCOMB_X42_Y29_N4
\sdram_controller|writeBuffer[121][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[121][4]~feeder_combout\ = \Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~14_combout\,
	combout => \sdram_controller|writeBuffer[121][4]~feeder_combout\);

-- Location: FF_X42_Y29_N5
\sdram_controller|writeBuffer[121][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[121][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[121][4]~q\);

-- Location: LCCOMB_X41_Y26_N16
\sdram_controller|Mux27~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux27~31_combout\ = (\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|stateCycleCount\(1)) # ((\sdram_controller|writeBuffer[121][4]~q\)))) # (!\sdram_controller|stateCycleCount\(3) & (!\sdram_controller|stateCycleCount\(1) & 
-- (\sdram_controller|writeBuffer[113][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(3),
	datab => \sdram_controller|stateCycleCount\(1),
	datac => \sdram_controller|writeBuffer[113][4]~q\,
	datad => \sdram_controller|writeBuffer[121][4]~q\,
	combout => \sdram_controller|Mux27~31_combout\);

-- Location: LCCOMB_X41_Y27_N30
\sdram_controller|Mux27~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux27~32_combout\ = (\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|Mux27~31_combout\ & ((\sdram_controller|writeBuffer[123][4]~q\))) # (!\sdram_controller|Mux27~31_combout\ & (\sdram_controller|writeBuffer[115][4]~q\)))) # 
-- (!\sdram_controller|stateCycleCount\(1) & (((\sdram_controller|Mux27~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[115][4]~q\,
	datab => \sdram_controller|stateCycleCount\(1),
	datac => \sdram_controller|writeBuffer[123][4]~q\,
	datad => \sdram_controller|Mux27~31_combout\,
	combout => \sdram_controller|Mux27~32_combout\);

-- Location: LCCOMB_X40_Y25_N24
\sdram_controller|Mux27~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux27~40_combout\ = (\sdram_controller|Mux27~37_combout\ & ((\sdram_controller|Mux27~39_combout\) # ((!\sdram_controller|stateCycleCount\(4))))) # (!\sdram_controller|Mux27~37_combout\ & (((\sdram_controller|stateCycleCount\(4) & 
-- \sdram_controller|Mux27~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux27~37_combout\,
	datab => \sdram_controller|Mux27~39_combout\,
	datac => \sdram_controller|stateCycleCount\(4),
	datad => \sdram_controller|Mux27~32_combout\,
	combout => \sdram_controller|Mux27~40_combout\);

-- Location: FF_X39_Y28_N13
\sdram_controller|writeBuffer[67][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[67][4]~q\);

-- Location: LCCOMB_X34_Y28_N22
\sdram_controller|writeBuffer[71][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[71][4]~feeder_combout\ = \Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~14_combout\,
	combout => \sdram_controller|writeBuffer[71][4]~feeder_combout\);

-- Location: FF_X34_Y28_N23
\sdram_controller|writeBuffer[71][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[71][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[71][4]~q\);

-- Location: LCCOMB_X39_Y28_N12
\sdram_controller|Mux27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux27~0_combout\ = (\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|stateCycleCount\(3)) # ((\sdram_controller|writeBuffer[71][4]~q\)))) # (!\sdram_controller|stateCycleCount\(2) & (!\sdram_controller|stateCycleCount\(3) & 
-- (\sdram_controller|writeBuffer[67][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(2),
	datab => \sdram_controller|stateCycleCount\(3),
	datac => \sdram_controller|writeBuffer[67][4]~q\,
	datad => \sdram_controller|writeBuffer[71][4]~q\,
	combout => \sdram_controller|Mux27~0_combout\);

-- Location: FF_X37_Y28_N1
\sdram_controller|writeBuffer[79][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[79][4]~q\);

-- Location: LCCOMB_X41_Y28_N26
\sdram_controller|writeBuffer[75][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[75][4]~feeder_combout\ = \Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~14_combout\,
	combout => \sdram_controller|writeBuffer[75][4]~feeder_combout\);

-- Location: FF_X41_Y28_N27
\sdram_controller|writeBuffer[75][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[75][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[75][4]~q\);

-- Location: LCCOMB_X37_Y28_N0
\sdram_controller|Mux27~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux27~1_combout\ = (\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|Mux27~0_combout\ & (\sdram_controller|writeBuffer[79][4]~q\)) # (!\sdram_controller|Mux27~0_combout\ & ((\sdram_controller|writeBuffer[75][4]~q\))))) # 
-- (!\sdram_controller|stateCycleCount\(3) & (\sdram_controller|Mux27~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(3),
	datab => \sdram_controller|Mux27~0_combout\,
	datac => \sdram_controller|writeBuffer[79][4]~q\,
	datad => \sdram_controller|writeBuffer[75][4]~q\,
	combout => \sdram_controller|Mux27~1_combout\);

-- Location: LCCOMB_X41_Y30_N8
\sdram_controller|writeBuffer[91][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[91][4]~feeder_combout\ = \Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~14_combout\,
	combout => \sdram_controller|writeBuffer[91][4]~feeder_combout\);

-- Location: FF_X41_Y30_N9
\sdram_controller|writeBuffer[91][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[91][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[91][4]~q\);

-- Location: FF_X37_Y28_N3
\sdram_controller|writeBuffer[95][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[95][4]~q\);

-- Location: FF_X41_Y30_N31
\sdram_controller|writeBuffer[83][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[83][4]~q\);

-- Location: LCCOMB_X37_Y30_N0
\sdram_controller|writeBuffer[87][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[87][4]~feeder_combout\ = \Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~14_combout\,
	combout => \sdram_controller|writeBuffer[87][4]~feeder_combout\);

-- Location: FF_X37_Y30_N1
\sdram_controller|writeBuffer[87][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[87][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[87][4]~q\);

-- Location: LCCOMB_X41_Y30_N30
\sdram_controller|Mux27~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux27~7_combout\ = (\sdram_controller|stateCycleCount\(3) & (\sdram_controller|stateCycleCount\(2))) # (!\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|writeBuffer[87][4]~q\))) # 
-- (!\sdram_controller|stateCycleCount\(2) & (\sdram_controller|writeBuffer[83][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(3),
	datab => \sdram_controller|stateCycleCount\(2),
	datac => \sdram_controller|writeBuffer[83][4]~q\,
	datad => \sdram_controller|writeBuffer[87][4]~q\,
	combout => \sdram_controller|Mux27~7_combout\);

-- Location: LCCOMB_X37_Y28_N2
\sdram_controller|Mux27~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux27~8_combout\ = (\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|Mux27~7_combout\ & ((\sdram_controller|writeBuffer[95][4]~q\))) # (!\sdram_controller|Mux27~7_combout\ & (\sdram_controller|writeBuffer[91][4]~q\)))) # 
-- (!\sdram_controller|stateCycleCount\(3) & (((\sdram_controller|Mux27~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(3),
	datab => \sdram_controller|writeBuffer[91][4]~q\,
	datac => \sdram_controller|writeBuffer[95][4]~q\,
	datad => \sdram_controller|Mux27~7_combout\,
	combout => \sdram_controller|Mux27~8_combout\);

-- Location: LCCOMB_X39_Y25_N20
\sdram_controller|writeBuffer[85][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[85][4]~feeder_combout\ = \Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~14_combout\,
	combout => \sdram_controller|writeBuffer[85][4]~feeder_combout\);

-- Location: FF_X39_Y25_N21
\sdram_controller|writeBuffer[85][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[85][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[85][4]~q\);

-- Location: FF_X38_Y29_N29
\sdram_controller|writeBuffer[93][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[93][4]~q\);

-- Location: LCCOMB_X42_Y26_N24
\sdram_controller|writeBuffer[89][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[89][4]~feeder_combout\ = \Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~14_combout\,
	combout => \sdram_controller|writeBuffer[89][4]~feeder_combout\);

-- Location: FF_X42_Y26_N25
\sdram_controller|writeBuffer[89][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[89][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[89][4]~q\);

-- Location: FF_X41_Y26_N15
\sdram_controller|writeBuffer[81][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[81][4]~q\);

-- Location: LCCOMB_X41_Y26_N14
\sdram_controller|Mux27~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux27~2_combout\ = (\sdram_controller|stateCycleCount\(2) & (((\sdram_controller|stateCycleCount\(3))))) # (!\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|stateCycleCount\(3) & (\sdram_controller|writeBuffer[89][4]~q\)) # 
-- (!\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|writeBuffer[81][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(2),
	datab => \sdram_controller|writeBuffer[89][4]~q\,
	datac => \sdram_controller|writeBuffer[81][4]~q\,
	datad => \sdram_controller|stateCycleCount\(3),
	combout => \sdram_controller|Mux27~2_combout\);

-- Location: LCCOMB_X38_Y29_N28
\sdram_controller|Mux27~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux27~3_combout\ = (\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|Mux27~2_combout\ & ((\sdram_controller|writeBuffer[93][4]~q\))) # (!\sdram_controller|Mux27~2_combout\ & (\sdram_controller|writeBuffer[85][4]~q\)))) # 
-- (!\sdram_controller|stateCycleCount\(2) & (((\sdram_controller|Mux27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[85][4]~q\,
	datab => \sdram_controller|stateCycleCount\(2),
	datac => \sdram_controller|writeBuffer[93][4]~q\,
	datad => \sdram_controller|Mux27~2_combout\,
	combout => \sdram_controller|Mux27~3_combout\);

-- Location: LCCOMB_X37_Y25_N10
\sdram_controller|writeBuffer[69][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[69][4]~feeder_combout\ = \Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~14_combout\,
	combout => \sdram_controller|writeBuffer[69][4]~feeder_combout\);

-- Location: FF_X37_Y25_N11
\sdram_controller|writeBuffer[69][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[69][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[69][4]~q\);

-- Location: FF_X37_Y26_N17
\sdram_controller|writeBuffer[65][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[65][4]~q\);

-- Location: LCCOMB_X37_Y26_N16
\sdram_controller|Mux27~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux27~4_combout\ = (\sdram_controller|stateCycleCount\(3) & (((\sdram_controller|stateCycleCount\(2))))) # (!\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|stateCycleCount\(2) & (\sdram_controller|writeBuffer[69][4]~q\)) # 
-- (!\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|writeBuffer[65][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(3),
	datab => \sdram_controller|writeBuffer[69][4]~q\,
	datac => \sdram_controller|writeBuffer[65][4]~q\,
	datad => \sdram_controller|stateCycleCount\(2),
	combout => \sdram_controller|Mux27~4_combout\);

-- Location: FF_X40_Y29_N1
\sdram_controller|writeBuffer[77][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[77][4]~q\);

-- Location: LCCOMB_X39_Y29_N8
\sdram_controller|writeBuffer[73][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[73][4]~feeder_combout\ = \Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~14_combout\,
	combout => \sdram_controller|writeBuffer[73][4]~feeder_combout\);

-- Location: FF_X39_Y29_N9
\sdram_controller|writeBuffer[73][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[73][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[73][4]~q\);

-- Location: LCCOMB_X40_Y29_N0
\sdram_controller|Mux27~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux27~5_combout\ = (\sdram_controller|Mux27~4_combout\ & (((\sdram_controller|writeBuffer[77][4]~q\)) # (!\sdram_controller|stateCycleCount\(3)))) # (!\sdram_controller|Mux27~4_combout\ & (\sdram_controller|stateCycleCount\(3) & 
-- ((\sdram_controller|writeBuffer[73][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux27~4_combout\,
	datab => \sdram_controller|stateCycleCount\(3),
	datac => \sdram_controller|writeBuffer[77][4]~q\,
	datad => \sdram_controller|writeBuffer[73][4]~q\,
	combout => \sdram_controller|Mux27~5_combout\);

-- Location: LCCOMB_X40_Y29_N2
\sdram_controller|Mux27~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux27~6_combout\ = (\sdram_controller|stateCycleCount\(4) & ((\sdram_controller|Mux27~3_combout\) # ((\sdram_controller|stateCycleCount\(1))))) # (!\sdram_controller|stateCycleCount\(4) & (((!\sdram_controller|stateCycleCount\(1) & 
-- \sdram_controller|Mux27~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux27~3_combout\,
	datab => \sdram_controller|stateCycleCount\(4),
	datac => \sdram_controller|stateCycleCount\(1),
	datad => \sdram_controller|Mux27~5_combout\,
	combout => \sdram_controller|Mux27~6_combout\);

-- Location: LCCOMB_X36_Y29_N8
\sdram_controller|Mux27~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux27~9_combout\ = (\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|Mux27~6_combout\ & ((\sdram_controller|Mux27~8_combout\))) # (!\sdram_controller|Mux27~6_combout\ & (\sdram_controller|Mux27~1_combout\)))) # 
-- (!\sdram_controller|stateCycleCount\(1) & (((\sdram_controller|Mux27~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datab => \sdram_controller|Mux27~1_combout\,
	datac => \sdram_controller|Mux27~8_combout\,
	datad => \sdram_controller|Mux27~6_combout\,
	combout => \sdram_controller|Mux27~9_combout\);

-- Location: LCCOMB_X38_Y25_N30
\sdram_controller|writeBuffer[7][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[7][4]~feeder_combout\ = \Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~14_combout\,
	combout => \sdram_controller|writeBuffer[7][4]~feeder_combout\);

-- Location: FF_X38_Y25_N31
\sdram_controller|writeBuffer[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[7][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[7][4]~q\);

-- Location: FF_X36_Y28_N25
\sdram_controller|writeBuffer[15][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[15][4]~q\);

-- Location: FF_X38_Y26_N9
\sdram_controller|writeBuffer[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[5][4]~q\);

-- Location: LCCOMB_X36_Y29_N6
\sdram_controller|writeBuffer[13][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[13][4]~feeder_combout\ = \Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~14_combout\,
	combout => \sdram_controller|writeBuffer[13][4]~feeder_combout\);

-- Location: FF_X36_Y29_N7
\sdram_controller|writeBuffer[13][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[13][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[13][4]~q\);

-- Location: LCCOMB_X38_Y26_N8
\sdram_controller|Mux27~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux27~20_combout\ = (\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|stateCycleCount\(1)) # ((\sdram_controller|writeBuffer[13][4]~q\)))) # (!\sdram_controller|stateCycleCount\(3) & (!\sdram_controller|stateCycleCount\(1) & 
-- (\sdram_controller|writeBuffer[5][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(3),
	datab => \sdram_controller|stateCycleCount\(1),
	datac => \sdram_controller|writeBuffer[5][4]~q\,
	datad => \sdram_controller|writeBuffer[13][4]~q\,
	combout => \sdram_controller|Mux27~20_combout\);

-- Location: LCCOMB_X36_Y28_N24
\sdram_controller|Mux27~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux27~21_combout\ = (\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|Mux27~20_combout\ & ((\sdram_controller|writeBuffer[15][4]~q\))) # (!\sdram_controller|Mux27~20_combout\ & (\sdram_controller|writeBuffer[7][4]~q\)))) # 
-- (!\sdram_controller|stateCycleCount\(1) & (((\sdram_controller|Mux27~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datab => \sdram_controller|writeBuffer[7][4]~q\,
	datac => \sdram_controller|writeBuffer[15][4]~q\,
	datad => \sdram_controller|Mux27~20_combout\,
	combout => \sdram_controller|Mux27~21_combout\);

-- Location: LCCOMB_X37_Y30_N30
\sdram_controller|writeBuffer[23][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[23][4]~feeder_combout\ = \Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~14_combout\,
	combout => \sdram_controller|writeBuffer[23][4]~feeder_combout\);

-- Location: FF_X37_Y30_N31
\sdram_controller|writeBuffer[23][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[23][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[23][4]~q\);

-- Location: FF_X36_Y28_N11
\sdram_controller|writeBuffer[31][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[31][4]~q\);

-- Location: FF_X41_Y29_N15
\sdram_controller|writeBuffer[21][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[21][4]~q\);

-- Location: LCCOMB_X39_Y25_N24
\sdram_controller|writeBuffer[29][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[29][4]~feeder_combout\ = \Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~14_combout\,
	combout => \sdram_controller|writeBuffer[29][4]~feeder_combout\);

-- Location: FF_X39_Y25_N25
\sdram_controller|writeBuffer[29][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[29][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[29][4]~q\);

-- Location: LCCOMB_X41_Y29_N14
\sdram_controller|Mux27~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux27~27_combout\ = (\sdram_controller|stateCycleCount\(1) & (\sdram_controller|stateCycleCount\(3))) # (!\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|writeBuffer[29][4]~q\))) # 
-- (!\sdram_controller|stateCycleCount\(3) & (\sdram_controller|writeBuffer[21][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datab => \sdram_controller|stateCycleCount\(3),
	datac => \sdram_controller|writeBuffer[21][4]~q\,
	datad => \sdram_controller|writeBuffer[29][4]~q\,
	combout => \sdram_controller|Mux27~27_combout\);

-- Location: LCCOMB_X36_Y28_N10
\sdram_controller|Mux27~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux27~28_combout\ = (\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|Mux27~27_combout\ & ((\sdram_controller|writeBuffer[31][4]~q\))) # (!\sdram_controller|Mux27~27_combout\ & (\sdram_controller|writeBuffer[23][4]~q\)))) # 
-- (!\sdram_controller|stateCycleCount\(1) & (((\sdram_controller|Mux27~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datab => \sdram_controller|writeBuffer[23][4]~q\,
	datac => \sdram_controller|writeBuffer[31][4]~q\,
	datad => \sdram_controller|Mux27~27_combout\,
	combout => \sdram_controller|Mux27~28_combout\);

-- Location: LCCOMB_X39_Y29_N30
\sdram_controller|writeBuffer[9][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[9][4]~feeder_combout\ = \Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~14_combout\,
	combout => \sdram_controller|writeBuffer[9][4]~feeder_combout\);

-- Location: FF_X39_Y29_N31
\sdram_controller|writeBuffer[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[9][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[9][4]~q\);

-- Location: FF_X40_Y28_N9
\sdram_controller|writeBuffer[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[11][4]~q\);

-- Location: FF_X38_Y26_N23
\sdram_controller|writeBuffer[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[1][4]~q\);

-- Location: LCCOMB_X39_Y30_N20
\sdram_controller|writeBuffer[3][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[3][4]~feeder_combout\ = \Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~14_combout\,
	combout => \sdram_controller|writeBuffer[3][4]~feeder_combout\);

-- Location: FF_X39_Y30_N21
\sdram_controller|writeBuffer[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[3][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[3][4]~q\);

-- Location: LCCOMB_X38_Y26_N22
\sdram_controller|Mux27~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux27~24_combout\ = (\sdram_controller|stateCycleCount\(3) & (\sdram_controller|stateCycleCount\(1))) # (!\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|writeBuffer[3][4]~q\))) # 
-- (!\sdram_controller|stateCycleCount\(1) & (\sdram_controller|writeBuffer[1][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(3),
	datab => \sdram_controller|stateCycleCount\(1),
	datac => \sdram_controller|writeBuffer[1][4]~q\,
	datad => \sdram_controller|writeBuffer[3][4]~q\,
	combout => \sdram_controller|Mux27~24_combout\);

-- Location: LCCOMB_X40_Y28_N8
\sdram_controller|Mux27~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux27~25_combout\ = (\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|Mux27~24_combout\ & ((\sdram_controller|writeBuffer[11][4]~q\))) # (!\sdram_controller|Mux27~24_combout\ & (\sdram_controller|writeBuffer[9][4]~q\)))) # 
-- (!\sdram_controller|stateCycleCount\(3) & (((\sdram_controller|Mux27~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[9][4]~q\,
	datab => \sdram_controller|stateCycleCount\(3),
	datac => \sdram_controller|writeBuffer[11][4]~q\,
	datad => \sdram_controller|Mux27~24_combout\,
	combout => \sdram_controller|Mux27~25_combout\);

-- Location: LCCOMB_X42_Y28_N16
\sdram_controller|writeBuffer[25][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[25][4]~feeder_combout\ = \Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~14_combout\,
	combout => \sdram_controller|writeBuffer[25][4]~feeder_combout\);

-- Location: FF_X42_Y28_N17
\sdram_controller|writeBuffer[25][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[25][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[25][4]~q\);

-- Location: FF_X40_Y30_N27
\sdram_controller|writeBuffer[17][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[17][4]~q\);

-- Location: LCCOMB_X40_Y30_N20
\sdram_controller|writeBuffer[19][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[19][4]~feeder_combout\ = \Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~14_combout\,
	combout => \sdram_controller|writeBuffer[19][4]~feeder_combout\);

-- Location: FF_X40_Y30_N21
\sdram_controller|writeBuffer[19][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[19][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[19][4]~q\);

-- Location: LCCOMB_X40_Y30_N26
\sdram_controller|Mux27~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux27~22_combout\ = (\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|stateCycleCount\(3)) # ((\sdram_controller|writeBuffer[19][4]~q\)))) # (!\sdram_controller|stateCycleCount\(1) & (!\sdram_controller|stateCycleCount\(3) & 
-- (\sdram_controller|writeBuffer[17][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datab => \sdram_controller|stateCycleCount\(3),
	datac => \sdram_controller|writeBuffer[17][4]~q\,
	datad => \sdram_controller|writeBuffer[19][4]~q\,
	combout => \sdram_controller|Mux27~22_combout\);

-- Location: FF_X43_Y28_N19
\sdram_controller|writeBuffer[27][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[27][4]~q\);

-- Location: LCCOMB_X43_Y28_N18
\sdram_controller|Mux27~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux27~23_combout\ = (\sdram_controller|Mux27~22_combout\ & (((\sdram_controller|writeBuffer[27][4]~q\) # (!\sdram_controller|stateCycleCount\(3))))) # (!\sdram_controller|Mux27~22_combout\ & (\sdram_controller|writeBuffer[25][4]~q\ & 
-- ((\sdram_controller|stateCycleCount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[25][4]~q\,
	datab => \sdram_controller|Mux27~22_combout\,
	datac => \sdram_controller|writeBuffer[27][4]~q\,
	datad => \sdram_controller|stateCycleCount\(3),
	combout => \sdram_controller|Mux27~23_combout\);

-- Location: LCCOMB_X39_Y25_N10
\sdram_controller|Mux27~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux27~26_combout\ = (\sdram_controller|stateCycleCount\(2) & (((\sdram_controller|stateCycleCount\(4))))) # (!\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|stateCycleCount\(4) & ((\sdram_controller|Mux27~23_combout\))) # 
-- (!\sdram_controller|stateCycleCount\(4) & (\sdram_controller|Mux27~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux27~25_combout\,
	datab => \sdram_controller|stateCycleCount\(2),
	datac => \sdram_controller|Mux27~23_combout\,
	datad => \sdram_controller|stateCycleCount\(4),
	combout => \sdram_controller|Mux27~26_combout\);

-- Location: LCCOMB_X39_Y25_N18
\sdram_controller|Mux27~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux27~29_combout\ = (\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|Mux27~26_combout\ & ((\sdram_controller|Mux27~28_combout\))) # (!\sdram_controller|Mux27~26_combout\ & (\sdram_controller|Mux27~21_combout\)))) # 
-- (!\sdram_controller|stateCycleCount\(2) & (((\sdram_controller|Mux27~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux27~21_combout\,
	datab => \sdram_controller|stateCycleCount\(2),
	datac => \sdram_controller|Mux27~28_combout\,
	datad => \sdram_controller|Mux27~26_combout\,
	combout => \sdram_controller|Mux27~29_combout\);

-- Location: FF_X40_Y27_N11
\sdram_controller|writeBuffer[53][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[53][4]~q\);

-- Location: LCCOMB_X40_Y29_N20
\sdram_controller|writeBuffer[61][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[61][4]~feeder_combout\ = \Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~14_combout\,
	combout => \sdram_controller|writeBuffer[61][4]~feeder_combout\);

-- Location: FF_X40_Y29_N21
\sdram_controller|writeBuffer[61][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[61][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[61][4]~q\);

-- Location: LCCOMB_X40_Y27_N10
\sdram_controller|Mux27~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux27~17_combout\ = (\sdram_controller|stateCycleCount\(1) & (\sdram_controller|stateCycleCount\(3))) # (!\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|writeBuffer[61][4]~q\))) # 
-- (!\sdram_controller|stateCycleCount\(3) & (\sdram_controller|writeBuffer[53][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datab => \sdram_controller|stateCycleCount\(3),
	datac => \sdram_controller|writeBuffer[53][4]~q\,
	datad => \sdram_controller|writeBuffer[61][4]~q\,
	combout => \sdram_controller|Mux27~17_combout\);

-- Location: LCCOMB_X35_Y27_N0
\sdram_controller|writeBuffer[55][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[55][4]~feeder_combout\ = \Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~14_combout\,
	combout => \sdram_controller|writeBuffer[55][4]~feeder_combout\);

-- Location: FF_X35_Y27_N1
\sdram_controller|writeBuffer[55][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[55][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[55][4]~q\);

-- Location: FF_X35_Y28_N15
\sdram_controller|writeBuffer[63][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[63][4]~q\);

-- Location: LCCOMB_X35_Y28_N14
\sdram_controller|Mux27~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux27~18_combout\ = (\sdram_controller|Mux27~17_combout\ & (((\sdram_controller|writeBuffer[63][4]~q\) # (!\sdram_controller|stateCycleCount\(1))))) # (!\sdram_controller|Mux27~17_combout\ & (\sdram_controller|writeBuffer[55][4]~q\ & 
-- ((\sdram_controller|stateCycleCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux27~17_combout\,
	datab => \sdram_controller|writeBuffer[55][4]~q\,
	datac => \sdram_controller|writeBuffer[63][4]~q\,
	datad => \sdram_controller|stateCycleCount\(1),
	combout => \sdram_controller|Mux27~18_combout\);

-- Location: LCCOMB_X37_Y29_N24
\sdram_controller|writeBuffer[45][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[45][4]~feeder_combout\ = \Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~14_combout\,
	combout => \sdram_controller|writeBuffer[45][4]~feeder_combout\);

-- Location: FF_X37_Y29_N25
\sdram_controller|writeBuffer[45][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[45][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[45][4]~q\);

-- Location: FF_X39_Y26_N27
\sdram_controller|writeBuffer[37][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[37][4]~q\);

-- Location: LCCOMB_X39_Y26_N26
\sdram_controller|Mux27~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux27~10_combout\ = (\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|writeBuffer[45][4]~q\) # ((\sdram_controller|stateCycleCount\(1))))) # (!\sdram_controller|stateCycleCount\(3) & (((\sdram_controller|writeBuffer[37][4]~q\ 
-- & !\sdram_controller|stateCycleCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[45][4]~q\,
	datab => \sdram_controller|stateCycleCount\(3),
	datac => \sdram_controller|writeBuffer[37][4]~q\,
	datad => \sdram_controller|stateCycleCount\(1),
	combout => \sdram_controller|Mux27~10_combout\);

-- Location: FF_X35_Y28_N17
\sdram_controller|writeBuffer[47][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[47][4]~q\);

-- Location: LCCOMB_X36_Y27_N6
\sdram_controller|writeBuffer[39][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[39][4]~feeder_combout\ = \Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~14_combout\,
	combout => \sdram_controller|writeBuffer[39][4]~feeder_combout\);

-- Location: FF_X36_Y27_N7
\sdram_controller|writeBuffer[39][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[39][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[39][4]~q\);

-- Location: LCCOMB_X35_Y28_N16
\sdram_controller|Mux27~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux27~11_combout\ = (\sdram_controller|Mux27~10_combout\ & (((\sdram_controller|writeBuffer[47][4]~q\)) # (!\sdram_controller|stateCycleCount\(1)))) # (!\sdram_controller|Mux27~10_combout\ & (\sdram_controller|stateCycleCount\(1) & 
-- ((\sdram_controller|writeBuffer[39][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux27~10_combout\,
	datab => \sdram_controller|stateCycleCount\(1),
	datac => \sdram_controller|writeBuffer[47][4]~q\,
	datad => \sdram_controller|writeBuffer[39][4]~q\,
	combout => \sdram_controller|Mux27~11_combout\);

-- Location: FF_X40_Y26_N25
\sdram_controller|writeBuffer[33][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[33][4]~q\);

-- Location: LCCOMB_X35_Y27_N2
\sdram_controller|writeBuffer[35][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[35][4]~feeder_combout\ = \Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~14_combout\,
	combout => \sdram_controller|writeBuffer[35][4]~feeder_combout\);

-- Location: FF_X35_Y27_N3
\sdram_controller|writeBuffer[35][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[35][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[35][4]~q\);

-- Location: LCCOMB_X40_Y26_N24
\sdram_controller|Mux27~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux27~14_combout\ = (\sdram_controller|stateCycleCount\(3) & (\sdram_controller|stateCycleCount\(1))) # (!\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|writeBuffer[35][4]~q\))) # 
-- (!\sdram_controller|stateCycleCount\(1) & (\sdram_controller|writeBuffer[33][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(3),
	datab => \sdram_controller|stateCycleCount\(1),
	datac => \sdram_controller|writeBuffer[33][4]~q\,
	datad => \sdram_controller|writeBuffer[35][4]~q\,
	combout => \sdram_controller|Mux27~14_combout\);

-- Location: LCCOMB_X43_Y29_N22
\sdram_controller|writeBuffer[41][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[41][4]~feeder_combout\ = \Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~14_combout\,
	combout => \sdram_controller|writeBuffer[41][4]~feeder_combout\);

-- Location: FF_X43_Y29_N23
\sdram_controller|writeBuffer[41][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[41][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[41][4]~q\);

-- Location: FF_X40_Y28_N11
\sdram_controller|writeBuffer[43][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[43][4]~q\);

-- Location: LCCOMB_X40_Y28_N10
\sdram_controller|Mux27~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux27~15_combout\ = (\sdram_controller|Mux27~14_combout\ & (((\sdram_controller|writeBuffer[43][4]~q\) # (!\sdram_controller|stateCycleCount\(3))))) # (!\sdram_controller|Mux27~14_combout\ & (\sdram_controller|writeBuffer[41][4]~q\ & 
-- ((\sdram_controller|stateCycleCount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux27~14_combout\,
	datab => \sdram_controller|writeBuffer[41][4]~q\,
	datac => \sdram_controller|writeBuffer[43][4]~q\,
	datad => \sdram_controller|stateCycleCount\(3),
	combout => \sdram_controller|Mux27~15_combout\);

-- Location: LCCOMB_X42_Y28_N14
\sdram_controller|writeBuffer[57][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[57][4]~feeder_combout\ = \Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~14_combout\,
	combout => \sdram_controller|writeBuffer[57][4]~feeder_combout\);

-- Location: FF_X42_Y28_N15
\sdram_controller|writeBuffer[57][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[57][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[57][4]~q\);

-- Location: FF_X39_Y27_N7
\sdram_controller|writeBuffer[49][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[49][4]~q\);

-- Location: LCCOMB_X39_Y27_N12
\sdram_controller|writeBuffer[51][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[51][4]~feeder_combout\ = \Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~14_combout\,
	combout => \sdram_controller|writeBuffer[51][4]~feeder_combout\);

-- Location: FF_X39_Y27_N13
\sdram_controller|writeBuffer[51][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[51][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[51][4]~q\);

-- Location: LCCOMB_X39_Y27_N6
\sdram_controller|Mux27~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux27~12_combout\ = (\sdram_controller|stateCycleCount\(3) & (\sdram_controller|stateCycleCount\(1))) # (!\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|writeBuffer[51][4]~q\))) # 
-- (!\sdram_controller|stateCycleCount\(1) & (\sdram_controller|writeBuffer[49][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(3),
	datab => \sdram_controller|stateCycleCount\(1),
	datac => \sdram_controller|writeBuffer[49][4]~q\,
	datad => \sdram_controller|writeBuffer[51][4]~q\,
	combout => \sdram_controller|Mux27~12_combout\);

-- Location: FF_X43_Y28_N29
\sdram_controller|writeBuffer[59][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[59][4]~q\);

-- Location: LCCOMB_X43_Y28_N28
\sdram_controller|Mux27~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux27~13_combout\ = (\sdram_controller|Mux27~12_combout\ & (((\sdram_controller|writeBuffer[59][4]~q\) # (!\sdram_controller|stateCycleCount\(3))))) # (!\sdram_controller|Mux27~12_combout\ & (\sdram_controller|writeBuffer[57][4]~q\ & 
-- ((\sdram_controller|stateCycleCount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[57][4]~q\,
	datab => \sdram_controller|Mux27~12_combout\,
	datac => \sdram_controller|writeBuffer[59][4]~q\,
	datad => \sdram_controller|stateCycleCount\(3),
	combout => \sdram_controller|Mux27~13_combout\);

-- Location: LCCOMB_X40_Y25_N16
\sdram_controller|Mux27~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux27~16_combout\ = (\sdram_controller|stateCycleCount\(2) & (((\sdram_controller|stateCycleCount\(4))))) # (!\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|stateCycleCount\(4) & ((\sdram_controller|Mux27~13_combout\))) # 
-- (!\sdram_controller|stateCycleCount\(4) & (\sdram_controller|Mux27~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(2),
	datab => \sdram_controller|Mux27~15_combout\,
	datac => \sdram_controller|stateCycleCount\(4),
	datad => \sdram_controller|Mux27~13_combout\,
	combout => \sdram_controller|Mux27~16_combout\);

-- Location: LCCOMB_X40_Y25_N26
\sdram_controller|Mux27~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux27~19_combout\ = (\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|Mux27~16_combout\ & (\sdram_controller|Mux27~18_combout\)) # (!\sdram_controller|Mux27~16_combout\ & ((\sdram_controller|Mux27~11_combout\))))) # 
-- (!\sdram_controller|stateCycleCount\(2) & (((\sdram_controller|Mux27~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux27~18_combout\,
	datab => \sdram_controller|Mux27~11_combout\,
	datac => \sdram_controller|stateCycleCount\(2),
	datad => \sdram_controller|Mux27~16_combout\,
	combout => \sdram_controller|Mux27~19_combout\);

-- Location: LCCOMB_X40_Y25_N28
\sdram_controller|Mux27~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux27~30_combout\ = (\sdram_controller|stateCycleCount\(6) & (((\sdram_controller|stateCycleCount\(5))))) # (!\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|Mux27~19_combout\))) # 
-- (!\sdram_controller|stateCycleCount\(5) & (\sdram_controller|Mux27~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(6),
	datab => \sdram_controller|Mux27~29_combout\,
	datac => \sdram_controller|Mux27~19_combout\,
	datad => \sdram_controller|stateCycleCount\(5),
	combout => \sdram_controller|Mux27~30_combout\);

-- Location: LCCOMB_X40_Y25_N14
\sdram_controller|Mux27~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux27~41_combout\ = (\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|Mux27~30_combout\ & (\sdram_controller|Mux27~40_combout\)) # (!\sdram_controller|Mux27~30_combout\ & ((\sdram_controller|Mux27~9_combout\))))) # 
-- (!\sdram_controller|stateCycleCount\(6) & (((\sdram_controller|Mux27~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(6),
	datab => \sdram_controller|Mux27~40_combout\,
	datac => \sdram_controller|Mux27~9_combout\,
	datad => \sdram_controller|Mux27~30_combout\,
	combout => \sdram_controller|Mux27~41_combout\);

-- Location: LCCOMB_X35_Y26_N14
\sdram_controller|Mux27~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux27~42_combout\ = (\sdram_controller|stateCycleCount\(0) & \sdram_controller|Mux27~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sdram_controller|stateCycleCount\(0),
	datad => \sdram_controller|Mux27~41_combout\,
	combout => \sdram_controller|Mux27~42_combout\);

-- Location: LCCOMB_X38_Y28_N28
\Add0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (transmitCount(5) & (!\Add0~13\)) # (!transmitCount(5) & ((\Add0~13\) # (GND)))
-- \Add0~16\ = CARRY((!\Add0~13\) # (!transmitCount(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => transmitCount(5),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~15_combout\,
	cout => \Add0~16\);

-- Location: LCCOMB_X39_Y28_N14
\Add0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = (\state.TRANSMIT~q\ & \Add0~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.TRANSMIT~q\,
	datad => \Add0~15_combout\,
	combout => \Add0~17_combout\);

-- Location: LCCOMB_X38_Y29_N12
\sdram_controller|writeBuffer[93][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[93][5]~feeder_combout\ = \Add0~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~17_combout\,
	combout => \sdram_controller|writeBuffer[93][5]~feeder_combout\);

-- Location: FF_X38_Y29_N13
\sdram_controller|writeBuffer[93][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[93][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[93][5]~q\);

-- Location: FF_X39_Y25_N5
\sdram_controller|writeBuffer[29][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[29][5]~q\);

-- Location: LCCOMB_X39_Y25_N4
\sdram_controller|Mux26~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux26~31_combout\ = (\sdram_controller|stateCycleCount\(5) & (((\sdram_controller|stateCycleCount\(6))))) # (!\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|stateCycleCount\(6) & (\sdram_controller|writeBuffer[93][5]~q\)) # 
-- (!\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|writeBuffer[29][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[93][5]~q\,
	datab => \sdram_controller|stateCycleCount\(5),
	datac => \sdram_controller|writeBuffer[29][5]~q\,
	datad => \sdram_controller|stateCycleCount\(6),
	combout => \sdram_controller|Mux26~31_combout\);

-- Location: LCCOMB_X40_Y29_N10
\sdram_controller|writeBuffer[61][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[61][5]~feeder_combout\ = \Add0~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~17_combout\,
	combout => \sdram_controller|writeBuffer[61][5]~feeder_combout\);

-- Location: FF_X40_Y29_N11
\sdram_controller|writeBuffer[61][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[61][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[61][5]~q\);

-- Location: FF_X38_Y29_N3
\sdram_controller|writeBuffer[125][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[125][5]~q\);

-- Location: LCCOMB_X38_Y29_N2
\sdram_controller|Mux26~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux26~32_combout\ = (\sdram_controller|Mux26~31_combout\ & (((\sdram_controller|writeBuffer[125][5]~q\) # (!\sdram_controller|stateCycleCount\(5))))) # (!\sdram_controller|Mux26~31_combout\ & (\sdram_controller|writeBuffer[61][5]~q\ & 
-- ((\sdram_controller|stateCycleCount\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux26~31_combout\,
	datab => \sdram_controller|writeBuffer[61][5]~q\,
	datac => \sdram_controller|writeBuffer[125][5]~q\,
	datad => \sdram_controller|stateCycleCount\(5),
	combout => \sdram_controller|Mux26~32_combout\);

-- Location: FF_X41_Y29_N3
\sdram_controller|writeBuffer[21][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[21][5]~q\);

-- Location: LCCOMB_X41_Y29_N28
\sdram_controller|writeBuffer[85][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[85][5]~feeder_combout\ = \Add0~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~17_combout\,
	combout => \sdram_controller|writeBuffer[85][5]~feeder_combout\);

-- Location: FF_X41_Y29_N29
\sdram_controller|writeBuffer[85][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[85][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[85][5]~q\);

-- Location: LCCOMB_X41_Y29_N2
\sdram_controller|Mux26~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux26~35_combout\ = (\sdram_controller|stateCycleCount\(5) & (\sdram_controller|stateCycleCount\(6))) # (!\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|writeBuffer[85][5]~q\))) # 
-- (!\sdram_controller|stateCycleCount\(6) & (\sdram_controller|writeBuffer[21][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(5),
	datab => \sdram_controller|stateCycleCount\(6),
	datac => \sdram_controller|writeBuffer[21][5]~q\,
	datad => \sdram_controller|writeBuffer[85][5]~q\,
	combout => \sdram_controller|Mux26~35_combout\);

-- Location: FF_X36_Y26_N31
\sdram_controller|writeBuffer[117][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[117][5]~q\);

-- Location: LCCOMB_X40_Y27_N20
\sdram_controller|writeBuffer[53][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[53][5]~feeder_combout\ = \Add0~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~17_combout\,
	combout => \sdram_controller|writeBuffer[53][5]~feeder_combout\);

-- Location: FF_X40_Y27_N21
\sdram_controller|writeBuffer[53][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[53][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[53][5]~q\);

-- Location: LCCOMB_X36_Y26_N30
\sdram_controller|Mux26~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux26~36_combout\ = (\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|Mux26~35_combout\ & (\sdram_controller|writeBuffer[117][5]~q\)) # (!\sdram_controller|Mux26~35_combout\ & ((\sdram_controller|writeBuffer[53][5]~q\))))) # 
-- (!\sdram_controller|stateCycleCount\(5) & (\sdram_controller|Mux26~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(5),
	datab => \sdram_controller|Mux26~35_combout\,
	datac => \sdram_controller|writeBuffer[117][5]~q\,
	datad => \sdram_controller|writeBuffer[53][5]~q\,
	combout => \sdram_controller|Mux26~36_combout\);

-- Location: LCCOMB_X35_Y27_N28
\sdram_controller|writeBuffer[55][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[55][5]~feeder_combout\ = \Add0~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~17_combout\,
	combout => \sdram_controller|writeBuffer[55][5]~feeder_combout\);

-- Location: FF_X35_Y27_N29
\sdram_controller|writeBuffer[55][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[55][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[55][5]~q\);

-- Location: FF_X38_Y27_N19
\sdram_controller|writeBuffer[119][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[119][5]~q\);

-- Location: FF_X37_Y30_N11
\sdram_controller|writeBuffer[23][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[23][5]~q\);

-- Location: LCCOMB_X37_Y30_N12
\sdram_controller|writeBuffer[87][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[87][5]~feeder_combout\ = \Add0~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~17_combout\,
	combout => \sdram_controller|writeBuffer[87][5]~feeder_combout\);

-- Location: FF_X37_Y30_N13
\sdram_controller|writeBuffer[87][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[87][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[87][5]~q\);

-- Location: LCCOMB_X37_Y30_N10
\sdram_controller|Mux26~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux26~33_combout\ = (\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|stateCycleCount\(5)) # ((\sdram_controller|writeBuffer[87][5]~q\)))) # (!\sdram_controller|stateCycleCount\(6) & (!\sdram_controller|stateCycleCount\(5) & 
-- (\sdram_controller|writeBuffer[23][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(6),
	datab => \sdram_controller|stateCycleCount\(5),
	datac => \sdram_controller|writeBuffer[23][5]~q\,
	datad => \sdram_controller|writeBuffer[87][5]~q\,
	combout => \sdram_controller|Mux26~33_combout\);

-- Location: LCCOMB_X38_Y27_N18
\sdram_controller|Mux26~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux26~34_combout\ = (\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|Mux26~33_combout\ & ((\sdram_controller|writeBuffer[119][5]~q\))) # (!\sdram_controller|Mux26~33_combout\ & (\sdram_controller|writeBuffer[55][5]~q\)))) # 
-- (!\sdram_controller|stateCycleCount\(5) & (((\sdram_controller|Mux26~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[55][5]~q\,
	datab => \sdram_controller|stateCycleCount\(5),
	datac => \sdram_controller|writeBuffer[119][5]~q\,
	datad => \sdram_controller|Mux26~33_combout\,
	combout => \sdram_controller|Mux26~34_combout\);

-- Location: LCCOMB_X35_Y26_N18
\sdram_controller|Mux26~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux26~37_combout\ = (\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|stateCycleCount\(3)) # ((\sdram_controller|Mux26~34_combout\)))) # (!\sdram_controller|stateCycleCount\(1) & (!\sdram_controller|stateCycleCount\(3) & 
-- (\sdram_controller|Mux26~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datab => \sdram_controller|stateCycleCount\(3),
	datac => \sdram_controller|Mux26~36_combout\,
	datad => \sdram_controller|Mux26~34_combout\,
	combout => \sdram_controller|Mux26~37_combout\);

-- Location: LCCOMB_X37_Y28_N18
\sdram_controller|writeBuffer[95][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[95][5]~feeder_combout\ = \Add0~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~17_combout\,
	combout => \sdram_controller|writeBuffer[95][5]~feeder_combout\);

-- Location: FF_X37_Y28_N19
\sdram_controller|writeBuffer[95][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[95][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[95][5]~q\);

-- Location: FF_X36_Y28_N31
\sdram_controller|writeBuffer[31][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[31][5]~q\);

-- Location: LCCOMB_X36_Y28_N30
\sdram_controller|Mux26~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux26~38_combout\ = (\sdram_controller|stateCycleCount\(5) & (((\sdram_controller|stateCycleCount\(6))))) # (!\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|stateCycleCount\(6) & (\sdram_controller|writeBuffer[95][5]~q\)) # 
-- (!\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|writeBuffer[31][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(5),
	datab => \sdram_controller|writeBuffer[95][5]~q\,
	datac => \sdram_controller|writeBuffer[31][5]~q\,
	datad => \sdram_controller|stateCycleCount\(6),
	combout => \sdram_controller|Mux26~38_combout\);

-- Location: FF_X35_Y28_N27
\sdram_controller|writeBuffer[63][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[63][5]~q\);

-- Location: FF_X39_Y28_N15
\sdram_controller|writeBuffer[127][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \Add0~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[127][5]~q\);

-- Location: LCCOMB_X35_Y28_N26
\sdram_controller|Mux26~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux26~39_combout\ = (\sdram_controller|Mux26~38_combout\ & (((\sdram_controller|writeBuffer[127][5]~q\)) # (!\sdram_controller|stateCycleCount\(5)))) # (!\sdram_controller|Mux26~38_combout\ & (\sdram_controller|stateCycleCount\(5) & 
-- (\sdram_controller|writeBuffer[63][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux26~38_combout\,
	datab => \sdram_controller|stateCycleCount\(5),
	datac => \sdram_controller|writeBuffer[63][5]~q\,
	datad => \sdram_controller|writeBuffer[127][5]~q\,
	combout => \sdram_controller|Mux26~39_combout\);

-- Location: LCCOMB_X35_Y26_N4
\sdram_controller|Mux26~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux26~40_combout\ = (\sdram_controller|Mux26~37_combout\ & (((\sdram_controller|Mux26~39_combout\) # (!\sdram_controller|stateCycleCount\(3))))) # (!\sdram_controller|Mux26~37_combout\ & (\sdram_controller|Mux26~32_combout\ & 
-- ((\sdram_controller|stateCycleCount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux26~32_combout\,
	datab => \sdram_controller|Mux26~37_combout\,
	datac => \sdram_controller|Mux26~39_combout\,
	datad => \sdram_controller|stateCycleCount\(3),
	combout => \sdram_controller|Mux26~40_combout\);

-- Location: FF_X39_Y30_N17
\sdram_controller|writeBuffer[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[3][5]~q\);

-- Location: LCCOMB_X35_Y27_N22
\sdram_controller|writeBuffer[35][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[35][5]~feeder_combout\ = \Add0~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~17_combout\,
	combout => \sdram_controller|writeBuffer[35][5]~feeder_combout\);

-- Location: FF_X35_Y27_N23
\sdram_controller|writeBuffer[35][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[35][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[35][5]~q\);

-- Location: LCCOMB_X39_Y30_N16
\sdram_controller|Mux26~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux26~20_combout\ = (\sdram_controller|stateCycleCount\(6) & (\sdram_controller|stateCycleCount\(5))) # (!\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|writeBuffer[35][5]~q\))) # 
-- (!\sdram_controller|stateCycleCount\(5) & (\sdram_controller|writeBuffer[3][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(6),
	datab => \sdram_controller|stateCycleCount\(5),
	datac => \sdram_controller|writeBuffer[3][5]~q\,
	datad => \sdram_controller|writeBuffer[35][5]~q\,
	combout => \sdram_controller|Mux26~20_combout\);

-- Location: FF_X39_Y30_N11
\sdram_controller|writeBuffer[99][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[99][5]~q\);

-- Location: LCCOMB_X34_Y28_N16
\sdram_controller|writeBuffer[67][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[67][5]~feeder_combout\ = \Add0~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~17_combout\,
	combout => \sdram_controller|writeBuffer[67][5]~feeder_combout\);

-- Location: FF_X34_Y28_N17
\sdram_controller|writeBuffer[67][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[67][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[67][5]~q\);

-- Location: LCCOMB_X39_Y30_N10
\sdram_controller|Mux26~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux26~21_combout\ = (\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|Mux26~20_combout\ & (\sdram_controller|writeBuffer[99][5]~q\)) # (!\sdram_controller|Mux26~20_combout\ & ((\sdram_controller|writeBuffer[67][5]~q\))))) # 
-- (!\sdram_controller|stateCycleCount\(6) & (\sdram_controller|Mux26~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(6),
	datab => \sdram_controller|Mux26~20_combout\,
	datac => \sdram_controller|writeBuffer[99][5]~q\,
	datad => \sdram_controller|writeBuffer[67][5]~q\,
	combout => \sdram_controller|Mux26~21_combout\);

-- Location: LCCOMB_X40_Y26_N20
\sdram_controller|writeBuffer[33][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[33][5]~feeder_combout\ = \Add0~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~17_combout\,
	combout => \sdram_controller|writeBuffer[33][5]~feeder_combout\);

-- Location: FF_X40_Y26_N21
\sdram_controller|writeBuffer[33][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[33][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[33][5]~q\);

-- Location: FF_X38_Y26_N7
\sdram_controller|writeBuffer[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[1][5]~q\);

-- Location: LCCOMB_X38_Y26_N6
\sdram_controller|Mux26~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux26~24_combout\ = (\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|writeBuffer[33][5]~q\) # ((\sdram_controller|stateCycleCount\(6))))) # (!\sdram_controller|stateCycleCount\(5) & (((\sdram_controller|writeBuffer[1][5]~q\ & 
-- !\sdram_controller|stateCycleCount\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(5),
	datab => \sdram_controller|writeBuffer[33][5]~q\,
	datac => \sdram_controller|writeBuffer[1][5]~q\,
	datad => \sdram_controller|stateCycleCount\(6),
	combout => \sdram_controller|Mux26~24_combout\);

-- Location: LCCOMB_X37_Y26_N28
\sdram_controller|writeBuffer[65][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[65][5]~feeder_combout\ = \Add0~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~17_combout\,
	combout => \sdram_controller|writeBuffer[65][5]~feeder_combout\);

-- Location: FF_X37_Y26_N29
\sdram_controller|writeBuffer[65][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[65][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[65][5]~q\);

-- Location: FF_X37_Y26_N19
\sdram_controller|writeBuffer[97][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[97][5]~q\);

-- Location: LCCOMB_X37_Y26_N18
\sdram_controller|Mux26~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux26~25_combout\ = (\sdram_controller|Mux26~24_combout\ & (((\sdram_controller|writeBuffer[97][5]~q\) # (!\sdram_controller|stateCycleCount\(6))))) # (!\sdram_controller|Mux26~24_combout\ & (\sdram_controller|writeBuffer[65][5]~q\ & 
-- ((\sdram_controller|stateCycleCount\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux26~24_combout\,
	datab => \sdram_controller|writeBuffer[65][5]~q\,
	datac => \sdram_controller|writeBuffer[97][5]~q\,
	datad => \sdram_controller|stateCycleCount\(6),
	combout => \sdram_controller|Mux26~25_combout\);

-- Location: LCCOMB_X39_Y29_N12
\sdram_controller|writeBuffer[73][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[73][5]~feeder_combout\ = \Add0~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~17_combout\,
	combout => \sdram_controller|writeBuffer[73][5]~feeder_combout\);

-- Location: FF_X39_Y29_N13
\sdram_controller|writeBuffer[73][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[73][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[73][5]~q\);

-- Location: FF_X43_Y29_N29
\sdram_controller|writeBuffer[105][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[105][5]~q\);

-- Location: FF_X39_Y29_N19
\sdram_controller|writeBuffer[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[9][5]~q\);

-- Location: LCCOMB_X43_Y29_N14
\sdram_controller|writeBuffer[41][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[41][5]~feeder_combout\ = \Add0~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~17_combout\,
	combout => \sdram_controller|writeBuffer[41][5]~feeder_combout\);

-- Location: FF_X43_Y29_N15
\sdram_controller|writeBuffer[41][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[41][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[41][5]~q\);

-- Location: LCCOMB_X39_Y29_N18
\sdram_controller|Mux26~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux26~22_combout\ = (\sdram_controller|stateCycleCount\(6) & (\sdram_controller|stateCycleCount\(5))) # (!\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|writeBuffer[41][5]~q\))) # 
-- (!\sdram_controller|stateCycleCount\(5) & (\sdram_controller|writeBuffer[9][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(6),
	datab => \sdram_controller|stateCycleCount\(5),
	datac => \sdram_controller|writeBuffer[9][5]~q\,
	datad => \sdram_controller|writeBuffer[41][5]~q\,
	combout => \sdram_controller|Mux26~22_combout\);

-- Location: LCCOMB_X43_Y29_N28
\sdram_controller|Mux26~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux26~23_combout\ = (\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|Mux26~22_combout\ & ((\sdram_controller|writeBuffer[105][5]~q\))) # (!\sdram_controller|Mux26~22_combout\ & (\sdram_controller|writeBuffer[73][5]~q\)))) # 
-- (!\sdram_controller|stateCycleCount\(6) & (((\sdram_controller|Mux26~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(6),
	datab => \sdram_controller|writeBuffer[73][5]~q\,
	datac => \sdram_controller|writeBuffer[105][5]~q\,
	datad => \sdram_controller|Mux26~22_combout\,
	combout => \sdram_controller|Mux26~23_combout\);

-- Location: LCCOMB_X35_Y26_N0
\sdram_controller|Mux26~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux26~26_combout\ = (\sdram_controller|stateCycleCount\(1) & (\sdram_controller|stateCycleCount\(3))) # (!\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|Mux26~23_combout\))) # 
-- (!\sdram_controller|stateCycleCount\(3) & (\sdram_controller|Mux26~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datab => \sdram_controller|stateCycleCount\(3),
	datac => \sdram_controller|Mux26~25_combout\,
	datad => \sdram_controller|Mux26~23_combout\,
	combout => \sdram_controller|Mux26~26_combout\);

-- Location: LCCOMB_X40_Y28_N2
\sdram_controller|writeBuffer[43][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[43][5]~feeder_combout\ = \Add0~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~17_combout\,
	combout => \sdram_controller|writeBuffer[43][5]~feeder_combout\);

-- Location: FF_X40_Y28_N3
\sdram_controller|writeBuffer[43][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[43][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[43][5]~q\);

-- Location: FF_X40_Y28_N21
\sdram_controller|writeBuffer[11][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[11][5]~q\);

-- Location: LCCOMB_X40_Y28_N20
\sdram_controller|Mux26~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux26~27_combout\ = (\sdram_controller|stateCycleCount\(6) & (((\sdram_controller|stateCycleCount\(5))))) # (!\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|stateCycleCount\(5) & (\sdram_controller|writeBuffer[43][5]~q\)) # 
-- (!\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|writeBuffer[11][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(6),
	datab => \sdram_controller|writeBuffer[43][5]~q\,
	datac => \sdram_controller|writeBuffer[11][5]~q\,
	datad => \sdram_controller|stateCycleCount\(5),
	combout => \sdram_controller|Mux26~27_combout\);

-- Location: FF_X41_Y28_N17
\sdram_controller|writeBuffer[107][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[107][5]~q\);

-- Location: LCCOMB_X41_Y28_N18
\sdram_controller|writeBuffer[75][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[75][5]~feeder_combout\ = \Add0~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~17_combout\,
	combout => \sdram_controller|writeBuffer[75][5]~feeder_combout\);

-- Location: FF_X41_Y28_N19
\sdram_controller|writeBuffer[75][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[75][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[75][5]~q\);

-- Location: LCCOMB_X41_Y28_N16
\sdram_controller|Mux26~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux26~28_combout\ = (\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|Mux26~27_combout\ & (\sdram_controller|writeBuffer[107][5]~q\)) # (!\sdram_controller|Mux26~27_combout\ & ((\sdram_controller|writeBuffer[75][5]~q\))))) # 
-- (!\sdram_controller|stateCycleCount\(6) & (\sdram_controller|Mux26~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(6),
	datab => \sdram_controller|Mux26~27_combout\,
	datac => \sdram_controller|writeBuffer[107][5]~q\,
	datad => \sdram_controller|writeBuffer[75][5]~q\,
	combout => \sdram_controller|Mux26~28_combout\);

-- Location: LCCOMB_X35_Y27_N12
\sdram_controller|Mux26~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux26~29_combout\ = (\sdram_controller|Mux26~26_combout\ & (((\sdram_controller|Mux26~28_combout\) # (!\sdram_controller|stateCycleCount\(1))))) # (!\sdram_controller|Mux26~26_combout\ & (\sdram_controller|Mux26~21_combout\ & 
-- ((\sdram_controller|stateCycleCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux26~21_combout\,
	datab => \sdram_controller|Mux26~26_combout\,
	datac => \sdram_controller|Mux26~28_combout\,
	datad => \sdram_controller|stateCycleCount\(1),
	combout => \sdram_controller|Mux26~29_combout\);

-- Location: LCCOMB_X42_Y29_N26
\sdram_controller|writeBuffer[121][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[121][5]~feeder_combout\ = \Add0~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~17_combout\,
	combout => \sdram_controller|writeBuffer[121][5]~feeder_combout\);

-- Location: FF_X42_Y29_N27
\sdram_controller|writeBuffer[121][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[121][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[121][5]~q\);

-- Location: FF_X43_Y27_N3
\sdram_controller|writeBuffer[123][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[123][5]~q\);

-- Location: FF_X43_Y27_N25
\sdram_controller|writeBuffer[57][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[57][5]~q\);

-- Location: LCCOMB_X43_Y28_N22
\sdram_controller|writeBuffer[59][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[59][5]~feeder_combout\ = \Add0~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~17_combout\,
	combout => \sdram_controller|writeBuffer[59][5]~feeder_combout\);

-- Location: FF_X43_Y28_N23
\sdram_controller|writeBuffer[59][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[59][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[59][5]~q\);

-- Location: LCCOMB_X43_Y27_N24
\sdram_controller|Mux26~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux26~17_combout\ = (\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|stateCycleCount\(6)) # ((\sdram_controller|writeBuffer[59][5]~q\)))) # (!\sdram_controller|stateCycleCount\(1) & (!\sdram_controller|stateCycleCount\(6) & 
-- (\sdram_controller|writeBuffer[57][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datab => \sdram_controller|stateCycleCount\(6),
	datac => \sdram_controller|writeBuffer[57][5]~q\,
	datad => \sdram_controller|writeBuffer[59][5]~q\,
	combout => \sdram_controller|Mux26~17_combout\);

-- Location: LCCOMB_X43_Y27_N2
\sdram_controller|Mux26~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux26~18_combout\ = (\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|Mux26~17_combout\ & ((\sdram_controller|writeBuffer[123][5]~q\))) # (!\sdram_controller|Mux26~17_combout\ & (\sdram_controller|writeBuffer[121][5]~q\)))) # 
-- (!\sdram_controller|stateCycleCount\(6) & (((\sdram_controller|Mux26~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[121][5]~q\,
	datab => \sdram_controller|stateCycleCount\(6),
	datac => \sdram_controller|writeBuffer[123][5]~q\,
	datad => \sdram_controller|Mux26~17_combout\,
	combout => \sdram_controller|Mux26~18_combout\);

-- Location: LCCOMB_X41_Y26_N26
\sdram_controller|writeBuffer[113][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[113][5]~feeder_combout\ = \Add0~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~17_combout\,
	combout => \sdram_controller|writeBuffer[113][5]~feeder_combout\);

-- Location: FF_X41_Y26_N27
\sdram_controller|writeBuffer[113][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[113][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[113][5]~q\);

-- Location: FF_X40_Y26_N23
\sdram_controller|writeBuffer[49][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[49][5]~q\);

-- Location: LCCOMB_X40_Y26_N22
\sdram_controller|Mux26~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux26~10_combout\ = (\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|writeBuffer[113][5]~q\) # ((\sdram_controller|stateCycleCount\(1))))) # (!\sdram_controller|stateCycleCount\(6) & (((\sdram_controller|writeBuffer[49][5]~q\ 
-- & !\sdram_controller|stateCycleCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(6),
	datab => \sdram_controller|writeBuffer[113][5]~q\,
	datac => \sdram_controller|writeBuffer[49][5]~q\,
	datad => \sdram_controller|stateCycleCount\(1),
	combout => \sdram_controller|Mux26~10_combout\);

-- Location: LCCOMB_X39_Y27_N24
\sdram_controller|writeBuffer[51][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[51][5]~feeder_combout\ = \Add0~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~17_combout\,
	combout => \sdram_controller|writeBuffer[51][5]~feeder_combout\);

-- Location: FF_X39_Y27_N25
\sdram_controller|writeBuffer[51][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[51][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[51][5]~q\);

-- Location: FF_X38_Y27_N21
\sdram_controller|writeBuffer[115][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[115][5]~q\);

-- Location: LCCOMB_X38_Y27_N20
\sdram_controller|Mux26~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux26~11_combout\ = (\sdram_controller|Mux26~10_combout\ & (((\sdram_controller|writeBuffer[115][5]~q\) # (!\sdram_controller|stateCycleCount\(1))))) # (!\sdram_controller|Mux26~10_combout\ & (\sdram_controller|writeBuffer[51][5]~q\ & 
-- ((\sdram_controller|stateCycleCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux26~10_combout\,
	datab => \sdram_controller|writeBuffer[51][5]~q\,
	datac => \sdram_controller|writeBuffer[115][5]~q\,
	datad => \sdram_controller|stateCycleCount\(1),
	combout => \sdram_controller|Mux26~11_combout\);

-- Location: LCCOMB_X40_Y30_N2
\sdram_controller|writeBuffer[19][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[19][5]~feeder_combout\ = \Add0~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~17_combout\,
	combout => \sdram_controller|writeBuffer[19][5]~feeder_combout\);

-- Location: FF_X40_Y30_N3
\sdram_controller|writeBuffer[19][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[19][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[19][5]~q\);

-- Location: FF_X40_Y30_N1
\sdram_controller|writeBuffer[17][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[17][5]~q\);

-- Location: LCCOMB_X40_Y30_N0
\sdram_controller|Mux26~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux26~14_combout\ = (\sdram_controller|stateCycleCount\(6) & (((\sdram_controller|stateCycleCount\(1))))) # (!\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|stateCycleCount\(1) & (\sdram_controller|writeBuffer[19][5]~q\)) # 
-- (!\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|writeBuffer[17][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(6),
	datab => \sdram_controller|writeBuffer[19][5]~q\,
	datac => \sdram_controller|writeBuffer[17][5]~q\,
	datad => \sdram_controller|stateCycleCount\(1),
	combout => \sdram_controller|Mux26~14_combout\);

-- Location: FF_X41_Y30_N7
\sdram_controller|writeBuffer[83][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[83][5]~q\);

-- Location: LCCOMB_X42_Y26_N22
\sdram_controller|writeBuffer[81][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[81][5]~feeder_combout\ = \Add0~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~17_combout\,
	combout => \sdram_controller|writeBuffer[81][5]~feeder_combout\);

-- Location: FF_X42_Y26_N23
\sdram_controller|writeBuffer[81][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[81][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[81][5]~q\);

-- Location: LCCOMB_X41_Y30_N6
\sdram_controller|Mux26~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux26~15_combout\ = (\sdram_controller|Mux26~14_combout\ & (((\sdram_controller|writeBuffer[83][5]~q\)) # (!\sdram_controller|stateCycleCount\(6)))) # (!\sdram_controller|Mux26~14_combout\ & (\sdram_controller|stateCycleCount\(6) & 
-- ((\sdram_controller|writeBuffer[81][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux26~14_combout\,
	datab => \sdram_controller|stateCycleCount\(6),
	datac => \sdram_controller|writeBuffer[83][5]~q\,
	datad => \sdram_controller|writeBuffer[81][5]~q\,
	combout => \sdram_controller|Mux26~15_combout\);

-- Location: FF_X42_Y28_N7
\sdram_controller|writeBuffer[25][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[25][5]~q\);

-- Location: LCCOMB_X43_Y28_N24
\sdram_controller|writeBuffer[27][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[27][5]~feeder_combout\ = \Add0~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~17_combout\,
	combout => \sdram_controller|writeBuffer[27][5]~feeder_combout\);

-- Location: FF_X43_Y28_N25
\sdram_controller|writeBuffer[27][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[27][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[27][5]~q\);

-- Location: LCCOMB_X42_Y28_N6
\sdram_controller|Mux26~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux26~12_combout\ = (\sdram_controller|stateCycleCount\(6) & (\sdram_controller|stateCycleCount\(1))) # (!\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|writeBuffer[27][5]~q\))) # 
-- (!\sdram_controller|stateCycleCount\(1) & (\sdram_controller|writeBuffer[25][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(6),
	datab => \sdram_controller|stateCycleCount\(1),
	datac => \sdram_controller|writeBuffer[25][5]~q\,
	datad => \sdram_controller|writeBuffer[27][5]~q\,
	combout => \sdram_controller|Mux26~12_combout\);

-- Location: FF_X41_Y30_N17
\sdram_controller|writeBuffer[91][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[91][5]~q\);

-- Location: LCCOMB_X42_Y30_N26
\sdram_controller|writeBuffer[89][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[89][5]~feeder_combout\ = \Add0~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~17_combout\,
	combout => \sdram_controller|writeBuffer[89][5]~feeder_combout\);

-- Location: FF_X42_Y30_N27
\sdram_controller|writeBuffer[89][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[89][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[89][5]~q\);

-- Location: LCCOMB_X41_Y30_N16
\sdram_controller|Mux26~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux26~13_combout\ = (\sdram_controller|Mux26~12_combout\ & (((\sdram_controller|writeBuffer[91][5]~q\)) # (!\sdram_controller|stateCycleCount\(6)))) # (!\sdram_controller|Mux26~12_combout\ & (\sdram_controller|stateCycleCount\(6) & 
-- ((\sdram_controller|writeBuffer[89][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux26~12_combout\,
	datab => \sdram_controller|stateCycleCount\(6),
	datac => \sdram_controller|writeBuffer[91][5]~q\,
	datad => \sdram_controller|writeBuffer[89][5]~q\,
	combout => \sdram_controller|Mux26~13_combout\);

-- Location: LCCOMB_X41_Y30_N20
\sdram_controller|Mux26~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux26~16_combout\ = (\sdram_controller|stateCycleCount\(3) & (((\sdram_controller|Mux26~13_combout\) # (\sdram_controller|stateCycleCount\(5))))) # (!\sdram_controller|stateCycleCount\(3) & (\sdram_controller|Mux26~15_combout\ & 
-- ((!\sdram_controller|stateCycleCount\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux26~15_combout\,
	datab => \sdram_controller|Mux26~13_combout\,
	datac => \sdram_controller|stateCycleCount\(3),
	datad => \sdram_controller|stateCycleCount\(5),
	combout => \sdram_controller|Mux26~16_combout\);

-- Location: LCCOMB_X43_Y30_N18
\sdram_controller|Mux26~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux26~19_combout\ = (\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|Mux26~16_combout\ & (\sdram_controller|Mux26~18_combout\)) # (!\sdram_controller|Mux26~16_combout\ & ((\sdram_controller|Mux26~11_combout\))))) # 
-- (!\sdram_controller|stateCycleCount\(5) & (((\sdram_controller|Mux26~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux26~18_combout\,
	datab => \sdram_controller|Mux26~11_combout\,
	datac => \sdram_controller|stateCycleCount\(5),
	datad => \sdram_controller|Mux26~16_combout\,
	combout => \sdram_controller|Mux26~19_combout\);

-- Location: LCCOMB_X35_Y27_N14
\sdram_controller|Mux26~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux26~30_combout\ = (\sdram_controller|stateCycleCount\(4) & (((\sdram_controller|Mux26~19_combout\) # (\sdram_controller|stateCycleCount\(2))))) # (!\sdram_controller|stateCycleCount\(4) & (\sdram_controller|Mux26~29_combout\ & 
-- ((!\sdram_controller|stateCycleCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux26~29_combout\,
	datab => \sdram_controller|stateCycleCount\(4),
	datac => \sdram_controller|Mux26~19_combout\,
	datad => \sdram_controller|stateCycleCount\(2),
	combout => \sdram_controller|Mux26~30_combout\);

-- Location: FF_X36_Y29_N11
\sdram_controller|writeBuffer[13][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[13][5]~q\);

-- Location: LCCOMB_X36_Y29_N24
\sdram_controller|writeBuffer[77][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[77][5]~feeder_combout\ = \Add0~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~17_combout\,
	combout => \sdram_controller|writeBuffer[77][5]~feeder_combout\);

-- Location: FF_X36_Y29_N25
\sdram_controller|writeBuffer[77][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[77][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[77][5]~q\);

-- Location: LCCOMB_X36_Y29_N10
\sdram_controller|Mux26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux26~0_combout\ = (\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|stateCycleCount\(5)) # ((\sdram_controller|writeBuffer[77][5]~q\)))) # (!\sdram_controller|stateCycleCount\(6) & (!\sdram_controller|stateCycleCount\(5) & 
-- (\sdram_controller|writeBuffer[13][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(6),
	datab => \sdram_controller|stateCycleCount\(5),
	datac => \sdram_controller|writeBuffer[13][5]~q\,
	datad => \sdram_controller|writeBuffer[77][5]~q\,
	combout => \sdram_controller|Mux26~0_combout\);

-- Location: LCCOMB_X37_Y29_N20
\sdram_controller|writeBuffer[45][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[45][5]~feeder_combout\ = \Add0~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~17_combout\,
	combout => \sdram_controller|writeBuffer[45][5]~feeder_combout\);

-- Location: FF_X37_Y29_N21
\sdram_controller|writeBuffer[45][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[45][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[45][5]~q\);

-- Location: FF_X37_Y29_N27
\sdram_controller|writeBuffer[109][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[109][5]~q\);

-- Location: LCCOMB_X37_Y29_N26
\sdram_controller|Mux26~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux26~1_combout\ = (\sdram_controller|Mux26~0_combout\ & (((\sdram_controller|writeBuffer[109][5]~q\) # (!\sdram_controller|stateCycleCount\(5))))) # (!\sdram_controller|Mux26~0_combout\ & (\sdram_controller|writeBuffer[45][5]~q\ & 
-- ((\sdram_controller|stateCycleCount\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux26~0_combout\,
	datab => \sdram_controller|writeBuffer[45][5]~q\,
	datac => \sdram_controller|writeBuffer[109][5]~q\,
	datad => \sdram_controller|stateCycleCount\(5),
	combout => \sdram_controller|Mux26~1_combout\);

-- Location: LCCOMB_X39_Y26_N12
\sdram_controller|writeBuffer[37][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[37][5]~feeder_combout\ = \Add0~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~17_combout\,
	combout => \sdram_controller|writeBuffer[37][5]~feeder_combout\);

-- Location: FF_X39_Y26_N13
\sdram_controller|writeBuffer[37][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[37][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[37][5]~q\);

-- Location: FF_X38_Y26_N21
\sdram_controller|writeBuffer[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[5][5]~q\);

-- Location: LCCOMB_X38_Y26_N20
\sdram_controller|Mux26~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux26~4_combout\ = (\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|writeBuffer[37][5]~q\) # ((\sdram_controller|stateCycleCount\(6))))) # (!\sdram_controller|stateCycleCount\(5) & (((\sdram_controller|writeBuffer[5][5]~q\ & 
-- !\sdram_controller|stateCycleCount\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(5),
	datab => \sdram_controller|writeBuffer[37][5]~q\,
	datac => \sdram_controller|writeBuffer[5][5]~q\,
	datad => \sdram_controller|stateCycleCount\(6),
	combout => \sdram_controller|Mux26~4_combout\);

-- Location: LCCOMB_X37_Y25_N14
\sdram_controller|writeBuffer[69][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[69][5]~feeder_combout\ = \Add0~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~17_combout\,
	combout => \sdram_controller|writeBuffer[69][5]~feeder_combout\);

-- Location: FF_X37_Y25_N15
\sdram_controller|writeBuffer[69][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[69][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[69][5]~q\);

-- Location: FF_X38_Y25_N3
\sdram_controller|writeBuffer[101][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[101][5]~q\);

-- Location: LCCOMB_X38_Y25_N2
\sdram_controller|Mux26~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux26~5_combout\ = (\sdram_controller|Mux26~4_combout\ & (((\sdram_controller|writeBuffer[101][5]~q\) # (!\sdram_controller|stateCycleCount\(6))))) # (!\sdram_controller|Mux26~4_combout\ & (\sdram_controller|writeBuffer[69][5]~q\ & 
-- ((\sdram_controller|stateCycleCount\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux26~4_combout\,
	datab => \sdram_controller|writeBuffer[69][5]~q\,
	datac => \sdram_controller|writeBuffer[101][5]~q\,
	datad => \sdram_controller|stateCycleCount\(6),
	combout => \sdram_controller|Mux26~5_combout\);

-- Location: LCCOMB_X34_Y27_N24
\sdram_controller|writeBuffer[71][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[71][5]~feeder_combout\ = \Add0~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~17_combout\,
	combout => \sdram_controller|writeBuffer[71][5]~feeder_combout\);

-- Location: FF_X34_Y27_N25
\sdram_controller|writeBuffer[71][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[71][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[71][5]~q\);

-- Location: FF_X42_Y30_N23
\sdram_controller|writeBuffer[103][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[103][5]~q\);

-- Location: FF_X38_Y25_N13
\sdram_controller|writeBuffer[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[7][5]~q\);

-- Location: LCCOMB_X36_Y27_N12
\sdram_controller|writeBuffer[39][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[39][5]~feeder_combout\ = \Add0~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~17_combout\,
	combout => \sdram_controller|writeBuffer[39][5]~feeder_combout\);

-- Location: FF_X36_Y27_N13
\sdram_controller|writeBuffer[39][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[39][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[39][5]~q\);

-- Location: LCCOMB_X38_Y25_N12
\sdram_controller|Mux26~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux26~2_combout\ = (\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|stateCycleCount\(6)) # ((\sdram_controller|writeBuffer[39][5]~q\)))) # (!\sdram_controller|stateCycleCount\(5) & (!\sdram_controller|stateCycleCount\(6) & 
-- (\sdram_controller|writeBuffer[7][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(5),
	datab => \sdram_controller|stateCycleCount\(6),
	datac => \sdram_controller|writeBuffer[7][5]~q\,
	datad => \sdram_controller|writeBuffer[39][5]~q\,
	combout => \sdram_controller|Mux26~2_combout\);

-- Location: LCCOMB_X42_Y30_N22
\sdram_controller|Mux26~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux26~3_combout\ = (\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|Mux26~2_combout\ & ((\sdram_controller|writeBuffer[103][5]~q\))) # (!\sdram_controller|Mux26~2_combout\ & (\sdram_controller|writeBuffer[71][5]~q\)))) # 
-- (!\sdram_controller|stateCycleCount\(6) & (((\sdram_controller|Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(6),
	datab => \sdram_controller|writeBuffer[71][5]~q\,
	datac => \sdram_controller|writeBuffer[103][5]~q\,
	datad => \sdram_controller|Mux26~2_combout\,
	combout => \sdram_controller|Mux26~3_combout\);

-- Location: LCCOMB_X40_Y30_N16
\sdram_controller|Mux26~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux26~6_combout\ = (\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|stateCycleCount\(3)) # ((\sdram_controller|Mux26~3_combout\)))) # (!\sdram_controller|stateCycleCount\(1) & (!\sdram_controller|stateCycleCount\(3) & 
-- (\sdram_controller|Mux26~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datab => \sdram_controller|stateCycleCount\(3),
	datac => \sdram_controller|Mux26~5_combout\,
	datad => \sdram_controller|Mux26~3_combout\,
	combout => \sdram_controller|Mux26~6_combout\);

-- Location: LCCOMB_X37_Y28_N16
\sdram_controller|writeBuffer[79][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[79][5]~feeder_combout\ = \Add0~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~17_combout\,
	combout => \sdram_controller|writeBuffer[79][5]~feeder_combout\);

-- Location: FF_X37_Y28_N17
\sdram_controller|writeBuffer[79][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[79][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[79][5]~q\);

-- Location: LCCOMB_X35_Y28_N12
\sdram_controller|writeBuffer[47][5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[47][5]~feeder_combout\ = \Add0~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~17_combout\,
	combout => \sdram_controller|writeBuffer[47][5]~feeder_combout\);

-- Location: FF_X35_Y28_N13
\sdram_controller|writeBuffer[47][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[47][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[47][5]~q\);

-- Location: FF_X36_Y28_N13
\sdram_controller|writeBuffer[15][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[15][5]~q\);

-- Location: LCCOMB_X36_Y28_N12
\sdram_controller|Mux26~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux26~7_combout\ = (\sdram_controller|stateCycleCount\(6) & (((\sdram_controller|stateCycleCount\(5))))) # (!\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|stateCycleCount\(5) & (\sdram_controller|writeBuffer[47][5]~q\)) # 
-- (!\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|writeBuffer[15][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[47][5]~q\,
	datab => \sdram_controller|stateCycleCount\(6),
	datac => \sdram_controller|writeBuffer[15][5]~q\,
	datad => \sdram_controller|stateCycleCount\(5),
	combout => \sdram_controller|Mux26~7_combout\);

-- Location: FF_X38_Y30_N7
\sdram_controller|writeBuffer[111][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[111][5]~q\);

-- Location: LCCOMB_X38_Y30_N6
\sdram_controller|Mux26~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux26~8_combout\ = (\sdram_controller|Mux26~7_combout\ & (((\sdram_controller|writeBuffer[111][5]~q\) # (!\sdram_controller|stateCycleCount\(6))))) # (!\sdram_controller|Mux26~7_combout\ & (\sdram_controller|writeBuffer[79][5]~q\ & 
-- ((\sdram_controller|stateCycleCount\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[79][5]~q\,
	datab => \sdram_controller|Mux26~7_combout\,
	datac => \sdram_controller|writeBuffer[111][5]~q\,
	datad => \sdram_controller|stateCycleCount\(6),
	combout => \sdram_controller|Mux26~8_combout\);

-- Location: LCCOMB_X42_Y30_N4
\sdram_controller|Mux26~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux26~9_combout\ = (\sdram_controller|Mux26~6_combout\ & (((\sdram_controller|Mux26~8_combout\) # (!\sdram_controller|stateCycleCount\(3))))) # (!\sdram_controller|Mux26~6_combout\ & (\sdram_controller|Mux26~1_combout\ & 
-- (\sdram_controller|stateCycleCount\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux26~1_combout\,
	datab => \sdram_controller|Mux26~6_combout\,
	datac => \sdram_controller|stateCycleCount\(3),
	datad => \sdram_controller|Mux26~8_combout\,
	combout => \sdram_controller|Mux26~9_combout\);

-- Location: LCCOMB_X35_Y27_N18
\sdram_controller|Mux26~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux26~41_combout\ = (\sdram_controller|Mux26~30_combout\ & ((\sdram_controller|Mux26~40_combout\) # ((!\sdram_controller|stateCycleCount\(2))))) # (!\sdram_controller|Mux26~30_combout\ & (((\sdram_controller|stateCycleCount\(2) & 
-- \sdram_controller|Mux26~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux26~40_combout\,
	datab => \sdram_controller|Mux26~30_combout\,
	datac => \sdram_controller|stateCycleCount\(2),
	datad => \sdram_controller|Mux26~9_combout\,
	combout => \sdram_controller|Mux26~41_combout\);

-- Location: LCCOMB_X35_Y27_N16
\sdram_controller|Mux26~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux26~42_combout\ = (\sdram_controller|stateCycleCount\(0) & \sdram_controller|Mux26~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sdram_controller|stateCycleCount\(0),
	datad => \sdram_controller|Mux26~41_combout\,
	combout => \sdram_controller|Mux26~42_combout\);

-- Location: LCCOMB_X38_Y28_N30
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = !\Add0~16\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~16\,
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X39_Y28_N20
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (\state.TRANSMIT~q\ & \Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.TRANSMIT~q\,
	datad => \Add0~18_combout\,
	combout => \Add0~20_combout\);

-- Location: LCCOMB_X40_Y30_N30
\sdram_controller|writeBuffer[19][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[19][6]~feeder_combout\ = \Add0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~20_combout\,
	combout => \sdram_controller|writeBuffer[19][6]~feeder_combout\);

-- Location: FF_X40_Y30_N31
\sdram_controller|writeBuffer[19][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[19][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[19][6]~q\);

-- Location: FF_X38_Y30_N11
\sdram_controller|writeBuffer[23][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[23][6]~q\);

-- Location: FF_X39_Y30_N29
\sdram_controller|writeBuffer[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[3][6]~q\);

-- Location: LCCOMB_X38_Y25_N24
\sdram_controller|writeBuffer[7][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[7][6]~feeder_combout\ = \Add0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~20_combout\,
	combout => \sdram_controller|writeBuffer[7][6]~feeder_combout\);

-- Location: FF_X38_Y25_N25
\sdram_controller|writeBuffer[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[7][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[7][6]~q\);

-- Location: LCCOMB_X39_Y30_N28
\sdram_controller|Mux25~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux25~14_combout\ = (\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|stateCycleCount\(4)) # ((\sdram_controller|writeBuffer[7][6]~q\)))) # (!\sdram_controller|stateCycleCount\(2) & (!\sdram_controller|stateCycleCount\(4) & 
-- (\sdram_controller|writeBuffer[3][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(2),
	datab => \sdram_controller|stateCycleCount\(4),
	datac => \sdram_controller|writeBuffer[3][6]~q\,
	datad => \sdram_controller|writeBuffer[7][6]~q\,
	combout => \sdram_controller|Mux25~14_combout\);

-- Location: LCCOMB_X38_Y30_N10
\sdram_controller|Mux25~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux25~15_combout\ = (\sdram_controller|stateCycleCount\(4) & ((\sdram_controller|Mux25~14_combout\ & ((\sdram_controller|writeBuffer[23][6]~q\))) # (!\sdram_controller|Mux25~14_combout\ & (\sdram_controller|writeBuffer[19][6]~q\)))) # 
-- (!\sdram_controller|stateCycleCount\(4) & (((\sdram_controller|Mux25~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[19][6]~q\,
	datab => \sdram_controller|stateCycleCount\(4),
	datac => \sdram_controller|writeBuffer[23][6]~q\,
	datad => \sdram_controller|Mux25~14_combout\,
	combout => \sdram_controller|Mux25~15_combout\);

-- Location: LCCOMB_X39_Y27_N26
\sdram_controller|writeBuffer[51][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[51][6]~feeder_combout\ = \Add0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~20_combout\,
	combout => \sdram_controller|writeBuffer[51][6]~feeder_combout\);

-- Location: FF_X39_Y27_N27
\sdram_controller|writeBuffer[51][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[51][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[51][6]~q\);

-- Location: FF_X35_Y27_N27
\sdram_controller|writeBuffer[35][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[35][6]~q\);

-- Location: LCCOMB_X35_Y27_N26
\sdram_controller|Mux25~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux25~12_combout\ = (\sdram_controller|stateCycleCount\(2) & (((\sdram_controller|stateCycleCount\(4))))) # (!\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|stateCycleCount\(4) & (\sdram_controller|writeBuffer[51][6]~q\)) # 
-- (!\sdram_controller|stateCycleCount\(4) & ((\sdram_controller|writeBuffer[35][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(2),
	datab => \sdram_controller|writeBuffer[51][6]~q\,
	datac => \sdram_controller|writeBuffer[35][6]~q\,
	datad => \sdram_controller|stateCycleCount\(4),
	combout => \sdram_controller|Mux25~12_combout\);

-- Location: LCCOMB_X36_Y27_N18
\sdram_controller|writeBuffer[39][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[39][6]~feeder_combout\ = \Add0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~20_combout\,
	combout => \sdram_controller|writeBuffer[39][6]~feeder_combout\);

-- Location: FF_X36_Y27_N19
\sdram_controller|writeBuffer[39][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[39][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[39][6]~q\);

-- Location: FF_X35_Y27_N5
\sdram_controller|writeBuffer[55][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[55][6]~q\);

-- Location: LCCOMB_X35_Y27_N4
\sdram_controller|Mux25~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux25~13_combout\ = (\sdram_controller|Mux25~12_combout\ & (((\sdram_controller|writeBuffer[55][6]~q\) # (!\sdram_controller|stateCycleCount\(2))))) # (!\sdram_controller|Mux25~12_combout\ & (\sdram_controller|writeBuffer[39][6]~q\ & 
-- ((\sdram_controller|stateCycleCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux25~12_combout\,
	datab => \sdram_controller|writeBuffer[39][6]~q\,
	datac => \sdram_controller|writeBuffer[55][6]~q\,
	datad => \sdram_controller|stateCycleCount\(2),
	combout => \sdram_controller|Mux25~13_combout\);

-- Location: LCCOMB_X36_Y26_N12
\sdram_controller|Mux25~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux25~16_combout\ = (\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|stateCycleCount\(6)) # ((\sdram_controller|Mux25~13_combout\)))) # (!\sdram_controller|stateCycleCount\(5) & (!\sdram_controller|stateCycleCount\(6) & 
-- (\sdram_controller|Mux25~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(5),
	datab => \sdram_controller|stateCycleCount\(6),
	datac => \sdram_controller|Mux25~15_combout\,
	datad => \sdram_controller|Mux25~13_combout\,
	combout => \sdram_controller|Mux25~16_combout\);

-- Location: FF_X34_Y28_N25
\sdram_controller|writeBuffer[67][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[67][6]~q\);

-- Location: LCCOMB_X34_Y28_N10
\sdram_controller|writeBuffer[71][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[71][6]~feeder_combout\ = \Add0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~20_combout\,
	combout => \sdram_controller|writeBuffer[71][6]~feeder_combout\);

-- Location: FF_X34_Y28_N11
\sdram_controller|writeBuffer[71][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[71][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[71][6]~q\);

-- Location: LCCOMB_X34_Y28_N24
\sdram_controller|Mux25~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux25~10_combout\ = (\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|stateCycleCount\(4)) # ((\sdram_controller|writeBuffer[71][6]~q\)))) # (!\sdram_controller|stateCycleCount\(2) & (!\sdram_controller|stateCycleCount\(4) & 
-- (\sdram_controller|writeBuffer[67][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(2),
	datab => \sdram_controller|stateCycleCount\(4),
	datac => \sdram_controller|writeBuffer[67][6]~q\,
	datad => \sdram_controller|writeBuffer[71][6]~q\,
	combout => \sdram_controller|Mux25~10_combout\);

-- Location: LCCOMB_X37_Y30_N24
\sdram_controller|writeBuffer[87][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[87][6]~feeder_combout\ = \Add0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~20_combout\,
	combout => \sdram_controller|writeBuffer[87][6]~feeder_combout\);

-- Location: FF_X37_Y30_N25
\sdram_controller|writeBuffer[87][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[87][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[87][6]~q\);

-- Location: LCCOMB_X41_Y30_N22
\sdram_controller|writeBuffer[83][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[83][6]~feeder_combout\ = \Add0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~20_combout\,
	combout => \sdram_controller|writeBuffer[83][6]~feeder_combout\);

-- Location: FF_X41_Y30_N23
\sdram_controller|writeBuffer[83][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[83][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[83][6]~q\);

-- Location: LCCOMB_X38_Y30_N16
\sdram_controller|Mux25~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux25~11_combout\ = (\sdram_controller|Mux25~10_combout\ & ((\sdram_controller|writeBuffer[87][6]~q\) # ((!\sdram_controller|stateCycleCount\(4))))) # (!\sdram_controller|Mux25~10_combout\ & (((\sdram_controller|stateCycleCount\(4) & 
-- \sdram_controller|writeBuffer[83][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux25~10_combout\,
	datab => \sdram_controller|writeBuffer[87][6]~q\,
	datac => \sdram_controller|stateCycleCount\(4),
	datad => \sdram_controller|writeBuffer[83][6]~q\,
	combout => \sdram_controller|Mux25~11_combout\);

-- Location: LCCOMB_X42_Y30_N10
\sdram_controller|writeBuffer[103][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[103][6]~feeder_combout\ = \Add0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~20_combout\,
	combout => \sdram_controller|writeBuffer[103][6]~feeder_combout\);

-- Location: FF_X42_Y30_N11
\sdram_controller|writeBuffer[103][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[103][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[103][6]~q\);

-- Location: FF_X38_Y27_N7
\sdram_controller|writeBuffer[119][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[119][6]~q\);

-- Location: LCCOMB_X38_Y27_N12
\sdram_controller|writeBuffer[115][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[115][6]~feeder_combout\ = \Add0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~20_combout\,
	combout => \sdram_controller|writeBuffer[115][6]~feeder_combout\);

-- Location: FF_X38_Y27_N13
\sdram_controller|writeBuffer[115][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[115][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[115][6]~q\);

-- Location: FF_X39_Y30_N23
\sdram_controller|writeBuffer[99][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[99][6]~q\);

-- Location: LCCOMB_X39_Y30_N22
\sdram_controller|Mux25~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux25~17_combout\ = (\sdram_controller|stateCycleCount\(4) & ((\sdram_controller|writeBuffer[115][6]~q\) # ((\sdram_controller|stateCycleCount\(2))))) # (!\sdram_controller|stateCycleCount\(4) & (((\sdram_controller|writeBuffer[99][6]~q\ 
-- & !\sdram_controller|stateCycleCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(4),
	datab => \sdram_controller|writeBuffer[115][6]~q\,
	datac => \sdram_controller|writeBuffer[99][6]~q\,
	datad => \sdram_controller|stateCycleCount\(2),
	combout => \sdram_controller|Mux25~17_combout\);

-- Location: LCCOMB_X38_Y27_N6
\sdram_controller|Mux25~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux25~18_combout\ = (\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|Mux25~17_combout\ & ((\sdram_controller|writeBuffer[119][6]~q\))) # (!\sdram_controller|Mux25~17_combout\ & (\sdram_controller|writeBuffer[103][6]~q\)))) # 
-- (!\sdram_controller|stateCycleCount\(2) & (((\sdram_controller|Mux25~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(2),
	datab => \sdram_controller|writeBuffer[103][6]~q\,
	datac => \sdram_controller|writeBuffer[119][6]~q\,
	datad => \sdram_controller|Mux25~17_combout\,
	combout => \sdram_controller|Mux25~18_combout\);

-- Location: LCCOMB_X36_Y26_N18
\sdram_controller|Mux25~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux25~19_combout\ = (\sdram_controller|Mux25~16_combout\ & (((\sdram_controller|Mux25~18_combout\)) # (!\sdram_controller|stateCycleCount\(6)))) # (!\sdram_controller|Mux25~16_combout\ & (\sdram_controller|stateCycleCount\(6) & 
-- (\sdram_controller|Mux25~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux25~16_combout\,
	datab => \sdram_controller|stateCycleCount\(6),
	datac => \sdram_controller|Mux25~11_combout\,
	datad => \sdram_controller|Mux25~18_combout\,
	combout => \sdram_controller|Mux25~19_combout\);

-- Location: LCCOMB_X41_Y26_N10
\sdram_controller|writeBuffer[113][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[113][6]~feeder_combout\ = \Add0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~20_combout\,
	combout => \sdram_controller|writeBuffer[113][6]~feeder_combout\);

-- Location: FF_X41_Y26_N11
\sdram_controller|writeBuffer[113][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[113][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[113][6]~q\);

-- Location: FF_X37_Y26_N7
\sdram_controller|writeBuffer[97][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[97][6]~q\);

-- Location: LCCOMB_X37_Y26_N6
\sdram_controller|Mux25~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux25~27_combout\ = (\sdram_controller|stateCycleCount\(4) & ((\sdram_controller|writeBuffer[113][6]~q\) # ((\sdram_controller|stateCycleCount\(2))))) # (!\sdram_controller|stateCycleCount\(4) & (((\sdram_controller|writeBuffer[97][6]~q\ 
-- & !\sdram_controller|stateCycleCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[113][6]~q\,
	datab => \sdram_controller|stateCycleCount\(4),
	datac => \sdram_controller|writeBuffer[97][6]~q\,
	datad => \sdram_controller|stateCycleCount\(2),
	combout => \sdram_controller|Mux25~27_combout\);

-- Location: FF_X37_Y27_N9
\sdram_controller|writeBuffer[117][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[117][6]~q\);

-- Location: LCCOMB_X37_Y27_N6
\sdram_controller|writeBuffer[101][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[101][6]~feeder_combout\ = \Add0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~20_combout\,
	combout => \sdram_controller|writeBuffer[101][6]~feeder_combout\);

-- Location: FF_X37_Y27_N7
\sdram_controller|writeBuffer[101][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[101][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[101][6]~q\);

-- Location: LCCOMB_X37_Y27_N8
\sdram_controller|Mux25~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux25~28_combout\ = (\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|Mux25~27_combout\ & (\sdram_controller|writeBuffer[117][6]~q\)) # (!\sdram_controller|Mux25~27_combout\ & ((\sdram_controller|writeBuffer[101][6]~q\))))) # 
-- (!\sdram_controller|stateCycleCount\(2) & (\sdram_controller|Mux25~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(2),
	datab => \sdram_controller|Mux25~27_combout\,
	datac => \sdram_controller|writeBuffer[117][6]~q\,
	datad => \sdram_controller|writeBuffer[101][6]~q\,
	combout => \sdram_controller|Mux25~28_combout\);

-- Location: FF_X37_Y26_N9
\sdram_controller|writeBuffer[65][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[65][6]~q\);

-- Location: LCCOMB_X37_Y25_N0
\sdram_controller|writeBuffer[69][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[69][6]~feeder_combout\ = \Add0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~20_combout\,
	combout => \sdram_controller|writeBuffer[69][6]~feeder_combout\);

-- Location: FF_X37_Y25_N1
\sdram_controller|writeBuffer[69][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[69][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[69][6]~q\);

-- Location: LCCOMB_X37_Y26_N8
\sdram_controller|Mux25~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux25~22_combout\ = (\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|stateCycleCount\(4)) # ((\sdram_controller|writeBuffer[69][6]~q\)))) # (!\sdram_controller|stateCycleCount\(2) & (!\sdram_controller|stateCycleCount\(4) & 
-- (\sdram_controller|writeBuffer[65][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(2),
	datab => \sdram_controller|stateCycleCount\(4),
	datac => \sdram_controller|writeBuffer[65][6]~q\,
	datad => \sdram_controller|writeBuffer[69][6]~q\,
	combout => \sdram_controller|Mux25~22_combout\);

-- Location: LCCOMB_X41_Y26_N0
\sdram_controller|writeBuffer[81][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[81][6]~feeder_combout\ = \Add0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~20_combout\,
	combout => \sdram_controller|writeBuffer[81][6]~feeder_combout\);

-- Location: FF_X41_Y26_N1
\sdram_controller|writeBuffer[81][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[81][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[81][6]~q\);

-- Location: FF_X39_Y25_N7
\sdram_controller|writeBuffer[85][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[85][6]~q\);

-- Location: LCCOMB_X39_Y25_N6
\sdram_controller|Mux25~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux25~23_combout\ = (\sdram_controller|Mux25~22_combout\ & (((\sdram_controller|writeBuffer[85][6]~q\) # (!\sdram_controller|stateCycleCount\(4))))) # (!\sdram_controller|Mux25~22_combout\ & (\sdram_controller|writeBuffer[81][6]~q\ & 
-- ((\sdram_controller|stateCycleCount\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux25~22_combout\,
	datab => \sdram_controller|writeBuffer[81][6]~q\,
	datac => \sdram_controller|writeBuffer[85][6]~q\,
	datad => \sdram_controller|stateCycleCount\(4),
	combout => \sdram_controller|Mux25~23_combout\);

-- Location: FF_X38_Y26_N11
\sdram_controller|writeBuffer[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[1][6]~q\);

-- Location: LCCOMB_X38_Y26_N24
\sdram_controller|writeBuffer[5][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[5][6]~feeder_combout\ = \Add0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~20_combout\,
	combout => \sdram_controller|writeBuffer[5][6]~feeder_combout\);

-- Location: FF_X38_Y26_N25
\sdram_controller|writeBuffer[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[5][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[5][6]~q\);

-- Location: LCCOMB_X38_Y26_N10
\sdram_controller|Mux25~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux25~24_combout\ = (\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|stateCycleCount\(4)) # ((\sdram_controller|writeBuffer[5][6]~q\)))) # (!\sdram_controller|stateCycleCount\(2) & (!\sdram_controller|stateCycleCount\(4) & 
-- (\sdram_controller|writeBuffer[1][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(2),
	datab => \sdram_controller|stateCycleCount\(4),
	datac => \sdram_controller|writeBuffer[1][6]~q\,
	datad => \sdram_controller|writeBuffer[5][6]~q\,
	combout => \sdram_controller|Mux25~24_combout\);

-- Location: FF_X41_Y29_N25
\sdram_controller|writeBuffer[21][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[21][6]~q\);

-- Location: LCCOMB_X40_Y30_N8
\sdram_controller|writeBuffer[17][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[17][6]~feeder_combout\ = \Add0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~20_combout\,
	combout => \sdram_controller|writeBuffer[17][6]~feeder_combout\);

-- Location: FF_X40_Y30_N9
\sdram_controller|writeBuffer[17][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[17][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[17][6]~q\);

-- Location: LCCOMB_X41_Y29_N24
\sdram_controller|Mux25~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux25~25_combout\ = (\sdram_controller|Mux25~24_combout\ & (((\sdram_controller|writeBuffer[21][6]~q\)) # (!\sdram_controller|stateCycleCount\(4)))) # (!\sdram_controller|Mux25~24_combout\ & (\sdram_controller|stateCycleCount\(4) & 
-- ((\sdram_controller|writeBuffer[17][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux25~24_combout\,
	datab => \sdram_controller|stateCycleCount\(4),
	datac => \sdram_controller|writeBuffer[21][6]~q\,
	datad => \sdram_controller|writeBuffer[17][6]~q\,
	combout => \sdram_controller|Mux25~25_combout\);

-- Location: LCCOMB_X36_Y26_N4
\sdram_controller|Mux25~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux25~26_combout\ = (\sdram_controller|stateCycleCount\(5) & (\sdram_controller|stateCycleCount\(6))) # (!\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|stateCycleCount\(6) & (\sdram_controller|Mux25~23_combout\)) # 
-- (!\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|Mux25~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(5),
	datab => \sdram_controller|stateCycleCount\(6),
	datac => \sdram_controller|Mux25~23_combout\,
	datad => \sdram_controller|Mux25~25_combout\,
	combout => \sdram_controller|Mux25~26_combout\);

-- Location: LCCOMB_X39_Y26_N22
\sdram_controller|writeBuffer[37][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[37][6]~feeder_combout\ = \Add0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~20_combout\,
	combout => \sdram_controller|writeBuffer[37][6]~feeder_combout\);

-- Location: FF_X39_Y26_N23
\sdram_controller|writeBuffer[37][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[37][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[37][6]~q\);

-- Location: FF_X40_Y27_N27
\sdram_controller|writeBuffer[53][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[53][6]~q\);

-- Location: FF_X40_Y26_N17
\sdram_controller|writeBuffer[33][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[33][6]~q\);

-- Location: LCCOMB_X40_Y26_N18
\sdram_controller|writeBuffer[49][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[49][6]~feeder_combout\ = \Add0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~20_combout\,
	combout => \sdram_controller|writeBuffer[49][6]~feeder_combout\);

-- Location: FF_X40_Y26_N19
\sdram_controller|writeBuffer[49][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[49][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[49][6]~q\);

-- Location: LCCOMB_X40_Y26_N16
\sdram_controller|Mux25~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux25~20_combout\ = (\sdram_controller|stateCycleCount\(2) & (\sdram_controller|stateCycleCount\(4))) # (!\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|stateCycleCount\(4) & ((\sdram_controller|writeBuffer[49][6]~q\))) # 
-- (!\sdram_controller|stateCycleCount\(4) & (\sdram_controller|writeBuffer[33][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(2),
	datab => \sdram_controller|stateCycleCount\(4),
	datac => \sdram_controller|writeBuffer[33][6]~q\,
	datad => \sdram_controller|writeBuffer[49][6]~q\,
	combout => \sdram_controller|Mux25~20_combout\);

-- Location: LCCOMB_X40_Y27_N26
\sdram_controller|Mux25~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux25~21_combout\ = (\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|Mux25~20_combout\ & ((\sdram_controller|writeBuffer[53][6]~q\))) # (!\sdram_controller|Mux25~20_combout\ & (\sdram_controller|writeBuffer[37][6]~q\)))) # 
-- (!\sdram_controller|stateCycleCount\(2) & (((\sdram_controller|Mux25~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[37][6]~q\,
	datab => \sdram_controller|stateCycleCount\(2),
	datac => \sdram_controller|writeBuffer[53][6]~q\,
	datad => \sdram_controller|Mux25~20_combout\,
	combout => \sdram_controller|Mux25~21_combout\);

-- Location: LCCOMB_X36_Y26_N26
\sdram_controller|Mux25~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux25~29_combout\ = (\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|Mux25~26_combout\ & (\sdram_controller|Mux25~28_combout\)) # (!\sdram_controller|Mux25~26_combout\ & ((\sdram_controller|Mux25~21_combout\))))) # 
-- (!\sdram_controller|stateCycleCount\(5) & (((\sdram_controller|Mux25~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(5),
	datab => \sdram_controller|Mux25~28_combout\,
	datac => \sdram_controller|Mux25~26_combout\,
	datad => \sdram_controller|Mux25~21_combout\,
	combout => \sdram_controller|Mux25~29_combout\);

-- Location: LCCOMB_X36_Y26_N20
\sdram_controller|Mux25~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux25~30_combout\ = (\sdram_controller|stateCycleCount\(3) & (((\sdram_controller|stateCycleCount\(1))))) # (!\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|stateCycleCount\(1) & (\sdram_controller|Mux25~19_combout\)) # 
-- (!\sdram_controller|stateCycleCount\(1) & ((\sdram_controller|Mux25~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(3),
	datab => \sdram_controller|Mux25~19_combout\,
	datac => \sdram_controller|Mux25~29_combout\,
	datad => \sdram_controller|stateCycleCount\(1),
	combout => \sdram_controller|Mux25~30_combout\);

-- Location: LCCOMB_X42_Y28_N10
\sdram_controller|writeBuffer[25][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[25][6]~feeder_combout\ = \Add0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~20_combout\,
	combout => \sdram_controller|writeBuffer[25][6]~feeder_combout\);

-- Location: FF_X42_Y28_N11
\sdram_controller|writeBuffer[25][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[25][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[25][6]~q\);

-- Location: FF_X40_Y25_N5
\sdram_controller|writeBuffer[29][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[29][6]~q\);

-- Location: FF_X39_Y29_N3
\sdram_controller|writeBuffer[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[9][6]~q\);

-- Location: LCCOMB_X36_Y29_N28
\sdram_controller|writeBuffer[13][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[13][6]~feeder_combout\ = \Add0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~20_combout\,
	combout => \sdram_controller|writeBuffer[13][6]~feeder_combout\);

-- Location: FF_X36_Y29_N29
\sdram_controller|writeBuffer[13][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[13][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[13][6]~q\);

-- Location: LCCOMB_X39_Y29_N2
\sdram_controller|Mux25~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux25~4_combout\ = (\sdram_controller|stateCycleCount\(4) & (\sdram_controller|stateCycleCount\(2))) # (!\sdram_controller|stateCycleCount\(4) & ((\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|writeBuffer[13][6]~q\))) # 
-- (!\sdram_controller|stateCycleCount\(2) & (\sdram_controller|writeBuffer[9][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(4),
	datab => \sdram_controller|stateCycleCount\(2),
	datac => \sdram_controller|writeBuffer[9][6]~q\,
	datad => \sdram_controller|writeBuffer[13][6]~q\,
	combout => \sdram_controller|Mux25~4_combout\);

-- Location: LCCOMB_X40_Y25_N4
\sdram_controller|Mux25~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux25~5_combout\ = (\sdram_controller|stateCycleCount\(4) & ((\sdram_controller|Mux25~4_combout\ & ((\sdram_controller|writeBuffer[29][6]~q\))) # (!\sdram_controller|Mux25~4_combout\ & (\sdram_controller|writeBuffer[25][6]~q\)))) # 
-- (!\sdram_controller|stateCycleCount\(4) & (((\sdram_controller|Mux25~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(4),
	datab => \sdram_controller|writeBuffer[25][6]~q\,
	datac => \sdram_controller|writeBuffer[29][6]~q\,
	datad => \sdram_controller|Mux25~4_combout\,
	combout => \sdram_controller|Mux25~5_combout\);

-- Location: LCCOMB_X42_Y30_N8
\sdram_controller|writeBuffer[89][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[89][6]~feeder_combout\ = \Add0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~20_combout\,
	combout => \sdram_controller|writeBuffer[89][6]~feeder_combout\);

-- Location: FF_X42_Y30_N9
\sdram_controller|writeBuffer[89][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[89][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[89][6]~q\);

-- Location: FF_X39_Y29_N29
\sdram_controller|writeBuffer[73][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[73][6]~q\);

-- Location: LCCOMB_X40_Y29_N6
\sdram_controller|writeBuffer[77][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[77][6]~feeder_combout\ = \Add0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~20_combout\,
	combout => \sdram_controller|writeBuffer[77][6]~feeder_combout\);

-- Location: FF_X40_Y29_N7
\sdram_controller|writeBuffer[77][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[77][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[77][6]~q\);

-- Location: LCCOMB_X39_Y29_N28
\sdram_controller|Mux25~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux25~2_combout\ = (\sdram_controller|stateCycleCount\(4) & (\sdram_controller|stateCycleCount\(2))) # (!\sdram_controller|stateCycleCount\(4) & ((\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|writeBuffer[77][6]~q\))) # 
-- (!\sdram_controller|stateCycleCount\(2) & (\sdram_controller|writeBuffer[73][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(4),
	datab => \sdram_controller|stateCycleCount\(2),
	datac => \sdram_controller|writeBuffer[73][6]~q\,
	datad => \sdram_controller|writeBuffer[77][6]~q\,
	combout => \sdram_controller|Mux25~2_combout\);

-- Location: FF_X38_Y29_N17
\sdram_controller|writeBuffer[93][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[93][6]~q\);

-- Location: LCCOMB_X38_Y29_N16
\sdram_controller|Mux25~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux25~3_combout\ = (\sdram_controller|Mux25~2_combout\ & (((\sdram_controller|writeBuffer[93][6]~q\) # (!\sdram_controller|stateCycleCount\(4))))) # (!\sdram_controller|Mux25~2_combout\ & (\sdram_controller|writeBuffer[89][6]~q\ & 
-- ((\sdram_controller|stateCycleCount\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[89][6]~q\,
	datab => \sdram_controller|Mux25~2_combout\,
	datac => \sdram_controller|writeBuffer[93][6]~q\,
	datad => \sdram_controller|stateCycleCount\(4),
	combout => \sdram_controller|Mux25~3_combout\);

-- Location: LCCOMB_X38_Y29_N30
\sdram_controller|Mux25~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux25~6_combout\ = (\sdram_controller|stateCycleCount\(5) & (\sdram_controller|stateCycleCount\(6))) # (!\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|Mux25~3_combout\))) # 
-- (!\sdram_controller|stateCycleCount\(6) & (\sdram_controller|Mux25~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(5),
	datab => \sdram_controller|stateCycleCount\(6),
	datac => \sdram_controller|Mux25~5_combout\,
	datad => \sdram_controller|Mux25~3_combout\,
	combout => \sdram_controller|Mux25~6_combout\);

-- Location: LCCOMB_X37_Y29_N14
\sdram_controller|writeBuffer[109][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[109][6]~feeder_combout\ = \Add0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~20_combout\,
	combout => \sdram_controller|writeBuffer[109][6]~feeder_combout\);

-- Location: FF_X37_Y29_N15
\sdram_controller|writeBuffer[109][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[109][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[109][6]~q\);

-- Location: FF_X38_Y29_N5
\sdram_controller|writeBuffer[125][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[125][6]~q\);

-- Location: FF_X43_Y29_N25
\sdram_controller|writeBuffer[105][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[105][6]~q\);

-- Location: LCCOMB_X42_Y29_N24
\sdram_controller|writeBuffer[121][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[121][6]~feeder_combout\ = \Add0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~20_combout\,
	combout => \sdram_controller|writeBuffer[121][6]~feeder_combout\);

-- Location: FF_X42_Y29_N25
\sdram_controller|writeBuffer[121][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[121][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[121][6]~q\);

-- Location: LCCOMB_X43_Y29_N24
\sdram_controller|Mux25~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux25~7_combout\ = (\sdram_controller|stateCycleCount\(4) & ((\sdram_controller|stateCycleCount\(2)) # ((\sdram_controller|writeBuffer[121][6]~q\)))) # (!\sdram_controller|stateCycleCount\(4) & (!\sdram_controller|stateCycleCount\(2) & 
-- (\sdram_controller|writeBuffer[105][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(4),
	datab => \sdram_controller|stateCycleCount\(2),
	datac => \sdram_controller|writeBuffer[105][6]~q\,
	datad => \sdram_controller|writeBuffer[121][6]~q\,
	combout => \sdram_controller|Mux25~7_combout\);

-- Location: LCCOMB_X38_Y29_N4
\sdram_controller|Mux25~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux25~8_combout\ = (\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|Mux25~7_combout\ & ((\sdram_controller|writeBuffer[125][6]~q\))) # (!\sdram_controller|Mux25~7_combout\ & (\sdram_controller|writeBuffer[109][6]~q\)))) # 
-- (!\sdram_controller|stateCycleCount\(2) & (((\sdram_controller|Mux25~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[109][6]~q\,
	datab => \sdram_controller|stateCycleCount\(2),
	datac => \sdram_controller|writeBuffer[125][6]~q\,
	datad => \sdram_controller|Mux25~7_combout\,
	combout => \sdram_controller|Mux25~8_combout\);

-- Location: FF_X43_Y29_N11
\sdram_controller|writeBuffer[41][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[41][6]~q\);

-- Location: LCCOMB_X42_Y28_N4
\sdram_controller|writeBuffer[57][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[57][6]~feeder_combout\ = \Add0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~20_combout\,
	combout => \sdram_controller|writeBuffer[57][6]~feeder_combout\);

-- Location: FF_X42_Y28_N5
\sdram_controller|writeBuffer[57][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[57][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[57][6]~q\);

-- Location: LCCOMB_X43_Y29_N10
\sdram_controller|Mux25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux25~0_combout\ = (\sdram_controller|stateCycleCount\(4) & ((\sdram_controller|stateCycleCount\(2)) # ((\sdram_controller|writeBuffer[57][6]~q\)))) # (!\sdram_controller|stateCycleCount\(4) & (!\sdram_controller|stateCycleCount\(2) & 
-- (\sdram_controller|writeBuffer[41][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(4),
	datab => \sdram_controller|stateCycleCount\(2),
	datac => \sdram_controller|writeBuffer[41][6]~q\,
	datad => \sdram_controller|writeBuffer[57][6]~q\,
	combout => \sdram_controller|Mux25~0_combout\);

-- Location: FF_X40_Y29_N13
\sdram_controller|writeBuffer[61][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[61][6]~q\);

-- Location: LCCOMB_X37_Y29_N16
\sdram_controller|writeBuffer[45][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[45][6]~feeder_combout\ = \Add0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~20_combout\,
	combout => \sdram_controller|writeBuffer[45][6]~feeder_combout\);

-- Location: FF_X37_Y29_N17
\sdram_controller|writeBuffer[45][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[45][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[45][6]~q\);

-- Location: LCCOMB_X40_Y29_N12
\sdram_controller|Mux25~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux25~1_combout\ = (\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|Mux25~0_combout\ & (\sdram_controller|writeBuffer[61][6]~q\)) # (!\sdram_controller|Mux25~0_combout\ & ((\sdram_controller|writeBuffer[45][6]~q\))))) # 
-- (!\sdram_controller|stateCycleCount\(2) & (\sdram_controller|Mux25~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(2),
	datab => \sdram_controller|Mux25~0_combout\,
	datac => \sdram_controller|writeBuffer[61][6]~q\,
	datad => \sdram_controller|writeBuffer[45][6]~q\,
	combout => \sdram_controller|Mux25~1_combout\);

-- Location: LCCOMB_X38_Y29_N14
\sdram_controller|Mux25~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux25~9_combout\ = (\sdram_controller|Mux25~6_combout\ & ((\sdram_controller|Mux25~8_combout\) # ((!\sdram_controller|stateCycleCount\(5))))) # (!\sdram_controller|Mux25~6_combout\ & (((\sdram_controller|Mux25~1_combout\ & 
-- \sdram_controller|stateCycleCount\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux25~6_combout\,
	datab => \sdram_controller|Mux25~8_combout\,
	datac => \sdram_controller|Mux25~1_combout\,
	datad => \sdram_controller|stateCycleCount\(5),
	combout => \sdram_controller|Mux25~9_combout\);

-- Location: LCCOMB_X35_Y28_N24
\sdram_controller|writeBuffer[47][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[47][6]~feeder_combout\ = \Add0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~20_combout\,
	combout => \sdram_controller|writeBuffer[47][6]~feeder_combout\);

-- Location: FF_X35_Y28_N25
\sdram_controller|writeBuffer[47][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[47][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[47][6]~q\);

-- Location: FF_X35_Y28_N23
\sdram_controller|writeBuffer[63][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[63][6]~q\);

-- Location: LCCOMB_X36_Y28_N20
\sdram_controller|writeBuffer[31][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[31][6]~feeder_combout\ = \Add0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~20_combout\,
	combout => \sdram_controller|writeBuffer[31][6]~feeder_combout\);

-- Location: FF_X36_Y28_N21
\sdram_controller|writeBuffer[31][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[31][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[31][6]~q\);

-- Location: FF_X36_Y28_N19
\sdram_controller|writeBuffer[15][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[15][6]~q\);

-- Location: LCCOMB_X36_Y28_N18
\sdram_controller|Mux25~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux25~31_combout\ = (\sdram_controller|stateCycleCount\(4) & ((\sdram_controller|writeBuffer[31][6]~q\) # ((\sdram_controller|stateCycleCount\(5))))) # (!\sdram_controller|stateCycleCount\(4) & (((\sdram_controller|writeBuffer[15][6]~q\ 
-- & !\sdram_controller|stateCycleCount\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(4),
	datab => \sdram_controller|writeBuffer[31][6]~q\,
	datac => \sdram_controller|writeBuffer[15][6]~q\,
	datad => \sdram_controller|stateCycleCount\(5),
	combout => \sdram_controller|Mux25~31_combout\);

-- Location: LCCOMB_X35_Y28_N22
\sdram_controller|Mux25~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux25~32_combout\ = (\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|Mux25~31_combout\ & ((\sdram_controller|writeBuffer[63][6]~q\))) # (!\sdram_controller|Mux25~31_combout\ & (\sdram_controller|writeBuffer[47][6]~q\)))) # 
-- (!\sdram_controller|stateCycleCount\(5) & (((\sdram_controller|Mux25~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(5),
	datab => \sdram_controller|writeBuffer[47][6]~q\,
	datac => \sdram_controller|writeBuffer[63][6]~q\,
	datad => \sdram_controller|Mux25~31_combout\,
	combout => \sdram_controller|Mux25~32_combout\);

-- Location: LCCOMB_X41_Y28_N6
\sdram_controller|writeBuffer[107][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[107][6]~feeder_combout\ = \Add0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~20_combout\,
	combout => \sdram_controller|writeBuffer[107][6]~feeder_combout\);

-- Location: FF_X41_Y28_N7
\sdram_controller|writeBuffer[107][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[107][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[107][6]~q\);

-- Location: FF_X41_Y28_N5
\sdram_controller|writeBuffer[75][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[75][6]~q\);

-- Location: LCCOMB_X41_Y28_N4
\sdram_controller|Mux25~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux25~33_combout\ = (\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|writeBuffer[107][6]~q\) # ((\sdram_controller|stateCycleCount\(4))))) # (!\sdram_controller|stateCycleCount\(5) & (((\sdram_controller|writeBuffer[75][6]~q\ 
-- & !\sdram_controller|stateCycleCount\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[107][6]~q\,
	datab => \sdram_controller|stateCycleCount\(5),
	datac => \sdram_controller|writeBuffer[75][6]~q\,
	datad => \sdram_controller|stateCycleCount\(4),
	combout => \sdram_controller|Mux25~33_combout\);

-- Location: FF_X43_Y27_N13
\sdram_controller|writeBuffer[123][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[123][6]~q\);

-- Location: LCCOMB_X41_Y30_N28
\sdram_controller|writeBuffer[91][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[91][6]~feeder_combout\ = \Add0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~20_combout\,
	combout => \sdram_controller|writeBuffer[91][6]~feeder_combout\);

-- Location: FF_X41_Y30_N29
\sdram_controller|writeBuffer[91][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[91][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[91][6]~q\);

-- Location: LCCOMB_X43_Y27_N12
\sdram_controller|Mux25~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux25~34_combout\ = (\sdram_controller|stateCycleCount\(4) & ((\sdram_controller|Mux25~33_combout\ & (\sdram_controller|writeBuffer[123][6]~q\)) # (!\sdram_controller|Mux25~33_combout\ & ((\sdram_controller|writeBuffer[91][6]~q\))))) # 
-- (!\sdram_controller|stateCycleCount\(4) & (\sdram_controller|Mux25~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(4),
	datab => \sdram_controller|Mux25~33_combout\,
	datac => \sdram_controller|writeBuffer[123][6]~q\,
	datad => \sdram_controller|writeBuffer[91][6]~q\,
	combout => \sdram_controller|Mux25~34_combout\);

-- Location: LCCOMB_X40_Y28_N26
\sdram_controller|writeBuffer[43][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[43][6]~feeder_combout\ = \Add0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~20_combout\,
	combout => \sdram_controller|writeBuffer[43][6]~feeder_combout\);

-- Location: FF_X40_Y28_N27
\sdram_controller|writeBuffer[43][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[43][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[43][6]~q\);

-- Location: FF_X40_Y28_N13
\sdram_controller|writeBuffer[11][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[11][6]~q\);

-- Location: LCCOMB_X40_Y28_N12
\sdram_controller|Mux25~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux25~35_combout\ = (\sdram_controller|stateCycleCount\(4) & (((\sdram_controller|stateCycleCount\(5))))) # (!\sdram_controller|stateCycleCount\(4) & ((\sdram_controller|stateCycleCount\(5) & (\sdram_controller|writeBuffer[43][6]~q\)) # 
-- (!\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|writeBuffer[11][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|writeBuffer[43][6]~q\,
	datab => \sdram_controller|stateCycleCount\(4),
	datac => \sdram_controller|writeBuffer[11][6]~q\,
	datad => \sdram_controller|stateCycleCount\(5),
	combout => \sdram_controller|Mux25~35_combout\);

-- Location: FF_X43_Y28_N27
\sdram_controller|writeBuffer[59][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[59][6]~q\);

-- Location: LCCOMB_X43_Y28_N20
\sdram_controller|writeBuffer[27][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[27][6]~feeder_combout\ = \Add0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~20_combout\,
	combout => \sdram_controller|writeBuffer[27][6]~feeder_combout\);

-- Location: FF_X43_Y28_N21
\sdram_controller|writeBuffer[27][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[27][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[27][6]~q\);

-- Location: LCCOMB_X43_Y28_N26
\sdram_controller|Mux25~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux25~36_combout\ = (\sdram_controller|Mux25~35_combout\ & (((\sdram_controller|writeBuffer[59][6]~q\)) # (!\sdram_controller|stateCycleCount\(4)))) # (!\sdram_controller|Mux25~35_combout\ & (\sdram_controller|stateCycleCount\(4) & 
-- ((\sdram_controller|writeBuffer[27][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux25~35_combout\,
	datab => \sdram_controller|stateCycleCount\(4),
	datac => \sdram_controller|writeBuffer[59][6]~q\,
	datad => \sdram_controller|writeBuffer[27][6]~q\,
	combout => \sdram_controller|Mux25~36_combout\);

-- Location: LCCOMB_X43_Y27_N30
\sdram_controller|Mux25~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux25~37_combout\ = (\sdram_controller|stateCycleCount\(2) & (((\sdram_controller|stateCycleCount\(6))))) # (!\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|stateCycleCount\(6) & (\sdram_controller|Mux25~34_combout\)) # 
-- (!\sdram_controller|stateCycleCount\(6) & ((\sdram_controller|Mux25~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Mux25~34_combout\,
	datab => \sdram_controller|stateCycleCount\(2),
	datac => \sdram_controller|Mux25~36_combout\,
	datad => \sdram_controller|stateCycleCount\(6),
	combout => \sdram_controller|Mux25~37_combout\);

-- Location: FF_X37_Y28_N15
\sdram_controller|writeBuffer[79][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[79][6]~q\);

-- Location: LCCOMB_X38_Y30_N12
\sdram_controller|writeBuffer[111][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|writeBuffer[111][6]~feeder_combout\ = \Add0~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~20_combout\,
	combout => \sdram_controller|writeBuffer[111][6]~feeder_combout\);

-- Location: FF_X38_Y30_N13
\sdram_controller|writeBuffer[111][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \sdram_controller|writeBuffer[111][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[111][6]~q\);

-- Location: LCCOMB_X37_Y28_N14
\sdram_controller|Mux25~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux25~38_combout\ = (\sdram_controller|stateCycleCount\(4) & (\sdram_controller|stateCycleCount\(5))) # (!\sdram_controller|stateCycleCount\(4) & ((\sdram_controller|stateCycleCount\(5) & ((\sdram_controller|writeBuffer[111][6]~q\))) # 
-- (!\sdram_controller|stateCycleCount\(5) & (\sdram_controller|writeBuffer[79][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(4),
	datab => \sdram_controller|stateCycleCount\(5),
	datac => \sdram_controller|writeBuffer[79][6]~q\,
	datad => \sdram_controller|writeBuffer[111][6]~q\,
	combout => \sdram_controller|Mux25~38_combout\);

-- Location: FF_X37_Y28_N21
\sdram_controller|writeBuffer[95][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	asdata => \Add0~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|Decoder3~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[95][6]~q\);

-- Location: FF_X39_Y28_N21
\sdram_controller|writeBuffer[127][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysClk~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \sdram_controller|Decoder3~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|writeBuffer[127][6]~q\);

-- Location: LCCOMB_X37_Y28_N20
\sdram_controller|Mux25~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux25~39_combout\ = (\sdram_controller|stateCycleCount\(4) & ((\sdram_controller|Mux25~38_combout\ & ((\sdram_controller|writeBuffer[127][6]~q\))) # (!\sdram_controller|Mux25~38_combout\ & (\sdram_controller|writeBuffer[95][6]~q\)))) # 
-- (!\sdram_controller|stateCycleCount\(4) & (\sdram_controller|Mux25~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(4),
	datab => \sdram_controller|Mux25~38_combout\,
	datac => \sdram_controller|writeBuffer[95][6]~q\,
	datad => \sdram_controller|writeBuffer[127][6]~q\,
	combout => \sdram_controller|Mux25~39_combout\);

-- Location: LCCOMB_X40_Y26_N26
\sdram_controller|Mux25~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux25~40_combout\ = (\sdram_controller|stateCycleCount\(2) & ((\sdram_controller|Mux25~37_combout\ & ((\sdram_controller|Mux25~39_combout\))) # (!\sdram_controller|Mux25~37_combout\ & (\sdram_controller|Mux25~32_combout\)))) # 
-- (!\sdram_controller|stateCycleCount\(2) & (((\sdram_controller|Mux25~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(2),
	datab => \sdram_controller|Mux25~32_combout\,
	datac => \sdram_controller|Mux25~37_combout\,
	datad => \sdram_controller|Mux25~39_combout\,
	combout => \sdram_controller|Mux25~40_combout\);

-- Location: LCCOMB_X37_Y26_N12
\sdram_controller|Mux25~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux25~41_combout\ = (\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|Mux25~30_combout\ & ((\sdram_controller|Mux25~40_combout\))) # (!\sdram_controller|Mux25~30_combout\ & (\sdram_controller|Mux25~9_combout\)))) # 
-- (!\sdram_controller|stateCycleCount\(3) & (\sdram_controller|Mux25~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(3),
	datab => \sdram_controller|Mux25~30_combout\,
	datac => \sdram_controller|Mux25~9_combout\,
	datad => \sdram_controller|Mux25~40_combout\,
	combout => \sdram_controller|Mux25~41_combout\);

-- Location: LCCOMB_X35_Y26_N30
\sdram_controller|Mux25~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Mux25~42_combout\ = (\sdram_controller|Mux25~41_combout\ & \sdram_controller|stateCycleCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|Mux25~41_combout\,
	datac => \sdram_controller|stateCycleCount\(0),
	combout => \sdram_controller|Mux25~42_combout\);

-- Location: LCCOMB_X36_Y26_N8
\sdram_controller|process_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|process_1~4_combout\ = (!\sdram_controller|stateCycleCount\(3) & !\sdram_controller|stateCycleCount\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sdram_controller|stateCycleCount\(3),
	datad => \sdram_controller|stateCycleCount\(2),
	combout => \sdram_controller|process_1~4_combout\);

-- Location: LCCOMB_X40_Y24_N20
\sdram_controller|Equal11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal11~0_combout\ = (!\sdram_controller|stateCycleCount\(1) & (\sdram_controller|Equal1~3_combout\ & (\sdram_controller|process_1~4_combout\ & !\sdram_controller|stateCycleCount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datab => \sdram_controller|Equal1~3_combout\,
	datac => \sdram_controller|process_1~4_combout\,
	datad => \sdram_controller|stateCycleCount\(0),
	combout => \sdram_controller|Equal11~0_combout\);

-- Location: LCCOMB_X39_Y24_N20
\sdram_controller|Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector10~0_combout\ = (\sdram_controller|Equal11~0_combout\ & ((\sdram_controller|controllerState.SDRAM_READ~q\) # (\sdram_controller|controllerState.SDRAM_WRITE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|controllerState.SDRAM_READ~q\,
	datac => \sdram_controller|Equal11~0_combout\,
	datad => \sdram_controller|controllerState.SDRAM_WRITE~q\,
	combout => \sdram_controller|Selector10~0_combout\);

-- Location: LCCOMB_X40_Y24_N16
\sdram_controller|LessThan10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|LessThan10~0_combout\ = (((\sdram_controller|stateCycleCount\(1) & \sdram_controller|stateCycleCount\(0))) # (!\sdram_controller|process_1~4_combout\)) # (!\sdram_controller|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datab => \sdram_controller|Equal1~3_combout\,
	datac => \sdram_controller|process_1~4_combout\,
	datad => \sdram_controller|stateCycleCount\(0),
	combout => \sdram_controller|LessThan10~0_combout\);

-- Location: LCCOMB_X35_Y26_N12
\sdram_controller|process_1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|process_1~7_combout\ = (\sdram_controller|stateCycleCount\(1) & (!\sdram_controller|stateCycleCount\(3) & (\sdram_controller|stateCycleCount\(0) & !\sdram_controller|stateCycleCount\(2)))) # (!\sdram_controller|stateCycleCount\(1) & 
-- (\sdram_controller|stateCycleCount\(3) & (!\sdram_controller|stateCycleCount\(0) & \sdram_controller|stateCycleCount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datab => \sdram_controller|stateCycleCount\(3),
	datac => \sdram_controller|stateCycleCount\(0),
	datad => \sdram_controller|stateCycleCount\(2),
	combout => \sdram_controller|process_1~7_combout\);

-- Location: LCCOMB_X42_Y24_N10
\sdram_controller|process_1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|process_1~9_combout\ = (\sdram_controller|stateCycleCount\(4) & (\sdram_controller|stateCycleCount\(3) & (\sdram_controller|stateCycleCount\(2) $ (!\sdram_controller|stateCycleCount\(1))))) # (!\sdram_controller|stateCycleCount\(4) & 
-- (!\sdram_controller|stateCycleCount\(3) & ((\sdram_controller|stateCycleCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(4),
	datab => \sdram_controller|stateCycleCount\(3),
	datac => \sdram_controller|stateCycleCount\(2),
	datad => \sdram_controller|stateCycleCount\(1),
	combout => \sdram_controller|process_1~9_combout\);

-- Location: LCCOMB_X42_Y24_N4
\sdram_controller|process_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|process_1~10_combout\ = (\sdram_controller|stateCycleCount\(2) & (!\sdram_controller|stateCycleCount\(6) & (!\sdram_controller|stateCycleCount\(5)))) # (!\sdram_controller|stateCycleCount\(2) & (!\sdram_controller|stateCycleCount\(0) & 
-- (\sdram_controller|stateCycleCount\(6) $ (\sdram_controller|stateCycleCount\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(6),
	datab => \sdram_controller|stateCycleCount\(5),
	datac => \sdram_controller|stateCycleCount\(2),
	datad => \sdram_controller|stateCycleCount\(0),
	combout => \sdram_controller|process_1~10_combout\);

-- Location: LCCOMB_X40_Y24_N14
\sdram_controller|process_1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|process_1~11_combout\ = (\sdram_controller|stateCycleCount\(0) & (\sdram_controller|stateCycleCount\(5) & (!\sdram_controller|stateCycleCount\(6)))) # (!\sdram_controller|stateCycleCount\(0) & (!\sdram_controller|stateCycleCount\(5) & 
-- (\sdram_controller|stateCycleCount\(6) $ (\sdram_controller|stateCycleCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(0),
	datab => \sdram_controller|stateCycleCount\(5),
	datac => \sdram_controller|stateCycleCount\(6),
	datad => \sdram_controller|stateCycleCount\(2),
	combout => \sdram_controller|process_1~11_combout\);

-- Location: LCCOMB_X42_Y24_N24
\sdram_controller|process_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|process_1~8_combout\ = (\sdram_controller|stateCycleCount\(2) & (\sdram_controller|stateCycleCount\(4) & (\sdram_controller|stateCycleCount\(3) $ (!\sdram_controller|stateCycleCount\(1))))) # (!\sdram_controller|stateCycleCount\(2) & 
-- (!\sdram_controller|stateCycleCount\(3) & (\sdram_controller|stateCycleCount\(4) $ (\sdram_controller|stateCycleCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(4),
	datab => \sdram_controller|stateCycleCount\(3),
	datac => \sdram_controller|stateCycleCount\(2),
	datad => \sdram_controller|stateCycleCount\(1),
	combout => \sdram_controller|process_1~8_combout\);

-- Location: LCCOMB_X42_Y24_N26
\sdram_controller|process_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|process_1~12_combout\ = (\sdram_controller|process_1~9_combout\ & (\sdram_controller|process_1~11_combout\ & (\sdram_controller|process_1~10_combout\ $ (!\sdram_controller|process_1~8_combout\)))) # 
-- (!\sdram_controller|process_1~9_combout\ & (\sdram_controller|process_1~10_combout\ & (!\sdram_controller|process_1~11_combout\ & \sdram_controller|process_1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|process_1~9_combout\,
	datab => \sdram_controller|process_1~10_combout\,
	datac => \sdram_controller|process_1~11_combout\,
	datad => \sdram_controller|process_1~8_combout\,
	combout => \sdram_controller|process_1~12_combout\);

-- Location: LCCOMB_X41_Y24_N22
\sdram_controller|process_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|process_1~14_combout\ = (\sdram_controller|process_1~7_combout\ & ((\sdram_controller|Equal1~3_combout\) # ((\sdram_controller|process_1~6_combout\ & \sdram_controller|process_1~12_combout\)))) # (!\sdram_controller|process_1~7_combout\ 
-- & (\sdram_controller|process_1~6_combout\ & ((\sdram_controller|process_1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|process_1~7_combout\,
	datab => \sdram_controller|process_1~6_combout\,
	datac => \sdram_controller|Equal1~3_combout\,
	datad => \sdram_controller|process_1~12_combout\,
	combout => \sdram_controller|process_1~14_combout\);

-- Location: LCCOMB_X41_Y24_N18
\sdram_controller|Equal10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal10~0_combout\ = (((\sdram_controller|stateCycleCount\(2)) # (!\sdram_controller|stateCycleCount\(0))) # (!\sdram_controller|stateCycleCount\(1))) # (!\sdram_controller|stateCycleCount\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(3),
	datab => \sdram_controller|stateCycleCount\(1),
	datac => \sdram_controller|stateCycleCount\(0),
	datad => \sdram_controller|stateCycleCount\(2),
	combout => \sdram_controller|Equal10~0_combout\);

-- Location: LCCOMB_X41_Y24_N28
\sdram_controller|Equal10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal10~1_combout\ = (\sdram_controller|Equal10~0_combout\) # (!\sdram_controller|stateCycleCount\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sdram_controller|Equal10~0_combout\,
	datad => \sdram_controller|stateCycleCount\(6),
	combout => \sdram_controller|Equal10~1_combout\);

-- Location: LCCOMB_X39_Y24_N0
\sdram_controller|Equal10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal10~2_combout\ = (\sdram_controller|Equal10~1_combout\) # (((\sdram_controller|stateCycleCount\(5)) # (\sdram_controller|stateCycleCount\(4))) # (!\sdram_controller|process_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Equal10~1_combout\,
	datab => \sdram_controller|process_1~6_combout\,
	datac => \sdram_controller|stateCycleCount\(5),
	datad => \sdram_controller|stateCycleCount\(4),
	combout => \sdram_controller|Equal10~2_combout\);

-- Location: LCCOMB_X39_Y24_N2
\sdram_controller|Selector24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector24~0_combout\ = (\sdram_controller|controllerState.SDRAM_INIT~q\ & (\sdram_controller|LessThan10~0_combout\ & (!\sdram_controller|process_1~14_combout\ & !\sdram_controller|Equal10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|controllerState.SDRAM_INIT~q\,
	datab => \sdram_controller|LessThan10~0_combout\,
	datac => \sdram_controller|process_1~14_combout\,
	datad => \sdram_controller|Equal10~2_combout\,
	combout => \sdram_controller|Selector24~0_combout\);

-- Location: FF_X42_Y24_N13
\sdram_controller|addressReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	asdata => \sdram_controller|addressReg[0]~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|addressReg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|addressReg\(0));

-- Location: LCCOMB_X39_Y24_N22
\sdram_controller|Selector24~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector24~1_combout\ = (\sdram_controller|Selector24~0_combout\) # ((\sdram_controller|Selector10~0_combout\ & \sdram_controller|addressReg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|Selector10~0_combout\,
	datac => \sdram_controller|Selector24~0_combout\,
	datad => \sdram_controller|addressReg\(0),
	combout => \sdram_controller|Selector24~1_combout\);

-- Location: LCCOMB_X39_Y24_N8
\sdram_controller|Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector12~0_combout\ = (\sdram_controller|Equal11~0_combout\ & ((\sdram_controller|controllerState.SDRAM_AUTO_REFRESH~q\) # ((!\sdram_controller|LessThan10~0_combout\ & \sdram_controller|controllerState.SDRAM_INIT~q\)))) # 
-- (!\sdram_controller|Equal11~0_combout\ & (!\sdram_controller|LessThan10~0_combout\ & (\sdram_controller|controllerState.SDRAM_INIT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Equal11~0_combout\,
	datab => \sdram_controller|LessThan10~0_combout\,
	datac => \sdram_controller|controllerState.SDRAM_INIT~q\,
	datad => \sdram_controller|controllerState.SDRAM_AUTO_REFRESH~q\,
	combout => \sdram_controller|Selector12~0_combout\);

-- Location: LCCOMB_X40_Y24_N12
\sdram_controller|Equal13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal13~0_combout\ = (\sdram_controller|burstLengthReg\(0) & (\sdram_controller|stateCycleCount\(2) & (\sdram_controller|stateCycleCount\(1) $ (!\sdram_controller|burstLengthReg\(1))))) # (!\sdram_controller|burstLengthReg\(0) & 
-- ((\sdram_controller|stateCycleCount\(2) & (!\sdram_controller|stateCycleCount\(1) & \sdram_controller|burstLengthReg\(1))) # (!\sdram_controller|stateCycleCount\(2) & (\sdram_controller|stateCycleCount\(1) & !\sdram_controller|burstLengthReg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|burstLengthReg\(0),
	datab => \sdram_controller|stateCycleCount\(2),
	datac => \sdram_controller|stateCycleCount\(1),
	datad => \sdram_controller|burstLengthReg\(1),
	combout => \sdram_controller|Equal13~0_combout\);

-- Location: LCCOMB_X42_Y26_N8
\sdram_controller|Equal12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal12~0_combout\ = \sdram_controller|burstLengthReg\(3) $ (\sdram_controller|stateCycleCount\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sdram_controller|burstLengthReg\(3),
	datad => \sdram_controller|stateCycleCount\(3),
	combout => \sdram_controller|Equal12~0_combout\);

-- Location: LCCOMB_X40_Y24_N18
\sdram_controller|Equal12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal12~1_combout\ = (\sdram_controller|Equal1~3_combout\ & (!\sdram_controller|Equal12~0_combout\ & (\sdram_controller|stateCycleCount\(0) $ (\sdram_controller|burstLengthReg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(0),
	datab => \sdram_controller|Equal1~3_combout\,
	datac => \sdram_controller|burstLengthReg\(0),
	datad => \sdram_controller|Equal12~0_combout\,
	combout => \sdram_controller|Equal12~1_combout\);

-- Location: LCCOMB_X40_Y24_N2
\sdram_controller|Selector12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector12~1_combout\ = (\sdram_controller|Equal13~0_combout\ & (\sdram_controller|controllerState.SDRAM_WRITE~q\ & \sdram_controller|Equal12~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Equal13~0_combout\,
	datab => \sdram_controller|controllerState.SDRAM_WRITE~q\,
	datad => \sdram_controller|Equal12~1_combout\,
	combout => \sdram_controller|Selector12~1_combout\);

-- Location: LCCOMB_X40_Y24_N28
\sdram_controller|Equal12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal12~2_combout\ = (\sdram_controller|burstLengthReg\(0) & ((\sdram_controller|stateCycleCount\(2) & (!\sdram_controller|stateCycleCount\(1) & \sdram_controller|burstLengthReg\(1))) # (!\sdram_controller|stateCycleCount\(2) & 
-- (\sdram_controller|stateCycleCount\(1) & !\sdram_controller|burstLengthReg\(1))))) # (!\sdram_controller|burstLengthReg\(0) & (!\sdram_controller|stateCycleCount\(2) & (\sdram_controller|stateCycleCount\(1) $ (!\sdram_controller|burstLengthReg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|burstLengthReg\(0),
	datab => \sdram_controller|stateCycleCount\(2),
	datac => \sdram_controller|stateCycleCount\(1),
	datad => \sdram_controller|burstLengthReg\(1),
	combout => \sdram_controller|Equal12~2_combout\);

-- Location: LCCOMB_X40_Y24_N26
\sdram_controller|Selector12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector12~2_combout\ = (\sdram_controller|stateCycleCount\(1) & (((!\sdram_controller|Equal12~1_combout\)) # (!\sdram_controller|Equal12~2_combout\))) # (!\sdram_controller|stateCycleCount\(1) & (!\sdram_controller|Equal1~4_combout\ & 
-- ((!\sdram_controller|Equal12~1_combout\) # (!\sdram_controller|Equal12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datab => \sdram_controller|Equal12~2_combout\,
	datac => \sdram_controller|Equal1~4_combout\,
	datad => \sdram_controller|Equal12~1_combout\,
	combout => \sdram_controller|Selector12~2_combout\);

-- Location: LCCOMB_X40_Y24_N30
\sdram_controller|Equal14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal14~0_combout\ = (\sdram_controller|stateCycleCount\(1) & (\sdram_controller|burstLengthReg\(1) & (\sdram_controller|burstLengthReg\(0) $ (!\sdram_controller|stateCycleCount\(0))))) # (!\sdram_controller|stateCycleCount\(1) & 
-- (!\sdram_controller|burstLengthReg\(1) & (\sdram_controller|burstLengthReg\(0) $ (!\sdram_controller|stateCycleCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|stateCycleCount\(1),
	datab => \sdram_controller|burstLengthReg\(1),
	datac => \sdram_controller|burstLengthReg\(0),
	datad => \sdram_controller|stateCycleCount\(0),
	combout => \sdram_controller|Equal14~0_combout\);

-- Location: LCCOMB_X40_Y24_N24
\sdram_controller|Equal14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Equal14~1_combout\ = (\sdram_controller|Equal1~3_combout\ & (!\sdram_controller|Equal12~0_combout\ & (\sdram_controller|Equal14~0_combout\ & \sdram_controller|stateCycleCount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Equal1~3_combout\,
	datab => \sdram_controller|Equal12~0_combout\,
	datac => \sdram_controller|Equal14~0_combout\,
	datad => \sdram_controller|stateCycleCount\(2),
	combout => \sdram_controller|Equal14~1_combout\);

-- Location: LCCOMB_X40_Y24_N0
\sdram_controller|Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector9~0_combout\ = ((!\sdram_controller|Selector12~1_combout\ & ((!\sdram_controller|Equal14~1_combout\) # (!\sdram_controller|controllerState.SDRAM_READ~q\)))) # (!\sdram_controller|Selector12~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|controllerState.SDRAM_READ~q\,
	datab => \sdram_controller|Selector12~1_combout\,
	datac => \sdram_controller|Selector12~2_combout\,
	datad => \sdram_controller|Equal14~1_combout\,
	combout => \sdram_controller|Selector9~0_combout\);

-- Location: LCCOMB_X40_Y25_N0
\sdram_controller|Selector12~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector12~3_combout\ = (\sdram_controller|Selector12~0_combout\) # (!\sdram_controller|Selector9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Selector12~0_combout\,
	datad => \sdram_controller|Selector9~0_combout\,
	combout => \sdram_controller|Selector12~3_combout\);

-- Location: FF_X42_Y24_N15
\sdram_controller|byteMaskReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	asdata => \sdram_controller|addressReg[0]~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \sdram_controller|addressReg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sdram_controller|byteMaskReg\(0));

-- Location: LCCOMB_X42_Y24_N14
\sdram_controller|Selector26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector26~0_combout\ = (\sdram_controller|controllerState.SDRAM_WRITE~q\ & (((\sdram_controller|LessThan11~2_combout\) # (!\sdram_controller|byteMaskReg\(0))))) # (!\sdram_controller|controllerState.SDRAM_WRITE~q\ & 
-- (!\sdram_controller|controllerState.SDRAM_READ~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|controllerState.SDRAM_WRITE~q\,
	datab => \sdram_controller|controllerState.SDRAM_READ~q\,
	datac => \sdram_controller|byteMaskReg\(0),
	datad => \sdram_controller|LessThan11~2_combout\,
	combout => \sdram_controller|Selector26~0_combout\);

-- Location: LCCOMB_X39_Y24_N24
\sdram_controller|Selector9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector9~1_combout\ = ((!\sdram_controller|Equal11~0_combout\ & ((!\sdram_controller|Equal1~3_combout\) # (!\sdram_controller|process_1~7_combout\)))) # (!\sdram_controller|controllerState.SDRAM_AUTO_REFRESH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|process_1~7_combout\,
	datab => \sdram_controller|Equal1~3_combout\,
	datac => \sdram_controller|Equal11~0_combout\,
	datad => \sdram_controller|controllerState.SDRAM_AUTO_REFRESH~q\,
	combout => \sdram_controller|Selector9~1_combout\);

-- Location: LCCOMB_X40_Y24_N22
\sdram_controller|Selector9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector9~3_combout\ = (!\sdram_controller|controllerState.SDRAM_ACTIVATE_ROW~q\) # (!\sdram_controller|Equal11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sdram_controller|Equal11~0_combout\,
	datad => \sdram_controller|controllerState.SDRAM_ACTIVATE_ROW~q\,
	combout => \sdram_controller|Selector9~3_combout\);

-- Location: LCCOMB_X39_Y24_N14
\sdram_controller|Selector9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector9~2_combout\ = ((\sdram_controller|LessThan10~0_combout\ & (!\sdram_controller|process_1~14_combout\ & \sdram_controller|Equal10~2_combout\))) # (!\sdram_controller|controllerState.SDRAM_INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|controllerState.SDRAM_INIT~q\,
	datab => \sdram_controller|LessThan10~0_combout\,
	datac => \sdram_controller|process_1~14_combout\,
	datad => \sdram_controller|Equal10~2_combout\,
	combout => \sdram_controller|Selector9~2_combout\);

-- Location: LCCOMB_X40_Y24_N4
\sdram_controller|Selector9~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector9~4_combout\ = (\sdram_controller|Selector9~0_combout\ & (\sdram_controller|Selector9~1_combout\ & (\sdram_controller|Selector9~3_combout\ & \sdram_controller|Selector9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Selector9~0_combout\,
	datab => \sdram_controller|Selector9~1_combout\,
	datac => \sdram_controller|Selector9~3_combout\,
	datad => \sdram_controller|Selector9~2_combout\,
	combout => \sdram_controller|Selector9~4_combout\);

-- Location: LCCOMB_X39_Y24_N26
\sdram_controller|process_1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|process_1~13_combout\ = (\sdram_controller|process_1~7_combout\ & \sdram_controller|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|process_1~7_combout\,
	datad => \sdram_controller|Equal1~3_combout\,
	combout => \sdram_controller|process_1~13_combout\);

-- Location: LCCOMB_X39_Y24_N16
\sdram_controller|Selector10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector10~1_combout\ = (((!\sdram_controller|process_1~14_combout\ & \sdram_controller|Equal10~2_combout\)) # (!\sdram_controller|LessThan10~0_combout\)) # (!\sdram_controller|controllerState.SDRAM_INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|controllerState.SDRAM_INIT~q\,
	datab => \sdram_controller|LessThan10~0_combout\,
	datac => \sdram_controller|process_1~14_combout\,
	datad => \sdram_controller|Equal10~2_combout\,
	combout => \sdram_controller|Selector10~1_combout\);

-- Location: LCCOMB_X39_Y24_N28
\sdram_controller|Selector10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector10~2_combout\ = (!\sdram_controller|Selector10~0_combout\ & (\sdram_controller|Selector10~1_combout\ & ((!\sdram_controller|process_1~13_combout\) # (!\sdram_controller|controllerState.SDRAM_AUTO_REFRESH~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|controllerState.SDRAM_AUTO_REFRESH~q\,
	datab => \sdram_controller|Selector10~0_combout\,
	datac => \sdram_controller|process_1~13_combout\,
	datad => \sdram_controller|Selector10~1_combout\,
	combout => \sdram_controller|Selector10~2_combout\);

-- Location: LCCOMB_X40_Y24_N10
\sdram_controller|Selector11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector11~2_combout\ = (\sdram_controller|Equal12~1_combout\ & ((\sdram_controller|Equal12~2_combout\) # ((\sdram_controller|Equal13~0_combout\ & \sdram_controller|controllerState.SDRAM_WRITE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Equal13~0_combout\,
	datab => \sdram_controller|Equal12~1_combout\,
	datac => \sdram_controller|controllerState.SDRAM_WRITE~q\,
	datad => \sdram_controller|Equal12~2_combout\,
	combout => \sdram_controller|Selector11~2_combout\);

-- Location: LCCOMB_X39_Y24_N18
\sdram_controller|Selector11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector11~3_combout\ = (\sdram_controller|controllerState.SDRAM_READ~q\ & ((\sdram_controller|Equal14~1_combout\) # ((\sdram_controller|Selector11~2_combout\)))) # (!\sdram_controller|controllerState.SDRAM_READ~q\ & 
-- (((\sdram_controller|Selector11~2_combout\ & \sdram_controller|controllerState.SDRAM_WRITE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|controllerState.SDRAM_READ~q\,
	datab => \sdram_controller|Equal14~1_combout\,
	datac => \sdram_controller|Selector11~2_combout\,
	datad => \sdram_controller|controllerState.SDRAM_WRITE~q\,
	combout => \sdram_controller|Selector11~3_combout\);

-- Location: LCCOMB_X39_Y24_N12
\sdram_controller|Selector11~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector11~4_combout\ = (\sdram_controller|Equal11~0_combout\ & ((\sdram_controller|controllerState.SDRAM_AUTO_REFRESH~q\) # ((\sdram_controller|controllerState.SDRAM_WRITE~q\)))) # (!\sdram_controller|Equal11~0_combout\ & 
-- (((\sdram_controller|Selector11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|controllerState.SDRAM_AUTO_REFRESH~q\,
	datab => \sdram_controller|controllerState.SDRAM_WRITE~q\,
	datac => \sdram_controller|Equal11~0_combout\,
	datad => \sdram_controller|Selector11~3_combout\,
	combout => \sdram_controller|Selector11~4_combout\);

-- Location: LCCOMB_X39_Y24_N4
\sdram_controller|Selector11~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sdram_controller|Selector11~5_combout\ = (!\sdram_controller|Selector11~4_combout\ & (((\sdram_controller|LessThan10~0_combout\ & \sdram_controller|Equal10~2_combout\)) # (!\sdram_controller|controllerState.SDRAM_INIT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sdram_controller|Selector11~4_combout\,
	datab => \sdram_controller|LessThan10~0_combout\,
	datac => \sdram_controller|controllerState.SDRAM_INIT~q\,
	datad => \sdram_controller|Equal10~2_combout\,
	combout => \sdram_controller|Selector11~5_combout\);

-- Location: IOIBUF_X34_Y39_N29
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

-- Location: IOIBUF_X34_Y39_N1
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

-- Location: IOIBUF_X31_Y39_N15
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

-- Location: IOIBUF_X31_Y39_N8
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

-- Location: IOIBUF_X34_Y39_N22
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

-- Location: IOIBUF_X34_Y39_N15
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

-- Location: IOIBUF_X31_Y39_N1
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

-- Location: IOIBUF_X31_Y39_N22
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

-- Location: IOIBUF_X20_Y39_N8
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

-- Location: IOIBUF_X22_Y0_N22
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

-- Location: IOIBUF_X26_Y0_N29
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

-- Location: IOIBUF_X20_Y39_N15
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

-- Location: IOIBUF_X22_Y0_N29
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

-- Location: IOIBUF_X29_Y39_N15
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

-- Location: IOIBUF_X26_Y0_N22
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

-- Location: IOIBUF_X29_Y39_N8
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
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
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
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
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
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_SDRAM_ADDR(0) <= \SDRAM_ADDR[0]~output_o\;

ww_SDRAM_ADDR(1) <= \SDRAM_ADDR[1]~output_o\;

ww_SDRAM_ADDR(2) <= \SDRAM_ADDR[2]~output_o\;

ww_SDRAM_ADDR(3) <= \SDRAM_ADDR[3]~output_o\;

ww_SDRAM_ADDR(4) <= \SDRAM_ADDR[4]~output_o\;

ww_SDRAM_ADDR(5) <= \SDRAM_ADDR[5]~output_o\;

ww_SDRAM_ADDR(6) <= \SDRAM_ADDR[6]~output_o\;

ww_SDRAM_ADDR(7) <= \SDRAM_ADDR[7]~output_o\;

ww_SDRAM_ADDR(8) <= \SDRAM_ADDR[8]~output_o\;

ww_SDRAM_ADDR(9) <= \SDRAM_ADDR[9]~output_o\;

ww_SDRAM_ADDR(10) <= \SDRAM_ADDR[10]~output_o\;

ww_SDRAM_ADDR(11) <= \SDRAM_ADDR[11]~output_o\;

ww_SDRAM_ADDR(12) <= \SDRAM_ADDR[12]~output_o\;

ww_SDRAM_BANK_ADDR(0) <= \SDRAM_BANK_ADDR[0]~output_o\;

ww_SDRAM_BANK_ADDR(1) <= \SDRAM_BANK_ADDR[1]~output_o\;

ww_SDRAM_BYTE_MASK(0) <= \SDRAM_BYTE_MASK[0]~output_o\;

ww_SDRAM_BYTE_MASK(1) <= \SDRAM_BYTE_MASK[1]~output_o\;

ww_SDRAM_RAS <= \SDRAM_RAS~output_o\;

ww_SDRAM_CAS <= \SDRAM_CAS~output_o\;

ww_SDRAM_CLK_EN <= \SDRAM_CLK_EN~output_o\;

ww_SDRAM_CLK <= \SDRAM_CLK~output_o\;

ww_SDRAM_WRITE_EN <= \SDRAM_WRITE_EN~output_o\;

ww_SDRAM_CHIP_SEL <= \SDRAM_CHIP_SEL~output_o\;

SDRAM_DATA(0) <= \SDRAM_DATA[0]~output_o\;

SDRAM_DATA(1) <= \SDRAM_DATA[1]~output_o\;

SDRAM_DATA(2) <= \SDRAM_DATA[2]~output_o\;

SDRAM_DATA(3) <= \SDRAM_DATA[3]~output_o\;

SDRAM_DATA(4) <= \SDRAM_DATA[4]~output_o\;

SDRAM_DATA(5) <= \SDRAM_DATA[5]~output_o\;

SDRAM_DATA(6) <= \SDRAM_DATA[6]~output_o\;

SDRAM_DATA(7) <= \SDRAM_DATA[7]~output_o\;

SDRAM_DATA(8) <= \SDRAM_DATA[8]~output_o\;

SDRAM_DATA(9) <= \SDRAM_DATA[9]~output_o\;

SDRAM_DATA(10) <= \SDRAM_DATA[10]~output_o\;

SDRAM_DATA(11) <= \SDRAM_DATA[11]~output_o\;

SDRAM_DATA(12) <= \SDRAM_DATA[12]~output_o\;

SDRAM_DATA(13) <= \SDRAM_DATA[13]~output_o\;

SDRAM_DATA(14) <= \SDRAM_DATA[14]~output_o\;

SDRAM_DATA(15) <= \SDRAM_DATA[15]~output_o\;
END structure;


