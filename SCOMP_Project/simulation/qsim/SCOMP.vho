-- Copyright (C) 2019  Intel Corporation. All rights reserved.
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
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "11/11/2020 04:55:26"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SCOMP_System IS
    PORT (
	GSENSOR_CS_n : OUT std_logic;
	GSENSOR_SDO : OUT std_logic;
	GSENSOR_SDI : INOUT std_logic;
	clock_50 : IN std_logic;
	KEY0 : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	GSENSOR_SCLK : INOUT std_logic;
	Arduino_IO : OUT std_logic_vector(0 DOWNTO 0);
	DP : OUT std_logic_vector(5 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0)
	);
END SCOMP_System;

-- Design Ports Information
-- GSENSOR_CS_n	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GSENSOR_SDO	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- Arduino_IO[0]	=>  Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DP[5]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DP[4]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DP[3]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DP[2]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DP[1]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DP[0]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[6]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[5]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[4]	=>  Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[3]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[2]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[1]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[0]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[6]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[5]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[4]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[3]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[2]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[1]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[0]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[6]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[5]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[4]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[3]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[2]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[1]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[0]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[6]	=>  Location: PIN_E17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[4]	=>  Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[3]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[2]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[1]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[0]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[6]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[5]	=>  Location: PIN_F19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[4]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[3]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[2]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[1]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[0]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[6]	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[5]	=>  Location: PIN_N19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[4]	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[3]	=>  Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[2]	=>  Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[1]	=>  Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[0]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[9]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[8]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[7]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[6]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[5]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[4]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[3]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[2]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[1]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[0]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GSENSOR_SDI	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GSENSOR_SCLK	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SW[5]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY0	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock_50	=>  Location: PIN_N14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF SCOMP_System IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_GSENSOR_CS_n : std_logic;
SIGNAL ww_GSENSOR_SDO : std_logic;
SIGNAL ww_clock_50 : std_logic;
SIGNAL ww_KEY0 : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_Arduino_IO : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_DP : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst3|HEX0_EN~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|clock_10Hz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|clock_100kHz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst13|inst|data_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst13|inst13~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|LED_EN~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst13|inst14|data_out[7]~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst13|inst12~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|clock_4Hz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|DP_EN~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|SQ_EN~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|HEX1_EN~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|clock_1MHz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|SWITCH_EN~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
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
SIGNAL \KEY0~input_o\ : std_logic;
SIGNAL \clock_50~input_o\ : std_logic;
SIGNAL \inst1|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst5|count_100kHz[0]~6_combout\ : std_logic;
SIGNAL \inst5|LessThan1~0_combout\ : std_logic;
SIGNAL \inst5|LessThan1~1_combout\ : std_logic;
SIGNAL \inst5|count_100kHz[0]~7\ : std_logic;
SIGNAL \inst5|count_100kHz[1]~8_combout\ : std_logic;
SIGNAL \inst5|count_100kHz[1]~9\ : std_logic;
SIGNAL \inst5|count_100kHz[2]~10_combout\ : std_logic;
SIGNAL \inst5|count_100kHz[2]~11\ : std_logic;
SIGNAL \inst5|count_100kHz[3]~12_combout\ : std_logic;
SIGNAL \inst5|count_100kHz[3]~13\ : std_logic;
SIGNAL \inst5|count_100kHz[4]~14_combout\ : std_logic;
SIGNAL \inst5|count_100kHz[4]~15\ : std_logic;
SIGNAL \inst5|count_100kHz[5]~16_combout\ : std_logic;
SIGNAL \inst5|clock_100kHz_int~0_combout\ : std_logic;
SIGNAL \inst5|clock_100kHz_int~q\ : std_logic;
SIGNAL \inst5|clock_100kHz~feeder_combout\ : std_logic;
SIGNAL \inst5|clock_100kHz~q\ : std_logic;
SIGNAL \inst5|clock_100kHz~clkctrl_outclk\ : std_logic;
SIGNAL \inst13|inst|count~1_combout\ : std_logic;
SIGNAL \inst1|altpll_component|auto_generated|wire_pll1_locked\ : std_logic;
SIGNAL \inst1|altpll_component|auto_generated|pll_lock_sync~feeder_combout\ : std_logic;
SIGNAL \inst1|altpll_component|auto_generated|pll_lock_sync~q\ : std_logic;
SIGNAL \inst13|inst14|data_out[7]~1_combout\ : std_logic;
SIGNAL \inst13|inst14|data_out[7]~1clkctrl_outclk\ : std_logic;
SIGNAL \GSENSOR_SCLK~input_o\ : std_logic;
SIGNAL \inst13|inst|stretch~0_combout\ : std_logic;
SIGNAL \inst13|inst|stretch~q\ : std_logic;
SIGNAL \inst13|inst|count~0_combout\ : std_logic;
SIGNAL \inst13|inst|count[1]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst|data_clk~0_combout\ : std_logic;
SIGNAL \inst13|inst|data_clk~q\ : std_logic;
SIGNAL \inst13|inst|data_clk~clkctrl_outclk\ : std_logic;
SIGNAL \inst13|inst|bit_cnt[0]~0_combout\ : std_logic;
SIGNAL \inst13|inst|Selector27~0_combout\ : std_logic;
SIGNAL \inst13|inst|bit_cnt[1]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst|state~14_combout\ : std_logic;
SIGNAL \inst13|inst|state.mstr_ack~feeder_combout\ : std_logic;
SIGNAL \inst13|inst|state.mstr_ack~q\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|state.decode~q\ : std_logic;
SIGNAL \inst|state.ex_istore2~q\ : std_logic;
SIGNAL \inst|state~43_combout\ : std_logic;
SIGNAL \inst|state~46_combout\ : std_logic;
SIGNAL \inst|state.ex_iload~q\ : std_logic;
SIGNAL \inst|WideNor0~combout\ : std_logic;
SIGNAL \inst|Selector9~0_combout\ : std_logic;
SIGNAL \inst|state~32_combout\ : std_logic;
SIGNAL \inst|state~49_combout\ : std_logic;
SIGNAL \inst|state.ex_return~q\ : std_logic;
SIGNAL \inst|PC_stack[9][2]~feeder_combout\ : std_logic;
SIGNAL \inst|state~54_combout\ : std_logic;
SIGNAL \inst|state.ex_call~q\ : std_logic;
SIGNAL \inst|PC_stack[9][0]~1_combout\ : std_logic;
SIGNAL \inst|PC_stack[9][2]~q\ : std_logic;
SIGNAL \inst|Selector127~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[0][0]~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[8][2]~q\ : std_logic;
SIGNAL \inst|Selector116~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[7][2]~q\ : std_logic;
SIGNAL \inst|Selector105~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[6][2]~q\ : std_logic;
SIGNAL \inst|Selector94~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[5][2]~q\ : std_logic;
SIGNAL \inst|Selector83~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[4][2]~q\ : std_logic;
SIGNAL \inst|Selector72~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[3][2]~q\ : std_logic;
SIGNAL \inst|Selector61~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[2][2]~q\ : std_logic;
SIGNAL \inst|Selector50~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[1][2]~q\ : std_logic;
SIGNAL \inst|Selector39~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[0][2]~q\ : std_logic;
SIGNAL \inst|state.init~feeder_combout\ : std_logic;
SIGNAL \inst|state.init~q\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Selector9~1_combout\ : std_logic;
SIGNAL \inst|Selector9~2_combout\ : std_logic;
SIGNAL \inst|Selector30~0_combout\ : std_logic;
SIGNAL \inst|state~37_combout\ : std_logic;
SIGNAL \inst|state.ex_and~q\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|IR[6]~0_combout\ : std_logic;
SIGNAL \inst|Selector6~0_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Selector7~1_combout\ : std_logic;
SIGNAL \inst|PC_stack[9][4]~feeder_combout\ : std_logic;
SIGNAL \inst|PC_stack[9][4]~q\ : std_logic;
SIGNAL \inst|Selector125~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[8][4]~q\ : std_logic;
SIGNAL \inst|Selector114~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[7][4]~q\ : std_logic;
SIGNAL \inst|Selector103~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[6][4]~q\ : std_logic;
SIGNAL \inst|Selector92~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[5][4]~q\ : std_logic;
SIGNAL \inst|Selector81~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[4][4]~q\ : std_logic;
SIGNAL \inst|Selector70~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[3][4]~q\ : std_logic;
SIGNAL \inst|Selector59~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[2][4]~q\ : std_logic;
SIGNAL \inst|Selector48~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[1][4]~q\ : std_logic;
SIGNAL \inst|Selector37~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[0][4]~q\ : std_logic;
SIGNAL \inst|Selector7~2_combout\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Selector6~1_combout\ : std_logic;
SIGNAL \inst|PC_stack[9][5]~q\ : std_logic;
SIGNAL \inst|Selector124~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[8][5]~q\ : std_logic;
SIGNAL \inst|Selector113~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[7][5]~q\ : std_logic;
SIGNAL \inst|Selector102~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[6][5]~q\ : std_logic;
SIGNAL \inst|Selector91~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[5][5]~q\ : std_logic;
SIGNAL \inst|Selector80~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[4][5]~q\ : std_logic;
SIGNAL \inst|Selector69~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[3][5]~q\ : std_logic;
SIGNAL \inst|Selector58~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[2][5]~q\ : std_logic;
SIGNAL \inst|Selector47~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[1][5]~q\ : std_logic;
SIGNAL \inst|Selector36~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[0][5]~q\ : std_logic;
SIGNAL \inst|Selector6~2_combout\ : std_logic;
SIGNAL \inst|next_mem_addr[5]~5_combout\ : std_logic;
SIGNAL \inst|Selector3~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[9][6]~feeder_combout\ : std_logic;
SIGNAL \inst|PC_stack[9][6]~q\ : std_logic;
SIGNAL \inst|Selector123~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[8][6]~q\ : std_logic;
SIGNAL \inst|Selector112~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[7][6]~q\ : std_logic;
SIGNAL \inst|Selector101~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[6][6]~q\ : std_logic;
SIGNAL \inst|Selector90~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[5][6]~q\ : std_logic;
SIGNAL \inst|Selector79~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[4][6]~q\ : std_logic;
SIGNAL \inst|Selector68~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[3][6]~q\ : std_logic;
SIGNAL \inst|Selector57~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[2][6]~q\ : std_logic;
SIGNAL \inst|Selector46~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[1][6]~q\ : std_logic;
SIGNAL \inst|Selector35~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[0][6]~q\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|Selector5~1_combout\ : std_logic;
SIGNAL \inst|Selector5~2_combout\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|Selector4~1_combout\ : std_logic;
SIGNAL \inst|PC_stack[9][7]~feeder_combout\ : std_logic;
SIGNAL \inst|PC_stack[9][7]~q\ : std_logic;
SIGNAL \inst|Selector122~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[8][7]~q\ : std_logic;
SIGNAL \inst|Selector111~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[7][7]~q\ : std_logic;
SIGNAL \inst|Selector100~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[6][7]~q\ : std_logic;
SIGNAL \inst|Selector89~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[5][7]~q\ : std_logic;
SIGNAL \inst|Selector78~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[4][7]~q\ : std_logic;
SIGNAL \inst|Selector67~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[3][7]~q\ : std_logic;
SIGNAL \inst|Selector56~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[2][7]~q\ : std_logic;
SIGNAL \inst|Selector45~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[1][7]~q\ : std_logic;
SIGNAL \inst|Selector34~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[0][7]~q\ : std_logic;
SIGNAL \inst|Selector4~2_combout\ : std_logic;
SIGNAL \inst|Add0~15\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|Selector3~1_combout\ : std_logic;
SIGNAL \inst|PC_stack[9][8]~feeder_combout\ : std_logic;
SIGNAL \inst|PC_stack[9][8]~q\ : std_logic;
SIGNAL \inst|Selector121~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[8][8]~q\ : std_logic;
SIGNAL \inst|Selector110~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[7][8]~q\ : std_logic;
SIGNAL \inst|Selector99~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[6][8]~q\ : std_logic;
SIGNAL \inst|Selector88~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[5][8]~q\ : std_logic;
SIGNAL \inst|Selector77~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[4][8]~q\ : std_logic;
SIGNAL \inst|Selector66~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[3][8]~q\ : std_logic;
SIGNAL \inst|Selector55~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[2][8]~q\ : std_logic;
SIGNAL \inst|Selector44~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[1][8]~q\ : std_logic;
SIGNAL \inst|Selector33~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[0][8]~q\ : std_logic;
SIGNAL \inst|Selector3~2_combout\ : std_logic;
SIGNAL \inst|next_mem_addr[8]~8_combout\ : std_logic;
SIGNAL \inst|Add0~17\ : std_logic;
SIGNAL \inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|Selector2~1_combout\ : std_logic;
SIGNAL \inst|PC_stack[9][9]~q\ : std_logic;
SIGNAL \inst|Selector120~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[8][9]~q\ : std_logic;
SIGNAL \inst|Selector109~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[7][9]~q\ : std_logic;
SIGNAL \inst|Selector98~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[6][9]~q\ : std_logic;
SIGNAL \inst|Selector87~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[5][9]~q\ : std_logic;
SIGNAL \inst|Selector76~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[4][9]~q\ : std_logic;
SIGNAL \inst|Selector65~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[3][9]~q\ : std_logic;
SIGNAL \inst|Selector54~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[2][9]~q\ : std_logic;
SIGNAL \inst|Selector43~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[1][9]~q\ : std_logic;
SIGNAL \inst|Selector32~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[0][9]~q\ : std_logic;
SIGNAL \inst|Selector2~2_combout\ : std_logic;
SIGNAL \inst|Add0~19\ : std_logic;
SIGNAL \inst|Add0~20_combout\ : std_logic;
SIGNAL \inst|state~39_combout\ : std_logic;
SIGNAL \inst|state.ex_add~q\ : std_logic;
SIGNAL \inst|state~35_combout\ : std_logic;
SIGNAL \inst|state~40_combout\ : std_logic;
SIGNAL \inst|state.ex_sub~q\ : std_logic;
SIGNAL \inst|state~42_combout\ : std_logic;
SIGNAL \inst|state.ex_addi~q\ : std_logic;
SIGNAL \inst|AC[3]~0_combout\ : std_logic;
SIGNAL \inst|state~44_combout\ : std_logic;
SIGNAL \inst|state.ex_or~q\ : std_logic;
SIGNAL \inst|Selector30~1_combout\ : std_logic;
SIGNAL \inst|state.ex_load~q\ : std_logic;
SIGNAL \inst|Selector22~6_combout\ : std_logic;
SIGNAL \inst|Selector18~3_combout\ : std_logic;
SIGNAL \inst|state~36_combout\ : std_logic;
SIGNAL \inst|state.ex_shift~q\ : std_logic;
SIGNAL \inst|Selector19~7_combout\ : std_logic;
SIGNAL \inst|state~41_combout\ : std_logic;
SIGNAL \inst|state.ex_loadi~q\ : std_logic;
SIGNAL \inst|WideOr3~1_combout\ : std_logic;
SIGNAL \inst|WideOr3~2_combout\ : std_logic;
SIGNAL \inst|WideOr3~0_combout\ : std_logic;
SIGNAL \inst|Selector22~3_combout\ : std_logic;
SIGNAL \inst|Selector25~1_combout\ : std_logic;
SIGNAL \inst|Selector25~2_combout\ : std_logic;
SIGNAL \inst|Selector25~3_combout\ : std_logic;
SIGNAL \inst|Add1~12_combout\ : std_logic;
SIGNAL \inst|Add1~1_combout\ : std_logic;
SIGNAL \inst|Add1~10_combout\ : std_logic;
SIGNAL \inst|Add1~11_combout\ : std_logic;
SIGNAL \inst|Add1~15_combout\ : std_logic;
SIGNAL \inst|Add1~13_combout\ : std_logic;
SIGNAL \inst|Add1~14_combout\ : std_logic;
SIGNAL \inst|Selector21~3_combout\ : std_logic;
SIGNAL \inst|Selector21~4_combout\ : std_logic;
SIGNAL \inst|Add1~33_combout\ : std_logic;
SIGNAL \inst|Add1~34_combout\ : std_logic;
SIGNAL \inst|Add1~35_combout\ : std_logic;
SIGNAL \inst|Add1~3_combout\ : std_logic;
SIGNAL \inst|Add1~0_combout\ : std_logic;
SIGNAL \inst|Add1~2_combout\ : std_logic;
SIGNAL \inst|Selector23~5_combout\ : std_logic;
SIGNAL \inst|Add1~4_combout\ : std_logic;
SIGNAL \inst|Add1~5_combout\ : std_logic;
SIGNAL \inst|Selector24~3_combout\ : std_logic;
SIGNAL \inst|Add1~7_combout\ : std_logic;
SIGNAL \inst|Add1~8_combout\ : std_logic;
SIGNAL \inst|Add1~26\ : std_logic;
SIGNAL \inst|Add1~27_combout\ : std_logic;
SIGNAL \inst|Selector24~2_combout\ : std_logic;
SIGNAL \inst|Selector24~4_combout\ : std_logic;
SIGNAL \inst|Selector24~1_combout\ : std_logic;
SIGNAL \inst|Add1~40_combout\ : std_logic;
SIGNAL \inst|Add1~38_combout\ : std_logic;
SIGNAL \inst|Add1~39_combout\ : std_logic;
SIGNAL \inst|Add1~37\ : std_logic;
SIGNAL \inst|Add1~41_combout\ : std_logic;
SIGNAL \inst|Selector20~3_combout\ : std_logic;
SIGNAL \inst|Selector20~4_combout\ : std_logic;
SIGNAL \inst|Selector20~2_combout\ : std_logic;
SIGNAL \inst|Selector20~1_combout\ : std_logic;
SIGNAL \inst3|SWITCH_EN~1_combout\ : std_logic;
SIGNAL \inst3|I2C_DATA_EN~0_combout\ : std_logic;
SIGNAL \inst|state.ex_out~q\ : std_logic;
SIGNAL \inst|state.ex_out2~q\ : std_logic;
SIGNAL \inst|Selector29~0_combout\ : std_logic;
SIGNAL \inst|Selector29~1_combout\ : std_logic;
SIGNAL \inst|IO_CYCLE~q\ : std_logic;
SIGNAL \inst3|SWITCH_EN~0_combout\ : std_logic;
SIGNAL \inst3|I2C_DATA_EN~1_combout\ : std_logic;
SIGNAL \inst13|inst7~combout\ : std_logic;
SIGNAL \inst3|SWITCH_EN~2_combout\ : std_logic;
SIGNAL \inst3|SWITCH_EN~3_combout\ : std_logic;
SIGNAL \inst3|SWITCH_EN~combout\ : std_logic;
SIGNAL \inst3|I2C_RDY_EN~0_combout\ : std_logic;
SIGNAL \inst13|inst4~combout\ : std_logic;
SIGNAL \inst3|SQ_EN~0_combout\ : std_logic;
SIGNAL \inst3|DP_EN~0_combout\ : std_logic;
SIGNAL \inst3|DP_EN~1_combout\ : std_logic;
SIGNAL \inst3|SQ_EN~combout\ : std_logic;
SIGNAL \inst13|inst1[10]~5_combout\ : std_logic;
SIGNAL \inst4|IO_OUT~0_combout\ : std_logic;
SIGNAL \inst3|TIMER_EN~0_combout\ : std_logic;
SIGNAL \inst4|IO_OUT~combout\ : std_logic;
SIGNAL \inst13|inst1[5]~6_combout\ : std_logic;
SIGNAL \inst|Selector20~0_combout\ : std_logic;
SIGNAL \inst|Selector20~5_combout\ : std_logic;
SIGNAL \inst13|inst1[5]~2_combout\ : std_logic;
SIGNAL \inst3|SWITCH_EN~clkctrl_outclk\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \inst13|inst1[7]~29_combout\ : std_logic;
SIGNAL \inst5|count_10Hz[0]~19_combout\ : std_logic;
SIGNAL \inst5|LessThan5~3_combout\ : std_logic;
SIGNAL \inst5|LessThan5~1_combout\ : std_logic;
SIGNAL \inst5|LessThan5~0_combout\ : std_logic;
SIGNAL \inst5|LessThan5~2_combout\ : std_logic;
SIGNAL \inst5|LessThan5~4_combout\ : std_logic;
SIGNAL \inst5|LessThan5~6_combout\ : std_logic;
SIGNAL \inst5|count_10Hz[0]~20\ : std_logic;
SIGNAL \inst5|count_10Hz[1]~21_combout\ : std_logic;
SIGNAL \inst5|count_10Hz[1]~22\ : std_logic;
SIGNAL \inst5|count_10Hz[2]~23_combout\ : std_logic;
SIGNAL \inst5|count_10Hz[2]~24\ : std_logic;
SIGNAL \inst5|count_10Hz[3]~25_combout\ : std_logic;
SIGNAL \inst5|count_10Hz[3]~26\ : std_logic;
SIGNAL \inst5|count_10Hz[4]~27_combout\ : std_logic;
SIGNAL \inst5|count_10Hz[4]~28\ : std_logic;
SIGNAL \inst5|count_10Hz[5]~29_combout\ : std_logic;
SIGNAL \inst5|count_10Hz[5]~30\ : std_logic;
SIGNAL \inst5|count_10Hz[6]~31_combout\ : std_logic;
SIGNAL \inst5|count_10Hz[6]~32\ : std_logic;
SIGNAL \inst5|count_10Hz[7]~33_combout\ : std_logic;
SIGNAL \inst5|count_10Hz[7]~34\ : std_logic;
SIGNAL \inst5|count_10Hz[8]~35_combout\ : std_logic;
SIGNAL \inst5|count_10Hz[8]~36\ : std_logic;
SIGNAL \inst5|count_10Hz[9]~37_combout\ : std_logic;
SIGNAL \inst5|count_10Hz[9]~38\ : std_logic;
SIGNAL \inst5|count_10Hz[10]~39_combout\ : std_logic;
SIGNAL \inst5|count_10Hz[10]~40\ : std_logic;
SIGNAL \inst5|count_10Hz[11]~41_combout\ : std_logic;
SIGNAL \inst5|count_10Hz[11]~42\ : std_logic;
SIGNAL \inst5|count_10Hz[12]~43_combout\ : std_logic;
SIGNAL \inst5|count_10Hz[12]~44\ : std_logic;
SIGNAL \inst5|count_10Hz[13]~45_combout\ : std_logic;
SIGNAL \inst5|count_10Hz[13]~46\ : std_logic;
SIGNAL \inst5|count_10Hz[14]~47_combout\ : std_logic;
SIGNAL \inst5|count_10Hz[14]~48\ : std_logic;
SIGNAL \inst5|count_10Hz[15]~49_combout\ : std_logic;
SIGNAL \inst5|count_10Hz[15]~50\ : std_logic;
SIGNAL \inst5|count_10Hz[16]~51_combout\ : std_logic;
SIGNAL \inst5|count_10Hz[16]~52\ : std_logic;
SIGNAL \inst5|count_10Hz[17]~53_combout\ : std_logic;
SIGNAL \inst5|count_10Hz[17]~54\ : std_logic;
SIGNAL \inst5|count_10Hz[18]~55_combout\ : std_logic;
SIGNAL \inst5|LessThan5~5_combout\ : std_logic;
SIGNAL \inst5|clock_10Hz_int~0_combout\ : std_logic;
SIGNAL \inst5|clock_10Hz_int~q\ : std_logic;
SIGNAL \inst5|clock_10Hz~feeder_combout\ : std_logic;
SIGNAL \inst5|clock_10Hz~q\ : std_logic;
SIGNAL \inst5|clock_10Hz~clkctrl_outclk\ : std_logic;
SIGNAL \inst4|COUNT[0]~45_combout\ : std_logic;
SIGNAL \inst3|TIMER_EN~1_combout\ : std_logic;
SIGNAL \inst4|process_0~0_combout\ : std_logic;
SIGNAL \inst4|COUNT[1]~15_combout\ : std_logic;
SIGNAL \inst4|COUNT[1]~16\ : std_logic;
SIGNAL \inst4|COUNT[2]~17_combout\ : std_logic;
SIGNAL \inst4|COUNT[2]~18\ : std_logic;
SIGNAL \inst4|COUNT[3]~19_combout\ : std_logic;
SIGNAL \inst4|COUNT[3]~20\ : std_logic;
SIGNAL \inst4|COUNT[4]~21_combout\ : std_logic;
SIGNAL \inst4|COUNT[4]~22\ : std_logic;
SIGNAL \inst4|COUNT[5]~23_combout\ : std_logic;
SIGNAL \inst4|COUNT[5]~24\ : std_logic;
SIGNAL \inst4|COUNT[6]~25_combout\ : std_logic;
SIGNAL \inst4|COUNT[6]~26\ : std_logic;
SIGNAL \inst4|COUNT[7]~27_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \inst7|B_DI[1]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst1[1]~18_combout\ : std_logic;
SIGNAL \inst13|inst1[5]~38_combout\ : std_logic;
SIGNAL \inst4|COUNT[7]~28\ : std_logic;
SIGNAL \inst4|COUNT[8]~29_combout\ : std_logic;
SIGNAL \inst4|COUNT[8]~30\ : std_logic;
SIGNAL \inst4|COUNT[9]~31_combout\ : std_logic;
SIGNAL \GSENSOR_SDI~input_o\ : std_logic;
SIGNAL \inst13|inst|Decoder0~0_combout\ : std_logic;
SIGNAL \inst13|inst|Decoder0~4_combout\ : std_logic;
SIGNAL \inst13|inst|data_rx[1]~5_combout\ : std_logic;
SIGNAL \inst13|inst|data_rd[1]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|data_out[9]~12_combout\ : std_logic;
SIGNAL \inst3|I2C_RDY_EN~1_combout\ : std_logic;
SIGNAL \inst13|inst6~combout\ : std_logic;
SIGNAL \inst13|inst14|go~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|running~0_combout\ : std_logic;
SIGNAL \inst13|inst14|running~q\ : std_logic;
SIGNAL \inst13|inst14|latch_rdy~0_combout\ : std_logic;
SIGNAL \inst13|inst14|go~q\ : std_logic;
SIGNAL \inst13|inst14|tx_addr[7]~0_combout\ : std_logic;
SIGNAL \inst13|inst14|state_machine~0_combout\ : std_logic;
SIGNAL \inst13|inst14|data_out[15]~11_combout\ : std_logic;
SIGNAL \inst13|inst1[9]~34_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \inst7|B_DI[9]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst1[9]~35_combout\ : std_logic;
SIGNAL \inst13|inst1[9]~36_combout\ : std_logic;
SIGNAL \inst13|inst14|cmd_in[1]~feeder_combout\ : std_logic;
SIGNAL \inst4|COUNT[9]~32\ : std_logic;
SIGNAL \inst4|COUNT[10]~33_combout\ : std_logic;
SIGNAL \inst4|COUNT[10]~34\ : std_logic;
SIGNAL \inst4|COUNT[11]~35_combout\ : std_logic;
SIGNAL \inst4|COUNT[11]~36\ : std_logic;
SIGNAL \inst4|COUNT[12]~37_combout\ : std_logic;
SIGNAL \inst4|COUNT[12]~38\ : std_logic;
SIGNAL \inst4|COUNT[13]~39_combout\ : std_logic;
SIGNAL \inst13|inst|Decoder0~1_combout\ : std_logic;
SIGNAL \inst13|inst|data_rx[5]~0_combout\ : std_logic;
SIGNAL \inst13|inst|data_rd[5]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|data_out[13]~16_combout\ : std_logic;
SIGNAL \inst13|inst1[13]~44_combout\ : std_logic;
SIGNAL \inst|Selector14~4_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[21]~27_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[21]~28_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[19]~24_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[19]~25_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[37]~26_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[37]~29_combout\ : std_logic;
SIGNAL \inst|Selector15~6_combout\ : std_logic;
SIGNAL \inst|Add1~63_combout\ : std_logic;
SIGNAL \inst|Add1~64_combout\ : std_logic;
SIGNAL \inst|Add1~65_combout\ : std_logic;
SIGNAL \inst|Add1~60_combout\ : std_logic;
SIGNAL \inst|Add1~58_combout\ : std_logic;
SIGNAL \inst|Add1~59_combout\ : std_logic;
SIGNAL \inst|Add1~53_combout\ : std_logic;
SIGNAL \inst|Add1~54_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[26]~32_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[26]~33_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[24]~35_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[24]~36_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[28]~42_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[28]~43_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[42]~70_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[42]~71_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[22]~30_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[22]~31_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[20]~51_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[20]~52_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[38]~66_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[38]~67_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[30]~39_combout\ : std_logic;
SIGNAL \inst|Selector13~5_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[62]~77_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[62]~78_combout\ : std_logic;
SIGNAL \inst|Selector13~6_combout\ : std_logic;
SIGNAL \inst|Selector16~1_combout\ : std_logic;
SIGNAL \inst|Add1~73_combout\ : std_logic;
SIGNAL \inst|Add1~74_combout\ : std_logic;
SIGNAL \inst|Add1~75_combout\ : std_logic;
SIGNAL \inst|Add1~70_combout\ : std_logic;
SIGNAL \inst|Add1~68_combout\ : std_logic;
SIGNAL \inst|Add1~69_combout\ : std_logic;
SIGNAL \inst|Add1~67\ : std_logic;
SIGNAL \inst|Add1~72\ : std_logic;
SIGNAL \inst|Add1~76_combout\ : std_logic;
SIGNAL \inst|Selector13~7_combout\ : std_logic;
SIGNAL \inst|Selector13~8_combout\ : std_logic;
SIGNAL \inst|Selector13~4_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[34]~64_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[18]~48_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[18]~49_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[34]~63_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[34]~65_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[54]~79_combout\ : std_logic;
SIGNAL \inst|Selector13~3_combout\ : std_logic;
SIGNAL \inst|Selector13~10_combout\ : std_logic;
SIGNAL \inst4|COUNT[13]~40\ : std_logic;
SIGNAL \inst4|COUNT[14]~41_combout\ : std_logic;
SIGNAL \inst13|inst|Decoder0~6_combout\ : std_logic;
SIGNAL \inst13|inst|data_rx[6]~7_combout\ : std_logic;
SIGNAL \inst13|inst|data_rd[6]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|data_out[14]~17_combout\ : std_logic;
SIGNAL \inst13|inst1[14]~46_combout\ : std_logic;
SIGNAL \inst|Selector13~2_combout\ : std_logic;
SIGNAL \inst|Selector13~9_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[30]~40_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[46]~68_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[46]~82_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[58]~69_combout\ : std_logic;
SIGNAL \inst|Selector17~4_combout\ : std_logic;
SIGNAL \inst|Add1~50_combout\ : std_logic;
SIGNAL \inst|Add1~48_combout\ : std_logic;
SIGNAL \inst|Add1~49_combout\ : std_logic;
SIGNAL \inst|Add1~45_combout\ : std_logic;
SIGNAL \inst|Add1~43_combout\ : std_logic;
SIGNAL \inst|Add1~44_combout\ : std_logic;
SIGNAL \inst|Add1~42\ : std_logic;
SIGNAL \inst|Add1~47\ : std_logic;
SIGNAL \inst|Add1~52\ : std_logic;
SIGNAL \inst|Add1~56_combout\ : std_logic;
SIGNAL \inst|Selector17~7_combout\ : std_logic;
SIGNAL \inst|Selector17~8_combout\ : std_logic;
SIGNAL \inst|Selector17~6_combout\ : std_logic;
SIGNAL \inst|Selector17~9_combout\ : std_logic;
SIGNAL \inst|Selector17~5_combout\ : std_logic;
SIGNAL \inst13|inst|data_rx[2]~3_combout\ : std_logic;
SIGNAL \inst13|inst|data_rx[2]~4_combout\ : std_logic;
SIGNAL \inst13|inst|data_rd[2]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|data_out[10]~13_combout\ : std_logic;
SIGNAL \inst13|inst1[10]~37_combout\ : std_logic;
SIGNAL \inst|Selector17~11_combout\ : std_logic;
SIGNAL \inst|Selector17~3_combout\ : std_logic;
SIGNAL \inst|Selector17~10_combout\ : std_logic;
SIGNAL \inst|Add1~55_combout\ : std_logic;
SIGNAL \inst|Add1~57\ : std_logic;
SIGNAL \inst|Add1~62\ : std_logic;
SIGNAL \inst|Add1~66_combout\ : std_logic;
SIGNAL \inst|Selector15~7_combout\ : std_logic;
SIGNAL \inst|Selector15~5_combout\ : std_logic;
SIGNAL \inst|Selector15~8_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[44]~41_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[44]~44_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[40]~34_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[40]~37_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[60]~38_combout\ : std_logic;
SIGNAL \inst|Selector15~3_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[32]~45_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[32]~46_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[52]~47_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[36]~50_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[36]~53_combout\ : std_logic;
SIGNAL \inst|Selector15~4_combout\ : std_logic;
SIGNAL \inst|Selector15~10_combout\ : std_logic;
SIGNAL \inst|Selector15~2_combout\ : std_logic;
SIGNAL \inst|Selector15~9_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[27]~11_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[27]~12_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[41]~16_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[25]~17_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[25]~18_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[41]~19_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[53]~22_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[53]~23_combout\ : std_logic;
SIGNAL \inst|Selector14~3_combout\ : std_logic;
SIGNAL \inst|Selector14~6_combout\ : std_logic;
SIGNAL \inst|Add1~71_combout\ : std_logic;
SIGNAL \inst|Selector14~7_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[29]~8_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[29]~9_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[45]~10_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[45]~81_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[61]~13_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[61]~20_combout\ : std_logic;
SIGNAL \inst|Selector14~5_combout\ : std_logic;
SIGNAL \inst|Selector14~8_combout\ : std_logic;
SIGNAL \inst|Selector14~10_combout\ : std_logic;
SIGNAL \inst|Selector14~2_combout\ : std_logic;
SIGNAL \inst|Selector14~9_combout\ : std_logic;
SIGNAL \inst|io_bus|dout[13]~3_combout\ : std_logic;
SIGNAL \inst13|inst1[13]~45_combout\ : std_logic;
SIGNAL \inst13|inst14|Selector21~1_combout\ : std_logic;
SIGNAL \inst13|inst14|Selector20~2_combout\ : std_logic;
SIGNAL \inst13|inst14|Selector20~3_combout\ : std_logic;
SIGNAL \inst13|inst14|state.Rx2~q\ : std_logic;
SIGNAL \inst13|inst|Decoder0~2_combout\ : std_logic;
SIGNAL \inst13|inst|data_rx[4]~1_combout\ : std_logic;
SIGNAL \inst13|inst|data_rd[4]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|data_out[12]~15_combout\ : std_logic;
SIGNAL \inst13|inst1[12]~42_combout\ : std_logic;
SIGNAL \inst|io_bus|dout[12]~2_combout\ : std_logic;
SIGNAL \inst13|inst1[12]~43_combout\ : std_logic;
SIGNAL \inst13|inst14|cmd_in[4]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|Selector18~0_combout\ : std_logic;
SIGNAL \inst13|inst14|state.Tx1p~q\ : std_logic;
SIGNAL \inst13|inst14|Equal0~0_combout\ : std_logic;
SIGNAL \inst13|inst14|Selector17~0_combout\ : std_logic;
SIGNAL \inst13|inst14|state.Tx2~q\ : std_logic;
SIGNAL \inst13|inst14|Selector19~0_combout\ : std_logic;
SIGNAL \inst13|inst14|state.Tx1~q\ : std_logic;
SIGNAL \inst13|inst14|Selector22~1_combout\ : std_logic;
SIGNAL \inst13|inst14|Selector21~2_combout\ : std_logic;
SIGNAL \inst13|inst14|state.Rx1p~q\ : std_logic;
SIGNAL \inst13|inst14|Selector22~0_combout\ : std_logic;
SIGNAL \inst13|inst14|Selector22~2_combout\ : std_logic;
SIGNAL \inst13|inst14|state.Rx1~q\ : std_logic;
SIGNAL \inst13|inst14|data_out[1]~6_combout\ : std_logic;
SIGNAL \inst13|inst14|data_out[7]~2_combout\ : std_logic;
SIGNAL \inst13|inst1[1]~17_combout\ : std_logic;
SIGNAL \inst13|inst1[1]~19_combout\ : std_logic;
SIGNAL \inst13|inst14|addr_in[1]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|tx_addr[1]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|tx_addr[7]~1_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \inst7|B_DI[2]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst1[2]~15_combout\ : std_logic;
SIGNAL \inst13|inst14|data_out[2]~5_combout\ : std_logic;
SIGNAL \inst13|inst1[2]~14_combout\ : std_logic;
SIGNAL \inst13|inst1[2]~16_combout\ : std_logic;
SIGNAL \inst13|inst14|addr_in[2]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|tx_addr[2]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|Selector32~0_combout\ : std_logic;
SIGNAL \inst13|inst14|state_machine~1_combout\ : std_logic;
SIGNAL \inst13|inst14|Selector32~1_combout\ : std_logic;
SIGNAL \inst13|inst14|Selector32~2_combout\ : std_logic;
SIGNAL \inst13|inst14|comm_en~q\ : std_logic;
SIGNAL \inst13|inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst13|inst|Selector21~0_combout\ : std_logic;
SIGNAL \inst13|inst|state.command~q\ : std_logic;
SIGNAL \inst13|inst|state~15_combout\ : std_logic;
SIGNAL \inst13|inst|state.slv_ack1~q\ : std_logic;
SIGNAL \inst13|inst|Selector22~0_combout\ : std_logic;
SIGNAL \inst13|inst|Selector22~1_combout\ : std_logic;
SIGNAL \inst13|inst|Selector22~2_combout\ : std_logic;
SIGNAL \inst13|inst|state.wr~q\ : std_logic;
SIGNAL \inst13|inst|state~16_combout\ : std_logic;
SIGNAL \inst13|inst|state.slv_ack2~q\ : std_logic;
SIGNAL \inst13|inst|Selector24~0_combout\ : std_logic;
SIGNAL \inst13|inst|Selector24~1_combout\ : std_logic;
SIGNAL \inst13|inst|state.stop~q\ : std_logic;
SIGNAL \inst13|inst|Selector18~0_combout\ : std_logic;
SIGNAL \inst13|inst|state.ready~q\ : std_logic;
SIGNAL \inst13|inst|addr_rw[7]~0_combout\ : std_logic;
SIGNAL \inst13|inst|Selector25~6_combout\ : std_logic;
SIGNAL \inst13|inst|addr_rw[7]~1_combout\ : std_logic;
SIGNAL \inst13|inst|process_1~0_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \inst13|inst1[4]~9_combout\ : std_logic;
SIGNAL \inst13|inst14|data_out[4]~3_combout\ : std_logic;
SIGNAL \inst13|inst1[4]~8_combout\ : std_logic;
SIGNAL \inst13|inst1[4]~10_combout\ : std_logic;
SIGNAL \inst13|inst14|addr_in[4]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|tx_addr[4]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst|Decoder0~3_combout\ : std_logic;
SIGNAL \inst13|inst|data_rx[3]~2_combout\ : std_logic;
SIGNAL \inst13|inst|data_rd[3]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|data_out[3]~4_combout\ : std_logic;
SIGNAL \inst13|inst1[3]~11_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \inst13|inst1[3]~12_combout\ : std_logic;
SIGNAL \inst13|inst1[3]~13_combout\ : std_logic;
SIGNAL \inst13|inst14|addr_in[3]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|tx_addr[3]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst|process_1~1_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \inst13|inst1[5]~4_combout\ : std_logic;
SIGNAL \inst13|inst14|data_out[5]~0_combout\ : std_logic;
SIGNAL \inst13|inst1[5]~3_combout\ : std_logic;
SIGNAL \inst13|inst1[5]~7_combout\ : std_logic;
SIGNAL \inst13|inst14|addr_in[5]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|tx_addr[5]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|data_out[6]~8_combout\ : std_logic;
SIGNAL \inst13|inst1[6]~25_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \inst13|inst1[6]~26_combout\ : std_logic;
SIGNAL \inst13|inst1[6]~27_combout\ : std_logic;
SIGNAL \inst13|inst14|addr_in[6]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|tx_addr[6]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst|process_1~2_combout\ : std_logic;
SIGNAL \inst13|inst1[7]~30_combout\ : std_logic;
SIGNAL \inst13|inst14|tx_addr[7]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst|process_1~3_combout\ : std_logic;
SIGNAL \inst13|inst|process_1~4_combout\ : std_logic;
SIGNAL \inst13|inst|Selector20~0_combout\ : std_logic;
SIGNAL \inst13|inst|Selector20~1_combout\ : std_logic;
SIGNAL \inst13|inst|state.restart~q\ : std_logic;
SIGNAL \inst13|inst|Selector19~0_combout\ : std_logic;
SIGNAL \inst13|inst|state.start~q\ : std_logic;
SIGNAL \inst13|inst|Selector29~0_combout\ : std_logic;
SIGNAL \inst13|inst|Selector29~1_combout\ : std_logic;
SIGNAL \inst13|inst|ack_error~q\ : std_logic;
SIGNAL \inst13|inst|Selector0~1_combout\ : std_logic;
SIGNAL \inst13|inst|Selector0~0_combout\ : std_logic;
SIGNAL \inst13|inst|Selector0~2_combout\ : std_logic;
SIGNAL \inst13|inst|WideOr3~0_combout\ : std_logic;
SIGNAL \inst13|inst|Selector0~3_combout\ : std_logic;
SIGNAL \inst13|inst|busy~q\ : std_logic;
SIGNAL \inst13|inst14|prev_busy~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|prev_busy~q\ : std_logic;
SIGNAL \inst13|inst|Decoder0~7_combout\ : std_logic;
SIGNAL \inst13|inst|data_rx[7]~8_combout\ : std_logic;
SIGNAL \inst13|inst|data_rd[7]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|data_out[7]~9_combout\ : std_logic;
SIGNAL \inst13|inst1[7]~28_combout\ : std_logic;
SIGNAL \inst|Selector20~6_combout\ : std_logic;
SIGNAL \inst|Selector20~7_combout\ : std_logic;
SIGNAL \inst|Selector20~8_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[23]~14_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[23]~15_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[39]~58_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[39]~59_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[49]~57_combout\ : std_logic;
SIGNAL \inst|Selector16~0_combout\ : std_logic;
SIGNAL \inst|Selector24~0_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[59]~60_combout\ : std_logic;
SIGNAL \inst|Selector22~2_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[43]~61_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[43]~62_combout\ : std_logic;
SIGNAL \inst|Selector24~6_combout\ : std_logic;
SIGNAL \inst|Selector24~5_combout\ : std_logic;
SIGNAL \inst|Selector24~7_combout\ : std_logic;
SIGNAL \inst|Selector24~8_combout\ : std_logic;
SIGNAL \inst|Add1~9_combout\ : std_logic;
SIGNAL \inst|Add1~28\ : std_logic;
SIGNAL \inst|Add1~29_combout\ : std_logic;
SIGNAL \inst|Selector23~6_combout\ : std_logic;
SIGNAL \inst|Selector23~7_combout\ : std_logic;
SIGNAL \inst|Selector23~4_combout\ : std_logic;
SIGNAL \inst|Selector23~3_combout\ : std_logic;
SIGNAL \inst|Selector23~1_combout\ : std_logic;
SIGNAL \inst|Selector23~0_combout\ : std_logic;
SIGNAL \inst|Selector23~2_combout\ : std_logic;
SIGNAL \inst|Selector23~8_combout\ : std_logic;
SIGNAL \inst|Add1~6_combout\ : std_logic;
SIGNAL \inst|Add1~30\ : std_logic;
SIGNAL \inst|Add1~32\ : std_logic;
SIGNAL \inst|Add1~36_combout\ : std_logic;
SIGNAL \inst|Selector21~5_combout\ : std_logic;
SIGNAL \inst|Selector21~2_combout\ : std_logic;
SIGNAL \inst|Selector21~10_combout\ : std_logic;
SIGNAL \inst|Selector21~6_combout\ : std_logic;
SIGNAL \inst|Selector21~7_combout\ : std_logic;
SIGNAL \inst|Selector21~8_combout\ : std_logic;
SIGNAL \inst|Selector21~9_combout\ : std_logic;
SIGNAL \inst|Add1~16_combout\ : std_logic;
SIGNAL \inst|Add1~17_combout\ : std_logic;
SIGNAL \inst|Add1~18_combout\ : std_logic;
SIGNAL \inst|Add1~20_cout\ : std_logic;
SIGNAL \inst|Add1~22\ : std_logic;
SIGNAL \inst|Add1~24\ : std_logic;
SIGNAL \inst|Add1~25_combout\ : std_logic;
SIGNAL \inst|Selector25~4_combout\ : std_logic;
SIGNAL \inst|Selector17~2_combout\ : std_logic;
SIGNAL \inst|Selector25~0_combout\ : std_logic;
SIGNAL \inst|Selector25~6_combout\ : std_logic;
SIGNAL \inst|Selector25~5_combout\ : std_logic;
SIGNAL \inst|Selector25~7_combout\ : std_logic;
SIGNAL \inst|Selector25~8_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[17]~21_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[35]~55_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[35]~54_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[35]~56_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[55]~80_combout\ : std_logic;
SIGNAL \inst|Selector12~5_combout\ : std_logic;
SIGNAL \inst|Selector12~6_combout\ : std_logic;
SIGNAL \inst|Selector12~7_combout\ : std_logic;
SIGNAL \inst|Selector12~8_combout\ : std_logic;
SIGNAL \inst|Selector12~16_combout\ : std_logic;
SIGNAL \inst|Add1~80_combout\ : std_logic;
SIGNAL \inst|Add1~78_combout\ : std_logic;
SIGNAL \inst|Add1~79_combout\ : std_logic;
SIGNAL \inst|Add1~77\ : std_logic;
SIGNAL \inst|Add1~81_combout\ : std_logic;
SIGNAL \inst|Selector12~10_combout\ : std_logic;
SIGNAL \inst|Selector12~9_combout\ : std_logic;
SIGNAL \inst|Selector12~11_combout\ : std_logic;
SIGNAL \inst|Selector12~12_combout\ : std_logic;
SIGNAL \inst|Selector12~13_combout\ : std_logic;
SIGNAL \inst|Selector12~15_combout\ : std_logic;
SIGNAL \inst4|COUNT[14]~42\ : std_logic;
SIGNAL \inst4|COUNT[15]~43_combout\ : std_logic;
SIGNAL \inst13|inst14|data_out[15]~18_combout\ : std_logic;
SIGNAL \inst13|inst1[15]~48_combout\ : std_logic;
SIGNAL \inst|Selector12~4_combout\ : std_logic;
SIGNAL \inst|Selector12~14_combout\ : std_logic;
SIGNAL \inst|Selector19~0_combout\ : std_logic;
SIGNAL \inst|Add1~51_combout\ : std_logic;
SIGNAL \inst|Selector18~4_combout\ : std_logic;
SIGNAL \inst|Selector18~2_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[49]~72_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[49]~84_combout\ : std_logic;
SIGNAL \inst|Selector18~5_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[57]~73_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[57]~74_combout\ : std_logic;
SIGNAL \inst|Selector18~0_combout\ : std_logic;
SIGNAL \inst|Selector18~1_combout\ : std_logic;
SIGNAL \inst|Selector18~6_combout\ : std_logic;
SIGNAL \inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst|Selector1~1_combout\ : std_logic;
SIGNAL \inst|PC_stack[9][10]~feeder_combout\ : std_logic;
SIGNAL \inst|PC_stack[9][10]~q\ : std_logic;
SIGNAL \inst|Selector119~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[8][10]~q\ : std_logic;
SIGNAL \inst|Selector108~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[7][10]~q\ : std_logic;
SIGNAL \inst|Selector97~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[6][10]~q\ : std_logic;
SIGNAL \inst|Selector86~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[5][10]~q\ : std_logic;
SIGNAL \inst|Selector75~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[4][10]~q\ : std_logic;
SIGNAL \inst|Selector64~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[3][10]~q\ : std_logic;
SIGNAL \inst|Selector53~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[2][10]~q\ : std_logic;
SIGNAL \inst|Selector42~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[1][10]~q\ : std_logic;
SIGNAL \inst|Selector31~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[0][10]~q\ : std_logic;
SIGNAL \inst|Selector1~2_combout\ : std_logic;
SIGNAL \inst|next_mem_addr[10]~10_combout\ : std_logic;
SIGNAL \inst|Selector2~0_combout\ : std_logic;
SIGNAL \inst|next_mem_addr[9]~9_combout\ : std_logic;
SIGNAL \inst|Selector4~0_combout\ : std_logic;
SIGNAL \inst|next_mem_addr[7]~7_combout\ : std_logic;
SIGNAL \inst|Selector5~0_combout\ : std_logic;
SIGNAL \inst|next_mem_addr[6]~6_combout\ : std_logic;
SIGNAL \inst|Selector7~0_combout\ : std_logic;
SIGNAL \inst|next_mem_addr[4]~4_combout\ : std_logic;
SIGNAL \inst|Selector8~0_combout\ : std_logic;
SIGNAL \inst|Selector8~1_combout\ : std_logic;
SIGNAL \inst|PC_stack[9][3]~feeder_combout\ : std_logic;
SIGNAL \inst|PC_stack[9][3]~q\ : std_logic;
SIGNAL \inst|Selector126~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[8][3]~q\ : std_logic;
SIGNAL \inst|Selector115~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[7][3]~q\ : std_logic;
SIGNAL \inst|Selector104~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[6][3]~q\ : std_logic;
SIGNAL \inst|Selector93~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[5][3]~q\ : std_logic;
SIGNAL \inst|Selector82~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[4][3]~q\ : std_logic;
SIGNAL \inst|Selector71~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[3][3]~q\ : std_logic;
SIGNAL \inst|Selector60~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[2][3]~q\ : std_logic;
SIGNAL \inst|Selector49~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[1][3]~q\ : std_logic;
SIGNAL \inst|Selector38~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[0][3]~q\ : std_logic;
SIGNAL \inst|Selector8~2_combout\ : std_logic;
SIGNAL \inst|next_mem_addr[3]~3_combout\ : std_logic;
SIGNAL \inst|Selector22~4_combout\ : std_logic;
SIGNAL \inst|Selector22~13_combout\ : std_logic;
SIGNAL \inst|Selector22~5_combout\ : std_logic;
SIGNAL \inst|Add1~31_combout\ : std_logic;
SIGNAL \inst|Selector22~7_combout\ : std_logic;
SIGNAL \inst|Selector22~8_combout\ : std_logic;
SIGNAL \inst|Selector22~10_combout\ : std_logic;
SIGNAL \inst|Selector22~9_combout\ : std_logic;
SIGNAL \inst|Selector22~11_combout\ : std_logic;
SIGNAL \inst|Selector22~12_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Equal0~4_combout\ : std_logic;
SIGNAL \inst|state~51_combout\ : std_logic;
SIGNAL \inst|state.ex_jzero~q\ : std_logic;
SIGNAL \inst|WideOr2~0_combout\ : std_logic;
SIGNAL \inst|state~53_combout\ : std_logic;
SIGNAL \inst|state.ex_jump~q\ : std_logic;
SIGNAL \inst|state~52_combout\ : std_logic;
SIGNAL \inst|state.ex_jneg~q\ : std_logic;
SIGNAL \inst|PC[0]~0_combout\ : std_logic;
SIGNAL \inst|state~50_combout\ : std_logic;
SIGNAL \inst|state.ex_jpos~q\ : std_logic;
SIGNAL \inst|PC[0]~1_combout\ : std_logic;
SIGNAL \inst|PC[0]~2_combout\ : std_logic;
SIGNAL \inst|next_mem_addr[2]~2_combout\ : std_logic;
SIGNAL \inst|state~38_combout\ : std_logic;
SIGNAL \inst|state~45_combout\ : std_logic;
SIGNAL \inst|state.ex_xor~q\ : std_logic;
SIGNAL \inst|Selector26~2_combout\ : std_logic;
SIGNAL \inst|Selector26~3_combout\ : std_logic;
SIGNAL \inst|Add1~23_combout\ : std_logic;
SIGNAL \inst|Selector26~4_combout\ : std_logic;
SIGNAL \inst|Selector26~1_combout\ : std_logic;
SIGNAL \inst|Selector26~0_combout\ : std_logic;
SIGNAL \inst|Selector26~5_combout\ : std_logic;
SIGNAL \inst|Selector26~6_combout\ : std_logic;
SIGNAL \inst|Selector26~7_combout\ : std_logic;
SIGNAL \inst|Selector10~0_combout\ : std_logic;
SIGNAL \inst|Selector10~1_combout\ : std_logic;
SIGNAL \inst|PC_stack[9][1]~feeder_combout\ : std_logic;
SIGNAL \inst|PC_stack[9][1]~q\ : std_logic;
SIGNAL \inst|Selector128~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[8][1]~q\ : std_logic;
SIGNAL \inst|Selector117~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[7][1]~q\ : std_logic;
SIGNAL \inst|Selector106~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[6][1]~q\ : std_logic;
SIGNAL \inst|Selector95~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[5][1]~q\ : std_logic;
SIGNAL \inst|Selector84~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[4][1]~q\ : std_logic;
SIGNAL \inst|Selector73~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[3][1]~q\ : std_logic;
SIGNAL \inst|Selector62~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[2][1]~q\ : std_logic;
SIGNAL \inst|Selector51~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[1][1]~q\ : std_logic;
SIGNAL \inst|Selector40~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[0][1]~q\ : std_logic;
SIGNAL \inst|Selector10~2_combout\ : std_logic;
SIGNAL \inst|next_mem_addr[1]~1_combout\ : std_logic;
SIGNAL \inst|Add1~46_combout\ : std_logic;
SIGNAL \inst|Selector19~5_combout\ : std_logic;
SIGNAL \inst|Selector19~6_combout\ : std_logic;
SIGNAL \inst|Selector19~4_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[48]~75_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[48]~83_combout\ : std_logic;
SIGNAL \inst|Selector19~8_combout\ : std_logic;
SIGNAL \inst|shifter|auto_generated|sbit_w[56]~76_combout\ : std_logic;
SIGNAL \inst|Selector19~1_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \inst7|B_DI[8]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst1[8]~32_combout\ : std_logic;
SIGNAL \inst13|inst|Decoder0~5_combout\ : std_logic;
SIGNAL \inst13|inst|data_rx[0]~6_combout\ : std_logic;
SIGNAL \inst13|inst|data_rd[0]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|data_out[8]~10_combout\ : std_logic;
SIGNAL \inst13|inst1[8]~31_combout\ : std_logic;
SIGNAL \inst|Selector19~2_combout\ : std_logic;
SIGNAL \inst|Selector19~3_combout\ : std_logic;
SIGNAL \inst|Selector19~9_combout\ : std_logic;
SIGNAL \inst|state~48_combout\ : std_logic;
SIGNAL \inst|state.ex_istore~q\ : std_logic;
SIGNAL \inst|WideOr7~0_combout\ : std_logic;
SIGNAL \inst|WideOr7~combout\ : std_logic;
SIGNAL \inst|state.fetch~q\ : std_logic;
SIGNAL \inst|Selector11~0_combout\ : std_logic;
SIGNAL \inst|Selector11~1_combout\ : std_logic;
SIGNAL \inst|PC_stack[9][0]~feeder_combout\ : std_logic;
SIGNAL \inst|PC_stack[9][0]~q\ : std_logic;
SIGNAL \inst|Selector129~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[8][0]~q\ : std_logic;
SIGNAL \inst|Selector118~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[7][0]~q\ : std_logic;
SIGNAL \inst|Selector107~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[6][0]~q\ : std_logic;
SIGNAL \inst|Selector96~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[5][0]~q\ : std_logic;
SIGNAL \inst|Selector85~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[4][0]~q\ : std_logic;
SIGNAL \inst|Selector74~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[3][0]~q\ : std_logic;
SIGNAL \inst|Selector63~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[2][0]~q\ : std_logic;
SIGNAL \inst|Selector52~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[1][0]~q\ : std_logic;
SIGNAL \inst|Selector41~0_combout\ : std_logic;
SIGNAL \inst|PC_stack[0][0]~q\ : std_logic;
SIGNAL \inst|Selector11~2_combout\ : std_logic;
SIGNAL \inst|next_mem_addr[0]~0_combout\ : std_logic;
SIGNAL \inst|state~34_combout\ : std_logic;
SIGNAL \inst|state.ex_in~q\ : std_logic;
SIGNAL \inst|state.ex_in2~q\ : std_logic;
SIGNAL \inst|Selector27~2_combout\ : std_logic;
SIGNAL \inst|Add1~21_combout\ : std_logic;
SIGNAL \inst|Selector27~1_combout\ : std_logic;
SIGNAL \inst|Selector27~3_combout\ : std_logic;
SIGNAL \inst|Selector27~4_combout\ : std_logic;
SIGNAL \inst|Selector27~5_combout\ : std_logic;
SIGNAL \inst|Selector27~0_combout\ : std_logic;
SIGNAL \inst13|inst14|data_out[0]~7_combout\ : std_logic;
SIGNAL \inst13|inst1[0]~20_combout\ : std_logic;
SIGNAL \inst13|inst1[0]~50_combout\ : std_logic;
SIGNAL \inst13|inst1[0]~21_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst13|inst1[0]~22_combout\ : std_logic;
SIGNAL \inst11|Finished[0]~9_combout\ : std_logic;
SIGNAL \inst|io_bus|dout[14]~4_combout\ : std_logic;
SIGNAL \inst13|inst1[14]~47_combout\ : std_logic;
SIGNAL \inst11|process_1~0_combout\ : std_logic;
SIGNAL \inst|io_bus|dout[15]~5_combout\ : std_logic;
SIGNAL \inst13|inst1[15]~49_combout\ : std_logic;
SIGNAL \inst11|Equal3~0_combout\ : std_logic;
SIGNAL \inst11|Finished[0]~1_combout\ : std_logic;
SIGNAL \inst5|count_4Hz[0]~21_combout\ : std_logic;
SIGNAL \inst5|count_4Hz[0]~22\ : std_logic;
SIGNAL \inst5|count_4Hz[1]~23_combout\ : std_logic;
SIGNAL \inst5|count_4Hz[1]~24\ : std_logic;
SIGNAL \inst5|count_4Hz[2]~25_combout\ : std_logic;
SIGNAL \inst5|count_4Hz[2]~26\ : std_logic;
SIGNAL \inst5|count_4Hz[3]~27_combout\ : std_logic;
SIGNAL \inst5|count_4Hz[3]~28\ : std_logic;
SIGNAL \inst5|count_4Hz[4]~29_combout\ : std_logic;
SIGNAL \inst5|count_4Hz[4]~30\ : std_logic;
SIGNAL \inst5|count_4Hz[5]~31_combout\ : std_logic;
SIGNAL \inst5|count_4Hz[5]~32\ : std_logic;
SIGNAL \inst5|count_4Hz[6]~33_combout\ : std_logic;
SIGNAL \inst5|count_4Hz[6]~34\ : std_logic;
SIGNAL \inst5|count_4Hz[7]~35_combout\ : std_logic;
SIGNAL \inst5|count_4Hz[7]~36\ : std_logic;
SIGNAL \inst5|count_4Hz[8]~37_combout\ : std_logic;
SIGNAL \inst5|count_4Hz[8]~38\ : std_logic;
SIGNAL \inst5|count_4Hz[9]~39_combout\ : std_logic;
SIGNAL \inst5|count_4Hz[9]~40\ : std_logic;
SIGNAL \inst5|count_4Hz[10]~41_combout\ : std_logic;
SIGNAL \inst5|count_4Hz[10]~42\ : std_logic;
SIGNAL \inst5|count_4Hz[11]~43_combout\ : std_logic;
SIGNAL \inst5|count_4Hz[11]~44\ : std_logic;
SIGNAL \inst5|count_4Hz[12]~45_combout\ : std_logic;
SIGNAL \inst5|count_4Hz[12]~46\ : std_logic;
SIGNAL \inst5|count_4Hz[13]~47_combout\ : std_logic;
SIGNAL \inst5|count_4Hz[13]~48\ : std_logic;
SIGNAL \inst5|count_4Hz[14]~49_combout\ : std_logic;
SIGNAL \inst5|count_4Hz[14]~50\ : std_logic;
SIGNAL \inst5|count_4Hz[15]~51_combout\ : std_logic;
SIGNAL \inst5|count_4Hz[15]~52\ : std_logic;
SIGNAL \inst5|count_4Hz[16]~53_combout\ : std_logic;
SIGNAL \inst5|count_4Hz[16]~54\ : std_logic;
SIGNAL \inst5|count_4Hz[17]~55_combout\ : std_logic;
SIGNAL \inst5|count_4Hz[17]~56\ : std_logic;
SIGNAL \inst5|count_4Hz[18]~57_combout\ : std_logic;
SIGNAL \inst5|count_4Hz[18]~58\ : std_logic;
SIGNAL \inst5|count_4Hz[19]~59_combout\ : std_logic;
SIGNAL \inst5|count_4Hz[19]~60\ : std_logic;
SIGNAL \inst5|count_4Hz[20]~61_combout\ : std_logic;
SIGNAL \inst5|LessThan6~0_combout\ : std_logic;
SIGNAL \inst5|LessThan6~1_combout\ : std_logic;
SIGNAL \inst5|LessThan6~2_combout\ : std_logic;
SIGNAL \inst5|LessThan6~3_combout\ : std_logic;
SIGNAL \inst5|LessThan6~4_combout\ : std_logic;
SIGNAL \inst5|LessThan6~5_combout\ : std_logic;
SIGNAL \inst5|LessThan6~6_combout\ : std_logic;
SIGNAL \inst5|clock_4Hz_int~0_combout\ : std_logic;
SIGNAL \inst5|clock_4Hz_int~q\ : std_logic;
SIGNAL \inst5|clock_4Hz~q\ : std_logic;
SIGNAL \inst5|clock_4Hz~clkctrl_outclk\ : std_logic;
SIGNAL \inst11|DurCount[0]~2_combout\ : std_logic;
SIGNAL \inst11|DurCount[0]~3_combout\ : std_logic;
SIGNAL \inst11|DurCount[0]~0_combout\ : std_logic;
SIGNAL \inst11|DurCount[1]~1_combout\ : std_logic;
SIGNAL \inst11|Equal1~0_combout\ : std_logic;
SIGNAL \inst11|Finished[0]~4_combout\ : std_logic;
SIGNAL \inst11|Finished[0]~0_combout\ : std_logic;
SIGNAL \inst11|Finished[0]~_emulated_q\ : std_logic;
SIGNAL \inst11|Finished[0]~3_combout\ : std_logic;
SIGNAL \inst11|Finished[0]~2_combout\ : std_logic;
SIGNAL \inst13|inst1[0]~23_combout\ : std_logic;
SIGNAL \inst|Selector27~6_combout\ : std_logic;
SIGNAL \inst|Selector27~7_combout\ : std_logic;
SIGNAL \inst|Selector16~4_combout\ : std_logic;
SIGNAL \inst|Selector16~6_combout\ : std_logic;
SIGNAL \inst|Selector16~7_combout\ : std_logic;
SIGNAL \inst|Add1~61_combout\ : std_logic;
SIGNAL \inst|Selector16~8_combout\ : std_logic;
SIGNAL \inst|Selector16~9_combout\ : std_logic;
SIGNAL \inst|Selector16~5_combout\ : std_logic;
SIGNAL \inst|io_bus|dout[11]~1_combout\ : std_logic;
SIGNAL \inst|Selector16~2_combout\ : std_logic;
SIGNAL \inst13|inst14|data_out[11]~14_combout\ : std_logic;
SIGNAL \inst13|inst1[11]~40_combout\ : std_logic;
SIGNAL \inst|Selector16~3_combout\ : std_logic;
SIGNAL \inst|Selector16~10_combout\ : std_logic;
SIGNAL \inst|state~47_combout\ : std_logic;
SIGNAL \inst|state.ex_store~q\ : std_logic;
SIGNAL \inst|state.ex_store2~q\ : std_logic;
SIGNAL \inst|Selector0~0_combout\ : std_logic;
SIGNAL \inst|Selector0~1_combout\ : std_logic;
SIGNAL \inst|MW~q\ : std_logic;
SIGNAL \inst|state~33_combout\ : std_logic;
SIGNAL \inst|Selector28~0_combout\ : std_logic;
SIGNAL \inst|Selector28~1_combout\ : std_logic;
SIGNAL \inst|IO_WRITE_int~q\ : std_logic;
SIGNAL \inst3|I2C_DATA_EN~2_combout\ : std_logic;
SIGNAL \inst13|inst12~combout\ : std_logic;
SIGNAL \inst13|inst12~clkctrl_outclk\ : std_logic;
SIGNAL \inst13|inst1[8]~33_combout\ : std_logic;
SIGNAL \inst13|inst14|state~18_combout\ : std_logic;
SIGNAL \inst13|inst14|data_out[4]~19_combout\ : std_logic;
SIGNAL \inst13|inst14|Selector21~0_combout\ : std_logic;
SIGNAL \inst13|inst14|Selector16~0_combout\ : std_logic;
SIGNAL \inst13|inst14|Selector16~1_combout\ : std_logic;
SIGNAL \inst13|inst14|state.idle~q\ : std_logic;
SIGNAL \inst13|inst14|rnw~0_combout\ : std_logic;
SIGNAL \inst13|inst14|rnw~1_combout\ : std_logic;
SIGNAL \inst13|inst14|rnw~2_combout\ : std_logic;
SIGNAL \inst13|inst14|rnw~3_combout\ : std_logic;
SIGNAL \inst13|inst14|rnw~q\ : std_logic;
SIGNAL \inst13|inst|Selector23~1_combout\ : std_logic;
SIGNAL \inst13|inst|Selector23~2_combout\ : std_logic;
SIGNAL \inst13|inst|Selector23~3_combout\ : std_logic;
SIGNAL \inst13|inst|state.rd~q\ : std_logic;
SIGNAL \inst13|inst|WideOr12~0_combout\ : std_logic;
SIGNAL \inst13|inst|Add1~0_combout\ : std_logic;
SIGNAL \inst13|inst|bit_cnt[2]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst13|inst|Mux0~1_combout\ : std_logic;
SIGNAL \inst13|inst|Mux0~2_combout\ : std_logic;
SIGNAL \inst13|inst|Mux0~3_combout\ : std_logic;
SIGNAL \inst13|inst|Selector25~13_combout\ : std_logic;
SIGNAL \inst13|inst|Selector23~0_combout\ : std_logic;
SIGNAL \inst13|inst13~combout\ : std_logic;
SIGNAL \inst13|inst13~clkctrl_outclk\ : std_logic;
SIGNAL \inst13|inst14|data_in[6]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|Selector24~0_combout\ : std_logic;
SIGNAL \inst13|inst14|tx_byte[7]~0_combout\ : std_logic;
SIGNAL \inst13|inst14|tx_byte[7]~1_combout\ : std_logic;
SIGNAL \inst13|inst14|data_in[13]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|data_in[5]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|Selector25~0_combout\ : std_logic;
SIGNAL \inst13|inst14|data_in[12]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|data_in[4]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|Selector26~0_combout\ : std_logic;
SIGNAL \inst13|inst|Mux2~2_combout\ : std_logic;
SIGNAL \inst13|inst14|data_in[15]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|Selector23~0_combout\ : std_logic;
SIGNAL \inst13|inst|Mux2~3_combout\ : std_logic;
SIGNAL \inst13|inst14|data_in[2]~feeder_combout\ : std_logic;
SIGNAL \inst|io_bus|dout[10]~0_combout\ : std_logic;
SIGNAL \inst13|inst1[10]~39_combout\ : std_logic;
SIGNAL \inst13|inst14|data_in[10]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|Selector28~0_combout\ : std_logic;
SIGNAL \inst13|inst1[11]~41_combout\ : std_logic;
SIGNAL \inst13|inst14|data_in[11]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|data_in[3]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|Selector27~0_combout\ : std_logic;
SIGNAL \inst13|inst1[0]~24_combout\ : std_logic;
SIGNAL \inst13|inst14|data_in[0]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|data_in[8]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|Selector30~0_combout\ : std_logic;
SIGNAL \inst13|inst14|data_in[9]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|data_in[1]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst14|Selector29~0_combout\ : std_logic;
SIGNAL \inst13|inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst13|inst|Mux2~1_combout\ : std_logic;
SIGNAL \inst13|inst|Selector25~11_combout\ : std_logic;
SIGNAL \inst13|inst|Mux3~2_combout\ : std_logic;
SIGNAL \inst13|inst|Mux3~3_combout\ : std_logic;
SIGNAL \inst13|inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst13|inst|Mux3~1_combout\ : std_logic;
SIGNAL \inst13|inst|Selector25~8_combout\ : std_logic;
SIGNAL \inst13|inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst13|inst|Mux1~1_combout\ : std_logic;
SIGNAL \inst13|inst|Mux1~2_combout\ : std_logic;
SIGNAL \inst13|inst|Mux1~3_combout\ : std_logic;
SIGNAL \inst13|inst|Selector25~9_combout\ : std_logic;
SIGNAL \inst13|inst|Selector25~10_combout\ : std_logic;
SIGNAL \inst13|inst|Selector25~14_combout\ : std_logic;
SIGNAL \inst13|inst|Mux4~2_combout\ : std_logic;
SIGNAL \inst13|inst|Mux4~3_combout\ : std_logic;
SIGNAL \inst13|inst|Mux4~0_combout\ : std_logic;
SIGNAL \inst13|inst|Mux4~1_combout\ : std_logic;
SIGNAL \inst13|inst|Selector25~7_combout\ : std_logic;
SIGNAL \inst13|inst|Selector25~0_combout\ : std_logic;
SIGNAL \inst13|inst|Selector25~1_combout\ : std_logic;
SIGNAL \inst13|inst|Selector25~2_combout\ : std_logic;
SIGNAL \inst13|inst|Selector25~3_combout\ : std_logic;
SIGNAL \inst13|inst|Selector25~4_combout\ : std_logic;
SIGNAL \inst13|inst|Selector25~5_combout\ : std_logic;
SIGNAL \inst13|inst|Selector25~12_combout\ : std_logic;
SIGNAL \inst13|inst|sda_int~q\ : std_logic;
SIGNAL \inst13|inst|Selector30~0_combout\ : std_logic;
SIGNAL \inst13|inst|Selector17~1_combout\ : std_logic;
SIGNAL \inst13|inst|Selector17~2_combout\ : std_logic;
SIGNAL \inst13|inst|Selector17~3_combout\ : std_logic;
SIGNAL \inst13|inst|Selector17~0_combout\ : std_logic;
SIGNAL \inst13|inst|scl_req~0_combout\ : std_logic;
SIGNAL \inst13|inst|Selector17~4_combout\ : std_logic;
SIGNAL \inst13|inst|scl_req~q\ : std_logic;
SIGNAL \inst13|inst|scl_ena~q\ : std_logic;
SIGNAL \inst13|inst|scl_clk~1_combout\ : std_logic;
SIGNAL \inst13|inst|scl_clk~en_q\ : std_logic;
SIGNAL \inst13|inst|scl~1_combout\ : std_logic;
SIGNAL \inst5|count_1MHz~1_combout\ : std_logic;
SIGNAL \inst5|count_1MHz~2_combout\ : std_logic;
SIGNAL \inst5|count_1MHz~0_combout\ : std_logic;
SIGNAL \inst5|clock_1MHz_int~0_combout\ : std_logic;
SIGNAL \inst5|clock_1MHz_int~q\ : std_logic;
SIGNAL \inst5|clock_1MHz~feeder_combout\ : std_logic;
SIGNAL \inst5|clock_1MHz~q\ : std_logic;
SIGNAL \inst5|clock_1MHz~clkctrl_outclk\ : std_logic;
SIGNAL \inst3|SQ_EN~clkctrl_outclk\ : std_logic;
SIGNAL \inst11|Count[0]~14_combout\ : std_logic;
SIGNAL \inst11|Count[0]~15\ : std_logic;
SIGNAL \inst11|Count[1]~16_combout\ : std_logic;
SIGNAL \inst11|Count[1]~17\ : std_logic;
SIGNAL \inst11|Count[2]~18_combout\ : std_logic;
SIGNAL \inst11|Count[2]~19\ : std_logic;
SIGNAL \inst11|Count[3]~20_combout\ : std_logic;
SIGNAL \inst11|Count[3]~21\ : std_logic;
SIGNAL \inst11|Count[4]~22_combout\ : std_logic;
SIGNAL \inst11|Count[4]~23\ : std_logic;
SIGNAL \inst11|Count[5]~24_combout\ : std_logic;
SIGNAL \inst11|Count[5]~25\ : std_logic;
SIGNAL \inst11|Count[6]~26_combout\ : std_logic;
SIGNAL \inst11|Count[6]~27\ : std_logic;
SIGNAL \inst11|Count[7]~28_combout\ : std_logic;
SIGNAL \inst11|Count[7]~29\ : std_logic;
SIGNAL \inst11|Count[8]~30_combout\ : std_logic;
SIGNAL \inst11|Count[8]~31\ : std_logic;
SIGNAL \inst11|Count[9]~32_combout\ : std_logic;
SIGNAL \inst11|Count[9]~33\ : std_logic;
SIGNAL \inst11|Count[10]~34_combout\ : std_logic;
SIGNAL \inst11|Count[10]~35\ : std_logic;
SIGNAL \inst11|Count[11]~36_combout\ : std_logic;
SIGNAL \inst11|Count[11]~37\ : std_logic;
SIGNAL \inst11|Count[12]~38_combout\ : std_logic;
SIGNAL \inst11|Count[12]~39\ : std_logic;
SIGNAL \inst11|Count[13]~40_combout\ : std_logic;
SIGNAL \inst11|LessThan0~1_cout\ : std_logic;
SIGNAL \inst11|LessThan0~3_cout\ : std_logic;
SIGNAL \inst11|LessThan0~5_cout\ : std_logic;
SIGNAL \inst11|LessThan0~7_cout\ : std_logic;
SIGNAL \inst11|LessThan0~9_cout\ : std_logic;
SIGNAL \inst11|LessThan0~11_cout\ : std_logic;
SIGNAL \inst11|LessThan0~13_cout\ : std_logic;
SIGNAL \inst11|LessThan0~15_cout\ : std_logic;
SIGNAL \inst11|LessThan0~17_cout\ : std_logic;
SIGNAL \inst11|LessThan0~19_cout\ : std_logic;
SIGNAL \inst11|LessThan0~21_cout\ : std_logic;
SIGNAL \inst11|LessThan0~23_cout\ : std_logic;
SIGNAL \inst11|LessThan0~25_cout\ : std_logic;
SIGNAL \inst11|LessThan0~26_combout\ : std_logic;
SIGNAL \inst11|SqWave~0_combout\ : std_logic;
SIGNAL \inst11|SqWave~q\ : std_logic;
SIGNAL \inst11|IO_VAL[9]~9_combout\ : std_logic;
SIGNAL \inst11|IO_VAL[10]~10_combout\ : std_logic;
SIGNAL \inst11|IO_VAL[11]~11_combout\ : std_logic;
SIGNAL \inst11|IO_VAL[8]~8_combout\ : std_logic;
SIGNAL \inst11|Equal4~2_combout\ : std_logic;
SIGNAL \inst11|IO_VAL[4]~4_combout\ : std_logic;
SIGNAL \inst11|IO_VAL[7]~7_combout\ : std_logic;
SIGNAL \inst11|IO_VAL[6]~6_combout\ : std_logic;
SIGNAL \inst11|IO_VAL[5]~5_combout\ : std_logic;
SIGNAL \inst11|Equal4~1_combout\ : std_logic;
SIGNAL \inst11|IO_VAL[1]~1_combout\ : std_logic;
SIGNAL \inst11|IO_VAL[2]~2_combout\ : std_logic;
SIGNAL \inst11|IO_VAL[0]~0_combout\ : std_logic;
SIGNAL \inst11|IO_VAL[3]~3_combout\ : std_logic;
SIGNAL \inst11|Equal4~0_combout\ : std_logic;
SIGNAL \inst11|IO_VAL[13]~13_combout\ : std_logic;
SIGNAL \inst11|IO_VAL[12]~12_combout\ : std_logic;
SIGNAL \inst11|Equal4~3_combout\ : std_logic;
SIGNAL \inst11|Equal4~4_combout\ : std_logic;
SIGNAL \inst11|process_2~0_combout\ : std_logic;
SIGNAL \inst11|SQ~combout\ : std_logic;
SIGNAL \inst3|DP_EN~2_combout\ : std_logic;
SIGNAL \inst3|DP_EN~combout\ : std_logic;
SIGNAL \inst3|DP_EN~clkctrl_outclk\ : std_logic;
SIGNAL \inst10|inst[5]~feeder_combout\ : std_logic;
SIGNAL \inst10|inst[3]~feeder_combout\ : std_logic;
SIGNAL \inst10|inst[2]~feeder_combout\ : std_logic;
SIGNAL \inst10|inst[1]~feeder_combout\ : std_logic;
SIGNAL \inst10|inst[0]~feeder_combout\ : std_logic;
SIGNAL \inst3|HEX0_EN~0_combout\ : std_logic;
SIGNAL \inst3|HEX0_EN~1_combout\ : std_logic;
SIGNAL \inst3|HEX0_EN~combout\ : std_logic;
SIGNAL \inst3|HEX0_EN~clkctrl_outclk\ : std_logic;
SIGNAL \inst9|inst1|latched_hex[3]~feeder_combout\ : std_logic;
SIGNAL \inst9|inst1|latched_hex[2]~feeder_combout\ : std_logic;
SIGNAL \inst9|inst1|latched_hex[0]~feeder_combout\ : std_logic;
SIGNAL \inst9|inst1|latched_hex[1]~feeder_combout\ : std_logic;
SIGNAL \inst9|inst1|Mux0~0_combout\ : std_logic;
SIGNAL \inst9|inst1|Mux1~0_combout\ : std_logic;
SIGNAL \inst9|inst1|Mux2~0_combout\ : std_logic;
SIGNAL \inst9|inst1|Mux3~0_combout\ : std_logic;
SIGNAL \inst9|inst1|Mux4~0_combout\ : std_logic;
SIGNAL \inst9|inst1|Mux5~0_combout\ : std_logic;
SIGNAL \inst9|inst1|Mux6~0_combout\ : std_logic;
SIGNAL \inst9|inst2|latched_hex[3]~feeder_combout\ : std_logic;
SIGNAL \inst9|inst2|latched_hex[2]~feeder_combout\ : std_logic;
SIGNAL \inst9|inst2|latched_hex[1]~feeder_combout\ : std_logic;
SIGNAL \inst9|inst2|latched_hex[0]~feeder_combout\ : std_logic;
SIGNAL \inst9|inst2|Mux0~0_combout\ : std_logic;
SIGNAL \inst9|inst2|Mux1~0_combout\ : std_logic;
SIGNAL \inst9|inst2|Mux2~0_combout\ : std_logic;
SIGNAL \inst9|inst2|Mux3~0_combout\ : std_logic;
SIGNAL \inst9|inst2|Mux4~0_combout\ : std_logic;
SIGNAL \inst9|inst2|Mux5~0_combout\ : std_logic;
SIGNAL \inst9|inst2|Mux6~0_combout\ : std_logic;
SIGNAL \inst9|inst3|latched_hex[2]~feeder_combout\ : std_logic;
SIGNAL \inst9|inst3|latched_hex[1]~feeder_combout\ : std_logic;
SIGNAL \inst9|inst3|latched_hex[3]~feeder_combout\ : std_logic;
SIGNAL \inst9|inst3|latched_hex[0]~feeder_combout\ : std_logic;
SIGNAL \inst9|inst3|Mux0~0_combout\ : std_logic;
SIGNAL \inst9|inst3|Mux1~0_combout\ : std_logic;
SIGNAL \inst9|inst3|Mux2~0_combout\ : std_logic;
SIGNAL \inst9|inst3|Mux3~0_combout\ : std_logic;
SIGNAL \inst9|inst3|Mux4~0_combout\ : std_logic;
SIGNAL \inst9|inst3|Mux5~0_combout\ : std_logic;
SIGNAL \inst9|inst3|Mux6~0_combout\ : std_logic;
SIGNAL \inst9|inst4|Mux0~0_combout\ : std_logic;
SIGNAL \inst9|inst4|Mux1~0_combout\ : std_logic;
SIGNAL \inst9|inst4|Mux2~0_combout\ : std_logic;
SIGNAL \inst9|inst4|Mux3~0_combout\ : std_logic;
SIGNAL \inst9|inst4|Mux4~0_combout\ : std_logic;
SIGNAL \inst9|inst4|Mux5~0_combout\ : std_logic;
SIGNAL \inst9|inst4|Mux6~0_combout\ : std_logic;
SIGNAL \inst3|HEX1_EN~combout\ : std_logic;
SIGNAL \inst3|HEX1_EN~clkctrl_outclk\ : std_logic;
SIGNAL \inst9|inst5|latched_hex[0]~feeder_combout\ : std_logic;
SIGNAL \inst9|inst5|latched_hex[3]~feeder_combout\ : std_logic;
SIGNAL \inst9|inst5|latched_hex[1]~feeder_combout\ : std_logic;
SIGNAL \inst9|inst5|latched_hex[2]~feeder_combout\ : std_logic;
SIGNAL \inst9|inst5|Mux0~0_combout\ : std_logic;
SIGNAL \inst9|inst5|Mux1~0_combout\ : std_logic;
SIGNAL \inst9|inst5|Mux2~0_combout\ : std_logic;
SIGNAL \inst9|inst5|Mux3~0_combout\ : std_logic;
SIGNAL \inst9|inst5|Mux4~0_combout\ : std_logic;
SIGNAL \inst9|inst5|Mux5~0_combout\ : std_logic;
SIGNAL \inst9|inst5|Mux6~0_combout\ : std_logic;
SIGNAL \inst9|inst6|latched_hex[3]~feeder_combout\ : std_logic;
SIGNAL \inst9|inst6|latched_hex[2]~feeder_combout\ : std_logic;
SIGNAL \inst9|inst6|latched_hex[0]~feeder_combout\ : std_logic;
SIGNAL \inst9|inst6|latched_hex[1]~feeder_combout\ : std_logic;
SIGNAL \inst9|inst6|Mux0~0_combout\ : std_logic;
SIGNAL \inst9|inst6|Mux1~0_combout\ : std_logic;
SIGNAL \inst9|inst6|Mux2~0_combout\ : std_logic;
SIGNAL \inst9|inst6|Mux3~0_combout\ : std_logic;
SIGNAL \inst9|inst6|Mux4~0_combout\ : std_logic;
SIGNAL \inst9|inst6|Mux5~0_combout\ : std_logic;
SIGNAL \inst9|inst6|Mux6~0_combout\ : std_logic;
SIGNAL \inst3|LED_EN~combout\ : std_logic;
SIGNAL \inst3|LED_EN~clkctrl_outclk\ : std_logic;
SIGNAL \inst6|DATA[9]~feeder_combout\ : std_logic;
SIGNAL \inst6|DATA[8]~feeder_combout\ : std_logic;
SIGNAL \inst6|DATA[7]~feeder_combout\ : std_logic;
SIGNAL \inst6|DATA[5]~feeder_combout\ : std_logic;
SIGNAL \inst6|DATA[4]~feeder_combout\ : std_logic;
SIGNAL \inst6|DATA[3]~feeder_combout\ : std_logic;
SIGNAL \inst6|DATA[2]~feeder_combout\ : std_logic;
SIGNAL \inst6|DATA[1]~feeder_combout\ : std_logic;
SIGNAL \inst6|DATA[0]~feeder_combout\ : std_logic;
SIGNAL \inst4|COUNT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst13|inst14|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst5|count_4Hz\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \inst11|Count\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst1|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst9|inst4|latched_hex\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst9|inst1|latched_hex\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst13|inst14|addr_in\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|count_100kHz\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst13|inst14|cmd_in\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|count_10Hz\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst|AC\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst10|inst\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst9|inst2|latched_hex\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst9|inst3|latched_hex\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst9|inst5|latched_hex\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|B_DI\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst9|inst6|latched_hex\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|DATA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst13|inst|addr_rw\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst11|IO_VAL\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|IR\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst11|FreqCount\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst13|inst|data_rd\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst11|DurCount\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|PC\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst13|inst|data_rx\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst13|inst|bit_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst13|inst14|tx_addr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst13|inst14|tx_byte\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst13|inst|data_tx\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst13|inst|count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst13|inst14|data_in\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst5|count_1MHz\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst11|Duration\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst11|ALT_INV_LessThan0~26_combout\ : std_logic;
SIGNAL \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\ : std_logic;
SIGNAL \inst13|inst|ALT_INV_data_clk~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_KEY0~input_o\ : std_logic;
SIGNAL \inst11|ALT_INV_Finished[0]~9_combout\ : std_logic;
SIGNAL \inst11|ALT_INV_Finished[0]~0_combout\ : std_logic;
SIGNAL \inst13|inst14|ALT_INV_latch_rdy~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \inst13|inst14|ALT_INV_data_out[7]~1_combout\ : std_logic;
SIGNAL \inst9|inst6|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst9|inst5|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst9|inst4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst9|inst3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst9|inst2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst9|inst1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_inst\ : std_logic_vector(5 DOWNTO 0);

BEGIN

GSENSOR_CS_n <= ww_GSENSOR_CS_n;
GSENSOR_SDO <= ww_GSENSOR_SDO;
ww_clock_50 <= clock_50;
ww_KEY0 <= KEY0;
ww_SW <= SW;
Arduino_IO <= ww_Arduino_IO;
DP <= ww_DP;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\ <= (\inst|AC\(15) & \inst|AC\(14) & \inst|AC\(12) & \inst|AC\(11));

\inst|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\inst|next_mem_addr[10]~10_combout\ & \inst|next_mem_addr[9]~9_combout\ & \inst|next_mem_addr[8]~8_combout\ & \inst|next_mem_addr[7]~7_combout\ & \inst|next_mem_addr[6]~6_combout\
& \inst|next_mem_addr[5]~5_combout\ & \inst|next_mem_addr[4]~4_combout\ & \inst|next_mem_addr[3]~3_combout\ & \inst|next_mem_addr[2]~2_combout\ & \inst|next_mem_addr[1]~1_combout\ & \inst|next_mem_addr[0]~0_combout\);

\inst|altsyncram_component|auto_generated|q_a\(11) <= \inst|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);
\inst|altsyncram_component|auto_generated|q_a\(12) <= \inst|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(1);
\inst|altsyncram_component|auto_generated|q_a\(14) <= \inst|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(2);
\inst|altsyncram_component|auto_generated|q_a\(15) <= \inst|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(3);

\inst1|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clock_50~input_o\);

\inst1|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst1|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst1|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst1|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst1|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst1|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst1|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst1|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst1|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst1|altpll_component|auto_generated|pll1_CLK_bus\(4);

\inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\ <= (\inst|AC\(13) & \inst|AC\(10) & \inst|AC\(9) & \inst|AC\(8));

\inst|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\inst|next_mem_addr[10]~10_combout\ & \inst|next_mem_addr[9]~9_combout\ & \inst|next_mem_addr[8]~8_combout\ & \inst|next_mem_addr[7]~7_combout\ & \inst|next_mem_addr[6]~6_combout\
& \inst|next_mem_addr[5]~5_combout\ & \inst|next_mem_addr[4]~4_combout\ & \inst|next_mem_addr[3]~3_combout\ & \inst|next_mem_addr[2]~2_combout\ & \inst|next_mem_addr[1]~1_combout\ & \inst|next_mem_addr[0]~0_combout\);

\inst|altsyncram_component|auto_generated|q_a\(8) <= \inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);
\inst|altsyncram_component|auto_generated|q_a\(9) <= \inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(1);
\inst|altsyncram_component|auto_generated|q_a\(10) <= \inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(2);
\inst|altsyncram_component|auto_generated|q_a\(13) <= \inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(3);

\inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\inst|AC\(6) & \inst|AC\(5) & \inst|AC\(2) & \inst|AC\(0));

\inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst|next_mem_addr[10]~10_combout\ & \inst|next_mem_addr[9]~9_combout\ & \inst|next_mem_addr[8]~8_combout\ & \inst|next_mem_addr[7]~7_combout\ & \inst|next_mem_addr[6]~6_combout\
& \inst|next_mem_addr[5]~5_combout\ & \inst|next_mem_addr[4]~4_combout\ & \inst|next_mem_addr[3]~3_combout\ & \inst|next_mem_addr[2]~2_combout\ & \inst|next_mem_addr[1]~1_combout\ & \inst|next_mem_addr[0]~0_combout\);

\inst|altsyncram_component|auto_generated|q_a\(0) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst|altsyncram_component|auto_generated|q_a\(2) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst|altsyncram_component|auto_generated|q_a\(5) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst|altsyncram_component|auto_generated|q_a\(6) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);

\inst|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\ <= (\inst|AC\(7) & \inst|AC\(4) & \inst|AC\(3) & \inst|AC\(1));

\inst|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\inst|next_mem_addr[10]~10_combout\ & \inst|next_mem_addr[9]~9_combout\ & \inst|next_mem_addr[8]~8_combout\ & \inst|next_mem_addr[7]~7_combout\ & \inst|next_mem_addr[6]~6_combout\
& \inst|next_mem_addr[5]~5_combout\ & \inst|next_mem_addr[4]~4_combout\ & \inst|next_mem_addr[3]~3_combout\ & \inst|next_mem_addr[2]~2_combout\ & \inst|next_mem_addr[1]~1_combout\ & \inst|next_mem_addr[0]~0_combout\);

\inst|altsyncram_component|auto_generated|q_a\(1) <= \inst|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);
\inst|altsyncram_component|auto_generated|q_a\(3) <= \inst|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(1);
\inst|altsyncram_component|auto_generated|q_a\(4) <= \inst|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(2);
\inst|altsyncram_component|auto_generated|q_a\(7) <= \inst|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(3);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst3|HEX0_EN~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|HEX0_EN~combout\);

\inst5|clock_10Hz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst5|clock_10Hz~q\);

\inst5|clock_100kHz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst5|clock_100kHz~q\);

\inst13|inst|data_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst13|inst|data_clk~q\);

\inst13|inst13~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst13|inst13~combout\);

\inst3|LED_EN~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|LED_EN~combout\);

\inst13|inst14|data_out[7]~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst13|inst14|data_out[7]~1_combout\);

\inst13|inst12~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst13|inst12~combout\);

\inst5|clock_4Hz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst5|clock_4Hz~q\);

\inst3|DP_EN~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|DP_EN~combout\);

\inst3|SQ_EN~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|SQ_EN~combout\);

\inst3|HEX1_EN~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|HEX1_EN~combout\);

\inst5|clock_1MHz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst5|clock_1MHz~q\);

\inst3|SWITCH_EN~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|SWITCH_EN~combout\);

\inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|altpll_component|auto_generated|wire_pll1_clk\(0));
\inst11|ALT_INV_LessThan0~26_combout\ <= NOT \inst11|LessThan0~26_combout\;
\inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\ <= NOT \inst13|inst14|data_out[7]~1clkctrl_outclk\;
\inst13|inst|ALT_INV_data_clk~clkctrl_outclk\ <= NOT \inst13|inst|data_clk~clkctrl_outclk\;
\ALT_INV_KEY0~input_o\ <= NOT \KEY0~input_o\;
\inst11|ALT_INV_Finished[0]~9_combout\ <= NOT \inst11|Finished[0]~9_combout\;
\inst11|ALT_INV_Finished[0]~0_combout\ <= NOT \inst11|Finished[0]~0_combout\;
\inst13|inst14|ALT_INV_latch_rdy~0_combout\ <= NOT \inst13|inst14|latch_rdy~0_combout\;
\inst4|ALT_INV_process_0~0_combout\ <= NOT \inst4|process_0~0_combout\;
\inst13|inst14|ALT_INV_data_out[7]~1_combout\ <= NOT \inst13|inst14|data_out[7]~1_combout\;
\inst9|inst6|ALT_INV_Mux0~0_combout\ <= NOT \inst9|inst6|Mux0~0_combout\;
\inst9|inst5|ALT_INV_Mux0~0_combout\ <= NOT \inst9|inst5|Mux0~0_combout\;
\inst9|inst4|ALT_INV_Mux0~0_combout\ <= NOT \inst9|inst4|Mux0~0_combout\;
\inst9|inst3|ALT_INV_Mux0~0_combout\ <= NOT \inst9|inst3|Mux0~0_combout\;
\inst9|inst2|ALT_INV_Mux0~0_combout\ <= NOT \inst9|inst2|Mux0~0_combout\;
\inst9|inst1|ALT_INV_Mux0~0_combout\ <= NOT \inst9|inst1|Mux0~0_combout\;
\inst10|ALT_INV_inst\(0) <= NOT \inst10|inst\(0);
\inst10|ALT_INV_inst\(1) <= NOT \inst10|inst\(1);
\inst10|ALT_INV_inst\(2) <= NOT \inst10|inst\(2);
\inst10|ALT_INV_inst\(3) <= NOT \inst10|inst\(3);
\inst10|ALT_INV_inst\(4) <= NOT \inst10|inst\(4);
\inst10|ALT_INV_inst\(5) <= NOT \inst10|inst\(5);

-- Location: LCCOMB_X44_Y51_N24
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

-- Location: IOOBUF_X54_Y0_N2
\GSENSOR_CS_n~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_GSENSOR_CS_n);

-- Location: IOOBUF_X38_Y0_N23
\GSENSOR_SDO~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_GSENSOR_SDO);

-- Location: IOOBUF_X29_Y0_N30
\Arduino_IO[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|SQ~combout\,
	devoe => ww_devoe,
	o => ww_Arduino_IO(0));

-- Location: IOOBUF_X78_Y37_N9
\DP[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|ALT_INV_inst\(5),
	devoe => ww_devoe,
	o => ww_DP(5));

-- Location: IOOBUF_X78_Y43_N23
\DP[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|ALT_INV_inst\(4),
	devoe => ww_devoe,
	o => ww_DP(4));

-- Location: IOOBUF_X78_Y35_N9
\DP[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|ALT_INV_inst\(3),
	devoe => ww_devoe,
	o => ww_DP(3));

-- Location: IOOBUF_X66_Y54_N9
\DP[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|ALT_INV_inst\(2),
	devoe => ww_devoe,
	o => ww_DP(2));

-- Location: IOOBUF_X60_Y54_N16
\DP[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|ALT_INV_inst\(1),
	devoe => ww_devoe,
	o => ww_DP(1));

-- Location: IOOBUF_X66_Y54_N16
\DP[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|ALT_INV_inst\(0),
	devoe => ww_devoe,
	o => ww_DP(0));

-- Location: IOOBUF_X74_Y54_N23
\HEX0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X74_Y54_N16
\HEX0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X74_Y54_N2
\HEX0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X62_Y54_N30
\HEX0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X60_Y54_N2
\HEX0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X74_Y54_N9
\HEX0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X58_Y54_N16
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X69_Y54_N30
\HEX1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X66_Y54_N30
\HEX1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X64_Y54_N2
\HEX1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X60_Y54_N9
\HEX1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X78_Y49_N2
\HEX1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X78_Y49_N9
\HEX1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X69_Y54_N23
\HEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X78_Y43_N9
\HEX2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst3|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X78_Y35_N2
\HEX2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X78_Y43_N2
\HEX2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X78_Y44_N2
\HEX2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X69_Y54_N16
\HEX2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X66_Y54_N2
\HEX2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X78_Y44_N9
\HEX2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst3|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X78_Y43_N16
\HEX3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst4|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X78_Y41_N2
\HEX3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X78_Y41_N9
\HEX3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X69_Y54_N9
\HEX3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X78_Y33_N2
\HEX3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X78_Y33_N9
\HEX3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X78_Y35_N23
\HEX3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst4|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X78_Y35_N16
\HEX4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst5|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X78_Y40_N9
\HEX4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst5|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X78_Y45_N23
\HEX4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst5|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X78_Y42_N16
\HEX4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst5|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X78_Y40_N23
\HEX4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst5|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X78_Y40_N2
\HEX4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst5|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X78_Y40_N16
\HEX4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst5|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X78_Y34_N2
\HEX5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst6|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X78_Y34_N16
\HEX5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst6|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X78_Y34_N9
\HEX5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst6|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X78_Y34_N24
\HEX5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst6|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X78_Y37_N16
\HEX5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst6|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X78_Y42_N2
\HEX5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst6|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X78_Y45_N9
\HEX5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst6|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X49_Y54_N9
\LEDR[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|DATA\(9),
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X51_Y54_N9
\LEDR[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|DATA\(8),
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X56_Y54_N9
\LEDR[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|DATA\(7),
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X66_Y54_N23
\LEDR[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|DATA\(6),
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X58_Y54_N23
\LEDR[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|DATA\(5),
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X56_Y54_N30
\LEDR[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|DATA\(4),
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X46_Y54_N9
\LEDR[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|DATA\(3),
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X51_Y54_N16
\LEDR[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|DATA\(2),
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X46_Y54_N23
\LEDR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|DATA\(1),
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X46_Y54_N2
\LEDR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|DATA\(0),
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X38_Y0_N30
\GSENSOR_SDI~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst13|inst|Selector30~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => GSENSOR_SDI);

-- Location: IOOBUF_X51_Y0_N16
\GSENSOR_SCLK~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst13|inst|scl~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => GSENSOR_SCLK);

-- Location: IOIBUF_X46_Y54_N29
\KEY0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY0,
	o => \KEY0~input_o\);

-- Location: IOIBUF_X78_Y29_N22
\clock_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_50,
	o => \clock_50~input_o\);

-- Location: PLL_4
\inst1|altpll_component|auto_generated|pll1\ : fiftyfivenm_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 30,
	c0_initial => 1,
	c0_low => 30,
	c0_mode => "even",
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
	clk0_divide_by => 5,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
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
	m => 12,
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
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => \ALT_INV_KEY0~input_o\,
	fbin => \inst1|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst1|altpll_component|auto_generated|pll1_INCLK_bus\,
	locked => \inst1|altpll_component|auto_generated|wire_pll1_locked\,
	fbout => \inst1|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst1|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G8
\inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X45_Y1_N0
\inst5|count_100kHz[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_100kHz[0]~6_combout\ = \inst5|count_100kHz\(0) $ (VCC)
-- \inst5|count_100kHz[0]~7\ = CARRY(\inst5|count_100kHz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count_100kHz\(0),
	datad => VCC,
	combout => \inst5|count_100kHz[0]~6_combout\,
	cout => \inst5|count_100kHz[0]~7\);

-- Location: LCCOMB_X45_Y1_N18
\inst5|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~0_combout\ = (!\inst5|count_100kHz\(3) & (!\inst5|count_100kHz\(0) & (!\inst5|count_100kHz\(2) & !\inst5|count_100kHz\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count_100kHz\(3),
	datab => \inst5|count_100kHz\(0),
	datac => \inst5|count_100kHz\(2),
	datad => \inst5|count_100kHz\(1),
	combout => \inst5|LessThan1~0_combout\);

-- Location: LCCOMB_X45_Y1_N26
\inst5|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan1~1_combout\ = (\inst5|count_100kHz\(5) & (\inst5|count_100kHz\(4) & !\inst5|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count_100kHz\(5),
	datac => \inst5|count_100kHz\(4),
	datad => \inst5|LessThan1~0_combout\,
	combout => \inst5|LessThan1~1_combout\);

-- Location: FF_X45_Y1_N1
\inst5|count_100kHz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_100kHz[0]~6_combout\,
	sclr => \inst5|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_100kHz\(0));

-- Location: LCCOMB_X45_Y1_N2
\inst5|count_100kHz[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_100kHz[1]~8_combout\ = (\inst5|count_100kHz\(1) & (!\inst5|count_100kHz[0]~7\)) # (!\inst5|count_100kHz\(1) & ((\inst5|count_100kHz[0]~7\) # (GND)))
-- \inst5|count_100kHz[1]~9\ = CARRY((!\inst5|count_100kHz[0]~7\) # (!\inst5|count_100kHz\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count_100kHz\(1),
	datad => VCC,
	cin => \inst5|count_100kHz[0]~7\,
	combout => \inst5|count_100kHz[1]~8_combout\,
	cout => \inst5|count_100kHz[1]~9\);

-- Location: FF_X45_Y1_N3
\inst5|count_100kHz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_100kHz[1]~8_combout\,
	sclr => \inst5|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_100kHz\(1));

-- Location: LCCOMB_X45_Y1_N4
\inst5|count_100kHz[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_100kHz[2]~10_combout\ = (\inst5|count_100kHz\(2) & (\inst5|count_100kHz[1]~9\ $ (GND))) # (!\inst5|count_100kHz\(2) & (!\inst5|count_100kHz[1]~9\ & VCC))
-- \inst5|count_100kHz[2]~11\ = CARRY((\inst5|count_100kHz\(2) & !\inst5|count_100kHz[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count_100kHz\(2),
	datad => VCC,
	cin => \inst5|count_100kHz[1]~9\,
	combout => \inst5|count_100kHz[2]~10_combout\,
	cout => \inst5|count_100kHz[2]~11\);

-- Location: FF_X45_Y1_N5
\inst5|count_100kHz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_100kHz[2]~10_combout\,
	sclr => \inst5|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_100kHz\(2));

-- Location: LCCOMB_X45_Y1_N6
\inst5|count_100kHz[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_100kHz[3]~12_combout\ = (\inst5|count_100kHz\(3) & (!\inst5|count_100kHz[2]~11\)) # (!\inst5|count_100kHz\(3) & ((\inst5|count_100kHz[2]~11\) # (GND)))
-- \inst5|count_100kHz[3]~13\ = CARRY((!\inst5|count_100kHz[2]~11\) # (!\inst5|count_100kHz\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count_100kHz\(3),
	datad => VCC,
	cin => \inst5|count_100kHz[2]~11\,
	combout => \inst5|count_100kHz[3]~12_combout\,
	cout => \inst5|count_100kHz[3]~13\);

-- Location: FF_X45_Y1_N7
\inst5|count_100kHz[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_100kHz[3]~12_combout\,
	sclr => \inst5|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_100kHz\(3));

-- Location: LCCOMB_X45_Y1_N8
\inst5|count_100kHz[4]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_100kHz[4]~14_combout\ = (\inst5|count_100kHz\(4) & (\inst5|count_100kHz[3]~13\ $ (GND))) # (!\inst5|count_100kHz\(4) & (!\inst5|count_100kHz[3]~13\ & VCC))
-- \inst5|count_100kHz[4]~15\ = CARRY((\inst5|count_100kHz\(4) & !\inst5|count_100kHz[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count_100kHz\(4),
	datad => VCC,
	cin => \inst5|count_100kHz[3]~13\,
	combout => \inst5|count_100kHz[4]~14_combout\,
	cout => \inst5|count_100kHz[4]~15\);

-- Location: FF_X45_Y1_N9
\inst5|count_100kHz[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_100kHz[4]~14_combout\,
	sclr => \inst5|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_100kHz\(4));

-- Location: LCCOMB_X45_Y1_N10
\inst5|count_100kHz[5]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_100kHz[5]~16_combout\ = \inst5|count_100kHz[4]~15\ $ (\inst5|count_100kHz\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst5|count_100kHz\(5),
	cin => \inst5|count_100kHz[4]~15\,
	combout => \inst5|count_100kHz[5]~16_combout\);

-- Location: FF_X45_Y1_N11
\inst5|count_100kHz[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_100kHz[5]~16_combout\,
	sclr => \inst5|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_100kHz\(5));

-- Location: LCCOMB_X45_Y1_N24
\inst5|clock_100kHz_int~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|clock_100kHz_int~0_combout\ = \inst5|clock_100kHz_int~q\ $ (((\inst5|count_100kHz\(5) & (\inst5|count_100kHz\(4) & !\inst5|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count_100kHz\(5),
	datab => \inst5|count_100kHz\(4),
	datac => \inst5|clock_100kHz_int~q\,
	datad => \inst5|LessThan1~0_combout\,
	combout => \inst5|clock_100kHz_int~0_combout\);

-- Location: FF_X45_Y1_N25
\inst5|clock_100kHz_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|clock_100kHz_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|clock_100kHz_int~q\);

-- Location: LCCOMB_X45_Y1_N22
\inst5|clock_100kHz~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|clock_100kHz~feeder_combout\ = \inst5|clock_100kHz_int~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|clock_100kHz_int~q\,
	combout => \inst5|clock_100kHz~feeder_combout\);

-- Location: FF_X45_Y1_N23
\inst5|clock_100kHz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|clock_100kHz~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|clock_100kHz~q\);

-- Location: CLKCTRL_G19
\inst5|clock_100kHz~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst5|clock_100kHz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst5|clock_100kHz~clkctrl_outclk\);

-- Location: LCCOMB_X52_Y41_N30
\inst13|inst|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|count~1_combout\ = ((\inst13|inst|count\(1) & \inst13|inst|stretch~q\)) # (!\inst13|inst|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|count\(1),
	datac => \inst13|inst|count\(0),
	datad => \inst13|inst|stretch~q\,
	combout => \inst13|inst|count~1_combout\);

-- Location: LCCOMB_X54_Y38_N8
\inst1|altpll_component|auto_generated|pll_lock_sync~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|altpll_component|auto_generated|pll_lock_sync~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|altpll_component|auto_generated|pll_lock_sync~feeder_combout\);

-- Location: FF_X54_Y38_N9
\inst1|altpll_component|auto_generated|pll_lock_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_locked\,
	d => \inst1|altpll_component|auto_generated|pll_lock_sync~feeder_combout\,
	clrn => \KEY0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|altpll_component|auto_generated|pll_lock_sync~q\);

-- Location: LCCOMB_X54_Y38_N18
\inst13|inst14|data_out[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_out[7]~1_combout\ = (!\inst1|altpll_component|auto_generated|wire_pll1_locked\) # (!\inst1|altpll_component|auto_generated|pll_lock_sync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|altpll_component|auto_generated|pll_lock_sync~q\,
	datad => \inst1|altpll_component|auto_generated|wire_pll1_locked\,
	combout => \inst13|inst14|data_out[7]~1_combout\);

-- Location: CLKCTRL_G9
\inst13|inst14|data_out[7]~1clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst13|inst14|data_out[7]~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst13|inst14|data_out[7]~1clkctrl_outclk\);

-- Location: FF_X52_Y41_N31
\inst13|inst|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst|count~1_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|count\(0));

-- Location: IOIBUF_X51_Y0_N15
\GSENSOR_SCLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GSENSOR_SCLK,
	o => \GSENSOR_SCLK~input_o\);

-- Location: LCCOMB_X52_Y41_N14
\inst13|inst|stretch~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|stretch~0_combout\ = (\inst13|inst|count\(1) & (!\GSENSOR_SCLK~input_o\ & ((\inst13|inst|stretch~q\) # (!\inst13|inst|count\(0))))) # (!\inst13|inst|count\(1) & (((\inst13|inst|stretch~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|count\(1),
	datab => \inst13|inst|count\(0),
	datac => \inst13|inst|stretch~q\,
	datad => \GSENSOR_SCLK~input_o\,
	combout => \inst13|inst|stretch~0_combout\);

-- Location: FF_X52_Y41_N15
\inst13|inst|stretch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst|stretch~0_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|stretch~q\);

-- Location: LCCOMB_X52_Y41_N12
\inst13|inst|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|count~0_combout\ = (\inst13|inst|count\(0) & ((\inst13|inst|stretch~q\) # (!\inst13|inst|count\(1)))) # (!\inst13|inst|count\(0) & ((\inst13|inst|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst|stretch~q\,
	datac => \inst13|inst|count\(0),
	datad => \inst13|inst|count\(1),
	combout => \inst13|inst|count~0_combout\);

-- Location: LCCOMB_X52_Y41_N10
\inst13|inst|count[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|count[1]~feeder_combout\ = \inst13|inst|count~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst|count~0_combout\,
	combout => \inst13|inst|count[1]~feeder_combout\);

-- Location: FF_X52_Y41_N11
\inst13|inst|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst|count[1]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|count\(1));

-- Location: LCCOMB_X52_Y41_N0
\inst13|inst|data_clk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|data_clk~0_combout\ = !\inst13|inst|count\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst|count\(1),
	combout => \inst13|inst|data_clk~0_combout\);

-- Location: FF_X52_Y41_N1
\inst13|inst|data_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst|data_clk~0_combout\,
	ena => \inst13|inst14|ALT_INV_data_out[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_clk~q\);

-- Location: CLKCTRL_G3
\inst13|inst|data_clk~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst13|inst|data_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst13|inst|data_clk~clkctrl_outclk\);

-- Location: LCCOMB_X58_Y40_N26
\inst13|inst|bit_cnt[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|bit_cnt[0]~0_combout\ = !\inst13|inst|bit_cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst|bit_cnt\(0),
	combout => \inst13|inst|bit_cnt[0]~0_combout\);

-- Location: LCCOMB_X58_Y40_N18
\inst13|inst|Selector27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector27~0_combout\ = \inst13|inst|bit_cnt\(0) $ (\inst13|inst|bit_cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|bit_cnt\(0),
	datad => \inst13|inst|bit_cnt\(1),
	combout => \inst13|inst|Selector27~0_combout\);

-- Location: LCCOMB_X58_Y40_N0
\inst13|inst|bit_cnt[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|bit_cnt[1]~feeder_combout\ = \inst13|inst|Selector27~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst|Selector27~0_combout\,
	combout => \inst13|inst|bit_cnt[1]~feeder_combout\);

-- Location: FF_X58_Y40_N1
\inst13|inst|bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	d => \inst13|inst|bit_cnt[1]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	ena => \inst13|inst|WideOr12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|bit_cnt\(1));

-- Location: LCCOMB_X56_Y41_N8
\inst13|inst|state~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|state~14_combout\ = (\inst13|inst|bit_cnt\(1) & (\inst13|inst|bit_cnt\(2) & (\inst13|inst|state.rd~q\ & \inst13|inst|bit_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|bit_cnt\(1),
	datab => \inst13|inst|bit_cnt\(2),
	datac => \inst13|inst|state.rd~q\,
	datad => \inst13|inst|bit_cnt\(0),
	combout => \inst13|inst|state~14_combout\);

-- Location: LCCOMB_X56_Y41_N12
\inst13|inst|state.mstr_ack~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|state.mstr_ack~feeder_combout\ = \inst13|inst|state~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst|state~14_combout\,
	combout => \inst13|inst|state.mstr_ack~feeder_combout\);

-- Location: FF_X56_Y41_N13
\inst13|inst|state.mstr_ack\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	d => \inst13|inst|state.mstr_ack~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|state.mstr_ack~q\);

-- Location: LCCOMB_X55_Y46_N0
\inst|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|PC\(0) $ (VCC)
-- \inst|Add0~1\ = CARRY(\inst|PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: LCCOMB_X55_Y46_N2
\inst|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|PC\(1) & (!\inst|Add0~1\)) # (!\inst|PC\(1) & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\inst|PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: FF_X51_Y45_N31
\inst|state.decode\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|state.fetch~q\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.decode~q\);

-- Location: FF_X51_Y45_N3
\inst|state.ex_istore2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|state.ex_istore~q\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_istore2~q\);

-- Location: LCCOMB_X55_Y45_N28
\inst|state~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state~43_combout\ = (!\inst|altsyncram_component|auto_generated|q_a\(15) & (!\inst|altsyncram_component|auto_generated|q_a\(11) & (\inst|state.decode~q\ & \inst|altsyncram_component|auto_generated|q_a\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(15),
	datab => \inst|altsyncram_component|auto_generated|q_a\(11),
	datac => \inst|state.decode~q\,
	datad => \inst|altsyncram_component|auto_generated|q_a\(12),
	combout => \inst|state~43_combout\);

-- Location: LCCOMB_X51_Y45_N12
\inst|state~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state~46_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(14) & (\inst|altsyncram_component|auto_generated|q_a\(13) & \inst|state~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(14),
	datac => \inst|altsyncram_component|auto_generated|q_a\(13),
	datad => \inst|state~43_combout\,
	combout => \inst|state~46_combout\);

-- Location: FF_X51_Y45_N13
\inst|state.ex_iload\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|state~46_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_iload~q\);

-- Location: LCCOMB_X51_Y45_N2
\inst|WideNor0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideNor0~combout\ = (\inst|state.decode~q\) # ((\inst|state.ex_istore2~q\) # (\inst|state.ex_iload~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.decode~q\,
	datac => \inst|state.ex_istore2~q\,
	datad => \inst|state.ex_iload~q\,
	combout => \inst|WideNor0~combout\);

-- Location: LCCOMB_X54_Y47_N24
\inst|Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector9~0_combout\ = (!\inst|state.fetch~q\ & ((\inst|WideNor0~combout\ & (\inst|altsyncram_component|auto_generated|q_a\(2))) # (!\inst|WideNor0~combout\ & ((\inst|IR\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(2),
	datab => \inst|state.fetch~q\,
	datac => \inst|IR\(2),
	datad => \inst|WideNor0~combout\,
	combout => \inst|Selector9~0_combout\);

-- Location: LCCOMB_X55_Y45_N8
\inst|state~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state~32_combout\ = (\inst|state.decode~q\ & (!\inst|altsyncram_component|auto_generated|q_a\(14) & \inst|altsyncram_component|auto_generated|q_a\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.decode~q\,
	datab => \inst|altsyncram_component|auto_generated|q_a\(14),
	datac => \inst|altsyncram_component|auto_generated|q_a\(15),
	combout => \inst|state~32_combout\);

-- Location: LCCOMB_X55_Y45_N26
\inst|state~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state~49_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(11) & (!\inst|altsyncram_component|auto_generated|q_a\(12) & (\inst|state~32_combout\ & !\inst|altsyncram_component|auto_generated|q_a\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(11),
	datab => \inst|altsyncram_component|auto_generated|q_a\(12),
	datac => \inst|state~32_combout\,
	datad => \inst|altsyncram_component|auto_generated|q_a\(13),
	combout => \inst|state~49_combout\);

-- Location: FF_X55_Y45_N27
\inst|state.ex_return\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|state~49_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_return~q\);

-- Location: LCCOMB_X56_Y49_N26
\inst|PC_stack[9][2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC_stack[9][2]~feeder_combout\ = \inst|PC_stack[8][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|PC_stack[8][2]~q\,
	combout => \inst|PC_stack[9][2]~feeder_combout\);

-- Location: LCCOMB_X55_Y45_N30
\inst|state~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state~54_combout\ = (!\inst|altsyncram_component|auto_generated|q_a\(11) & (!\inst|altsyncram_component|auto_generated|q_a\(12) & (\inst|state~32_combout\ & !\inst|altsyncram_component|auto_generated|q_a\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(11),
	datab => \inst|altsyncram_component|auto_generated|q_a\(12),
	datac => \inst|state~32_combout\,
	datad => \inst|altsyncram_component|auto_generated|q_a\(13),
	combout => \inst|state~54_combout\);

-- Location: FF_X55_Y45_N31
\inst|state.ex_call\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|state~54_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_call~q\);

-- Location: LCCOMB_X56_Y48_N24
\inst|PC_stack[9][0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC_stack[9][0]~1_combout\ = (\inst|state.ex_call~q\ & !\inst13|inst14|data_out[7]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_call~q\,
	datac => \inst13|inst14|data_out[7]~1_combout\,
	combout => \inst|PC_stack[9][0]~1_combout\);

-- Location: FF_X56_Y49_N27
\inst|PC_stack[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|PC_stack[9][2]~feeder_combout\,
	ena => \inst|PC_stack[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[9][2]~q\);

-- Location: LCCOMB_X55_Y49_N14
\inst|Selector127~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector127~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[9][2]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[7][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[7][2]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[9][2]~q\,
	combout => \inst|Selector127~0_combout\);

-- Location: LCCOMB_X56_Y48_N0
\inst|PC_stack[0][0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC_stack[0][0]~0_combout\ = (!\inst13|inst14|data_out[7]~1_combout\ & ((\inst|state.ex_call~q\) # (\inst|state.ex_return~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_call~q\,
	datac => \inst13|inst14|data_out[7]~1_combout\,
	datad => \inst|state.ex_return~q\,
	combout => \inst|PC_stack[0][0]~0_combout\);

-- Location: FF_X55_Y49_N15
\inst|PC_stack[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector127~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[8][2]~q\);

-- Location: LCCOMB_X55_Y49_N0
\inst|Selector116~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector116~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[8][2]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[6][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_return~q\,
	datab => \inst|PC_stack[6][2]~q\,
	datac => \inst|PC_stack[8][2]~q\,
	combout => \inst|Selector116~0_combout\);

-- Location: FF_X55_Y49_N1
\inst|PC_stack[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector116~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[7][2]~q\);

-- Location: LCCOMB_X55_Y49_N18
\inst|Selector105~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector105~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[7][2]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[5][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[7][2]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[5][2]~q\,
	combout => \inst|Selector105~0_combout\);

-- Location: FF_X55_Y49_N19
\inst|PC_stack[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector105~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[6][2]~q\);

-- Location: LCCOMB_X55_Y49_N28
\inst|Selector94~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector94~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[6][2]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[4][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[4][2]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[6][2]~q\,
	combout => \inst|Selector94~0_combout\);

-- Location: FF_X55_Y49_N29
\inst|PC_stack[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector94~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[5][2]~q\);

-- Location: LCCOMB_X55_Y49_N22
\inst|Selector83~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector83~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[5][2]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[3][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[3][2]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[5][2]~q\,
	combout => \inst|Selector83~0_combout\);

-- Location: FF_X55_Y49_N23
\inst|PC_stack[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector83~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[4][2]~q\);

-- Location: LCCOMB_X55_Y49_N12
\inst|Selector72~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector72~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[4][2]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[2][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[2][2]~q\,
	datac => \inst|PC_stack[4][2]~q\,
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector72~0_combout\);

-- Location: FF_X55_Y49_N13
\inst|PC_stack[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector72~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[3][2]~q\);

-- Location: LCCOMB_X55_Y49_N26
\inst|Selector61~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector61~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[3][2]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[1][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[3][2]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[1][2]~q\,
	combout => \inst|Selector61~0_combout\);

-- Location: FF_X55_Y49_N27
\inst|PC_stack[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector61~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[2][2]~q\);

-- Location: LCCOMB_X55_Y49_N24
\inst|Selector50~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector50~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[2][2]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[0][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[2][2]~q\,
	datab => \inst|PC_stack[0][2]~q\,
	datac => \inst|state.ex_return~q\,
	combout => \inst|Selector50~0_combout\);

-- Location: FF_X55_Y49_N25
\inst|PC_stack[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector50~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[1][2]~q\);

-- Location: LCCOMB_X55_Y49_N4
\inst|Selector39~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector39~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[1][2]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[1][2]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC\(2),
	combout => \inst|Selector39~0_combout\);

-- Location: FF_X55_Y49_N5
\inst|PC_stack[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector39~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[0][2]~q\);

-- Location: LCCOMB_X51_Y45_N10
\inst|state.init~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state.init~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst|state.init~feeder_combout\);

-- Location: FF_X51_Y45_N11
\inst|state.init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|state.init~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.init~q\);

-- Location: LCCOMB_X55_Y46_N4
\inst|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|PC\(2) & (\inst|Add0~3\ $ (GND))) # (!\inst|PC\(2) & (!\inst|Add0~3\ & VCC))
-- \inst|Add0~5\ = CARRY((\inst|PC\(2) & !\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(2),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: LCCOMB_X55_Y49_N10
\inst|Selector9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector9~1_combout\ = (\inst|Selector9~0_combout\) # ((\inst|state.fetch~q\ & \inst|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Selector9~0_combout\,
	datac => \inst|state.fetch~q\,
	datad => \inst|Add0~4_combout\,
	combout => \inst|Selector9~1_combout\);

-- Location: LCCOMB_X55_Y49_N16
\inst|Selector9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector9~2_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[0][2]~q\)) # (!\inst|state.ex_return~q\ & (((\inst|state.init~q\ & \inst|Selector9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_return~q\,
	datab => \inst|PC_stack[0][2]~q\,
	datac => \inst|state.init~q\,
	datad => \inst|Selector9~1_combout\,
	combout => \inst|Selector9~2_combout\);

-- Location: LCCOMB_X55_Y45_N20
\inst|Selector30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector30~0_combout\ = (!\inst|altsyncram_component|auto_generated|q_a\(15) & (\inst|altsyncram_component|auto_generated|q_a\(11) & (\inst|state.decode~q\ & !\inst|altsyncram_component|auto_generated|q_a\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(15),
	datab => \inst|altsyncram_component|auto_generated|q_a\(11),
	datac => \inst|state.decode~q\,
	datad => \inst|altsyncram_component|auto_generated|q_a\(12),
	combout => \inst|Selector30~0_combout\);

-- Location: LCCOMB_X54_Y45_N18
\inst|state~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state~37_combout\ = (!\inst|altsyncram_component|auto_generated|q_a\(13) & (\inst|Selector30~0_combout\ & \inst|altsyncram_component|auto_generated|q_a\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(13),
	datac => \inst|Selector30~0_combout\,
	datad => \inst|altsyncram_component|auto_generated|q_a\(14),
	combout => \inst|state~37_combout\);

-- Location: FF_X54_Y45_N19
\inst|state.ex_and\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|state~37_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_and~q\);

-- Location: LCCOMB_X55_Y46_N6
\inst|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|PC\(3) & (!\inst|Add0~5\)) # (!\inst|PC\(3) & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\inst|PC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCCOMB_X51_Y45_N8
\inst|IR[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|IR[6]~0_combout\ = (!\inst13|inst14|data_out[7]~1_combout\ & \inst|state.decode~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst14|data_out[7]~1_combout\,
	datac => \inst|state.decode~q\,
	combout => \inst|IR[6]~0_combout\);

-- Location: FF_X50_Y43_N27
\inst|IR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|altsyncram_component|auto_generated|q_a\(5),
	sload => VCC,
	ena => \inst|IR[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR\(5));

-- Location: LCCOMB_X50_Y46_N0
\inst|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector6~0_combout\ = (!\inst|state.fetch~q\ & ((\inst|WideNor0~combout\ & ((\inst|altsyncram_component|auto_generated|q_a\(5)))) # (!\inst|WideNor0~combout\ & (\inst|IR\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.fetch~q\,
	datab => \inst|IR\(5),
	datac => \inst|altsyncram_component|auto_generated|q_a\(5),
	datad => \inst|WideNor0~combout\,
	combout => \inst|Selector6~0_combout\);

-- Location: LCCOMB_X55_Y46_N8
\inst|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|PC\(4) & (\inst|Add0~7\ $ (GND))) # (!\inst|PC\(4) & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~9\ = CARRY((\inst|PC\(4) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: LCCOMB_X54_Y46_N10
\inst|Selector7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector7~1_combout\ = (\inst|Selector7~0_combout\) # ((\inst|Add0~8_combout\ & \inst|state.fetch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Selector7~0_combout\,
	datac => \inst|Add0~8_combout\,
	datad => \inst|state.fetch~q\,
	combout => \inst|Selector7~1_combout\);

-- Location: LCCOMB_X55_Y48_N12
\inst|PC_stack[9][4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC_stack[9][4]~feeder_combout\ = \inst|PC_stack[8][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|PC_stack[8][4]~q\,
	combout => \inst|PC_stack[9][4]~feeder_combout\);

-- Location: FF_X55_Y48_N13
\inst|PC_stack[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|PC_stack[9][4]~feeder_combout\,
	ena => \inst|PC_stack[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[9][4]~q\);

-- Location: LCCOMB_X55_Y48_N18
\inst|Selector125~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector125~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[9][4]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[7][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[9][4]~q\,
	datab => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[7][4]~q\,
	combout => \inst|Selector125~0_combout\);

-- Location: FF_X55_Y48_N19
\inst|PC_stack[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector125~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[8][4]~q\);

-- Location: LCCOMB_X55_Y48_N16
\inst|Selector114~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector114~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[8][4]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[6][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[8][4]~q\,
	datac => \inst|PC_stack[6][4]~q\,
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector114~0_combout\);

-- Location: FF_X55_Y48_N17
\inst|PC_stack[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector114~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[7][4]~q\);

-- Location: LCCOMB_X55_Y48_N2
\inst|Selector103~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector103~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[7][4]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[5][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[5][4]~q\,
	datab => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[7][4]~q\,
	combout => \inst|Selector103~0_combout\);

-- Location: FF_X55_Y48_N3
\inst|PC_stack[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector103~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[6][4]~q\);

-- Location: LCCOMB_X54_Y49_N30
\inst|Selector92~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector92~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[6][4]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[4][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[4][4]~q\,
	datab => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[6][4]~q\,
	combout => \inst|Selector92~0_combout\);

-- Location: FF_X54_Y49_N31
\inst|PC_stack[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector92~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[5][4]~q\);

-- Location: LCCOMB_X54_Y49_N10
\inst|Selector81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector81~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[5][4]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[3][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[5][4]~q\,
	datac => \inst|PC_stack[3][4]~q\,
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector81~0_combout\);

-- Location: FF_X54_Y49_N11
\inst|PC_stack[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector81~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[4][4]~q\);

-- Location: LCCOMB_X54_Y49_N14
\inst|Selector70~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector70~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[4][4]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[2][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[4][4]~q\,
	datac => \inst|PC_stack[2][4]~q\,
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector70~0_combout\);

-- Location: FF_X54_Y49_N15
\inst|PC_stack[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector70~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[3][4]~q\);

-- Location: LCCOMB_X54_Y49_N22
\inst|Selector59~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector59~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[3][4]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[1][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[3][4]~q\,
	datac => \inst|PC_stack[1][4]~q\,
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector59~0_combout\);

-- Location: FF_X54_Y49_N23
\inst|PC_stack[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector59~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[2][4]~q\);

-- Location: LCCOMB_X54_Y49_N26
\inst|Selector48~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector48~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[2][4]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[0][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[0][4]~q\,
	datac => \inst|PC_stack[2][4]~q\,
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector48~0_combout\);

-- Location: FF_X54_Y49_N27
\inst|PC_stack[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector48~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[1][4]~q\);

-- Location: LCCOMB_X54_Y49_N2
\inst|Selector37~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector37~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[1][4]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(4),
	datac => \inst|PC_stack[1][4]~q\,
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector37~0_combout\);

-- Location: FF_X54_Y49_N3
\inst|PC_stack[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector37~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[0][4]~q\);

-- Location: LCCOMB_X54_Y49_N18
\inst|Selector7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector7~2_combout\ = (\inst|state.ex_return~q\ & (((\inst|PC_stack[0][4]~q\)))) # (!\inst|state.ex_return~q\ & (\inst|Selector7~1_combout\ & ((\inst|state.init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector7~1_combout\,
	datab => \inst|PC_stack[0][4]~q\,
	datac => \inst|state.init~q\,
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector7~2_combout\);

-- Location: FF_X54_Y49_N19
\inst|PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector7~2_combout\,
	ena => \inst|PC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(4));

-- Location: LCCOMB_X55_Y46_N10
\inst|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|PC\(5) & (!\inst|Add0~9\)) # (!\inst|PC\(5) & ((\inst|Add0~9\) # (GND)))
-- \inst|Add0~11\ = CARRY((!\inst|Add0~9\) # (!\inst|PC\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(5),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: LCCOMB_X55_Y47_N20
\inst|Selector6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector6~1_combout\ = (\inst|Selector6~0_combout\) # ((\inst|state.fetch~q\ & \inst|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.fetch~q\,
	datac => \inst|Selector6~0_combout\,
	datad => \inst|Add0~10_combout\,
	combout => \inst|Selector6~1_combout\);

-- Location: FF_X56_Y51_N17
\inst|PC_stack[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|PC_stack[8][5]~q\,
	sload => VCC,
	ena => \inst|PC_stack[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[9][5]~q\);

-- Location: LCCOMB_X55_Y47_N6
\inst|Selector124~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector124~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[9][5]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[7][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[7][5]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[9][5]~q\,
	combout => \inst|Selector124~0_combout\);

-- Location: FF_X55_Y47_N7
\inst|PC_stack[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector124~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[8][5]~q\);

-- Location: LCCOMB_X55_Y47_N4
\inst|Selector113~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector113~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[8][5]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[6][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[6][5]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[8][5]~q\,
	combout => \inst|Selector113~0_combout\);

-- Location: FF_X55_Y47_N5
\inst|PC_stack[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector113~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[7][5]~q\);

-- Location: LCCOMB_X55_Y47_N26
\inst|Selector102~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector102~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[7][5]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[5][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[7][5]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[5][5]~q\,
	combout => \inst|Selector102~0_combout\);

-- Location: FF_X55_Y47_N27
\inst|PC_stack[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector102~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[6][5]~q\);

-- Location: LCCOMB_X55_Y47_N0
\inst|Selector91~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector91~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[6][5]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[4][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[4][5]~q\,
	datab => \inst|state.ex_return~q\,
	datac => \inst|PC_stack[6][5]~q\,
	combout => \inst|Selector91~0_combout\);

-- Location: FF_X55_Y47_N1
\inst|PC_stack[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector91~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[5][5]~q\);

-- Location: LCCOMB_X55_Y47_N30
\inst|Selector80~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector80~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[5][5]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[3][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[5][5]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[3][5]~q\,
	combout => \inst|Selector80~0_combout\);

-- Location: FF_X55_Y47_N31
\inst|PC_stack[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector80~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[4][5]~q\);

-- Location: LCCOMB_X55_Y47_N16
\inst|Selector69~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector69~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[4][5]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[2][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[2][5]~q\,
	datab => \inst|state.ex_return~q\,
	datac => \inst|PC_stack[4][5]~q\,
	combout => \inst|Selector69~0_combout\);

-- Location: FF_X55_Y47_N17
\inst|PC_stack[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector69~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[3][5]~q\);

-- Location: LCCOMB_X55_Y47_N12
\inst|Selector58~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector58~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[3][5]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[1][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[3][5]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[1][5]~q\,
	combout => \inst|Selector58~0_combout\);

-- Location: FF_X55_Y47_N13
\inst|PC_stack[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector58~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[2][5]~q\);

-- Location: LCCOMB_X55_Y47_N28
\inst|Selector47~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector47~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[2][5]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[0][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[2][5]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[0][5]~q\,
	combout => \inst|Selector47~0_combout\);

-- Location: FF_X55_Y47_N29
\inst|PC_stack[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector47~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[1][5]~q\);

-- Location: LCCOMB_X55_Y47_N18
\inst|Selector36~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector36~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[1][5]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(5),
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[1][5]~q\,
	combout => \inst|Selector36~0_combout\);

-- Location: FF_X55_Y47_N19
\inst|PC_stack[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector36~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[0][5]~q\);

-- Location: LCCOMB_X55_Y47_N24
\inst|Selector6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector6~2_combout\ = (\inst|state.ex_return~q\ & (((\inst|PC_stack[0][5]~q\)))) # (!\inst|state.ex_return~q\ & (\inst|Selector6~1_combout\ & (\inst|state.init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector6~1_combout\,
	datab => \inst|state.init~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[0][5]~q\,
	combout => \inst|Selector6~2_combout\);

-- Location: FF_X55_Y47_N25
\inst|PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector6~2_combout\,
	ena => \inst|PC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(5));

-- Location: LCCOMB_X55_Y47_N14
\inst|next_mem_addr[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|next_mem_addr[5]~5_combout\ = (\inst|Selector6~0_combout\) # ((\inst|state.fetch~q\ & \inst|PC\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.fetch~q\,
	datab => \inst|PC\(5),
	datac => \inst|Selector6~0_combout\,
	combout => \inst|next_mem_addr[5]~5_combout\);

-- Location: LCCOMB_X52_Y46_N20
\inst|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector3~0_combout\ = (!\inst|state.fetch~q\ & ((\inst|WideNor0~combout\ & (\inst|altsyncram_component|auto_generated|q_a\(8))) # (!\inst|WideNor0~combout\ & ((\inst|IR\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.fetch~q\,
	datab => \inst|WideNor0~combout\,
	datac => \inst|altsyncram_component|auto_generated|q_a\(8),
	datad => \inst|IR\(8),
	combout => \inst|Selector3~0_combout\);

-- Location: LCCOMB_X56_Y48_N12
\inst|PC_stack[9][6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC_stack[9][6]~feeder_combout\ = \inst|PC_stack[8][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|PC_stack[8][6]~q\,
	combout => \inst|PC_stack[9][6]~feeder_combout\);

-- Location: FF_X56_Y48_N13
\inst|PC_stack[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|PC_stack[9][6]~feeder_combout\,
	ena => \inst|PC_stack[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[9][6]~q\);

-- Location: LCCOMB_X56_Y48_N16
\inst|Selector123~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector123~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[9][6]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[7][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[9][6]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[7][6]~q\,
	combout => \inst|Selector123~0_combout\);

-- Location: FF_X56_Y48_N17
\inst|PC_stack[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector123~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[8][6]~q\);

-- Location: LCCOMB_X56_Y48_N20
\inst|Selector112~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector112~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[8][6]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[6][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[8][6]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[6][6]~q\,
	combout => \inst|Selector112~0_combout\);

-- Location: FF_X56_Y48_N21
\inst|PC_stack[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector112~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[7][6]~q\);

-- Location: LCCOMB_X56_Y48_N28
\inst|Selector101~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector101~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[7][6]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[5][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_return~q\,
	datab => \inst|PC_stack[7][6]~q\,
	datac => \inst|PC_stack[5][6]~q\,
	combout => \inst|Selector101~0_combout\);

-- Location: FF_X56_Y48_N29
\inst|PC_stack[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector101~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[6][6]~q\);

-- Location: LCCOMB_X56_Y48_N4
\inst|Selector90~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector90~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[6][6]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[4][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[4][6]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[6][6]~q\,
	combout => \inst|Selector90~0_combout\);

-- Location: FF_X56_Y48_N5
\inst|PC_stack[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector90~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[5][6]~q\);

-- Location: LCCOMB_X56_Y48_N8
\inst|Selector79~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector79~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[5][6]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[3][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[5][6]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[3][6]~q\,
	combout => \inst|Selector79~0_combout\);

-- Location: FF_X56_Y48_N9
\inst|PC_stack[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector79~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[4][6]~q\);

-- Location: LCCOMB_X56_Y48_N6
\inst|Selector68~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector68~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[4][6]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[2][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_return~q\,
	datab => \inst|PC_stack[2][6]~q\,
	datac => \inst|PC_stack[4][6]~q\,
	combout => \inst|Selector68~0_combout\);

-- Location: FF_X56_Y48_N7
\inst|PC_stack[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector68~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[3][6]~q\);

-- Location: LCCOMB_X55_Y47_N2
\inst|Selector57~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector57~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[3][6]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[1][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[1][6]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[3][6]~q\,
	combout => \inst|Selector57~0_combout\);

-- Location: FF_X55_Y47_N3
\inst|PC_stack[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector57~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[2][6]~q\);

-- Location: LCCOMB_X55_Y47_N10
\inst|Selector46~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector46~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[2][6]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[0][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[0][6]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[2][6]~q\,
	combout => \inst|Selector46~0_combout\);

-- Location: FF_X55_Y47_N11
\inst|PC_stack[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector46~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[1][6]~q\);

-- Location: LCCOMB_X55_Y47_N22
\inst|Selector35~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector35~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[1][6]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.ex_return~q\,
	datac => \inst|PC\(6),
	datad => \inst|PC_stack[1][6]~q\,
	combout => \inst|Selector35~0_combout\);

-- Location: FF_X55_Y47_N23
\inst|PC_stack[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector35~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[0][6]~q\);

-- Location: LCCOMB_X55_Y46_N12
\inst|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = (\inst|PC\(6) & (\inst|Add0~11\ $ (GND))) # (!\inst|PC\(6) & (!\inst|Add0~11\ & VCC))
-- \inst|Add0~13\ = CARRY((\inst|PC\(6) & !\inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(6),
	datad => VCC,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: LCCOMB_X55_Y46_N24
\inst|Selector5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector5~1_combout\ = (\inst|Selector5~0_combout\) # ((\inst|state.fetch~q\ & \inst|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.fetch~q\,
	datac => \inst|Add0~12_combout\,
	datad => \inst|Selector5~0_combout\,
	combout => \inst|Selector5~1_combout\);

-- Location: LCCOMB_X55_Y47_N8
\inst|Selector5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector5~2_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[0][6]~q\)) # (!\inst|state.ex_return~q\ & (((\inst|state.init~q\ & \inst|Selector5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[0][6]~q\,
	datab => \inst|state.ex_return~q\,
	datac => \inst|state.init~q\,
	datad => \inst|Selector5~1_combout\,
	combout => \inst|Selector5~2_combout\);

-- Location: FF_X55_Y47_N9
\inst|PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector5~2_combout\,
	ena => \inst|PC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(6));

-- Location: LCCOMB_X55_Y46_N14
\inst|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (\inst|PC\(7) & (!\inst|Add0~13\)) # (!\inst|PC\(7) & ((\inst|Add0~13\) # (GND)))
-- \inst|Add0~15\ = CARRY((!\inst|Add0~13\) # (!\inst|PC\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(7),
	datad => VCC,
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\,
	cout => \inst|Add0~15\);

-- Location: LCCOMB_X50_Y46_N20
\inst|Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector4~1_combout\ = (\inst|Selector4~0_combout\) # ((\inst|Add0~14_combout\ & \inst|state.fetch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~14_combout\,
	datab => \inst|Selector4~0_combout\,
	datad => \inst|state.fetch~q\,
	combout => \inst|Selector4~1_combout\);

-- Location: LCCOMB_X56_Y49_N6
\inst|PC_stack[9][7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC_stack[9][7]~feeder_combout\ = \inst|PC_stack[8][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|PC_stack[8][7]~q\,
	combout => \inst|PC_stack[9][7]~feeder_combout\);

-- Location: FF_X56_Y49_N7
\inst|PC_stack[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|PC_stack[9][7]~feeder_combout\,
	ena => \inst|PC_stack[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[9][7]~q\);

-- Location: LCCOMB_X56_Y46_N16
\inst|Selector122~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector122~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[9][7]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[7][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[7][7]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[9][7]~q\,
	combout => \inst|Selector122~0_combout\);

-- Location: FF_X56_Y46_N17
\inst|PC_stack[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector122~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[8][7]~q\);

-- Location: LCCOMB_X56_Y46_N10
\inst|Selector111~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector111~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[8][7]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[6][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[6][7]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[8][7]~q\,
	combout => \inst|Selector111~0_combout\);

-- Location: FF_X56_Y46_N11
\inst|PC_stack[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector111~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[7][7]~q\);

-- Location: LCCOMB_X56_Y46_N12
\inst|Selector100~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector100~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[7][7]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[5][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[7][7]~q\,
	datab => \inst|PC_stack[5][7]~q\,
	datac => \inst|state.ex_return~q\,
	combout => \inst|Selector100~0_combout\);

-- Location: FF_X56_Y46_N13
\inst|PC_stack[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector100~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[6][7]~q\);

-- Location: LCCOMB_X56_Y46_N14
\inst|Selector89~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector89~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[6][7]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[4][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[6][7]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[4][7]~q\,
	combout => \inst|Selector89~0_combout\);

-- Location: FF_X56_Y46_N15
\inst|PC_stack[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector89~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[5][7]~q\);

-- Location: LCCOMB_X56_Y46_N24
\inst|Selector78~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector78~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[5][7]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[3][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[5][7]~q\,
	datac => \inst|PC_stack[3][7]~q\,
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector78~0_combout\);

-- Location: FF_X56_Y46_N25
\inst|PC_stack[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector78~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[4][7]~q\);

-- Location: LCCOMB_X56_Y46_N8
\inst|Selector67~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector67~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[4][7]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[2][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.ex_return~q\,
	datac => \inst|PC_stack[2][7]~q\,
	datad => \inst|PC_stack[4][7]~q\,
	combout => \inst|Selector67~0_combout\);

-- Location: FF_X56_Y46_N9
\inst|PC_stack[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector67~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[3][7]~q\);

-- Location: LCCOMB_X56_Y46_N4
\inst|Selector56~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector56~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[3][7]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[1][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[3][7]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[1][7]~q\,
	combout => \inst|Selector56~0_combout\);

-- Location: FF_X56_Y46_N5
\inst|PC_stack[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector56~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[2][7]~q\);

-- Location: LCCOMB_X56_Y46_N20
\inst|Selector45~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector45~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[2][7]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[0][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[2][7]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[0][7]~q\,
	combout => \inst|Selector45~0_combout\);

-- Location: FF_X56_Y46_N21
\inst|PC_stack[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector45~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[1][7]~q\);

-- Location: LCCOMB_X56_Y46_N0
\inst|Selector34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector34~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[1][7]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[1][7]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC\(7),
	combout => \inst|Selector34~0_combout\);

-- Location: FF_X56_Y46_N1
\inst|PC_stack[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector34~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[0][7]~q\);

-- Location: LCCOMB_X56_Y46_N28
\inst|Selector4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector4~2_combout\ = (\inst|state.ex_return~q\ & (((\inst|PC_stack[0][7]~q\)))) # (!\inst|state.ex_return~q\ & (\inst|Selector4~1_combout\ & ((\inst|state.init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector4~1_combout\,
	datab => \inst|PC_stack[0][7]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|state.init~q\,
	combout => \inst|Selector4~2_combout\);

-- Location: FF_X56_Y46_N29
\inst|PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector4~2_combout\,
	ena => \inst|PC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(7));

-- Location: LCCOMB_X55_Y46_N16
\inst|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~16_combout\ = (\inst|PC\(8) & (\inst|Add0~15\ $ (GND))) # (!\inst|PC\(8) & (!\inst|Add0~15\ & VCC))
-- \inst|Add0~17\ = CARRY((\inst|PC\(8) & !\inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(8),
	datad => VCC,
	cin => \inst|Add0~15\,
	combout => \inst|Add0~16_combout\,
	cout => \inst|Add0~17\);

-- Location: LCCOMB_X55_Y46_N26
\inst|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector3~1_combout\ = (\inst|Selector3~0_combout\) # ((\inst|state.fetch~q\ & \inst|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.fetch~q\,
	datac => \inst|Selector3~0_combout\,
	datad => \inst|Add0~16_combout\,
	combout => \inst|Selector3~1_combout\);

-- Location: LCCOMB_X55_Y48_N10
\inst|PC_stack[9][8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC_stack[9][8]~feeder_combout\ = \inst|PC_stack[8][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|PC_stack[8][8]~q\,
	combout => \inst|PC_stack[9][8]~feeder_combout\);

-- Location: FF_X55_Y48_N11
\inst|PC_stack[9][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|PC_stack[9][8]~feeder_combout\,
	ena => \inst|PC_stack[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[9][8]~q\);

-- Location: LCCOMB_X55_Y48_N20
\inst|Selector121~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector121~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[9][8]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[7][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[9][8]~q\,
	datab => \inst|PC_stack[7][8]~q\,
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector121~0_combout\);

-- Location: FF_X55_Y48_N21
\inst|PC_stack[8][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector121~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[8][8]~q\);

-- Location: LCCOMB_X55_Y48_N14
\inst|Selector110~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector110~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[8][8]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[6][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[8][8]~q\,
	datac => \inst|PC_stack[6][8]~q\,
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector110~0_combout\);

-- Location: FF_X55_Y48_N15
\inst|PC_stack[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector110~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[7][8]~q\);

-- Location: LCCOMB_X55_Y48_N8
\inst|Selector99~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector99~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[7][8]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[5][8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[5][8]~q\,
	datab => \inst|PC_stack[7][8]~q\,
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector99~0_combout\);

-- Location: FF_X55_Y48_N9
\inst|PC_stack[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector99~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[6][8]~q\);

-- Location: LCCOMB_X55_Y48_N26
\inst|Selector88~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector88~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[6][8]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[4][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[6][8]~q\,
	datac => \inst|PC_stack[4][8]~q\,
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector88~0_combout\);

-- Location: FF_X55_Y48_N27
\inst|PC_stack[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector88~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[5][8]~q\);

-- Location: LCCOMB_X55_Y48_N30
\inst|Selector77~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector77~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[5][8]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[3][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[5][8]~q\,
	datab => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[3][8]~q\,
	combout => \inst|Selector77~0_combout\);

-- Location: FF_X55_Y48_N31
\inst|PC_stack[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector77~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[4][8]~q\);

-- Location: LCCOMB_X56_Y46_N2
\inst|Selector66~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector66~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[4][8]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[2][8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[2][8]~q\,
	datac => \inst|PC_stack[4][8]~q\,
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector66~0_combout\);

-- Location: FF_X56_Y46_N3
\inst|PC_stack[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector66~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[3][8]~q\);

-- Location: LCCOMB_X56_Y46_N26
\inst|Selector55~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector55~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[3][8]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[1][8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[1][8]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[3][8]~q\,
	combout => \inst|Selector55~0_combout\);

-- Location: FF_X56_Y46_N27
\inst|PC_stack[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector55~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[2][8]~q\);

-- Location: LCCOMB_X56_Y46_N6
\inst|Selector44~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector44~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[2][8]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[0][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[2][8]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[0][8]~q\,
	combout => \inst|Selector44~0_combout\);

-- Location: FF_X56_Y46_N7
\inst|PC_stack[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector44~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[1][8]~q\);

-- Location: LCCOMB_X56_Y46_N18
\inst|Selector33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector33~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[1][8]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[1][8]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC\(8),
	combout => \inst|Selector33~0_combout\);

-- Location: FF_X56_Y46_N19
\inst|PC_stack[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector33~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[0][8]~q\);

-- Location: LCCOMB_X56_Y46_N30
\inst|Selector3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector3~2_combout\ = (\inst|state.ex_return~q\ & (((\inst|PC_stack[0][8]~q\)))) # (!\inst|state.ex_return~q\ & (\inst|Selector3~1_combout\ & ((\inst|state.init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector3~1_combout\,
	datab => \inst|PC_stack[0][8]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|state.init~q\,
	combout => \inst|Selector3~2_combout\);

-- Location: FF_X56_Y46_N31
\inst|PC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector3~2_combout\,
	ena => \inst|PC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(8));

-- Location: LCCOMB_X55_Y46_N28
\inst|next_mem_addr[8]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|next_mem_addr[8]~8_combout\ = (\inst|Selector3~0_combout\) # ((\inst|PC\(8) & \inst|state.fetch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector3~0_combout\,
	datac => \inst|PC\(8),
	datad => \inst|state.fetch~q\,
	combout => \inst|next_mem_addr[8]~8_combout\);

-- Location: LCCOMB_X55_Y46_N18
\inst|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~18_combout\ = (\inst|PC\(9) & (!\inst|Add0~17\)) # (!\inst|PC\(9) & ((\inst|Add0~17\) # (GND)))
-- \inst|Add0~19\ = CARRY((!\inst|Add0~17\) # (!\inst|PC\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(9),
	datad => VCC,
	cin => \inst|Add0~17\,
	combout => \inst|Add0~18_combout\,
	cout => \inst|Add0~19\);

-- Location: LCCOMB_X54_Y46_N0
\inst|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector2~1_combout\ = (\inst|Selector2~0_combout\) # ((\inst|state.fetch~q\ & \inst|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.fetch~q\,
	datac => \inst|Selector2~0_combout\,
	datad => \inst|Add0~18_combout\,
	combout => \inst|Selector2~1_combout\);

-- Location: FF_X56_Y48_N11
\inst|PC_stack[9][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|PC_stack[8][9]~q\,
	sload => VCC,
	ena => \inst|PC_stack[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[9][9]~q\);

-- Location: LCCOMB_X56_Y48_N14
\inst|Selector120~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector120~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[9][9]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[7][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_return~q\,
	datac => \inst|PC_stack[7][9]~q\,
	datad => \inst|PC_stack[9][9]~q\,
	combout => \inst|Selector120~0_combout\);

-- Location: FF_X56_Y48_N15
\inst|PC_stack[8][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector120~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[8][9]~q\);

-- Location: LCCOMB_X56_Y48_N22
\inst|Selector109~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector109~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[8][9]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[6][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[6][9]~q\,
	datab => \inst|PC_stack[8][9]~q\,
	datac => \inst|state.ex_return~q\,
	combout => \inst|Selector109~0_combout\);

-- Location: FF_X56_Y48_N23
\inst|PC_stack[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector109~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[7][9]~q\);

-- Location: LCCOMB_X56_Y48_N26
\inst|Selector98~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector98~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[7][9]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[5][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[7][9]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[5][9]~q\,
	combout => \inst|Selector98~0_combout\);

-- Location: FF_X56_Y48_N27
\inst|PC_stack[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector98~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[6][9]~q\);

-- Location: LCCOMB_X56_Y48_N2
\inst|Selector87~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector87~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[6][9]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[4][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[6][9]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[4][9]~q\,
	combout => \inst|Selector87~0_combout\);

-- Location: FF_X56_Y48_N3
\inst|PC_stack[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector87~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[5][9]~q\);

-- Location: LCCOMB_X56_Y48_N30
\inst|Selector76~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector76~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[5][9]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[3][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[3][9]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[5][9]~q\,
	combout => \inst|Selector76~0_combout\);

-- Location: FF_X56_Y48_N31
\inst|PC_stack[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector76~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[4][9]~q\);

-- Location: LCCOMB_X56_Y47_N0
\inst|Selector65~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector65~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[4][9]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[2][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.ex_return~q\,
	datac => \inst|PC_stack[4][9]~q\,
	datad => \inst|PC_stack[2][9]~q\,
	combout => \inst|Selector65~0_combout\);

-- Location: FF_X56_Y47_N1
\inst|PC_stack[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector65~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[3][9]~q\);

-- Location: LCCOMB_X56_Y47_N24
\inst|Selector54~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector54~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[3][9]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[1][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[1][9]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[3][9]~q\,
	combout => \inst|Selector54~0_combout\);

-- Location: FF_X56_Y47_N25
\inst|PC_stack[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector54~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[2][9]~q\);

-- Location: LCCOMB_X56_Y47_N4
\inst|Selector43~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector43~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[2][9]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[0][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[2][9]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[0][9]~q\,
	combout => \inst|Selector43~0_combout\);

-- Location: FF_X56_Y47_N5
\inst|PC_stack[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector43~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[1][9]~q\);

-- Location: LCCOMB_X56_Y47_N28
\inst|Selector32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector32~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[1][9]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[1][9]~q\,
	datac => \inst|PC\(9),
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector32~0_combout\);

-- Location: FF_X56_Y47_N29
\inst|PC_stack[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector32~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[0][9]~q\);

-- Location: LCCOMB_X56_Y47_N8
\inst|Selector2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector2~2_combout\ = (\inst|state.ex_return~q\ & (((\inst|PC_stack[0][9]~q\)))) # (!\inst|state.ex_return~q\ & (\inst|state.init~q\ & (\inst|Selector2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_return~q\,
	datab => \inst|state.init~q\,
	datac => \inst|Selector2~1_combout\,
	datad => \inst|PC_stack[0][9]~q\,
	combout => \inst|Selector2~2_combout\);

-- Location: FF_X56_Y47_N9
\inst|PC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector2~2_combout\,
	ena => \inst|PC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(9));

-- Location: LCCOMB_X55_Y46_N20
\inst|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add0~20_combout\ = \inst|PC\(10) $ (!\inst|Add0~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(10),
	cin => \inst|Add0~19\,
	combout => \inst|Add0~20_combout\);

-- Location: LCCOMB_X55_Y45_N2
\inst|state~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state~39_combout\ = (!\inst|altsyncram_component|auto_generated|q_a\(13) & (!\inst|altsyncram_component|auto_generated|q_a\(14) & \inst|state~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|altsyncram_component|auto_generated|q_a\(13),
	datac => \inst|altsyncram_component|auto_generated|q_a\(14),
	datad => \inst|state~38_combout\,
	combout => \inst|state~39_combout\);

-- Location: FF_X55_Y45_N3
\inst|state.ex_add\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|state~39_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_add~q\);

-- Location: LCCOMB_X55_Y45_N6
\inst|state~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state~35_combout\ = (!\inst|altsyncram_component|auto_generated|q_a\(15) & (!\inst|altsyncram_component|auto_generated|q_a\(11) & (\inst|state.decode~q\ & !\inst|altsyncram_component|auto_generated|q_a\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(15),
	datab => \inst|altsyncram_component|auto_generated|q_a\(11),
	datac => \inst|state.decode~q\,
	datad => \inst|altsyncram_component|auto_generated|q_a\(12),
	combout => \inst|state~35_combout\);

-- Location: LCCOMB_X54_Y45_N16
\inst|state~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state~40_combout\ = (!\inst|altsyncram_component|auto_generated|q_a\(14) & (\inst|altsyncram_component|auto_generated|q_a\(13) & \inst|state~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(14),
	datac => \inst|altsyncram_component|auto_generated|q_a\(13),
	datad => \inst|state~35_combout\,
	combout => \inst|state~40_combout\);

-- Location: FF_X54_Y45_N17
\inst|state.ex_sub\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|state~40_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_sub~q\);

-- Location: LCCOMB_X54_Y45_N6
\inst|state~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state~42_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(13) & (\inst|Selector30~0_combout\ & \inst|altsyncram_component|auto_generated|q_a\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(13),
	datac => \inst|Selector30~0_combout\,
	datad => \inst|altsyncram_component|auto_generated|q_a\(14),
	combout => \inst|state~42_combout\);

-- Location: FF_X54_Y45_N7
\inst|state.ex_addi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|state~42_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_addi~q\);

-- Location: LCCOMB_X49_Y46_N2
\inst|AC[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|AC[3]~0_combout\ = (\inst|state.ex_add~q\) # ((\inst|state.ex_sub~q\) # (\inst|state.ex_addi~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_add~q\,
	datab => \inst|state.ex_sub~q\,
	datac => \inst|state.ex_addi~q\,
	combout => \inst|AC[3]~0_combout\);

-- Location: LCCOMB_X54_Y45_N4
\inst|state~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state~44_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(14) & (!\inst|altsyncram_component|auto_generated|q_a\(13) & \inst|state~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(14),
	datac => \inst|altsyncram_component|auto_generated|q_a\(13),
	datad => \inst|state~43_combout\,
	combout => \inst|state~44_combout\);

-- Location: FF_X54_Y45_N5
\inst|state.ex_or\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|state~44_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_or~q\);

-- Location: LCCOMB_X51_Y45_N28
\inst|Selector30~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector30~1_combout\ = (\inst|state.ex_iload~q\) # ((!\inst|altsyncram_component|auto_generated|q_a\(14) & (\inst|Selector30~0_combout\ & !\inst|altsyncram_component|auto_generated|q_a\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(14),
	datab => \inst|Selector30~0_combout\,
	datac => \inst|altsyncram_component|auto_generated|q_a\(13),
	datad => \inst|state.ex_iload~q\,
	combout => \inst|Selector30~1_combout\);

-- Location: FF_X51_Y45_N29
\inst|state.ex_load\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector30~1_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_load~q\);

-- Location: LCCOMB_X49_Y46_N28
\inst|Selector22~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector22~6_combout\ = (\inst|state.ex_or~q\) # (\inst|state.ex_load~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_or~q\,
	datad => \inst|state.ex_load~q\,
	combout => \inst|Selector22~6_combout\);

-- Location: LCCOMB_X52_Y45_N16
\inst|Selector18~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector18~3_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(9) & ((\inst|Selector22~6_combout\) # ((\inst|state.ex_xor~q\ & !\inst|AC\(9))))) # (!\inst|altsyncram_component|auto_generated|q_a\(9) & (((\inst|state.ex_xor~q\ & 
-- \inst|AC\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector22~6_combout\,
	datab => \inst|state.ex_xor~q\,
	datac => \inst|altsyncram_component|auto_generated|q_a\(9),
	datad => \inst|AC\(9),
	combout => \inst|Selector18~3_combout\);

-- Location: FF_X50_Y43_N25
\inst|IR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|altsyncram_component|auto_generated|q_a\(4),
	sload => VCC,
	ena => \inst|IR[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR\(4));

-- Location: LCCOMB_X54_Y45_N24
\inst|state~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state~36_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(14) & (\inst|altsyncram_component|auto_generated|q_a\(13) & \inst|state~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(14),
	datac => \inst|altsyncram_component|auto_generated|q_a\(13),
	datad => \inst|state~35_combout\,
	combout => \inst|state~36_combout\);

-- Location: FF_X54_Y45_N25
\inst|state.ex_shift\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|state~36_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_shift~q\);

-- Location: LCCOMB_X55_Y42_N14
\inst|Selector19~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector19~7_combout\ = (\inst|state.ex_shift~q\ & (!\inst|IR\(4) & \inst|IR\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_shift~q\,
	datab => \inst|IR\(4),
	datad => \inst|IR\(3),
	combout => \inst|Selector19~7_combout\);

-- Location: LCCOMB_X55_Y45_N4
\inst|state~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state~41_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(11) & (\inst|altsyncram_component|auto_generated|q_a\(12) & (\inst|state~32_combout\ & \inst|altsyncram_component|auto_generated|q_a\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(11),
	datab => \inst|altsyncram_component|auto_generated|q_a\(12),
	datac => \inst|state~32_combout\,
	datad => \inst|altsyncram_component|auto_generated|q_a\(13),
	combout => \inst|state~41_combout\);

-- Location: FF_X55_Y45_N5
\inst|state.ex_loadi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|state~41_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_loadi~q\);

-- Location: LCCOMB_X52_Y44_N24
\inst|WideOr3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr3~1_combout\ = (!\inst|state.ex_addi~q\ & (!\inst|state.ex_loadi~q\ & (!\inst|state.ex_in2~q\ & !\inst|state.ex_and~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_addi~q\,
	datab => \inst|state.ex_loadi~q\,
	datac => \inst|state.ex_in2~q\,
	datad => \inst|state.ex_and~q\,
	combout => \inst|WideOr3~1_combout\);

-- Location: LCCOMB_X50_Y44_N8
\inst|WideOr3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr3~2_combout\ = (!\inst|state.ex_shift~q\ & (!\inst|state.ex_xor~q\ & (!\inst|state.ex_or~q\ & \inst|WideOr3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_shift~q\,
	datab => \inst|state.ex_xor~q\,
	datac => \inst|state.ex_or~q\,
	datad => \inst|WideOr3~1_combout\,
	combout => \inst|WideOr3~2_combout\);

-- Location: LCCOMB_X49_Y46_N16
\inst|WideOr3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr3~0_combout\ = (\inst|state.ex_add~q\) # ((\inst|state.ex_sub~q\) # ((\inst|state.ex_load~q\) # (!\inst|state.init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_add~q\,
	datab => \inst|state.ex_sub~q\,
	datac => \inst|state.ex_load~q\,
	datad => \inst|state.init~q\,
	combout => \inst|WideOr3~0_combout\);

-- Location: LCCOMB_X49_Y46_N22
\inst|Selector22~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector22~3_combout\ = (!\inst|state.ex_or~q\ & ((\inst|WideOr3~0_combout\) # (!\inst|WideOr3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr3~2_combout\,
	datac => \inst|state.ex_or~q\,
	datad => \inst|WideOr3~0_combout\,
	combout => \inst|Selector22~3_combout\);

-- Location: LCCOMB_X52_Y44_N12
\inst|Selector25~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector25~1_combout\ = (\inst|AC\(2) & (((\inst|altsyncram_component|auto_generated|q_a\(2) & \inst|state.ex_and~q\)) # (!\inst|Selector22~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(2),
	datab => \inst|altsyncram_component|auto_generated|q_a\(2),
	datac => \inst|Selector22~3_combout\,
	datad => \inst|state.ex_and~q\,
	combout => \inst|Selector25~1_combout\);

-- Location: LCCOMB_X52_Y44_N22
\inst|Selector25~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector25~2_combout\ = (\inst|state.ex_xor~q\ & (\inst|AC\(2) $ (\inst|altsyncram_component|auto_generated|q_a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(2),
	datab => \inst|altsyncram_component|auto_generated|q_a\(2),
	datad => \inst|state.ex_xor~q\,
	combout => \inst|Selector25~2_combout\);

-- Location: LCCOMB_X52_Y44_N20
\inst|Selector25~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector25~3_combout\ = (\inst|Selector22~6_combout\ & ((\inst|altsyncram_component|auto_generated|q_a\(2)) # ((\inst|IR\(2) & \inst|state.ex_loadi~q\)))) # (!\inst|Selector22~6_combout\ & (((\inst|IR\(2) & \inst|state.ex_loadi~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector22~6_combout\,
	datab => \inst|altsyncram_component|auto_generated|q_a\(2),
	datac => \inst|IR\(2),
	datad => \inst|state.ex_loadi~q\,
	combout => \inst|Selector25~3_combout\);

-- Location: LCCOMB_X51_Y47_N10
\inst|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~12_combout\ = (\inst|AC\(2) & ((\inst|state.ex_addi~q\) # ((\inst|state.ex_sub~q\) # (\inst|state.ex_add~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_addi~q\,
	datab => \inst|state.ex_sub~q\,
	datac => \inst|AC\(2),
	datad => \inst|state.ex_add~q\,
	combout => \inst|Add1~12_combout\);

-- Location: LCCOMB_X51_Y44_N28
\inst|Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~1_combout\ = (!\inst|state.ex_in2~q\ & (!\inst|state.ex_loadi~q\ & \inst|state.ex_addi~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_in2~q\,
	datac => \inst|state.ex_loadi~q\,
	datad => \inst|state.ex_addi~q\,
	combout => \inst|Add1~1_combout\);

-- Location: LCCOMB_X51_Y47_N8
\inst|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~10_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(2) & (!\inst|state.ex_sub~q\ & \inst|state.ex_add~q\)) # (!\inst|altsyncram_component|auto_generated|q_a\(2) & (\inst|state.ex_sub~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(2),
	datab => \inst|state.ex_sub~q\,
	datad => \inst|state.ex_add~q\,
	combout => \inst|Add1~10_combout\);

-- Location: LCCOMB_X51_Y47_N4
\inst|Add1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~11_combout\ = (\inst|IR\(2) & ((\inst|Add1~1_combout\) # ((\inst|Add1~10_combout\ & \inst|WideOr3~2_combout\)))) # (!\inst|IR\(2) & (((\inst|Add1~10_combout\ & \inst|WideOr3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(2),
	datab => \inst|Add1~1_combout\,
	datac => \inst|Add1~10_combout\,
	datad => \inst|WideOr3~2_combout\,
	combout => \inst|Add1~11_combout\);

-- Location: LCCOMB_X52_Y44_N6
\inst|Add1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~15_combout\ = (\inst|AC\(1) & ((\inst|state.ex_addi~q\) # ((\inst|state.ex_sub~q\) # (\inst|state.ex_add~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_addi~q\,
	datab => \inst|state.ex_sub~q\,
	datac => \inst|state.ex_add~q\,
	datad => \inst|AC\(1),
	combout => \inst|Add1~15_combout\);

-- Location: LCCOMB_X52_Y44_N26
\inst|Add1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~13_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(1) & (\inst|state.ex_add~q\ & !\inst|state.ex_sub~q\)) # (!\inst|altsyncram_component|auto_generated|q_a\(1) & ((\inst|state.ex_sub~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(1),
	datab => \inst|state.ex_add~q\,
	datac => \inst|state.ex_sub~q\,
	combout => \inst|Add1~13_combout\);

-- Location: LCCOMB_X52_Y44_N8
\inst|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~14_combout\ = (\inst|WideOr3~2_combout\ & ((\inst|Add1~13_combout\) # ((\inst|IR\(1) & \inst|Add1~1_combout\)))) # (!\inst|WideOr3~2_combout\ & (\inst|IR\(1) & ((\inst|Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr3~2_combout\,
	datab => \inst|IR\(1),
	datac => \inst|Add1~13_combout\,
	datad => \inst|Add1~1_combout\,
	combout => \inst|Add1~14_combout\);

-- Location: LCCOMB_X51_Y44_N6
\inst|Selector21~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector21~3_combout\ = (\inst|state.ex_xor~q\ & (\inst|altsyncram_component|auto_generated|q_a\(6) $ (\inst|AC\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|altsyncram_component|auto_generated|q_a\(6),
	datac => \inst|AC\(6),
	datad => \inst|state.ex_xor~q\,
	combout => \inst|Selector21~3_combout\);

-- Location: LCCOMB_X51_Y44_N2
\inst|Selector21~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector21~4_combout\ = (\inst|state.ex_loadi~q\ & ((\inst|IR\(6)) # ((\inst|altsyncram_component|auto_generated|q_a\(6) & \inst|Selector22~6_combout\)))) # (!\inst|state.ex_loadi~q\ & (\inst|altsyncram_component|auto_generated|q_a\(6) & 
-- ((\inst|Selector22~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_loadi~q\,
	datab => \inst|altsyncram_component|auto_generated|q_a\(6),
	datac => \inst|IR\(6),
	datad => \inst|Selector22~6_combout\,
	combout => \inst|Selector21~4_combout\);

-- Location: LCCOMB_X52_Y46_N30
\inst|Add1~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~33_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(6) & (!\inst|state.ex_sub~q\ & \inst|state.ex_add~q\)) # (!\inst|altsyncram_component|auto_generated|q_a\(6) & (\inst|state.ex_sub~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|altsyncram_component|auto_generated|q_a\(6),
	datac => \inst|state.ex_sub~q\,
	datad => \inst|state.ex_add~q\,
	combout => \inst|Add1~33_combout\);

-- Location: LCCOMB_X52_Y46_N0
\inst|Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~34_combout\ = (\inst|IR\(6) & ((\inst|Add1~1_combout\) # ((\inst|Add1~33_combout\ & \inst|WideOr3~2_combout\)))) # (!\inst|IR\(6) & (\inst|Add1~33_combout\ & ((\inst|WideOr3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(6),
	datab => \inst|Add1~33_combout\,
	datac => \inst|Add1~1_combout\,
	datad => \inst|WideOr3~2_combout\,
	combout => \inst|Add1~34_combout\);

-- Location: LCCOMB_X51_Y47_N14
\inst|Add1~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~35_combout\ = (\inst|AC\(6) & ((\inst|state.ex_addi~q\) # ((\inst|state.ex_sub~q\) # (\inst|state.ex_add~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_addi~q\,
	datab => \inst|state.ex_sub~q\,
	datac => \inst|AC\(6),
	datad => \inst|state.ex_add~q\,
	combout => \inst|Add1~35_combout\);

-- Location: LCCOMB_X49_Y46_N0
\inst|Add1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~3_combout\ = (\inst|AC\(5) & ((\inst|state.ex_add~q\) # ((\inst|state.ex_addi~q\) # (\inst|state.ex_sub~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_add~q\,
	datab => \inst|state.ex_addi~q\,
	datac => \inst|AC\(5),
	datad => \inst|state.ex_sub~q\,
	combout => \inst|Add1~3_combout\);

-- Location: LCCOMB_X50_Y46_N6
\inst|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~0_combout\ = (\inst|state.ex_sub~q\ & (!\inst|altsyncram_component|auto_generated|q_a\(5))) # (!\inst|state.ex_sub~q\ & (\inst|altsyncram_component|auto_generated|q_a\(5) & \inst|state.ex_add~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.ex_sub~q\,
	datac => \inst|altsyncram_component|auto_generated|q_a\(5),
	datad => \inst|state.ex_add~q\,
	combout => \inst|Add1~0_combout\);

-- Location: LCCOMB_X50_Y46_N16
\inst|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~2_combout\ = (\inst|Add1~0_combout\ & ((\inst|WideOr3~2_combout\) # ((\inst|IR\(5) & \inst|Add1~1_combout\)))) # (!\inst|Add1~0_combout\ & (\inst|IR\(5) & (\inst|Add1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~0_combout\,
	datab => \inst|IR\(5),
	datac => \inst|Add1~1_combout\,
	datad => \inst|WideOr3~2_combout\,
	combout => \inst|Add1~2_combout\);

-- Location: LCCOMB_X50_Y47_N8
\inst|Selector23~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector23~5_combout\ = (\inst|state.ex_xor~q\ & (\inst|AC\(4) $ (\inst|altsyncram_component|auto_generated|q_a\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(4),
	datab => \inst|altsyncram_component|auto_generated|q_a\(4),
	datad => \inst|state.ex_xor~q\,
	combout => \inst|Selector23~5_combout\);

-- Location: LCCOMB_X50_Y47_N4
\inst|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~4_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(4) & (\inst|state.ex_add~q\ & !\inst|state.ex_sub~q\)) # (!\inst|altsyncram_component|auto_generated|q_a\(4) & ((\inst|state.ex_sub~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(4),
	datac => \inst|state.ex_add~q\,
	datad => \inst|state.ex_sub~q\,
	combout => \inst|Add1~4_combout\);

-- Location: LCCOMB_X50_Y46_N30
\inst|Add1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~5_combout\ = (\inst|Add1~4_combout\ & ((\inst|WideOr3~2_combout\) # ((\inst|IR\(4) & \inst|Add1~1_combout\)))) # (!\inst|Add1~4_combout\ & (\inst|IR\(4) & (\inst|Add1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~4_combout\,
	datab => \inst|IR\(4),
	datac => \inst|Add1~1_combout\,
	datad => \inst|WideOr3~2_combout\,
	combout => \inst|Add1~5_combout\);

-- Location: LCCOMB_X50_Y47_N22
\inst|Selector24~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector24~3_combout\ = (\inst|Selector22~6_combout\ & ((\inst|altsyncram_component|auto_generated|q_a\(3)) # ((\inst|IR\(3) & \inst|state.ex_loadi~q\)))) # (!\inst|Selector22~6_combout\ & (((\inst|IR\(3) & \inst|state.ex_loadi~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector22~6_combout\,
	datab => \inst|altsyncram_component|auto_generated|q_a\(3),
	datac => \inst|IR\(3),
	datad => \inst|state.ex_loadi~q\,
	combout => \inst|Selector24~3_combout\);

-- Location: LCCOMB_X51_Y47_N6
\inst|Add1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~7_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(3) & (!\inst|state.ex_sub~q\ & \inst|state.ex_add~q\)) # (!\inst|altsyncram_component|auto_generated|q_a\(3) & (\inst|state.ex_sub~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(3),
	datab => \inst|state.ex_sub~q\,
	datad => \inst|state.ex_add~q\,
	combout => \inst|Add1~7_combout\);

-- Location: LCCOMB_X51_Y47_N2
\inst|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~8_combout\ = (\inst|IR\(3) & ((\inst|Add1~1_combout\) # ((\inst|WideOr3~2_combout\ & \inst|Add1~7_combout\)))) # (!\inst|IR\(3) & (\inst|WideOr3~2_combout\ & ((\inst|Add1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(3),
	datab => \inst|WideOr3~2_combout\,
	datac => \inst|Add1~1_combout\,
	datad => \inst|Add1~7_combout\,
	combout => \inst|Add1~8_combout\);

-- Location: LCCOMB_X51_Y47_N22
\inst|Add1~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~25_combout\ = (\inst|Add1~12_combout\ & ((\inst|Add1~11_combout\ & (\inst|Add1~24\ & VCC)) # (!\inst|Add1~11_combout\ & (!\inst|Add1~24\)))) # (!\inst|Add1~12_combout\ & ((\inst|Add1~11_combout\ & (!\inst|Add1~24\)) # (!\inst|Add1~11_combout\ & 
-- ((\inst|Add1~24\) # (GND)))))
-- \inst|Add1~26\ = CARRY((\inst|Add1~12_combout\ & (!\inst|Add1~11_combout\ & !\inst|Add1~24\)) # (!\inst|Add1~12_combout\ & ((!\inst|Add1~24\) # (!\inst|Add1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~12_combout\,
	datab => \inst|Add1~11_combout\,
	datad => VCC,
	cin => \inst|Add1~24\,
	combout => \inst|Add1~25_combout\,
	cout => \inst|Add1~26\);

-- Location: LCCOMB_X51_Y47_N24
\inst|Add1~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~27_combout\ = ((\inst|Add1~9_combout\ $ (\inst|Add1~8_combout\ $ (!\inst|Add1~26\)))) # (GND)
-- \inst|Add1~28\ = CARRY((\inst|Add1~9_combout\ & ((\inst|Add1~8_combout\) # (!\inst|Add1~26\))) # (!\inst|Add1~9_combout\ & (\inst|Add1~8_combout\ & !\inst|Add1~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~9_combout\,
	datab => \inst|Add1~8_combout\,
	datad => VCC,
	cin => \inst|Add1~26\,
	combout => \inst|Add1~27_combout\,
	cout => \inst|Add1~28\);

-- Location: LCCOMB_X50_Y47_N6
\inst|Selector24~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector24~2_combout\ = (\inst|state.ex_xor~q\ & (\inst|AC\(3) $ (\inst|altsyncram_component|auto_generated|q_a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(3),
	datab => \inst|altsyncram_component|auto_generated|q_a\(3),
	datad => \inst|state.ex_xor~q\,
	combout => \inst|Selector24~2_combout\);

-- Location: LCCOMB_X50_Y47_N0
\inst|Selector24~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector24~4_combout\ = (\inst|Selector24~3_combout\) # ((\inst|Selector24~2_combout\) # ((\inst|Add1~27_combout\ & \inst|AC[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector24~3_combout\,
	datab => \inst|Add1~27_combout\,
	datac => \inst|AC[3]~0_combout\,
	datad => \inst|Selector24~2_combout\,
	combout => \inst|Selector24~4_combout\);

-- Location: LCCOMB_X50_Y47_N20
\inst|Selector24~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector24~1_combout\ = (\inst|AC\(3) & (((\inst|state.ex_and~q\ & \inst|altsyncram_component|auto_generated|q_a\(3))) # (!\inst|Selector22~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(3),
	datab => \inst|Selector22~3_combout\,
	datac => \inst|state.ex_and~q\,
	datad => \inst|altsyncram_component|auto_generated|q_a\(3),
	combout => \inst|Selector24~1_combout\);

-- Location: LCCOMB_X49_Y46_N18
\inst|Add1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~40_combout\ = (\inst|AC\(7) & ((\inst|state.ex_addi~q\) # ((\inst|state.ex_add~q\) # (\inst|state.ex_sub~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(7),
	datab => \inst|state.ex_addi~q\,
	datac => \inst|state.ex_add~q\,
	datad => \inst|state.ex_sub~q\,
	combout => \inst|Add1~40_combout\);

-- Location: LCCOMB_X50_Y46_N22
\inst|Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~38_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(7) & (!\inst|state.ex_sub~q\ & \inst|state.ex_add~q\)) # (!\inst|altsyncram_component|auto_generated|q_a\(7) & (\inst|state.ex_sub~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(7),
	datab => \inst|state.ex_sub~q\,
	datad => \inst|state.ex_add~q\,
	combout => \inst|Add1~38_combout\);

-- Location: FF_X50_Y43_N19
\inst|IR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|altsyncram_component|auto_generated|q_a\(7),
	sload => VCC,
	ena => \inst|IR[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR\(7));

-- Location: LCCOMB_X50_Y46_N24
\inst|Add1~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~39_combout\ = (\inst|Add1~38_combout\ & ((\inst|WideOr3~2_combout\) # ((\inst|Add1~1_combout\ & \inst|IR\(7))))) # (!\inst|Add1~38_combout\ & (\inst|Add1~1_combout\ & ((\inst|IR\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~38_combout\,
	datab => \inst|Add1~1_combout\,
	datac => \inst|WideOr3~2_combout\,
	datad => \inst|IR\(7),
	combout => \inst|Add1~39_combout\);

-- Location: LCCOMB_X51_Y47_N30
\inst|Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~36_combout\ = (\inst|Add1~34_combout\ & ((\inst|Add1~35_combout\ & (\inst|Add1~32\ & VCC)) # (!\inst|Add1~35_combout\ & (!\inst|Add1~32\)))) # (!\inst|Add1~34_combout\ & ((\inst|Add1~35_combout\ & (!\inst|Add1~32\)) # (!\inst|Add1~35_combout\ & 
-- ((\inst|Add1~32\) # (GND)))))
-- \inst|Add1~37\ = CARRY((\inst|Add1~34_combout\ & (!\inst|Add1~35_combout\ & !\inst|Add1~32\)) # (!\inst|Add1~34_combout\ & ((!\inst|Add1~32\) # (!\inst|Add1~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~34_combout\,
	datab => \inst|Add1~35_combout\,
	datad => VCC,
	cin => \inst|Add1~32\,
	combout => \inst|Add1~36_combout\,
	cout => \inst|Add1~37\);

-- Location: LCCOMB_X51_Y46_N0
\inst|Add1~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~41_combout\ = ((\inst|Add1~40_combout\ $ (\inst|Add1~39_combout\ $ (!\inst|Add1~37\)))) # (GND)
-- \inst|Add1~42\ = CARRY((\inst|Add1~40_combout\ & ((\inst|Add1~39_combout\) # (!\inst|Add1~37\))) # (!\inst|Add1~40_combout\ & (\inst|Add1~39_combout\ & !\inst|Add1~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~40_combout\,
	datab => \inst|Add1~39_combout\,
	datad => VCC,
	cin => \inst|Add1~37\,
	combout => \inst|Add1~41_combout\,
	cout => \inst|Add1~42\);

-- Location: LCCOMB_X52_Y45_N10
\inst|Selector20~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector20~3_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(7) & ((\inst|Selector22~6_combout\) # ((!\inst|AC\(7) & \inst|state.ex_xor~q\)))) # (!\inst|altsyncram_component|auto_generated|q_a\(7) & (((\inst|AC\(7) & 
-- \inst|state.ex_xor~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector22~6_combout\,
	datab => \inst|AC\(7),
	datac => \inst|altsyncram_component|auto_generated|q_a\(7),
	datad => \inst|state.ex_xor~q\,
	combout => \inst|Selector20~3_combout\);

-- Location: LCCOMB_X52_Y45_N24
\inst|Selector20~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector20~4_combout\ = (\inst|Selector19~0_combout\) # ((\inst|Selector20~3_combout\) # ((\inst|Add1~41_combout\ & \inst|AC[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector19~0_combout\,
	datab => \inst|Add1~41_combout\,
	datac => \inst|AC[3]~0_combout\,
	datad => \inst|Selector20~3_combout\,
	combout => \inst|Selector20~4_combout\);

-- Location: LCCOMB_X52_Y45_N8
\inst|Selector20~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector20~2_combout\ = (\inst|AC\(7) & (((\inst|altsyncram_component|auto_generated|q_a\(7) & \inst|state.ex_and~q\)) # (!\inst|Selector22~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(7),
	datab => \inst|AC\(7),
	datac => \inst|Selector22~3_combout\,
	datad => \inst|state.ex_and~q\,
	combout => \inst|Selector20~2_combout\);

-- Location: LCCOMB_X50_Y46_N4
\inst|Selector20~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector20~1_combout\ = (\inst|IR\(7) & \inst|state.ex_loadi~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|IR\(7),
	datad => \inst|state.ex_loadi~q\,
	combout => \inst|Selector20~1_combout\);

-- Location: LCCOMB_X50_Y43_N22
\inst3|SWITCH_EN~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|SWITCH_EN~1_combout\ = (!\inst|IR\(5) & !\inst|IR\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|IR\(5),
	datad => \inst|IR\(6),
	combout => \inst3|SWITCH_EN~1_combout\);

-- Location: FF_X50_Y43_N21
\inst|IR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|altsyncram_component|auto_generated|q_a\(0),
	sload => VCC,
	ena => \inst|IR[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR\(0));

-- Location: LCCOMB_X50_Y43_N0
\inst3|I2C_DATA_EN~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|I2C_DATA_EN~0_combout\ = (\inst|IR\(0) & (!\inst|IR\(2) & !\inst|IR\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|IR\(0),
	datac => \inst|IR\(2),
	datad => \inst|IR\(1),
	combout => \inst3|I2C_DATA_EN~0_combout\);

-- Location: FF_X50_Y43_N9
\inst|IR[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|altsyncram_component|auto_generated|q_a\(9),
	sload => VCC,
	ena => \inst|IR[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR\(9));

-- Location: FF_X55_Y45_N11
\inst|state.ex_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|state~33_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_out~q\);

-- Location: FF_X51_Y45_N19
\inst|state.ex_out2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|state.ex_out~q\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_out2~q\);

-- Location: LCCOMB_X51_Y45_N18
\inst|Selector29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector29~0_combout\ = (!\inst|state.fetch~q\ & (\inst|IO_CYCLE~q\ & (!\inst|state.ex_out2~q\ & \inst|state.init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.fetch~q\,
	datab => \inst|IO_CYCLE~q\,
	datac => \inst|state.ex_out2~q\,
	datad => \inst|state.init~q\,
	combout => \inst|Selector29~0_combout\);

-- Location: LCCOMB_X51_Y45_N6
\inst|Selector29~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector29~1_combout\ = (\inst|state.ex_out~q\) # ((\inst|state.ex_in~q\) # (\inst|Selector29~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.ex_out~q\,
	datac => \inst|state.ex_in~q\,
	datad => \inst|Selector29~0_combout\,
	combout => \inst|Selector29~1_combout\);

-- Location: FF_X51_Y43_N11
\inst|IO_CYCLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|Selector29~1_combout\,
	sload => VCC,
	ena => \inst13|inst14|ALT_INV_data_out[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IO_CYCLE~q\);

-- Location: LCCOMB_X51_Y43_N10
\inst3|SWITCH_EN~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|SWITCH_EN~0_combout\ = (!\inst|IR\(9) & (!\inst|IR\(8) & (\inst|IO_CYCLE~q\ & !\inst|IR\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(9),
	datab => \inst|IR\(8),
	datac => \inst|IO_CYCLE~q\,
	datad => \inst|IR\(10),
	combout => \inst3|SWITCH_EN~0_combout\);

-- Location: LCCOMB_X51_Y43_N20
\inst3|I2C_DATA_EN~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|I2C_DATA_EN~1_combout\ = (!\inst|IR\(3) & (\inst3|SWITCH_EN~1_combout\ & (\inst3|I2C_DATA_EN~0_combout\ & \inst3|SWITCH_EN~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(3),
	datab => \inst3|SWITCH_EN~1_combout\,
	datac => \inst3|I2C_DATA_EN~0_combout\,
	datad => \inst3|SWITCH_EN~0_combout\,
	combout => \inst3|I2C_DATA_EN~1_combout\);

-- Location: LCCOMB_X51_Y43_N8
\inst13|inst7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst7~combout\ = (\inst|IR\(4) & (\inst3|I2C_DATA_EN~1_combout\ & (!\inst|IO_WRITE_int~q\ & \inst|IR\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(4),
	datab => \inst3|I2C_DATA_EN~1_combout\,
	datac => \inst|IO_WRITE_int~q\,
	datad => \inst|IR\(7),
	combout => \inst13|inst7~combout\);

-- Location: LCCOMB_X50_Y43_N16
\inst3|SWITCH_EN~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|SWITCH_EN~2_combout\ = (!\inst|IR\(2) & !\inst|IR\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|IR\(2),
	datad => \inst|IR\(0),
	combout => \inst3|SWITCH_EN~2_combout\);

-- Location: LCCOMB_X51_Y43_N12
\inst3|SWITCH_EN~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|SWITCH_EN~3_combout\ = (!\inst|IR\(3) & (\inst3|SWITCH_EN~1_combout\ & (\inst3|SWITCH_EN~2_combout\ & \inst3|SWITCH_EN~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(3),
	datab => \inst3|SWITCH_EN~1_combout\,
	datac => \inst3|SWITCH_EN~2_combout\,
	datad => \inst3|SWITCH_EN~0_combout\,
	combout => \inst3|SWITCH_EN~3_combout\);

-- Location: LCCOMB_X51_Y43_N18
\inst3|SWITCH_EN\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|SWITCH_EN~combout\ = LCELL((!\inst|IR\(4) & (!\inst|IR\(7) & (!\inst|IR\(1) & \inst3|SWITCH_EN~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(4),
	datab => \inst|IR\(7),
	datac => \inst|IR\(1),
	datad => \inst3|SWITCH_EN~3_combout\,
	combout => \inst3|SWITCH_EN~combout\);

-- Location: LCCOMB_X50_Y43_N30
\inst3|I2C_RDY_EN~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|I2C_RDY_EN~0_combout\ = (\inst|IR\(1) & \inst|IR\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|IR\(1),
	datad => \inst|IR\(4),
	combout => \inst3|I2C_RDY_EN~0_combout\);

-- Location: LCCOMB_X50_Y43_N10
\inst13|inst4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst4~combout\ = (\inst3|I2C_RDY_EN~0_combout\ & (\inst3|SWITCH_EN~3_combout\ & (!\inst|IO_WRITE_int~q\ & \inst|IR\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|I2C_RDY_EN~0_combout\,
	datab => \inst3|SWITCH_EN~3_combout\,
	datac => \inst|IO_WRITE_int~q\,
	datad => \inst|IR\(7),
	combout => \inst13|inst4~combout\);

-- Location: LCCOMB_X50_Y43_N18
\inst3|SQ_EN~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|SQ_EN~0_combout\ = (!\inst|IR\(3) & \inst|IR\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|IR\(3),
	datad => \inst|IR\(4),
	combout => \inst3|SQ_EN~0_combout\);

-- Location: LCCOMB_X50_Y43_N6
\inst3|DP_EN~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DP_EN~0_combout\ = (!\inst|IR\(0) & (!\inst|IR\(1) & (!\inst|IR\(2) & \inst|IR\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(0),
	datab => \inst|IR\(1),
	datac => \inst|IR\(2),
	datad => \inst|IR\(7),
	combout => \inst3|DP_EN~0_combout\);

-- Location: LCCOMB_X50_Y43_N4
\inst3|DP_EN~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DP_EN~1_combout\ = (\inst|IR\(5) & \inst|IR\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|IR\(5),
	datad => \inst|IR\(6),
	combout => \inst3|DP_EN~1_combout\);

-- Location: LCCOMB_X51_Y43_N0
\inst3|SQ_EN\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|SQ_EN~combout\ = LCELL((\inst3|SQ_EN~0_combout\ & (\inst3|DP_EN~0_combout\ & (\inst3|DP_EN~1_combout\ & \inst3|SWITCH_EN~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|SQ_EN~0_combout\,
	datab => \inst3|DP_EN~0_combout\,
	datac => \inst3|DP_EN~1_combout\,
	datad => \inst3|SWITCH_EN~0_combout\,
	combout => \inst3|SQ_EN~combout\);

-- Location: LCCOMB_X51_Y43_N4
\inst13|inst1[10]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[10]~5_combout\ = (!\inst3|SWITCH_EN~combout\ & (!\inst13|inst4~combout\ & ((\inst|IO_WRITE_int~q\) # (!\inst3|SQ_EN~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|SWITCH_EN~combout\,
	datab => \inst|IO_WRITE_int~q\,
	datac => \inst13|inst4~combout\,
	datad => \inst3|SQ_EN~combout\,
	combout => \inst13|inst1[10]~5_combout\);

-- Location: LCCOMB_X54_Y43_N4
\inst4|IO_OUT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|IO_OUT~0_combout\ = (!\inst|IO_WRITE_int~q\ & (!\inst|IR\(3) & (\inst3|SWITCH_EN~2_combout\ & !\inst|IR\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IO_WRITE_int~q\,
	datab => \inst|IR\(3),
	datac => \inst3|SWITCH_EN~2_combout\,
	datad => \inst|IR\(7),
	combout => \inst4|IO_OUT~0_combout\);

-- Location: LCCOMB_X50_Y43_N26
\inst3|TIMER_EN~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|TIMER_EN~0_combout\ = (!\inst|IR\(4) & \inst|IR\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(4),
	datad => \inst|IR\(1),
	combout => \inst3|TIMER_EN~0_combout\);

-- Location: LCCOMB_X54_Y43_N24
\inst4|IO_OUT\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|IO_OUT~combout\ = (\inst3|SWITCH_EN~1_combout\ & (\inst4|IO_OUT~0_combout\ & (\inst3|TIMER_EN~0_combout\ & \inst3|SWITCH_EN~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|SWITCH_EN~1_combout\,
	datab => \inst4|IO_OUT~0_combout\,
	datac => \inst3|TIMER_EN~0_combout\,
	datad => \inst3|SWITCH_EN~0_combout\,
	combout => \inst4|IO_OUT~combout\);

-- Location: LCCOMB_X51_Y43_N24
\inst13|inst1[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[5]~6_combout\ = (\inst13|inst7~combout\) # (((\inst|IO_WRITE_int~q\) # (\inst4|IO_OUT~combout\)) # (!\inst13|inst1[10]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7~combout\,
	datab => \inst13|inst1[10]~5_combout\,
	datac => \inst|IO_WRITE_int~q\,
	datad => \inst4|IO_OUT~combout\,
	combout => \inst13|inst1[5]~6_combout\);

-- Location: LCCOMB_X55_Y42_N6
\inst|Selector20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector20~0_combout\ = (\inst|state.ex_shift~q\ & !\inst|IR\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|state.ex_shift~q\,
	datad => \inst|IR\(3),
	combout => \inst|Selector20~0_combout\);

-- Location: LCCOMB_X52_Y44_N14
\inst|Selector20~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector20~5_combout\ = (\inst|Selector20~0_combout\ & ((\inst|shifter|auto_generated|sbit_w[55]~80_combout\) # ((!\inst|IR\(2) & \inst|shifter|auto_generated|sbit_w[39]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[55]~80_combout\,
	datab => \inst|Selector20~0_combout\,
	datac => \inst|IR\(2),
	datad => \inst|shifter|auto_generated|sbit_w[39]~59_combout\,
	combout => \inst|Selector20~5_combout\);

-- Location: LCCOMB_X50_Y44_N2
\inst13|inst1[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[5]~2_combout\ = (!\inst13|inst4~combout\ & ((\inst|IO_WRITE_int~q\) # (!\inst3|SQ_EN~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst4~combout\,
	datab => \inst|IO_WRITE_int~q\,
	datad => \inst3|SQ_EN~combout\,
	combout => \inst13|inst1[5]~2_combout\);

-- Location: CLKCTRL_G11
\inst3|SWITCH_EN~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|SWITCH_EN~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|SWITCH_EN~clkctrl_outclk\);

-- Location: IOIBUF_X58_Y54_N29
\SW[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: FF_X55_Y44_N7
\inst7|B_DI[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SWITCH_EN~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|B_DI\(7));

-- Location: LCCOMB_X55_Y44_N20
\inst13|inst1[7]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[7]~29_combout\ = (\inst|IO_WRITE_int~q\ & (\inst|AC\(7) & ((\inst7|B_DI\(7)) # (!\inst3|SWITCH_EN~combout\)))) # (!\inst|IO_WRITE_int~q\ & (((\inst7|B_DI\(7))) # (!\inst3|SWITCH_EN~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IO_WRITE_int~q\,
	datab => \inst3|SWITCH_EN~combout\,
	datac => \inst|AC\(7),
	datad => \inst7|B_DI\(7),
	combout => \inst13|inst1[7]~29_combout\);

-- Location: LCCOMB_X1_Y38_N14
\inst5|count_10Hz[0]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_10Hz[0]~19_combout\ = \inst5|count_10Hz\(0) $ (VCC)
-- \inst5|count_10Hz[0]~20\ = CARRY(\inst5|count_10Hz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count_10Hz\(0),
	datad => VCC,
	combout => \inst5|count_10Hz[0]~19_combout\,
	cout => \inst5|count_10Hz[0]~20\);

-- Location: LCCOMB_X1_Y37_N26
\inst5|LessThan5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan5~3_combout\ = (!\inst5|count_10Hz\(12) & (!\inst5|count_10Hz\(10) & (!\inst5|count_10Hz\(11) & !\inst5|count_10Hz\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count_10Hz\(12),
	datab => \inst5|count_10Hz\(10),
	datac => \inst5|count_10Hz\(11),
	datad => \inst5|count_10Hz\(9),
	combout => \inst5|LessThan5~3_combout\);

-- Location: LCCOMB_X1_Y38_N4
\inst5|LessThan5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan5~1_combout\ = (((!\inst5|count_10Hz\(1)) # (!\inst5|count_10Hz\(0))) # (!\inst5|count_10Hz\(2))) # (!\inst5|count_10Hz\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count_10Hz\(3),
	datab => \inst5|count_10Hz\(2),
	datac => \inst5|count_10Hz\(0),
	datad => \inst5|count_10Hz\(1),
	combout => \inst5|LessThan5~1_combout\);

-- Location: LCCOMB_X1_Y38_N10
\inst5|LessThan5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan5~0_combout\ = (!\inst5|count_10Hz\(7) & (!\inst5|count_10Hz\(6) & !\inst5|count_10Hz\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count_10Hz\(7),
	datac => \inst5|count_10Hz\(6),
	datad => \inst5|count_10Hz\(5),
	combout => \inst5|LessThan5~0_combout\);

-- Location: LCCOMB_X1_Y38_N8
\inst5|LessThan5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan5~2_combout\ = ((\inst5|LessThan5~0_combout\ & ((\inst5|LessThan5~1_combout\) # (!\inst5|count_10Hz\(4))))) # (!\inst5|count_10Hz\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count_10Hz\(8),
	datab => \inst5|LessThan5~1_combout\,
	datac => \inst5|count_10Hz\(4),
	datad => \inst5|LessThan5~0_combout\,
	combout => \inst5|LessThan5~2_combout\);

-- Location: LCCOMB_X1_Y37_N20
\inst5|LessThan5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan5~4_combout\ = (!\inst5|count_10Hz\(14) & (((\inst5|LessThan5~3_combout\ & \inst5|LessThan5~2_combout\)) # (!\inst5|count_10Hz\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count_10Hz\(14),
	datab => \inst5|count_10Hz\(13),
	datac => \inst5|LessThan5~3_combout\,
	datad => \inst5|LessThan5~2_combout\,
	combout => \inst5|LessThan5~4_combout\);

-- Location: LCCOMB_X1_Y37_N24
\inst5|LessThan5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan5~6_combout\ = (!\inst5|LessThan5~5_combout\ & !\inst5|LessThan5~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|LessThan5~5_combout\,
	datad => \inst5|LessThan5~4_combout\,
	combout => \inst5|LessThan5~6_combout\);

-- Location: FF_X1_Y38_N15
\inst5|count_10Hz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_10Hz[0]~19_combout\,
	sclr => \inst5|LessThan5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_10Hz\(0));

-- Location: LCCOMB_X1_Y38_N16
\inst5|count_10Hz[1]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_10Hz[1]~21_combout\ = (\inst5|count_10Hz\(1) & (!\inst5|count_10Hz[0]~20\)) # (!\inst5|count_10Hz\(1) & ((\inst5|count_10Hz[0]~20\) # (GND)))
-- \inst5|count_10Hz[1]~22\ = CARRY((!\inst5|count_10Hz[0]~20\) # (!\inst5|count_10Hz\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count_10Hz\(1),
	datad => VCC,
	cin => \inst5|count_10Hz[0]~20\,
	combout => \inst5|count_10Hz[1]~21_combout\,
	cout => \inst5|count_10Hz[1]~22\);

-- Location: FF_X1_Y38_N17
\inst5|count_10Hz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_10Hz[1]~21_combout\,
	sclr => \inst5|LessThan5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_10Hz\(1));

-- Location: LCCOMB_X1_Y38_N18
\inst5|count_10Hz[2]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_10Hz[2]~23_combout\ = (\inst5|count_10Hz\(2) & (\inst5|count_10Hz[1]~22\ $ (GND))) # (!\inst5|count_10Hz\(2) & (!\inst5|count_10Hz[1]~22\ & VCC))
-- \inst5|count_10Hz[2]~24\ = CARRY((\inst5|count_10Hz\(2) & !\inst5|count_10Hz[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count_10Hz\(2),
	datad => VCC,
	cin => \inst5|count_10Hz[1]~22\,
	combout => \inst5|count_10Hz[2]~23_combout\,
	cout => \inst5|count_10Hz[2]~24\);

-- Location: FF_X1_Y38_N19
\inst5|count_10Hz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_10Hz[2]~23_combout\,
	sclr => \inst5|LessThan5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_10Hz\(2));

-- Location: LCCOMB_X1_Y38_N20
\inst5|count_10Hz[3]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_10Hz[3]~25_combout\ = (\inst5|count_10Hz\(3) & (!\inst5|count_10Hz[2]~24\)) # (!\inst5|count_10Hz\(3) & ((\inst5|count_10Hz[2]~24\) # (GND)))
-- \inst5|count_10Hz[3]~26\ = CARRY((!\inst5|count_10Hz[2]~24\) # (!\inst5|count_10Hz\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count_10Hz\(3),
	datad => VCC,
	cin => \inst5|count_10Hz[2]~24\,
	combout => \inst5|count_10Hz[3]~25_combout\,
	cout => \inst5|count_10Hz[3]~26\);

-- Location: FF_X1_Y38_N21
\inst5|count_10Hz[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_10Hz[3]~25_combout\,
	sclr => \inst5|LessThan5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_10Hz\(3));

-- Location: LCCOMB_X1_Y38_N22
\inst5|count_10Hz[4]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_10Hz[4]~27_combout\ = (\inst5|count_10Hz\(4) & (\inst5|count_10Hz[3]~26\ $ (GND))) # (!\inst5|count_10Hz\(4) & (!\inst5|count_10Hz[3]~26\ & VCC))
-- \inst5|count_10Hz[4]~28\ = CARRY((\inst5|count_10Hz\(4) & !\inst5|count_10Hz[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count_10Hz\(4),
	datad => VCC,
	cin => \inst5|count_10Hz[3]~26\,
	combout => \inst5|count_10Hz[4]~27_combout\,
	cout => \inst5|count_10Hz[4]~28\);

-- Location: FF_X1_Y38_N23
\inst5|count_10Hz[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_10Hz[4]~27_combout\,
	sclr => \inst5|LessThan5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_10Hz\(4));

-- Location: LCCOMB_X1_Y38_N24
\inst5|count_10Hz[5]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_10Hz[5]~29_combout\ = (\inst5|count_10Hz\(5) & (!\inst5|count_10Hz[4]~28\)) # (!\inst5|count_10Hz\(5) & ((\inst5|count_10Hz[4]~28\) # (GND)))
-- \inst5|count_10Hz[5]~30\ = CARRY((!\inst5|count_10Hz[4]~28\) # (!\inst5|count_10Hz\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count_10Hz\(5),
	datad => VCC,
	cin => \inst5|count_10Hz[4]~28\,
	combout => \inst5|count_10Hz[5]~29_combout\,
	cout => \inst5|count_10Hz[5]~30\);

-- Location: FF_X1_Y38_N25
\inst5|count_10Hz[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_10Hz[5]~29_combout\,
	sclr => \inst5|LessThan5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_10Hz\(5));

-- Location: LCCOMB_X1_Y38_N26
\inst5|count_10Hz[6]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_10Hz[6]~31_combout\ = (\inst5|count_10Hz\(6) & (\inst5|count_10Hz[5]~30\ $ (GND))) # (!\inst5|count_10Hz\(6) & (!\inst5|count_10Hz[5]~30\ & VCC))
-- \inst5|count_10Hz[6]~32\ = CARRY((\inst5|count_10Hz\(6) & !\inst5|count_10Hz[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count_10Hz\(6),
	datad => VCC,
	cin => \inst5|count_10Hz[5]~30\,
	combout => \inst5|count_10Hz[6]~31_combout\,
	cout => \inst5|count_10Hz[6]~32\);

-- Location: FF_X1_Y38_N27
\inst5|count_10Hz[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_10Hz[6]~31_combout\,
	sclr => \inst5|LessThan5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_10Hz\(6));

-- Location: LCCOMB_X1_Y38_N28
\inst5|count_10Hz[7]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_10Hz[7]~33_combout\ = (\inst5|count_10Hz\(7) & (!\inst5|count_10Hz[6]~32\)) # (!\inst5|count_10Hz\(7) & ((\inst5|count_10Hz[6]~32\) # (GND)))
-- \inst5|count_10Hz[7]~34\ = CARRY((!\inst5|count_10Hz[6]~32\) # (!\inst5|count_10Hz\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count_10Hz\(7),
	datad => VCC,
	cin => \inst5|count_10Hz[6]~32\,
	combout => \inst5|count_10Hz[7]~33_combout\,
	cout => \inst5|count_10Hz[7]~34\);

-- Location: FF_X1_Y38_N29
\inst5|count_10Hz[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_10Hz[7]~33_combout\,
	sclr => \inst5|LessThan5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_10Hz\(7));

-- Location: LCCOMB_X1_Y38_N30
\inst5|count_10Hz[8]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_10Hz[8]~35_combout\ = (\inst5|count_10Hz\(8) & (\inst5|count_10Hz[7]~34\ $ (GND))) # (!\inst5|count_10Hz\(8) & (!\inst5|count_10Hz[7]~34\ & VCC))
-- \inst5|count_10Hz[8]~36\ = CARRY((\inst5|count_10Hz\(8) & !\inst5|count_10Hz[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count_10Hz\(8),
	datad => VCC,
	cin => \inst5|count_10Hz[7]~34\,
	combout => \inst5|count_10Hz[8]~35_combout\,
	cout => \inst5|count_10Hz[8]~36\);

-- Location: FF_X1_Y38_N31
\inst5|count_10Hz[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_10Hz[8]~35_combout\,
	sclr => \inst5|LessThan5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_10Hz\(8));

-- Location: LCCOMB_X1_Y37_N0
\inst5|count_10Hz[9]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_10Hz[9]~37_combout\ = (\inst5|count_10Hz\(9) & (!\inst5|count_10Hz[8]~36\)) # (!\inst5|count_10Hz\(9) & ((\inst5|count_10Hz[8]~36\) # (GND)))
-- \inst5|count_10Hz[9]~38\ = CARRY((!\inst5|count_10Hz[8]~36\) # (!\inst5|count_10Hz\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count_10Hz\(9),
	datad => VCC,
	cin => \inst5|count_10Hz[8]~36\,
	combout => \inst5|count_10Hz[9]~37_combout\,
	cout => \inst5|count_10Hz[9]~38\);

-- Location: FF_X1_Y37_N1
\inst5|count_10Hz[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_10Hz[9]~37_combout\,
	sclr => \inst5|LessThan5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_10Hz\(9));

-- Location: LCCOMB_X1_Y37_N2
\inst5|count_10Hz[10]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_10Hz[10]~39_combout\ = (\inst5|count_10Hz\(10) & (\inst5|count_10Hz[9]~38\ $ (GND))) # (!\inst5|count_10Hz\(10) & (!\inst5|count_10Hz[9]~38\ & VCC))
-- \inst5|count_10Hz[10]~40\ = CARRY((\inst5|count_10Hz\(10) & !\inst5|count_10Hz[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count_10Hz\(10),
	datad => VCC,
	cin => \inst5|count_10Hz[9]~38\,
	combout => \inst5|count_10Hz[10]~39_combout\,
	cout => \inst5|count_10Hz[10]~40\);

-- Location: FF_X1_Y37_N3
\inst5|count_10Hz[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_10Hz[10]~39_combout\,
	sclr => \inst5|LessThan5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_10Hz\(10));

-- Location: LCCOMB_X1_Y37_N4
\inst5|count_10Hz[11]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_10Hz[11]~41_combout\ = (\inst5|count_10Hz\(11) & (!\inst5|count_10Hz[10]~40\)) # (!\inst5|count_10Hz\(11) & ((\inst5|count_10Hz[10]~40\) # (GND)))
-- \inst5|count_10Hz[11]~42\ = CARRY((!\inst5|count_10Hz[10]~40\) # (!\inst5|count_10Hz\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count_10Hz\(11),
	datad => VCC,
	cin => \inst5|count_10Hz[10]~40\,
	combout => \inst5|count_10Hz[11]~41_combout\,
	cout => \inst5|count_10Hz[11]~42\);

-- Location: FF_X1_Y37_N5
\inst5|count_10Hz[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_10Hz[11]~41_combout\,
	sclr => \inst5|LessThan5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_10Hz\(11));

-- Location: LCCOMB_X1_Y37_N6
\inst5|count_10Hz[12]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_10Hz[12]~43_combout\ = (\inst5|count_10Hz\(12) & (\inst5|count_10Hz[11]~42\ $ (GND))) # (!\inst5|count_10Hz\(12) & (!\inst5|count_10Hz[11]~42\ & VCC))
-- \inst5|count_10Hz[12]~44\ = CARRY((\inst5|count_10Hz\(12) & !\inst5|count_10Hz[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count_10Hz\(12),
	datad => VCC,
	cin => \inst5|count_10Hz[11]~42\,
	combout => \inst5|count_10Hz[12]~43_combout\,
	cout => \inst5|count_10Hz[12]~44\);

-- Location: FF_X1_Y37_N7
\inst5|count_10Hz[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_10Hz[12]~43_combout\,
	sclr => \inst5|LessThan5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_10Hz\(12));

-- Location: LCCOMB_X1_Y37_N8
\inst5|count_10Hz[13]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_10Hz[13]~45_combout\ = (\inst5|count_10Hz\(13) & (!\inst5|count_10Hz[12]~44\)) # (!\inst5|count_10Hz\(13) & ((\inst5|count_10Hz[12]~44\) # (GND)))
-- \inst5|count_10Hz[13]~46\ = CARRY((!\inst5|count_10Hz[12]~44\) # (!\inst5|count_10Hz\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count_10Hz\(13),
	datad => VCC,
	cin => \inst5|count_10Hz[12]~44\,
	combout => \inst5|count_10Hz[13]~45_combout\,
	cout => \inst5|count_10Hz[13]~46\);

-- Location: FF_X1_Y37_N9
\inst5|count_10Hz[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_10Hz[13]~45_combout\,
	sclr => \inst5|LessThan5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_10Hz\(13));

-- Location: LCCOMB_X1_Y37_N10
\inst5|count_10Hz[14]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_10Hz[14]~47_combout\ = (\inst5|count_10Hz\(14) & (\inst5|count_10Hz[13]~46\ $ (GND))) # (!\inst5|count_10Hz\(14) & (!\inst5|count_10Hz[13]~46\ & VCC))
-- \inst5|count_10Hz[14]~48\ = CARRY((\inst5|count_10Hz\(14) & !\inst5|count_10Hz[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count_10Hz\(14),
	datad => VCC,
	cin => \inst5|count_10Hz[13]~46\,
	combout => \inst5|count_10Hz[14]~47_combout\,
	cout => \inst5|count_10Hz[14]~48\);

-- Location: FF_X1_Y37_N11
\inst5|count_10Hz[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_10Hz[14]~47_combout\,
	sclr => \inst5|LessThan5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_10Hz\(14));

-- Location: LCCOMB_X1_Y37_N12
\inst5|count_10Hz[15]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_10Hz[15]~49_combout\ = (\inst5|count_10Hz\(15) & (!\inst5|count_10Hz[14]~48\)) # (!\inst5|count_10Hz\(15) & ((\inst5|count_10Hz[14]~48\) # (GND)))
-- \inst5|count_10Hz[15]~50\ = CARRY((!\inst5|count_10Hz[14]~48\) # (!\inst5|count_10Hz\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count_10Hz\(15),
	datad => VCC,
	cin => \inst5|count_10Hz[14]~48\,
	combout => \inst5|count_10Hz[15]~49_combout\,
	cout => \inst5|count_10Hz[15]~50\);

-- Location: FF_X1_Y37_N13
\inst5|count_10Hz[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_10Hz[15]~49_combout\,
	sclr => \inst5|LessThan5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_10Hz\(15));

-- Location: LCCOMB_X1_Y37_N14
\inst5|count_10Hz[16]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_10Hz[16]~51_combout\ = (\inst5|count_10Hz\(16) & (\inst5|count_10Hz[15]~50\ $ (GND))) # (!\inst5|count_10Hz\(16) & (!\inst5|count_10Hz[15]~50\ & VCC))
-- \inst5|count_10Hz[16]~52\ = CARRY((\inst5|count_10Hz\(16) & !\inst5|count_10Hz[15]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count_10Hz\(16),
	datad => VCC,
	cin => \inst5|count_10Hz[15]~50\,
	combout => \inst5|count_10Hz[16]~51_combout\,
	cout => \inst5|count_10Hz[16]~52\);

-- Location: FF_X1_Y37_N15
\inst5|count_10Hz[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_10Hz[16]~51_combout\,
	sclr => \inst5|LessThan5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_10Hz\(16));

-- Location: LCCOMB_X1_Y37_N16
\inst5|count_10Hz[17]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_10Hz[17]~53_combout\ = (\inst5|count_10Hz\(17) & (!\inst5|count_10Hz[16]~52\)) # (!\inst5|count_10Hz\(17) & ((\inst5|count_10Hz[16]~52\) # (GND)))
-- \inst5|count_10Hz[17]~54\ = CARRY((!\inst5|count_10Hz[16]~52\) # (!\inst5|count_10Hz\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count_10Hz\(17),
	datad => VCC,
	cin => \inst5|count_10Hz[16]~52\,
	combout => \inst5|count_10Hz[17]~53_combout\,
	cout => \inst5|count_10Hz[17]~54\);

-- Location: FF_X1_Y37_N17
\inst5|count_10Hz[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_10Hz[17]~53_combout\,
	sclr => \inst5|LessThan5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_10Hz\(17));

-- Location: LCCOMB_X1_Y37_N18
\inst5|count_10Hz[18]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_10Hz[18]~55_combout\ = \inst5|count_10Hz[17]~54\ $ (!\inst5|count_10Hz\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst5|count_10Hz\(18),
	cin => \inst5|count_10Hz[17]~54\,
	combout => \inst5|count_10Hz[18]~55_combout\);

-- Location: FF_X1_Y37_N19
\inst5|count_10Hz[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_10Hz[18]~55_combout\,
	sclr => \inst5|LessThan5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_10Hz\(18));

-- Location: LCCOMB_X1_Y37_N22
\inst5|LessThan5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan5~5_combout\ = (((!\inst5|count_10Hz\(17)) # (!\inst5|count_10Hz\(16))) # (!\inst5|count_10Hz\(18))) # (!\inst5|count_10Hz\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count_10Hz\(15),
	datab => \inst5|count_10Hz\(18),
	datac => \inst5|count_10Hz\(16),
	datad => \inst5|count_10Hz\(17),
	combout => \inst5|LessThan5~5_combout\);

-- Location: LCCOMB_X1_Y37_N28
\inst5|clock_10Hz_int~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|clock_10Hz_int~0_combout\ = \inst5|clock_10Hz_int~q\ $ (((!\inst5|LessThan5~5_combout\ & !\inst5|LessThan5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|LessThan5~5_combout\,
	datac => \inst5|clock_10Hz_int~q\,
	datad => \inst5|LessThan5~4_combout\,
	combout => \inst5|clock_10Hz_int~0_combout\);

-- Location: FF_X1_Y37_N29
\inst5|clock_10Hz_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|clock_10Hz_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|clock_10Hz_int~q\);

-- Location: LCCOMB_X1_Y38_N12
\inst5|clock_10Hz~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|clock_10Hz~feeder_combout\ = \inst5|clock_10Hz_int~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|clock_10Hz_int~q\,
	combout => \inst5|clock_10Hz~feeder_combout\);

-- Location: FF_X1_Y38_N13
\inst5|clock_10Hz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|clock_10Hz~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|clock_10Hz~q\);

-- Location: CLKCTRL_G4
\inst5|clock_10Hz~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst5|clock_10Hz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst5|clock_10Hz~clkctrl_outclk\);

-- Location: LCCOMB_X52_Y42_N0
\inst4|COUNT[0]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|COUNT[0]~45_combout\ = !\inst4|COUNT\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|COUNT\(0),
	combout => \inst4|COUNT[0]~45_combout\);

-- Location: LCCOMB_X50_Y43_N20
\inst3|TIMER_EN~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|TIMER_EN~1_combout\ = (!\inst|IR\(7) & (!\inst|IR\(4) & \inst|IR\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(7),
	datab => \inst|IR\(4),
	datad => \inst|IR\(1),
	combout => \inst3|TIMER_EN~1_combout\);

-- Location: LCCOMB_X51_Y42_N30
\inst4|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|process_0~0_combout\ = (\inst13|inst14|data_out[7]~1_combout\) # ((\inst3|TIMER_EN~1_combout\ & (\inst|IO_WRITE_int~q\ & \inst3|SWITCH_EN~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|TIMER_EN~1_combout\,
	datab => \inst|IO_WRITE_int~q\,
	datac => \inst3|SWITCH_EN~3_combout\,
	datad => \inst13|inst14|data_out[7]~1_combout\,
	combout => \inst4|process_0~0_combout\);

-- Location: FF_X52_Y42_N1
\inst4|COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_10Hz~clkctrl_outclk\,
	d => \inst4|COUNT[0]~45_combout\,
	clrn => \inst4|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|COUNT\(0));

-- Location: LCCOMB_X51_Y42_N0
\inst4|COUNT[1]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|COUNT[1]~15_combout\ = (\inst4|COUNT\(1) & (\inst4|COUNT\(0) $ (VCC))) # (!\inst4|COUNT\(1) & (\inst4|COUNT\(0) & VCC))
-- \inst4|COUNT[1]~16\ = CARRY((\inst4|COUNT\(1) & \inst4|COUNT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|COUNT\(1),
	datab => \inst4|COUNT\(0),
	datad => VCC,
	combout => \inst4|COUNT[1]~15_combout\,
	cout => \inst4|COUNT[1]~16\);

-- Location: FF_X51_Y42_N1
\inst4|COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_10Hz~clkctrl_outclk\,
	d => \inst4|COUNT[1]~15_combout\,
	clrn => \inst4|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|COUNT\(1));

-- Location: LCCOMB_X51_Y42_N2
\inst4|COUNT[2]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|COUNT[2]~17_combout\ = (\inst4|COUNT\(2) & (!\inst4|COUNT[1]~16\)) # (!\inst4|COUNT\(2) & ((\inst4|COUNT[1]~16\) # (GND)))
-- \inst4|COUNT[2]~18\ = CARRY((!\inst4|COUNT[1]~16\) # (!\inst4|COUNT\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|COUNT\(2),
	datad => VCC,
	cin => \inst4|COUNT[1]~16\,
	combout => \inst4|COUNT[2]~17_combout\,
	cout => \inst4|COUNT[2]~18\);

-- Location: FF_X51_Y42_N3
\inst4|COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_10Hz~clkctrl_outclk\,
	d => \inst4|COUNT[2]~17_combout\,
	clrn => \inst4|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|COUNT\(2));

-- Location: LCCOMB_X51_Y42_N4
\inst4|COUNT[3]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|COUNT[3]~19_combout\ = (\inst4|COUNT\(3) & (\inst4|COUNT[2]~18\ $ (GND))) # (!\inst4|COUNT\(3) & (!\inst4|COUNT[2]~18\ & VCC))
-- \inst4|COUNT[3]~20\ = CARRY((\inst4|COUNT\(3) & !\inst4|COUNT[2]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|COUNT\(3),
	datad => VCC,
	cin => \inst4|COUNT[2]~18\,
	combout => \inst4|COUNT[3]~19_combout\,
	cout => \inst4|COUNT[3]~20\);

-- Location: FF_X51_Y42_N5
\inst4|COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_10Hz~clkctrl_outclk\,
	d => \inst4|COUNT[3]~19_combout\,
	clrn => \inst4|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|COUNT\(3));

-- Location: LCCOMB_X51_Y42_N6
\inst4|COUNT[4]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|COUNT[4]~21_combout\ = (\inst4|COUNT\(4) & (!\inst4|COUNT[3]~20\)) # (!\inst4|COUNT\(4) & ((\inst4|COUNT[3]~20\) # (GND)))
-- \inst4|COUNT[4]~22\ = CARRY((!\inst4|COUNT[3]~20\) # (!\inst4|COUNT\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|COUNT\(4),
	datad => VCC,
	cin => \inst4|COUNT[3]~20\,
	combout => \inst4|COUNT[4]~21_combout\,
	cout => \inst4|COUNT[4]~22\);

-- Location: FF_X51_Y42_N7
\inst4|COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_10Hz~clkctrl_outclk\,
	d => \inst4|COUNT[4]~21_combout\,
	clrn => \inst4|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|COUNT\(4));

-- Location: LCCOMB_X51_Y42_N8
\inst4|COUNT[5]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|COUNT[5]~23_combout\ = (\inst4|COUNT\(5) & (\inst4|COUNT[4]~22\ $ (GND))) # (!\inst4|COUNT\(5) & (!\inst4|COUNT[4]~22\ & VCC))
-- \inst4|COUNT[5]~24\ = CARRY((\inst4|COUNT\(5) & !\inst4|COUNT[4]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|COUNT\(5),
	datad => VCC,
	cin => \inst4|COUNT[4]~22\,
	combout => \inst4|COUNT[5]~23_combout\,
	cout => \inst4|COUNT[5]~24\);

-- Location: FF_X51_Y42_N9
\inst4|COUNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_10Hz~clkctrl_outclk\,
	d => \inst4|COUNT[5]~23_combout\,
	clrn => \inst4|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|COUNT\(5));

-- Location: LCCOMB_X51_Y42_N10
\inst4|COUNT[6]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|COUNT[6]~25_combout\ = (\inst4|COUNT\(6) & (!\inst4|COUNT[5]~24\)) # (!\inst4|COUNT\(6) & ((\inst4|COUNT[5]~24\) # (GND)))
-- \inst4|COUNT[6]~26\ = CARRY((!\inst4|COUNT[5]~24\) # (!\inst4|COUNT\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|COUNT\(6),
	datad => VCC,
	cin => \inst4|COUNT[5]~24\,
	combout => \inst4|COUNT[6]~25_combout\,
	cout => \inst4|COUNT[6]~26\);

-- Location: FF_X51_Y42_N11
\inst4|COUNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_10Hz~clkctrl_outclk\,
	d => \inst4|COUNT[6]~25_combout\,
	clrn => \inst4|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|COUNT\(6));

-- Location: LCCOMB_X51_Y42_N12
\inst4|COUNT[7]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|COUNT[7]~27_combout\ = (\inst4|COUNT\(7) & (\inst4|COUNT[6]~26\ $ (GND))) # (!\inst4|COUNT\(7) & (!\inst4|COUNT[6]~26\ & VCC))
-- \inst4|COUNT[7]~28\ = CARRY((\inst4|COUNT\(7) & !\inst4|COUNT[6]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|COUNT\(7),
	datad => VCC,
	cin => \inst4|COUNT[6]~26\,
	combout => \inst4|COUNT[7]~27_combout\,
	cout => \inst4|COUNT[7]~28\);

-- Location: FF_X51_Y42_N13
\inst4|COUNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_10Hz~clkctrl_outclk\,
	d => \inst4|COUNT[7]~27_combout\,
	clrn => \inst4|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|COUNT\(7));

-- Location: IOIBUF_X51_Y54_N22
\SW[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X55_Y44_N28
\inst7|B_DI[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|B_DI[1]~feeder_combout\ = \SW[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[1]~input_o\,
	combout => \inst7|B_DI[1]~feeder_combout\);

-- Location: FF_X55_Y44_N29
\inst7|B_DI[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SWITCH_EN~clkctrl_outclk\,
	d => \inst7|B_DI[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|B_DI\(1));

-- Location: LCCOMB_X54_Y44_N14
\inst13|inst1[1]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[1]~18_combout\ = (\inst|IO_WRITE_int~q\ & (\inst|AC\(1) & ((\inst7|B_DI\(1)) # (!\inst3|SWITCH_EN~combout\)))) # (!\inst|IO_WRITE_int~q\ & (((\inst7|B_DI\(1))) # (!\inst3|SWITCH_EN~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IO_WRITE_int~q\,
	datab => \inst3|SWITCH_EN~combout\,
	datac => \inst|AC\(1),
	datad => \inst7|B_DI\(1),
	combout => \inst13|inst1[1]~18_combout\);

-- Location: LCCOMB_X54_Y43_N16
\inst13|inst1[5]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[5]~38_combout\ = (\inst13|inst7~combout\) # ((\inst4|IO_OUT~combout\) # (\inst|IO_WRITE_int~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7~combout\,
	datab => \inst4|IO_OUT~combout\,
	datad => \inst|IO_WRITE_int~q\,
	combout => \inst13|inst1[5]~38_combout\);

-- Location: LCCOMB_X51_Y42_N14
\inst4|COUNT[8]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|COUNT[8]~29_combout\ = (\inst4|COUNT\(8) & (!\inst4|COUNT[7]~28\)) # (!\inst4|COUNT\(8) & ((\inst4|COUNT[7]~28\) # (GND)))
-- \inst4|COUNT[8]~30\ = CARRY((!\inst4|COUNT[7]~28\) # (!\inst4|COUNT\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|COUNT\(8),
	datad => VCC,
	cin => \inst4|COUNT[7]~28\,
	combout => \inst4|COUNT[8]~29_combout\,
	cout => \inst4|COUNT[8]~30\);

-- Location: FF_X51_Y42_N15
\inst4|COUNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_10Hz~clkctrl_outclk\,
	d => \inst4|COUNT[8]~29_combout\,
	clrn => \inst4|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|COUNT\(8));

-- Location: LCCOMB_X51_Y42_N16
\inst4|COUNT[9]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|COUNT[9]~31_combout\ = (\inst4|COUNT\(9) & (\inst4|COUNT[8]~30\ $ (GND))) # (!\inst4|COUNT\(9) & (!\inst4|COUNT[8]~30\ & VCC))
-- \inst4|COUNT[9]~32\ = CARRY((\inst4|COUNT\(9) & !\inst4|COUNT[8]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|COUNT\(9),
	datad => VCC,
	cin => \inst4|COUNT[8]~30\,
	combout => \inst4|COUNT[9]~31_combout\,
	cout => \inst4|COUNT[9]~32\);

-- Location: FF_X51_Y42_N17
\inst4|COUNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_10Hz~clkctrl_outclk\,
	d => \inst4|COUNT[9]~31_combout\,
	clrn => \inst4|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|COUNT\(9));

-- Location: IOIBUF_X38_Y0_N29
\GSENSOR_SDI~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GSENSOR_SDI,
	o => \GSENSOR_SDI~input_o\);

-- Location: LCCOMB_X52_Y41_N26
\inst13|inst|Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Decoder0~0_combout\ = (!\inst13|inst14|data_out[7]~1_combout\ & \inst13|inst|state.rd~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst14|data_out[7]~1_combout\,
	datad => \inst13|inst|state.rd~q\,
	combout => \inst13|inst|Decoder0~0_combout\);

-- Location: LCCOMB_X52_Y41_N24
\inst13|inst|Decoder0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Decoder0~4_combout\ = (\inst13|inst|bit_cnt\(1) & (\inst13|inst|bit_cnt\(2) & (\inst13|inst|Decoder0~0_combout\ & !\inst13|inst|bit_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|bit_cnt\(1),
	datab => \inst13|inst|bit_cnt\(2),
	datac => \inst13|inst|Decoder0~0_combout\,
	datad => \inst13|inst|bit_cnt\(0),
	combout => \inst13|inst|Decoder0~4_combout\);

-- Location: LCCOMB_X51_Y41_N28
\inst13|inst|data_rx[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|data_rx[1]~5_combout\ = (\inst13|inst|Decoder0~4_combout\ & (\GSENSOR_SDI~input_o\)) # (!\inst13|inst|Decoder0~4_combout\ & ((\inst13|inst|data_rx\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GSENSOR_SDI~input_o\,
	datac => \inst13|inst|data_rx\(1),
	datad => \inst13|inst|Decoder0~4_combout\,
	combout => \inst13|inst|data_rx[1]~5_combout\);

-- Location: FF_X51_Y41_N29
\inst13|inst|data_rx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|ALT_INV_data_clk~clkctrl_outclk\,
	d => \inst13|inst|data_rx[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_rx\(1));

-- Location: LCCOMB_X51_Y41_N0
\inst13|inst|data_rd[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|data_rd[1]~feeder_combout\ = \inst13|inst|data_rx\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst|data_rx\(1),
	combout => \inst13|inst|data_rd[1]~feeder_combout\);

-- Location: FF_X51_Y41_N1
\inst13|inst|data_rd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	d => \inst13|inst|data_rd[1]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	ena => \inst13|inst|state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_rd\(1));

-- Location: LCCOMB_X50_Y40_N26
\inst13|inst14|data_out[9]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_out[9]~12_combout\ = (\inst13|inst14|prev_busy~q\ & (\inst13|inst14|state.Rx2~q\ & (!\inst13|inst|busy~q\ & \inst13|inst|data_rd\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|prev_busy~q\,
	datab => \inst13|inst14|state.Rx2~q\,
	datac => \inst13|inst|busy~q\,
	datad => \inst13|inst|data_rd\(1),
	combout => \inst13|inst14|data_out[9]~12_combout\);

-- Location: LCCOMB_X50_Y46_N12
\inst3|I2C_RDY_EN~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|I2C_RDY_EN~1_combout\ = (\inst|IR\(1) & (\inst|IR\(7) & \inst|IR\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(1),
	datac => \inst|IR\(7),
	datad => \inst|IR\(4),
	combout => \inst3|I2C_RDY_EN~1_combout\);

-- Location: LCCOMB_X50_Y46_N26
\inst13|inst6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst6~combout\ = LCELL((\inst|IO_WRITE_int~q\ & (\inst3|SWITCH_EN~3_combout\ & \inst3|I2C_RDY_EN~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|IO_WRITE_int~q\,
	datac => \inst3|SWITCH_EN~3_combout\,
	datad => \inst3|I2C_RDY_EN~1_combout\,
	combout => \inst13|inst6~combout\);

-- Location: LCCOMB_X52_Y40_N20
\inst13|inst14|go~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|go~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst13|inst14|go~feeder_combout\);

-- Location: LCCOMB_X52_Y40_N18
\inst13|inst14|running~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|running~0_combout\ = (\inst13|inst14|state.idle~q\ & ((\inst13|inst14|running~q\))) # (!\inst13|inst14|state.idle~q\ & (\inst13|inst14|go~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst14|go~q\,
	datac => \inst13|inst14|running~q\,
	datad => \inst13|inst14|state.idle~q\,
	combout => \inst13|inst14|running~0_combout\);

-- Location: FF_X52_Y40_N19
\inst13|inst14|running\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|running~0_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|running~q\);

-- Location: LCCOMB_X52_Y40_N16
\inst13|inst14|latch_rdy~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|latch_rdy~0_combout\ = (\inst13|inst14|running~q\) # (\inst13|inst14|data_out[7]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst14|running~q\,
	datad => \inst13|inst14|data_out[7]~1_combout\,
	combout => \inst13|inst14|latch_rdy~0_combout\);

-- Location: FF_X52_Y40_N21
\inst13|inst14|go\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst6~combout\,
	d => \inst13|inst14|go~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_latch_rdy~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|go~q\);

-- Location: LCCOMB_X51_Y40_N26
\inst13|inst14|tx_addr[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|tx_addr[7]~0_combout\ = (\inst13|inst14|go~q\ & !\inst13|inst14|state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|go~q\,
	datac => \inst13|inst14|state.idle~q\,
	combout => \inst13|inst14|tx_addr[7]~0_combout\);

-- Location: LCCOMB_X51_Y40_N28
\inst13|inst14|state_machine~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|state_machine~0_combout\ = (!\inst13|inst|busy~q\ & \inst13|inst14|prev_busy~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst|busy~q\,
	datad => \inst13|inst14|prev_busy~q\,
	combout => \inst13|inst14|state_machine~0_combout\);

-- Location: LCCOMB_X51_Y40_N18
\inst13|inst14|data_out[15]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_out[15]~11_combout\ = (!\inst13|inst14|data_out[7]~1_combout\ & ((\inst13|inst14|tx_addr[7]~0_combout\) # ((\inst13|inst14|state.Rx2~q\ & \inst13|inst14|state_machine~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|state.Rx2~q\,
	datab => \inst13|inst14|data_out[7]~1_combout\,
	datac => \inst13|inst14|tx_addr[7]~0_combout\,
	datad => \inst13|inst14|state_machine~0_combout\,
	combout => \inst13|inst14|data_out[15]~11_combout\);

-- Location: FF_X50_Y40_N27
\inst13|inst14|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|data_out[9]~12_combout\,
	ena => \inst13|inst14|data_out[15]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_out\(9));

-- Location: LCCOMB_X49_Y43_N2
\inst13|inst1[9]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[9]~34_combout\ = (\inst13|inst7~combout\ & (\inst13|inst14|data_out\(9) & ((\inst4|COUNT\(9)) # (!\inst4|IO_OUT~combout\)))) # (!\inst13|inst7~combout\ & (((\inst4|COUNT\(9))) # (!\inst4|IO_OUT~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7~combout\,
	datab => \inst4|IO_OUT~combout\,
	datac => \inst4|COUNT\(9),
	datad => \inst13|inst14|data_out\(9),
	combout => \inst13|inst1[9]~34_combout\);

-- Location: IOIBUF_X69_Y54_N1
\SW[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LCCOMB_X50_Y41_N4
\inst7|B_DI[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|B_DI[9]~feeder_combout\ = \SW[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[9]~input_o\,
	combout => \inst7|B_DI[9]~feeder_combout\);

-- Location: FF_X50_Y41_N5
\inst7|B_DI[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SWITCH_EN~clkctrl_outclk\,
	d => \inst7|B_DI[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|B_DI\(9));

-- Location: LCCOMB_X49_Y43_N14
\inst13|inst1[9]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[9]~35_combout\ = (\inst|IO_WRITE_int~q\ & (\inst|AC\(9) & ((\inst7|B_DI\(9)) # (!\inst3|SWITCH_EN~combout\)))) # (!\inst|IO_WRITE_int~q\ & (((\inst7|B_DI\(9))) # (!\inst3|SWITCH_EN~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IO_WRITE_int~q\,
	datab => \inst3|SWITCH_EN~combout\,
	datac => \inst|AC\(9),
	datad => \inst7|B_DI\(9),
	combout => \inst13|inst1[9]~35_combout\);

-- Location: LCCOMB_X49_Y43_N18
\inst13|inst1[9]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[9]~36_combout\ = ((\inst13|inst1[5]~2_combout\ & (\inst13|inst1[9]~34_combout\ & \inst13|inst1[9]~35_combout\))) # (!\inst13|inst1[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[5]~6_combout\,
	datab => \inst13|inst1[5]~2_combout\,
	datac => \inst13|inst1[9]~34_combout\,
	datad => \inst13|inst1[9]~35_combout\,
	combout => \inst13|inst1[9]~36_combout\);

-- Location: LCCOMB_X51_Y40_N4
\inst13|inst14|cmd_in[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|cmd_in[1]~feeder_combout\ = \inst13|inst1[9]~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst1[9]~36_combout\,
	combout => \inst13|inst14|cmd_in[1]~feeder_combout\);

-- Location: FF_X51_Y40_N5
\inst13|inst14|cmd_in[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst12~clkctrl_outclk\,
	d => \inst13|inst14|cmd_in[1]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|cmd_in\(1));

-- Location: LCCOMB_X51_Y42_N18
\inst4|COUNT[10]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|COUNT[10]~33_combout\ = (\inst4|COUNT\(10) & (!\inst4|COUNT[9]~32\)) # (!\inst4|COUNT\(10) & ((\inst4|COUNT[9]~32\) # (GND)))
-- \inst4|COUNT[10]~34\ = CARRY((!\inst4|COUNT[9]~32\) # (!\inst4|COUNT\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|COUNT\(10),
	datad => VCC,
	cin => \inst4|COUNT[9]~32\,
	combout => \inst4|COUNT[10]~33_combout\,
	cout => \inst4|COUNT[10]~34\);

-- Location: FF_X51_Y42_N19
\inst4|COUNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_10Hz~clkctrl_outclk\,
	d => \inst4|COUNT[10]~33_combout\,
	clrn => \inst4|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|COUNT\(10));

-- Location: LCCOMB_X51_Y42_N20
\inst4|COUNT[11]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|COUNT[11]~35_combout\ = (\inst4|COUNT\(11) & (\inst4|COUNT[10]~34\ $ (GND))) # (!\inst4|COUNT\(11) & (!\inst4|COUNT[10]~34\ & VCC))
-- \inst4|COUNT[11]~36\ = CARRY((\inst4|COUNT\(11) & !\inst4|COUNT[10]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|COUNT\(11),
	datad => VCC,
	cin => \inst4|COUNT[10]~34\,
	combout => \inst4|COUNT[11]~35_combout\,
	cout => \inst4|COUNT[11]~36\);

-- Location: FF_X51_Y42_N21
\inst4|COUNT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_10Hz~clkctrl_outclk\,
	d => \inst4|COUNT[11]~35_combout\,
	clrn => \inst4|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|COUNT\(11));

-- Location: LCCOMB_X51_Y42_N22
\inst4|COUNT[12]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|COUNT[12]~37_combout\ = (\inst4|COUNT\(12) & (!\inst4|COUNT[11]~36\)) # (!\inst4|COUNT\(12) & ((\inst4|COUNT[11]~36\) # (GND)))
-- \inst4|COUNT[12]~38\ = CARRY((!\inst4|COUNT[11]~36\) # (!\inst4|COUNT\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|COUNT\(12),
	datad => VCC,
	cin => \inst4|COUNT[11]~36\,
	combout => \inst4|COUNT[12]~37_combout\,
	cout => \inst4|COUNT[12]~38\);

-- Location: FF_X51_Y42_N23
\inst4|COUNT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_10Hz~clkctrl_outclk\,
	d => \inst4|COUNT[12]~37_combout\,
	clrn => \inst4|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|COUNT\(12));

-- Location: LCCOMB_X51_Y42_N24
\inst4|COUNT[13]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|COUNT[13]~39_combout\ = (\inst4|COUNT\(13) & (\inst4|COUNT[12]~38\ $ (GND))) # (!\inst4|COUNT\(13) & (!\inst4|COUNT[12]~38\ & VCC))
-- \inst4|COUNT[13]~40\ = CARRY((\inst4|COUNT\(13) & !\inst4|COUNT[12]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|COUNT\(13),
	datad => VCC,
	cin => \inst4|COUNT[12]~38\,
	combout => \inst4|COUNT[13]~39_combout\,
	cout => \inst4|COUNT[13]~40\);

-- Location: FF_X51_Y42_N25
\inst4|COUNT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_10Hz~clkctrl_outclk\,
	d => \inst4|COUNT[13]~39_combout\,
	clrn => \inst4|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|COUNT\(13));

-- Location: LCCOMB_X52_Y41_N6
\inst13|inst|Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Decoder0~1_combout\ = (\inst13|inst|bit_cnt\(1) & (!\inst13|inst|bit_cnt\(2) & (\inst13|inst|Decoder0~0_combout\ & !\inst13|inst|bit_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|bit_cnt\(1),
	datab => \inst13|inst|bit_cnt\(2),
	datac => \inst13|inst|Decoder0~0_combout\,
	datad => \inst13|inst|bit_cnt\(0),
	combout => \inst13|inst|Decoder0~1_combout\);

-- Location: LCCOMB_X51_Y41_N24
\inst13|inst|data_rx[5]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|data_rx[5]~0_combout\ = (\inst13|inst|Decoder0~1_combout\ & (\GSENSOR_SDI~input_o\)) # (!\inst13|inst|Decoder0~1_combout\ & ((\inst13|inst|data_rx\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GSENSOR_SDI~input_o\,
	datac => \inst13|inst|data_rx\(5),
	datad => \inst13|inst|Decoder0~1_combout\,
	combout => \inst13|inst|data_rx[5]~0_combout\);

-- Location: FF_X51_Y41_N25
\inst13|inst|data_rx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|ALT_INV_data_clk~clkctrl_outclk\,
	d => \inst13|inst|data_rx[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_rx\(5));

-- Location: LCCOMB_X51_Y41_N20
\inst13|inst|data_rd[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|data_rd[5]~feeder_combout\ = \inst13|inst|data_rx\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst|data_rx\(5),
	combout => \inst13|inst|data_rd[5]~feeder_combout\);

-- Location: FF_X51_Y41_N21
\inst13|inst|data_rd[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	d => \inst13|inst|data_rd[5]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	ena => \inst13|inst|state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_rd\(5));

-- Location: LCCOMB_X50_Y40_N8
\inst13|inst14|data_out[13]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_out[13]~16_combout\ = (\inst13|inst14|state.Rx2~q\ & (\inst13|inst|data_rd\(5) & (!\inst13|inst|busy~q\ & \inst13|inst14|prev_busy~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|state.Rx2~q\,
	datab => \inst13|inst|data_rd\(5),
	datac => \inst13|inst|busy~q\,
	datad => \inst13|inst14|prev_busy~q\,
	combout => \inst13|inst14|data_out[13]~16_combout\);

-- Location: FF_X50_Y40_N9
\inst13|inst14|data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|data_out[13]~16_combout\,
	ena => \inst13|inst14|data_out[15]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_out\(13));

-- Location: LCCOMB_X54_Y42_N16
\inst13|inst1[13]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[13]~44_combout\ = (\inst4|IO_OUT~combout\ & (\inst4|COUNT\(13) & ((\inst13|inst14|data_out\(13)) # (!\inst13|inst7~combout\)))) # (!\inst4|IO_OUT~combout\ & (((\inst13|inst14|data_out\(13))) # (!\inst13|inst7~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|IO_OUT~combout\,
	datab => \inst13|inst7~combout\,
	datac => \inst4|COUNT\(13),
	datad => \inst13|inst14|data_out\(13),
	combout => \inst13|inst1[13]~44_combout\);

-- Location: LCCOMB_X54_Y42_N30
\inst|Selector14~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector14~4_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(13) & ((\inst|state.ex_or~q\) # (\inst|state.ex_load~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|altsyncram_component|auto_generated|q_a\(13),
	datac => \inst|state.ex_or~q\,
	datad => \inst|state.ex_load~q\,
	combout => \inst|Selector14~4_combout\);

-- Location: LCCOMB_X47_Y45_N12
\inst|shifter|auto_generated|sbit_w[21]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[21]~27_combout\ = (\inst|IR\(0) & ((\inst|IR\(4) & (\inst|AC\(6))) # (!\inst|IR\(4) & ((\inst|AC\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(0),
	datab => \inst|IR\(4),
	datac => \inst|AC\(6),
	datad => \inst|AC\(4),
	combout => \inst|shifter|auto_generated|sbit_w[21]~27_combout\);

-- Location: LCCOMB_X47_Y45_N10
\inst|shifter|auto_generated|sbit_w[21]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[21]~28_combout\ = (\inst|shifter|auto_generated|sbit_w[21]~27_combout\) # ((!\inst|IR\(0) & \inst|AC\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(0),
	datac => \inst|AC\(5),
	datad => \inst|shifter|auto_generated|sbit_w[21]~27_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[21]~28_combout\);

-- Location: LCCOMB_X47_Y45_N26
\inst|shifter|auto_generated|sbit_w[19]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[19]~24_combout\ = (\inst|IR\(0) & ((\inst|IR\(4) & ((\inst|AC\(4)))) # (!\inst|IR\(4) & (\inst|AC\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(0),
	datab => \inst|IR\(4),
	datac => \inst|AC\(2),
	datad => \inst|AC\(4),
	combout => \inst|shifter|auto_generated|sbit_w[19]~24_combout\);

-- Location: LCCOMB_X47_Y44_N4
\inst|shifter|auto_generated|sbit_w[19]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[19]~25_combout\ = (\inst|shifter|auto_generated|sbit_w[19]~24_combout\) # ((\inst|AC\(3) & !\inst|IR\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(3),
	datac => \inst|shifter|auto_generated|sbit_w[19]~24_combout\,
	datad => \inst|IR\(0),
	combout => \inst|shifter|auto_generated|sbit_w[19]~25_combout\);

-- Location: LCCOMB_X47_Y44_N14
\inst|shifter|auto_generated|sbit_w[37]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[37]~26_combout\ = (\inst|shifter|auto_generated|sbit_w[23]~15_combout\ & ((\inst3|I2C_RDY_EN~0_combout\) # ((\inst|shifter|auto_generated|sbit_w[19]~25_combout\ & \inst3|TIMER_EN~0_combout\)))) # 
-- (!\inst|shifter|auto_generated|sbit_w[23]~15_combout\ & (\inst|shifter|auto_generated|sbit_w[19]~25_combout\ & ((\inst3|TIMER_EN~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[23]~15_combout\,
	datab => \inst|shifter|auto_generated|sbit_w[19]~25_combout\,
	datac => \inst3|I2C_RDY_EN~0_combout\,
	datad => \inst3|TIMER_EN~0_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[37]~26_combout\);

-- Location: LCCOMB_X47_Y44_N8
\inst|shifter|auto_generated|sbit_w[37]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[37]~29_combout\ = (\inst|shifter|auto_generated|sbit_w[37]~26_combout\) # ((\inst|shifter|auto_generated|sbit_w[21]~28_combout\ & !\inst|IR\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|shifter|auto_generated|sbit_w[21]~28_combout\,
	datac => \inst|shifter|auto_generated|sbit_w[37]~26_combout\,
	datad => \inst|IR\(1),
	combout => \inst|shifter|auto_generated|sbit_w[37]~29_combout\);

-- Location: LCCOMB_X50_Y42_N0
\inst|Selector15~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector15~6_combout\ = (\inst|state.ex_xor~q\ & (\inst|AC\(12) $ (\inst|altsyncram_component|auto_generated|q_a\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_xor~q\,
	datac => \inst|AC\(12),
	datad => \inst|altsyncram_component|auto_generated|q_a\(12),
	combout => \inst|Selector15~6_combout\);

-- Location: LCCOMB_X55_Y45_N14
\inst|Add1~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~63_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(12) & (!\inst|state.ex_sub~q\ & \inst|state.ex_add~q\)) # (!\inst|altsyncram_component|auto_generated|q_a\(12) & (\inst|state.ex_sub~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|altsyncram_component|auto_generated|q_a\(12),
	datac => \inst|state.ex_sub~q\,
	datad => \inst|state.ex_add~q\,
	combout => \inst|Add1~63_combout\);

-- Location: LCCOMB_X52_Y46_N2
\inst|Add1~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~64_combout\ = (\inst|IR\(10) & ((\inst|Add1~1_combout\) # ((\inst|Add1~63_combout\ & \inst|WideOr3~2_combout\)))) # (!\inst|IR\(10) & (((\inst|Add1~63_combout\ & \inst|WideOr3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(10),
	datab => \inst|Add1~1_combout\,
	datac => \inst|Add1~63_combout\,
	datad => \inst|WideOr3~2_combout\,
	combout => \inst|Add1~64_combout\);

-- Location: LCCOMB_X51_Y46_N24
\inst|Add1~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~65_combout\ = (\inst|AC\(12) & ((\inst|state.ex_addi~q\) # ((\inst|state.ex_sub~q\) # (\inst|state.ex_add~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_addi~q\,
	datab => \inst|state.ex_sub~q\,
	datac => \inst|AC\(12),
	datad => \inst|state.ex_add~q\,
	combout => \inst|Add1~65_combout\);

-- Location: LCCOMB_X54_Y45_N30
\inst|Add1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~60_combout\ = (\inst|AC\(11) & ((\inst|state.ex_addi~q\) # ((\inst|state.ex_sub~q\) # (\inst|state.ex_add~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_addi~q\,
	datab => \inst|state.ex_sub~q\,
	datac => \inst|AC\(11),
	datad => \inst|state.ex_add~q\,
	combout => \inst|Add1~60_combout\);

-- Location: LCCOMB_X55_Y45_N0
\inst|Add1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~58_combout\ = (\inst|state.ex_sub~q\ & (!\inst|altsyncram_component|auto_generated|q_a\(11))) # (!\inst|state.ex_sub~q\ & (\inst|altsyncram_component|auto_generated|q_a\(11) & \inst|state.ex_add~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_sub~q\,
	datac => \inst|altsyncram_component|auto_generated|q_a\(11),
	datad => \inst|state.ex_add~q\,
	combout => \inst|Add1~58_combout\);

-- Location: LCCOMB_X52_Y46_N16
\inst|Add1~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~59_combout\ = (\inst|IR\(10) & ((\inst|Add1~1_combout\) # ((\inst|Add1~58_combout\ & \inst|WideOr3~2_combout\)))) # (!\inst|IR\(10) & (((\inst|Add1~58_combout\ & \inst|WideOr3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(10),
	datab => \inst|Add1~1_combout\,
	datac => \inst|Add1~58_combout\,
	datad => \inst|WideOr3~2_combout\,
	combout => \inst|Add1~59_combout\);

-- Location: LCCOMB_X52_Y46_N26
\inst|Add1~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~53_combout\ = (\inst|state.ex_sub~q\ & (!\inst|altsyncram_component|auto_generated|q_a\(10))) # (!\inst|state.ex_sub~q\ & (\inst|altsyncram_component|auto_generated|q_a\(10) & \inst|state.ex_add~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_sub~q\,
	datac => \inst|altsyncram_component|auto_generated|q_a\(10),
	datad => \inst|state.ex_add~q\,
	combout => \inst|Add1~53_combout\);

-- Location: LCCOMB_X52_Y46_N6
\inst|Add1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~54_combout\ = (\inst|Add1~53_combout\ & ((\inst|WideOr3~2_combout\) # ((\inst|Add1~1_combout\ & \inst|IR\(10))))) # (!\inst|Add1~53_combout\ & (\inst|Add1~1_combout\ & (\inst|IR\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~53_combout\,
	datab => \inst|Add1~1_combout\,
	datac => \inst|IR\(10),
	datad => \inst|WideOr3~2_combout\,
	combout => \inst|Add1~54_combout\);

-- Location: LCCOMB_X49_Y44_N10
\inst|shifter|auto_generated|sbit_w[26]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[26]~32_combout\ = (\inst|IR\(0) & ((\inst|IR\(4) & ((\inst|AC\(11)))) # (!\inst|IR\(4) & (\inst|AC\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(0),
	datab => \inst|IR\(4),
	datac => \inst|AC\(9),
	datad => \inst|AC\(11),
	combout => \inst|shifter|auto_generated|sbit_w[26]~32_combout\);

-- Location: LCCOMB_X49_Y44_N4
\inst|shifter|auto_generated|sbit_w[26]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[26]~33_combout\ = (\inst|shifter|auto_generated|sbit_w[26]~32_combout\) # ((\inst|AC\(10) & !\inst|IR\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(10),
	datac => \inst|IR\(0),
	datad => \inst|shifter|auto_generated|sbit_w[26]~32_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[26]~33_combout\);

-- Location: LCCOMB_X47_Y45_N28
\inst|shifter|auto_generated|sbit_w[24]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[24]~35_combout\ = (\inst|IR\(0) & ((\inst|IR\(4) & ((\inst|AC\(9)))) # (!\inst|IR\(4) & (\inst|AC\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(0),
	datab => \inst|IR\(4),
	datac => \inst|AC\(7),
	datad => \inst|AC\(9),
	combout => \inst|shifter|auto_generated|sbit_w[24]~35_combout\);

-- Location: LCCOMB_X47_Y45_N14
\inst|shifter|auto_generated|sbit_w[24]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[24]~36_combout\ = (\inst|shifter|auto_generated|sbit_w[24]~35_combout\) # ((!\inst|IR\(0) & \inst|AC\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(0),
	datac => \inst|AC\(8),
	datad => \inst|shifter|auto_generated|sbit_w[24]~35_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[24]~36_combout\);

-- Location: LCCOMB_X49_Y45_N18
\inst|shifter|auto_generated|sbit_w[28]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[28]~42_combout\ = (\inst|IR\(0) & ((\inst|IR\(4) & ((\inst|AC\(13)))) # (!\inst|IR\(4) & (\inst|AC\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(11),
	datab => \inst|IR\(0),
	datac => \inst|AC\(13),
	datad => \inst|IR\(4),
	combout => \inst|shifter|auto_generated|sbit_w[28]~42_combout\);

-- Location: LCCOMB_X49_Y45_N8
\inst|shifter|auto_generated|sbit_w[28]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[28]~43_combout\ = (\inst|shifter|auto_generated|sbit_w[28]~42_combout\) # ((\inst|AC\(12) & !\inst|IR\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(12),
	datac => \inst|IR\(0),
	datad => \inst|shifter|auto_generated|sbit_w[28]~42_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[28]~43_combout\);

-- Location: LCCOMB_X49_Y45_N10
\inst|shifter|auto_generated|sbit_w[42]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[42]~70_combout\ = (\inst|shifter|auto_generated|sbit_w[24]~36_combout\ & ((\inst3|TIMER_EN~0_combout\) # ((\inst3|I2C_RDY_EN~0_combout\ & \inst|shifter|auto_generated|sbit_w[28]~43_combout\)))) # 
-- (!\inst|shifter|auto_generated|sbit_w[24]~36_combout\ & (\inst3|I2C_RDY_EN~0_combout\ & (\inst|shifter|auto_generated|sbit_w[28]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[24]~36_combout\,
	datab => \inst3|I2C_RDY_EN~0_combout\,
	datac => \inst|shifter|auto_generated|sbit_w[28]~43_combout\,
	datad => \inst3|TIMER_EN~0_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[42]~70_combout\);

-- Location: LCCOMB_X49_Y45_N24
\inst|shifter|auto_generated|sbit_w[42]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[42]~71_combout\ = (\inst|shifter|auto_generated|sbit_w[42]~70_combout\) # ((!\inst|IR\(1) & \inst|shifter|auto_generated|sbit_w[26]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(1),
	datac => \inst|shifter|auto_generated|sbit_w[26]~33_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[42]~70_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[42]~71_combout\);

-- Location: LCCOMB_X47_Y45_N0
\inst|shifter|auto_generated|sbit_w[22]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[22]~30_combout\ = (\inst|IR\(0) & ((\inst|IR\(4) & ((\inst|AC\(7)))) # (!\inst|IR\(4) & (\inst|AC\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(5),
	datab => \inst|IR\(4),
	datac => \inst|IR\(0),
	datad => \inst|AC\(7),
	combout => \inst|shifter|auto_generated|sbit_w[22]~30_combout\);

-- Location: LCCOMB_X47_Y45_N2
\inst|shifter|auto_generated|sbit_w[22]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[22]~31_combout\ = (\inst|shifter|auto_generated|sbit_w[22]~30_combout\) # ((!\inst|IR\(0) & \inst|AC\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(0),
	datac => \inst|AC\(6),
	datad => \inst|shifter|auto_generated|sbit_w[22]~30_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[22]~31_combout\);

-- Location: LCCOMB_X47_Y45_N16
\inst|shifter|auto_generated|sbit_w[20]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[20]~51_combout\ = (\inst|IR\(0) & ((\inst|IR\(4) & ((\inst|AC\(5)))) # (!\inst|IR\(4) & (\inst|AC\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(0),
	datab => \inst|AC\(3),
	datac => \inst|AC\(5),
	datad => \inst|IR\(4),
	combout => \inst|shifter|auto_generated|sbit_w[20]~51_combout\);

-- Location: LCCOMB_X47_Y43_N24
\inst|shifter|auto_generated|sbit_w[20]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[20]~52_combout\ = (\inst|shifter|auto_generated|sbit_w[20]~51_combout\) # ((!\inst|IR\(0) & \inst|AC\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[20]~51_combout\,
	datab => \inst|IR\(0),
	datad => \inst|AC\(4),
	combout => \inst|shifter|auto_generated|sbit_w[20]~52_combout\);

-- Location: LCCOMB_X47_Y43_N10
\inst|shifter|auto_generated|sbit_w[38]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[38]~66_combout\ = (\inst3|I2C_RDY_EN~0_combout\ & ((\inst|shifter|auto_generated|sbit_w[24]~36_combout\) # ((\inst3|TIMER_EN~0_combout\ & \inst|shifter|auto_generated|sbit_w[20]~52_combout\)))) # 
-- (!\inst3|I2C_RDY_EN~0_combout\ & (((\inst3|TIMER_EN~0_combout\ & \inst|shifter|auto_generated|sbit_w[20]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|I2C_RDY_EN~0_combout\,
	datab => \inst|shifter|auto_generated|sbit_w[24]~36_combout\,
	datac => \inst3|TIMER_EN~0_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[20]~52_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[38]~66_combout\);

-- Location: LCCOMB_X47_Y43_N12
\inst|shifter|auto_generated|sbit_w[38]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[38]~67_combout\ = (\inst|shifter|auto_generated|sbit_w[38]~66_combout\) # ((!\inst|IR\(1) & \inst|shifter|auto_generated|sbit_w[22]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(1),
	datac => \inst|shifter|auto_generated|sbit_w[22]~31_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[38]~66_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[38]~67_combout\);

-- Location: LCCOMB_X49_Y45_N12
\inst|shifter|auto_generated|sbit_w[30]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[30]~39_combout\ = (\inst|IR\(0) & ((\inst|IR\(4) & (\inst|AC\(15))) # (!\inst|IR\(4) & ((\inst|AC\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(15),
	datab => \inst|IR\(0),
	datac => \inst|AC\(13),
	datad => \inst|IR\(4),
	combout => \inst|shifter|auto_generated|sbit_w[30]~39_combout\);

-- Location: LCCOMB_X49_Y46_N24
\inst|Selector13~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector13~5_combout\ = (\inst|AC\(14) & (((\inst|altsyncram_component|auto_generated|q_a\(14) & \inst|state.ex_and~q\)) # (!\inst|Selector22~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(14),
	datab => \inst|AC\(14),
	datac => \inst|Selector22~3_combout\,
	datad => \inst|state.ex_and~q\,
	combout => \inst|Selector13~5_combout\);

-- Location: LCCOMB_X50_Y45_N18
\inst|shifter|auto_generated|sbit_w[62]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[62]~77_combout\ = (\inst|IR\(2) & (((\inst|AC\(15) & \inst|IR\(4))))) # (!\inst|IR\(2) & (\inst|shifter|auto_generated|sbit_w[46]~82_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[46]~82_combout\,
	datab => \inst|IR\(2),
	datac => \inst|AC\(15),
	datad => \inst|IR\(4),
	combout => \inst|shifter|auto_generated|sbit_w[62]~77_combout\);

-- Location: LCCOMB_X50_Y45_N0
\inst|shifter|auto_generated|sbit_w[62]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[62]~78_combout\ = (\inst|shifter|auto_generated|sbit_w[62]~77_combout\) # ((!\inst|IR\(4) & (\inst|IR\(2) & \inst|shifter|auto_generated|sbit_w[42]~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[62]~77_combout\,
	datab => \inst|IR\(4),
	datac => \inst|IR\(2),
	datad => \inst|shifter|auto_generated|sbit_w[42]~71_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[62]~78_combout\);

-- Location: LCCOMB_X49_Y46_N6
\inst|Selector13~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector13~6_combout\ = (\inst|state.ex_xor~q\ & (\inst|altsyncram_component|auto_generated|q_a\(14) $ (\inst|AC\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(14),
	datab => \inst|state.ex_xor~q\,
	datac => \inst|AC\(14),
	combout => \inst|Selector13~6_combout\);

-- Location: LCCOMB_X52_Y44_N4
\inst|Selector16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector16~1_combout\ = (!\inst|Selector19~0_combout\ & ((!\inst|state.ex_loadi~q\) # (!\inst|IR\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Selector19~0_combout\,
	datac => \inst|IR\(10),
	datad => \inst|state.ex_loadi~q\,
	combout => \inst|Selector16~1_combout\);

-- Location: LCCOMB_X52_Y46_N18
\inst|Add1~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~73_combout\ = (\inst|state.ex_sub~q\ & (!\inst|altsyncram_component|auto_generated|q_a\(14))) # (!\inst|state.ex_sub~q\ & (\inst|altsyncram_component|auto_generated|q_a\(14) & \inst|state.ex_add~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_sub~q\,
	datac => \inst|altsyncram_component|auto_generated|q_a\(14),
	datad => \inst|state.ex_add~q\,
	combout => \inst|Add1~73_combout\);

-- Location: LCCOMB_X52_Y46_N4
\inst|Add1~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~74_combout\ = (\inst|IR\(10) & ((\inst|Add1~1_combout\) # ((\inst|WideOr3~2_combout\ & \inst|Add1~73_combout\)))) # (!\inst|IR\(10) & (\inst|WideOr3~2_combout\ & ((\inst|Add1~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(10),
	datab => \inst|WideOr3~2_combout\,
	datac => \inst|Add1~1_combout\,
	datad => \inst|Add1~73_combout\,
	combout => \inst|Add1~74_combout\);

-- Location: LCCOMB_X51_Y46_N20
\inst|Add1~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~75_combout\ = (\inst|AC\(14) & ((\inst|state.ex_addi~q\) # ((\inst|state.ex_sub~q\) # (\inst|state.ex_add~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_addi~q\,
	datab => \inst|state.ex_sub~q\,
	datac => \inst|AC\(14),
	datad => \inst|state.ex_add~q\,
	combout => \inst|Add1~75_combout\);

-- Location: LCCOMB_X51_Y46_N22
\inst|Add1~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~70_combout\ = (\inst|AC\(13) & ((\inst|state.ex_addi~q\) # ((\inst|state.ex_sub~q\) # (\inst|state.ex_add~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_addi~q\,
	datab => \inst|state.ex_sub~q\,
	datac => \inst|AC\(13),
	datad => \inst|state.ex_add~q\,
	combout => \inst|Add1~70_combout\);

-- Location: LCCOMB_X54_Y45_N0
\inst|Add1~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~68_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(13) & (!\inst|state.ex_sub~q\ & \inst|state.ex_add~q\)) # (!\inst|altsyncram_component|auto_generated|q_a\(13) & (\inst|state.ex_sub~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(13),
	datab => \inst|state.ex_sub~q\,
	datad => \inst|state.ex_add~q\,
	combout => \inst|Add1~68_combout\);

-- Location: LCCOMB_X52_Y46_N22
\inst|Add1~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~69_combout\ = (\inst|IR\(10) & ((\inst|Add1~1_combout\) # ((\inst|Add1~68_combout\ & \inst|WideOr3~2_combout\)))) # (!\inst|IR\(10) & (\inst|Add1~68_combout\ & ((\inst|WideOr3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(10),
	datab => \inst|Add1~68_combout\,
	datac => \inst|Add1~1_combout\,
	datad => \inst|WideOr3~2_combout\,
	combout => \inst|Add1~69_combout\);

-- Location: LCCOMB_X51_Y46_N10
\inst|Add1~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~66_combout\ = (\inst|Add1~64_combout\ & ((\inst|Add1~65_combout\ & (\inst|Add1~62\ & VCC)) # (!\inst|Add1~65_combout\ & (!\inst|Add1~62\)))) # (!\inst|Add1~64_combout\ & ((\inst|Add1~65_combout\ & (!\inst|Add1~62\)) # (!\inst|Add1~65_combout\ & 
-- ((\inst|Add1~62\) # (GND)))))
-- \inst|Add1~67\ = CARRY((\inst|Add1~64_combout\ & (!\inst|Add1~65_combout\ & !\inst|Add1~62\)) # (!\inst|Add1~64_combout\ & ((!\inst|Add1~62\) # (!\inst|Add1~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~64_combout\,
	datab => \inst|Add1~65_combout\,
	datad => VCC,
	cin => \inst|Add1~62\,
	combout => \inst|Add1~66_combout\,
	cout => \inst|Add1~67\);

-- Location: LCCOMB_X51_Y46_N12
\inst|Add1~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~71_combout\ = ((\inst|Add1~70_combout\ $ (\inst|Add1~69_combout\ $ (!\inst|Add1~67\)))) # (GND)
-- \inst|Add1~72\ = CARRY((\inst|Add1~70_combout\ & ((\inst|Add1~69_combout\) # (!\inst|Add1~67\))) # (!\inst|Add1~70_combout\ & (\inst|Add1~69_combout\ & !\inst|Add1~67\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~70_combout\,
	datab => \inst|Add1~69_combout\,
	datad => VCC,
	cin => \inst|Add1~67\,
	combout => \inst|Add1~71_combout\,
	cout => \inst|Add1~72\);

-- Location: LCCOMB_X51_Y46_N14
\inst|Add1~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~76_combout\ = (\inst|Add1~74_combout\ & ((\inst|Add1~75_combout\ & (\inst|Add1~72\ & VCC)) # (!\inst|Add1~75_combout\ & (!\inst|Add1~72\)))) # (!\inst|Add1~74_combout\ & ((\inst|Add1~75_combout\ & (!\inst|Add1~72\)) # (!\inst|Add1~75_combout\ & 
-- ((\inst|Add1~72\) # (GND)))))
-- \inst|Add1~77\ = CARRY((\inst|Add1~74_combout\ & (!\inst|Add1~75_combout\ & !\inst|Add1~72\)) # (!\inst|Add1~74_combout\ & ((!\inst|Add1~72\) # (!\inst|Add1~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~74_combout\,
	datab => \inst|Add1~75_combout\,
	datad => VCC,
	cin => \inst|Add1~72\,
	combout => \inst|Add1~76_combout\,
	cout => \inst|Add1~77\);

-- Location: LCCOMB_X49_Y46_N20
\inst|Selector13~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector13~7_combout\ = (\inst|Selector13~6_combout\) # (((\inst|AC[3]~0_combout\ & \inst|Add1~76_combout\)) # (!\inst|Selector16~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector13~6_combout\,
	datab => \inst|AC[3]~0_combout\,
	datac => \inst|Selector16~1_combout\,
	datad => \inst|Add1~76_combout\,
	combout => \inst|Selector13~7_combout\);

-- Location: LCCOMB_X49_Y46_N14
\inst|Selector13~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector13~8_combout\ = (\inst|Selector13~5_combout\) # ((\inst|Selector13~7_combout\) # ((\inst|Selector20~0_combout\ & \inst|shifter|auto_generated|sbit_w[62]~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector20~0_combout\,
	datab => \inst|Selector13~5_combout\,
	datac => \inst|shifter|auto_generated|sbit_w[62]~78_combout\,
	datad => \inst|Selector13~7_combout\,
	combout => \inst|Selector13~8_combout\);

-- Location: LCCOMB_X54_Y45_N22
\inst|Selector13~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector13~4_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(14) & ((\inst|state.ex_or~q\) # (\inst|state.ex_load~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.ex_or~q\,
	datac => \inst|state.ex_load~q\,
	datad => \inst|altsyncram_component|auto_generated|q_a\(14),
	combout => \inst|Selector13~4_combout\);

-- Location: LCCOMB_X47_Y43_N14
\inst|shifter|auto_generated|sbit_w[34]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[34]~64_combout\ = (\inst|IR\(1) & (!\inst|IR\(4) & (!\inst|IR\(0) & \inst|AC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(1),
	datab => \inst|IR\(4),
	datac => \inst|IR\(0),
	datad => \inst|AC\(0),
	combout => \inst|shifter|auto_generated|sbit_w[34]~64_combout\);

-- Location: LCCOMB_X47_Y45_N24
\inst|shifter|auto_generated|sbit_w[18]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[18]~48_combout\ = (\inst|IR\(0) & ((\inst|IR\(4) & (\inst|AC\(3))) # (!\inst|IR\(4) & ((\inst|AC\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(0),
	datab => \inst|IR\(4),
	datac => \inst|AC\(3),
	datad => \inst|AC\(1),
	combout => \inst|shifter|auto_generated|sbit_w[18]~48_combout\);

-- Location: LCCOMB_X47_Y45_N22
\inst|shifter|auto_generated|sbit_w[18]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[18]~49_combout\ = (\inst|shifter|auto_generated|sbit_w[18]~48_combout\) # ((!\inst|IR\(0) & \inst|AC\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(0),
	datac => \inst|AC\(2),
	datad => \inst|shifter|auto_generated|sbit_w[18]~48_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[18]~49_combout\);

-- Location: LCCOMB_X47_Y43_N28
\inst|shifter|auto_generated|sbit_w[34]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[34]~63_combout\ = (\inst3|I2C_RDY_EN~0_combout\ & ((\inst|shifter|auto_generated|sbit_w[20]~51_combout\) # ((\inst|AC\(4) & !\inst|IR\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[20]~51_combout\,
	datab => \inst|AC\(4),
	datac => \inst|IR\(0),
	datad => \inst3|I2C_RDY_EN~0_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[34]~63_combout\);

-- Location: LCCOMB_X47_Y43_N8
\inst|shifter|auto_generated|sbit_w[34]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[34]~65_combout\ = (\inst|shifter|auto_generated|sbit_w[34]~64_combout\) # ((\inst|shifter|auto_generated|sbit_w[34]~63_combout\) # ((!\inst|IR\(1) & \inst|shifter|auto_generated|sbit_w[18]~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(1),
	datab => \inst|shifter|auto_generated|sbit_w[34]~64_combout\,
	datac => \inst|shifter|auto_generated|sbit_w[18]~49_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[34]~63_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[34]~65_combout\);

-- Location: LCCOMB_X50_Y45_N6
\inst|shifter|auto_generated|sbit_w[54]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[54]~79_combout\ = (\inst|IR\(2) & ((\inst|IR\(4) & ((\inst|shifter|auto_generated|sbit_w[42]~71_combout\))) # (!\inst|IR\(4) & (\inst|shifter|auto_generated|sbit_w[34]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[34]~65_combout\,
	datab => \inst|IR\(4),
	datac => \inst|IR\(2),
	datad => \inst|shifter|auto_generated|sbit_w[42]~71_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[54]~79_combout\);

-- Location: LCCOMB_X50_Y45_N22
\inst|Selector13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector13~3_combout\ = (\inst|Selector19~7_combout\ & ((\inst|shifter|auto_generated|sbit_w[54]~79_combout\) # ((!\inst|IR\(2) & \inst|shifter|auto_generated|sbit_w[38]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector19~7_combout\,
	datab => \inst|IR\(2),
	datac => \inst|shifter|auto_generated|sbit_w[38]~67_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[54]~79_combout\,
	combout => \inst|Selector13~3_combout\);

-- Location: LCCOMB_X55_Y43_N8
\inst|Selector13~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector13~10_combout\ = (\inst|state.ex_in2~q\ & (((\inst|AC\(14)) # (!\inst13|inst1[5]~38_combout\)) # (!\inst|IO_WRITE_int~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IO_WRITE_int~q\,
	datab => \inst|state.ex_in2~q\,
	datac => \inst|AC\(14),
	datad => \inst13|inst1[5]~38_combout\,
	combout => \inst|Selector13~10_combout\);

-- Location: LCCOMB_X51_Y42_N26
\inst4|COUNT[14]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|COUNT[14]~41_combout\ = (\inst4|COUNT\(14) & (!\inst4|COUNT[13]~40\)) # (!\inst4|COUNT\(14) & ((\inst4|COUNT[13]~40\) # (GND)))
-- \inst4|COUNT[14]~42\ = CARRY((!\inst4|COUNT[13]~40\) # (!\inst4|COUNT\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|COUNT\(14),
	datad => VCC,
	cin => \inst4|COUNT[13]~40\,
	combout => \inst4|COUNT[14]~41_combout\,
	cout => \inst4|COUNT[14]~42\);

-- Location: FF_X51_Y42_N27
\inst4|COUNT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_10Hz~clkctrl_outclk\,
	d => \inst4|COUNT[14]~41_combout\,
	clrn => \inst4|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|COUNT\(14));

-- Location: LCCOMB_X52_Y41_N16
\inst13|inst|Decoder0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Decoder0~6_combout\ = (!\inst13|inst|bit_cnt\(1) & (!\inst13|inst|bit_cnt\(2) & (\inst13|inst|Decoder0~0_combout\ & \inst13|inst|bit_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|bit_cnt\(1),
	datab => \inst13|inst|bit_cnt\(2),
	datac => \inst13|inst|Decoder0~0_combout\,
	datad => \inst13|inst|bit_cnt\(0),
	combout => \inst13|inst|Decoder0~6_combout\);

-- Location: LCCOMB_X51_Y41_N16
\inst13|inst|data_rx[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|data_rx[6]~7_combout\ = (\inst13|inst|Decoder0~6_combout\ & (\GSENSOR_SDI~input_o\)) # (!\inst13|inst|Decoder0~6_combout\ & ((\inst13|inst|data_rx\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GSENSOR_SDI~input_o\,
	datac => \inst13|inst|data_rx\(6),
	datad => \inst13|inst|Decoder0~6_combout\,
	combout => \inst13|inst|data_rx[6]~7_combout\);

-- Location: FF_X51_Y41_N17
\inst13|inst|data_rx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|ALT_INV_data_clk~clkctrl_outclk\,
	d => \inst13|inst|data_rx[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_rx\(6));

-- Location: LCCOMB_X51_Y41_N8
\inst13|inst|data_rd[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|data_rd[6]~feeder_combout\ = \inst13|inst|data_rx\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst|data_rx\(6),
	combout => \inst13|inst|data_rd[6]~feeder_combout\);

-- Location: FF_X51_Y41_N9
\inst13|inst|data_rd[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	d => \inst13|inst|data_rd[6]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	ena => \inst13|inst|state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_rd\(6));

-- Location: LCCOMB_X54_Y41_N0
\inst13|inst14|data_out[14]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_out[14]~17_combout\ = (\inst13|inst|data_rd\(6) & (!\inst13|inst|busy~q\ & (\inst13|inst14|prev_busy~q\ & \inst13|inst14|state.Rx2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|data_rd\(6),
	datab => \inst13|inst|busy~q\,
	datac => \inst13|inst14|prev_busy~q\,
	datad => \inst13|inst14|state.Rx2~q\,
	combout => \inst13|inst14|data_out[14]~17_combout\);

-- Location: FF_X54_Y41_N1
\inst13|inst14|data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|data_out[14]~17_combout\,
	ena => \inst13|inst14|data_out[15]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_out\(14));

-- Location: LCCOMB_X54_Y43_N2
\inst13|inst1[14]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[14]~46_combout\ = (\inst13|inst7~combout\ & (\inst13|inst14|data_out\(14) & ((\inst4|COUNT\(14)) # (!\inst4|IO_OUT~combout\)))) # (!\inst13|inst7~combout\ & (((\inst4|COUNT\(14))) # (!\inst4|IO_OUT~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7~combout\,
	datab => \inst4|IO_OUT~combout\,
	datac => \inst4|COUNT\(14),
	datad => \inst13|inst14|data_out\(14),
	combout => \inst13|inst1[14]~46_combout\);

-- Location: LCCOMB_X54_Y43_N18
\inst|Selector13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector13~2_combout\ = (\inst13|inst1[10]~5_combout\ & (\inst|Selector13~10_combout\ & ((\inst13|inst1[14]~46_combout\) # (!\inst13|inst1[5]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[10]~5_combout\,
	datab => \inst13|inst1[5]~38_combout\,
	datac => \inst|Selector13~10_combout\,
	datad => \inst13|inst1[14]~46_combout\,
	combout => \inst|Selector13~2_combout\);

-- Location: LCCOMB_X54_Y43_N0
\inst|Selector13~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector13~9_combout\ = (\inst|Selector13~8_combout\) # ((\inst|Selector13~4_combout\) # ((\inst|Selector13~3_combout\) # (\inst|Selector13~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector13~8_combout\,
	datab => \inst|Selector13~4_combout\,
	datac => \inst|Selector13~3_combout\,
	datad => \inst|Selector13~2_combout\,
	combout => \inst|Selector13~9_combout\);

-- Location: FF_X54_Y43_N1
\inst|AC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector13~9_combout\,
	ena => \inst13|inst14|ALT_INV_data_out[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|AC\(14));

-- Location: LCCOMB_X49_Y45_N22
\inst|shifter|auto_generated|sbit_w[30]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[30]~40_combout\ = (\inst|shifter|auto_generated|sbit_w[30]~39_combout\) # ((!\inst|IR\(0) & \inst|AC\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[30]~39_combout\,
	datab => \inst|IR\(0),
	datac => \inst|AC\(14),
	combout => \inst|shifter|auto_generated|sbit_w[30]~40_combout\);

-- Location: LCCOMB_X49_Y45_N28
\inst|shifter|auto_generated|sbit_w[46]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[46]~68_combout\ = (\inst|IR\(1) & (((\inst|AC\(15) & \inst|IR\(4))))) # (!\inst|IR\(1) & (\inst|shifter|auto_generated|sbit_w[30]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[30]~40_combout\,
	datab => \inst|AC\(15),
	datac => \inst|IR\(1),
	datad => \inst|IR\(4),
	combout => \inst|shifter|auto_generated|sbit_w[46]~68_combout\);

-- Location: LCCOMB_X49_Y45_N16
\inst|shifter|auto_generated|sbit_w[46]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[46]~82_combout\ = (\inst|shifter|auto_generated|sbit_w[46]~68_combout\) # ((\inst|IR\(1) & (!\inst|IR\(4) & \inst|shifter|auto_generated|sbit_w[28]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(1),
	datab => \inst|IR\(4),
	datac => \inst|shifter|auto_generated|sbit_w[28]~43_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[46]~68_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[46]~82_combout\);

-- Location: LCCOMB_X50_Y45_N16
\inst|shifter|auto_generated|sbit_w[58]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[58]~69_combout\ = (\inst|IR\(2) & ((\inst|IR\(4) & ((\inst|shifter|auto_generated|sbit_w[46]~82_combout\))) # (!\inst|IR\(4) & (\inst|shifter|auto_generated|sbit_w[38]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[38]~67_combout\,
	datab => \inst|IR\(2),
	datac => \inst|shifter|auto_generated|sbit_w[46]~82_combout\,
	datad => \inst|IR\(4),
	combout => \inst|shifter|auto_generated|sbit_w[58]~69_combout\);

-- Location: LCCOMB_X50_Y45_N26
\inst|Selector17~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector17~4_combout\ = (\inst|Selector20~0_combout\ & ((\inst|shifter|auto_generated|sbit_w[58]~69_combout\) # ((\inst|shifter|auto_generated|sbit_w[42]~71_combout\ & !\inst|IR\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector20~0_combout\,
	datab => \inst|shifter|auto_generated|sbit_w[42]~71_combout\,
	datac => \inst|IR\(2),
	datad => \inst|shifter|auto_generated|sbit_w[58]~69_combout\,
	combout => \inst|Selector17~4_combout\);

-- Location: LCCOMB_X51_Y46_N28
\inst|Add1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~50_combout\ = (\inst|AC\(9) & ((\inst|state.ex_addi~q\) # ((\inst|state.ex_sub~q\) # (\inst|state.ex_add~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_addi~q\,
	datab => \inst|state.ex_sub~q\,
	datac => \inst|AC\(9),
	datad => \inst|state.ex_add~q\,
	combout => \inst|Add1~50_combout\);

-- Location: LCCOMB_X52_Y46_N14
\inst|Add1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~48_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(9) & (!\inst|state.ex_sub~q\ & \inst|state.ex_add~q\)) # (!\inst|altsyncram_component|auto_generated|q_a\(9) & (\inst|state.ex_sub~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|altsyncram_component|auto_generated|q_a\(9),
	datac => \inst|state.ex_sub~q\,
	datad => \inst|state.ex_add~q\,
	combout => \inst|Add1~48_combout\);

-- Location: LCCOMB_X52_Y46_N12
\inst|Add1~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~49_combout\ = (\inst|IR\(9) & ((\inst|Add1~1_combout\) # ((\inst|Add1~48_combout\ & \inst|WideOr3~2_combout\)))) # (!\inst|IR\(9) & (((\inst|Add1~48_combout\ & \inst|WideOr3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(9),
	datab => \inst|Add1~1_combout\,
	datac => \inst|Add1~48_combout\,
	datad => \inst|WideOr3~2_combout\,
	combout => \inst|Add1~49_combout\);

-- Location: LCCOMB_X51_Y46_N30
\inst|Add1~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~45_combout\ = (\inst|AC\(8) & ((\inst|state.ex_addi~q\) # ((\inst|state.ex_sub~q\) # (\inst|state.ex_add~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_addi~q\,
	datab => \inst|state.ex_sub~q\,
	datac => \inst|AC\(8),
	datad => \inst|state.ex_add~q\,
	combout => \inst|Add1~45_combout\);

-- Location: LCCOMB_X52_Y46_N10
\inst|Add1~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~43_combout\ = (\inst|state.ex_sub~q\ & (!\inst|altsyncram_component|auto_generated|q_a\(8))) # (!\inst|state.ex_sub~q\ & (\inst|altsyncram_component|auto_generated|q_a\(8) & \inst|state.ex_add~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_sub~q\,
	datac => \inst|altsyncram_component|auto_generated|q_a\(8),
	datad => \inst|state.ex_add~q\,
	combout => \inst|Add1~43_combout\);

-- Location: LCCOMB_X52_Y46_N28
\inst|Add1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~44_combout\ = (\inst|Add1~43_combout\ & ((\inst|WideOr3~2_combout\) # ((\inst|Add1~1_combout\ & \inst|IR\(8))))) # (!\inst|Add1~43_combout\ & (\inst|Add1~1_combout\ & (\inst|IR\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~43_combout\,
	datab => \inst|Add1~1_combout\,
	datac => \inst|IR\(8),
	datad => \inst|WideOr3~2_combout\,
	combout => \inst|Add1~44_combout\);

-- Location: LCCOMB_X51_Y46_N2
\inst|Add1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~46_combout\ = (\inst|Add1~45_combout\ & ((\inst|Add1~44_combout\ & (\inst|Add1~42\ & VCC)) # (!\inst|Add1~44_combout\ & (!\inst|Add1~42\)))) # (!\inst|Add1~45_combout\ & ((\inst|Add1~44_combout\ & (!\inst|Add1~42\)) # (!\inst|Add1~44_combout\ & 
-- ((\inst|Add1~42\) # (GND)))))
-- \inst|Add1~47\ = CARRY((\inst|Add1~45_combout\ & (!\inst|Add1~44_combout\ & !\inst|Add1~42\)) # (!\inst|Add1~45_combout\ & ((!\inst|Add1~42\) # (!\inst|Add1~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~45_combout\,
	datab => \inst|Add1~44_combout\,
	datad => VCC,
	cin => \inst|Add1~42\,
	combout => \inst|Add1~46_combout\,
	cout => \inst|Add1~47\);

-- Location: LCCOMB_X51_Y46_N4
\inst|Add1~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~51_combout\ = ((\inst|Add1~50_combout\ $ (\inst|Add1~49_combout\ $ (!\inst|Add1~47\)))) # (GND)
-- \inst|Add1~52\ = CARRY((\inst|Add1~50_combout\ & ((\inst|Add1~49_combout\) # (!\inst|Add1~47\))) # (!\inst|Add1~50_combout\ & (\inst|Add1~49_combout\ & !\inst|Add1~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~50_combout\,
	datab => \inst|Add1~49_combout\,
	datad => VCC,
	cin => \inst|Add1~47\,
	combout => \inst|Add1~51_combout\,
	cout => \inst|Add1~52\);

-- Location: LCCOMB_X51_Y46_N6
\inst|Add1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~56_combout\ = (\inst|Add1~54_combout\ & ((\inst|Add1~55_combout\ & (\inst|Add1~52\ & VCC)) # (!\inst|Add1~55_combout\ & (!\inst|Add1~52\)))) # (!\inst|Add1~54_combout\ & ((\inst|Add1~55_combout\ & (!\inst|Add1~52\)) # (!\inst|Add1~55_combout\ & 
-- ((\inst|Add1~52\) # (GND)))))
-- \inst|Add1~57\ = CARRY((\inst|Add1~54_combout\ & (!\inst|Add1~55_combout\ & !\inst|Add1~52\)) # (!\inst|Add1~54_combout\ & ((!\inst|Add1~52\) # (!\inst|Add1~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~54_combout\,
	datab => \inst|Add1~55_combout\,
	datad => VCC,
	cin => \inst|Add1~52\,
	combout => \inst|Add1~56_combout\,
	cout => \inst|Add1~57\);

-- Location: LCCOMB_X52_Y45_N20
\inst|Selector17~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector17~7_combout\ = (\inst|state.ex_xor~q\ & (\inst|AC\(10) $ (\inst|altsyncram_component|auto_generated|q_a\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(10),
	datac => \inst|altsyncram_component|auto_generated|q_a\(10),
	datad => \inst|state.ex_xor~q\,
	combout => \inst|Selector17~7_combout\);

-- Location: LCCOMB_X52_Y45_N18
\inst|Selector17~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector17~8_combout\ = ((\inst|Selector17~7_combout\) # ((\inst|Add1~56_combout\ & \inst|AC[3]~0_combout\))) # (!\inst|Selector16~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~56_combout\,
	datab => \inst|Selector16~1_combout\,
	datac => \inst|AC[3]~0_combout\,
	datad => \inst|Selector17~7_combout\,
	combout => \inst|Selector17~8_combout\);

-- Location: LCCOMB_X52_Y45_N26
\inst|Selector17~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector17~6_combout\ = (\inst|AC\(10) & (((\inst|altsyncram_component|auto_generated|q_a\(10) & \inst|state.ex_and~q\)) # (!\inst|Selector22~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(10),
	datab => \inst|Selector22~3_combout\,
	datac => \inst|AC\(10),
	datad => \inst|state.ex_and~q\,
	combout => \inst|Selector17~6_combout\);

-- Location: LCCOMB_X52_Y45_N12
\inst|Selector17~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector17~9_combout\ = (\inst|Selector17~8_combout\) # ((\inst|Selector17~6_combout\) # ((\inst|Selector22~6_combout\ & \inst|altsyncram_component|auto_generated|q_a\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector22~6_combout\,
	datab => \inst|Selector17~8_combout\,
	datac => \inst|Selector17~6_combout\,
	datad => \inst|altsyncram_component|auto_generated|q_a\(10),
	combout => \inst|Selector17~9_combout\);

-- Location: LCCOMB_X50_Y45_N12
\inst|Selector17~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector17~5_combout\ = (!\inst|IR\(2) & (\inst|shifter|auto_generated|sbit_w[34]~65_combout\ & \inst|Selector19~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|IR\(2),
	datac => \inst|shifter|auto_generated|sbit_w[34]~65_combout\,
	datad => \inst|Selector19~7_combout\,
	combout => \inst|Selector17~5_combout\);

-- Location: LCCOMB_X52_Y41_N28
\inst13|inst|data_rx[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|data_rx[2]~3_combout\ = (\inst13|inst|bit_cnt\(1) & (((\inst13|inst|data_rx\(2))))) # (!\inst13|inst|bit_cnt\(1) & ((\inst13|inst|bit_cnt\(2) & (\GSENSOR_SDI~input_o\)) # (!\inst13|inst|bit_cnt\(2) & ((\inst13|inst|data_rx\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|bit_cnt\(1),
	datab => \GSENSOR_SDI~input_o\,
	datac => \inst13|inst|bit_cnt\(2),
	datad => \inst13|inst|data_rx\(2),
	combout => \inst13|inst|data_rx[2]~3_combout\);

-- Location: LCCOMB_X51_Y41_N14
\inst13|inst|data_rx[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|data_rx[2]~4_combout\ = (\inst13|inst|Decoder0~0_combout\ & ((\inst13|inst|bit_cnt\(0) & ((\inst13|inst|data_rx[2]~3_combout\))) # (!\inst13|inst|bit_cnt\(0) & (\inst13|inst|data_rx\(2))))) # (!\inst13|inst|Decoder0~0_combout\ & 
-- (((\inst13|inst|data_rx\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|Decoder0~0_combout\,
	datab => \inst13|inst|bit_cnt\(0),
	datac => \inst13|inst|data_rx\(2),
	datad => \inst13|inst|data_rx[2]~3_combout\,
	combout => \inst13|inst|data_rx[2]~4_combout\);

-- Location: FF_X51_Y41_N15
\inst13|inst|data_rx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|ALT_INV_data_clk~clkctrl_outclk\,
	d => \inst13|inst|data_rx[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_rx\(2));

-- Location: LCCOMB_X51_Y41_N2
\inst13|inst|data_rd[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|data_rd[2]~feeder_combout\ = \inst13|inst|data_rx\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst|data_rx\(2),
	combout => \inst13|inst|data_rd[2]~feeder_combout\);

-- Location: FF_X51_Y41_N3
\inst13|inst|data_rd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	d => \inst13|inst|data_rd[2]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	ena => \inst13|inst|state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_rd\(2));

-- Location: LCCOMB_X50_Y40_N16
\inst13|inst14|data_out[10]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_out[10]~13_combout\ = (\inst13|inst14|prev_busy~q\ & (!\inst13|inst|busy~q\ & (\inst13|inst|data_rd\(2) & \inst13|inst14|state.Rx2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|prev_busy~q\,
	datab => \inst13|inst|busy~q\,
	datac => \inst13|inst|data_rd\(2),
	datad => \inst13|inst14|state.Rx2~q\,
	combout => \inst13|inst14|data_out[10]~13_combout\);

-- Location: FF_X50_Y40_N17
\inst13|inst14|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|data_out[10]~13_combout\,
	ena => \inst13|inst14|data_out[15]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_out\(10));

-- Location: LCCOMB_X49_Y43_N20
\inst13|inst1[10]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[10]~37_combout\ = (\inst13|inst7~combout\ & (\inst13|inst14|data_out\(10) & ((\inst4|COUNT\(10)) # (!\inst4|IO_OUT~combout\)))) # (!\inst13|inst7~combout\ & (((\inst4|COUNT\(10))) # (!\inst4|IO_OUT~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7~combout\,
	datab => \inst4|IO_OUT~combout\,
	datac => \inst4|COUNT\(10),
	datad => \inst13|inst14|data_out\(10),
	combout => \inst13|inst1[10]~37_combout\);

-- Location: LCCOMB_X47_Y43_N2
\inst|Selector17~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector17~11_combout\ = (\inst|state.ex_in2~q\ & ((\inst|AC\(10)) # ((!\inst13|inst1[5]~38_combout\) # (!\inst|IO_WRITE_int~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(10),
	datab => \inst|IO_WRITE_int~q\,
	datac => \inst13|inst1[5]~38_combout\,
	datad => \inst|state.ex_in2~q\,
	combout => \inst|Selector17~11_combout\);

-- Location: LCCOMB_X49_Y43_N6
\inst|Selector17~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector17~3_combout\ = (\inst|Selector17~11_combout\ & (\inst13|inst1[10]~5_combout\ & ((\inst13|inst1[10]~37_combout\) # (!\inst13|inst1[5]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[5]~38_combout\,
	datab => \inst13|inst1[10]~37_combout\,
	datac => \inst|Selector17~11_combout\,
	datad => \inst13|inst1[10]~5_combout\,
	combout => \inst|Selector17~3_combout\);

-- Location: LCCOMB_X49_Y43_N0
\inst|Selector17~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector17~10_combout\ = (\inst|Selector17~4_combout\) # ((\inst|Selector17~9_combout\) # ((\inst|Selector17~5_combout\) # (\inst|Selector17~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector17~4_combout\,
	datab => \inst|Selector17~9_combout\,
	datac => \inst|Selector17~5_combout\,
	datad => \inst|Selector17~3_combout\,
	combout => \inst|Selector17~10_combout\);

-- Location: FF_X49_Y43_N1
\inst|AC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector17~10_combout\,
	ena => \inst13|inst14|ALT_INV_data_out[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|AC\(10));

-- Location: LCCOMB_X51_Y46_N26
\inst|Add1~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~55_combout\ = (\inst|AC\(10) & ((\inst|state.ex_addi~q\) # ((\inst|state.ex_sub~q\) # (\inst|state.ex_add~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_addi~q\,
	datab => \inst|state.ex_sub~q\,
	datac => \inst|AC\(10),
	datad => \inst|state.ex_add~q\,
	combout => \inst|Add1~55_combout\);

-- Location: LCCOMB_X51_Y46_N8
\inst|Add1~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~61_combout\ = ((\inst|Add1~60_combout\ $ (\inst|Add1~59_combout\ $ (!\inst|Add1~57\)))) # (GND)
-- \inst|Add1~62\ = CARRY((\inst|Add1~60_combout\ & ((\inst|Add1~59_combout\) # (!\inst|Add1~57\))) # (!\inst|Add1~60_combout\ & (\inst|Add1~59_combout\ & !\inst|Add1~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~60_combout\,
	datab => \inst|Add1~59_combout\,
	datad => VCC,
	cin => \inst|Add1~57\,
	combout => \inst|Add1~61_combout\,
	cout => \inst|Add1~62\);

-- Location: LCCOMB_X50_Y42_N8
\inst|Selector15~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector15~7_combout\ = (\inst|Selector15~6_combout\) # (((\inst|AC[3]~0_combout\ & \inst|Add1~66_combout\)) # (!\inst|Selector16~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC[3]~0_combout\,
	datab => \inst|Selector15~6_combout\,
	datac => \inst|Add1~66_combout\,
	datad => \inst|Selector16~1_combout\,
	combout => \inst|Selector15~7_combout\);

-- Location: LCCOMB_X50_Y42_N24
\inst|Selector15~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector15~5_combout\ = (\inst|AC\(12) & (((\inst|altsyncram_component|auto_generated|q_a\(12) & \inst|state.ex_and~q\)) # (!\inst|Selector22~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(12),
	datab => \inst|altsyncram_component|auto_generated|q_a\(12),
	datac => \inst|Selector22~3_combout\,
	datad => \inst|state.ex_and~q\,
	combout => \inst|Selector15~5_combout\);

-- Location: LCCOMB_X50_Y42_N6
\inst|Selector15~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector15~8_combout\ = (\inst|Selector15~7_combout\) # ((\inst|Selector15~5_combout\) # ((\inst|Selector22~6_combout\ & \inst|altsyncram_component|auto_generated|q_a\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector15~7_combout\,
	datab => \inst|Selector15~5_combout\,
	datac => \inst|Selector22~6_combout\,
	datad => \inst|altsyncram_component|auto_generated|q_a\(12),
	combout => \inst|Selector15~8_combout\);

-- Location: LCCOMB_X49_Y45_N4
\inst|shifter|auto_generated|sbit_w[44]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[44]~41_combout\ = (\inst|shifter|auto_generated|sbit_w[26]~33_combout\ & ((\inst3|TIMER_EN~0_combout\) # ((\inst3|I2C_RDY_EN~0_combout\ & \inst|shifter|auto_generated|sbit_w[30]~40_combout\)))) # 
-- (!\inst|shifter|auto_generated|sbit_w[26]~33_combout\ & (\inst3|I2C_RDY_EN~0_combout\ & (\inst|shifter|auto_generated|sbit_w[30]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[26]~33_combout\,
	datab => \inst3|I2C_RDY_EN~0_combout\,
	datac => \inst|shifter|auto_generated|sbit_w[30]~40_combout\,
	datad => \inst3|TIMER_EN~0_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[44]~41_combout\);

-- Location: LCCOMB_X49_Y45_N6
\inst|shifter|auto_generated|sbit_w[44]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[44]~44_combout\ = (\inst|shifter|auto_generated|sbit_w[44]~41_combout\) # ((!\inst|IR\(1) & \inst|shifter|auto_generated|sbit_w[28]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(1),
	datab => \inst|shifter|auto_generated|sbit_w[28]~43_combout\,
	datac => \inst|shifter|auto_generated|sbit_w[44]~41_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[44]~44_combout\);

-- Location: LCCOMB_X47_Y43_N4
\inst|shifter|auto_generated|sbit_w[40]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[40]~34_combout\ = (\inst|shifter|auto_generated|sbit_w[22]~31_combout\ & ((\inst3|TIMER_EN~0_combout\) # ((\inst3|I2C_RDY_EN~0_combout\ & \inst|shifter|auto_generated|sbit_w[26]~33_combout\)))) # 
-- (!\inst|shifter|auto_generated|sbit_w[22]~31_combout\ & (\inst3|I2C_RDY_EN~0_combout\ & ((\inst|shifter|auto_generated|sbit_w[26]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[22]~31_combout\,
	datab => \inst3|I2C_RDY_EN~0_combout\,
	datac => \inst3|TIMER_EN~0_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[26]~33_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[40]~34_combout\);

-- Location: LCCOMB_X47_Y43_N30
\inst|shifter|auto_generated|sbit_w[40]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[40]~37_combout\ = (\inst|shifter|auto_generated|sbit_w[40]~34_combout\) # ((\inst|shifter|auto_generated|sbit_w[24]~36_combout\ & !\inst|IR\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|shifter|auto_generated|sbit_w[24]~36_combout\,
	datac => \inst|shifter|auto_generated|sbit_w[40]~34_combout\,
	datad => \inst|IR\(1),
	combout => \inst|shifter|auto_generated|sbit_w[40]~37_combout\);

-- Location: LCCOMB_X49_Y42_N14
\inst|shifter|auto_generated|sbit_w[60]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[60]~38_combout\ = (\inst|IR\(2) & ((\inst|IR\(4) & (\inst|AC\(15))) # (!\inst|IR\(4) & ((\inst|shifter|auto_generated|sbit_w[40]~37_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(2),
	datab => \inst|IR\(4),
	datac => \inst|AC\(15),
	datad => \inst|shifter|auto_generated|sbit_w[40]~37_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[60]~38_combout\);

-- Location: LCCOMB_X50_Y42_N28
\inst|Selector15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector15~3_combout\ = (\inst|Selector20~0_combout\ & ((\inst|shifter|auto_generated|sbit_w[60]~38_combout\) # ((\inst|shifter|auto_generated|sbit_w[44]~44_combout\ & !\inst|IR\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[44]~44_combout\,
	datab => \inst|IR\(2),
	datac => \inst|shifter|auto_generated|sbit_w[60]~38_combout\,
	datad => \inst|Selector20~0_combout\,
	combout => \inst|Selector15~3_combout\);

-- Location: LCCOMB_X47_Y43_N20
\inst|shifter|auto_generated|sbit_w[32]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[32]~45_combout\ = (!\inst|IR\(1) & (\inst|IR\(4) & (\inst|AC\(1) & \inst|IR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(1),
	datab => \inst|IR\(4),
	datac => \inst|AC\(1),
	datad => \inst|IR\(0),
	combout => \inst|shifter|auto_generated|sbit_w[32]~45_combout\);

-- Location: LCCOMB_X47_Y43_N26
\inst|shifter|auto_generated|sbit_w[32]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[32]~46_combout\ = (\inst|shifter|auto_generated|sbit_w[32]~45_combout\) # ((!\inst|IR\(1) & (\inst|AC\(0) & !\inst|IR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(1),
	datab => \inst|AC\(0),
	datac => \inst|IR\(0),
	datad => \inst|shifter|auto_generated|sbit_w[32]~45_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[32]~46_combout\);

-- Location: LCCOMB_X47_Y43_N0
\inst|shifter|auto_generated|sbit_w[52]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[52]~47_combout\ = (\inst|IR\(2) & ((\inst|IR\(4) & ((\inst|shifter|auto_generated|sbit_w[40]~37_combout\))) # (!\inst|IR\(4) & (\inst|shifter|auto_generated|sbit_w[32]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[32]~46_combout\,
	datab => \inst|IR\(4),
	datac => \inst|shifter|auto_generated|sbit_w[40]~37_combout\,
	datad => \inst|IR\(2),
	combout => \inst|shifter|auto_generated|sbit_w[52]~47_combout\);

-- Location: LCCOMB_X47_Y43_N6
\inst|shifter|auto_generated|sbit_w[36]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[36]~50_combout\ = (\inst|shifter|auto_generated|sbit_w[22]~31_combout\ & ((\inst3|I2C_RDY_EN~0_combout\) # ((\inst|shifter|auto_generated|sbit_w[18]~49_combout\ & \inst3|TIMER_EN~0_combout\)))) # 
-- (!\inst|shifter|auto_generated|sbit_w[22]~31_combout\ & (\inst|shifter|auto_generated|sbit_w[18]~49_combout\ & (\inst3|TIMER_EN~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[22]~31_combout\,
	datab => \inst|shifter|auto_generated|sbit_w[18]~49_combout\,
	datac => \inst3|TIMER_EN~0_combout\,
	datad => \inst3|I2C_RDY_EN~0_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[36]~50_combout\);

-- Location: LCCOMB_X47_Y43_N18
\inst|shifter|auto_generated|sbit_w[36]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[36]~53_combout\ = (\inst|shifter|auto_generated|sbit_w[36]~50_combout\) # ((\inst|shifter|auto_generated|sbit_w[20]~52_combout\ & !\inst|IR\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[36]~50_combout\,
	datab => \inst|shifter|auto_generated|sbit_w[20]~52_combout\,
	datad => \inst|IR\(1),
	combout => \inst|shifter|auto_generated|sbit_w[36]~53_combout\);

-- Location: LCCOMB_X50_Y42_N26
\inst|Selector15~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector15~4_combout\ = (\inst|Selector19~7_combout\ & ((\inst|shifter|auto_generated|sbit_w[52]~47_combout\) # ((\inst|shifter|auto_generated|sbit_w[36]~53_combout\ & !\inst|IR\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[52]~47_combout\,
	datab => \inst|shifter|auto_generated|sbit_w[36]~53_combout\,
	datac => \inst|Selector19~7_combout\,
	datad => \inst|IR\(2),
	combout => \inst|Selector15~4_combout\);

-- Location: LCCOMB_X50_Y42_N10
\inst|Selector15~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector15~10_combout\ = (\inst|state.ex_in2~q\ & ((\inst|AC\(12)) # ((!\inst13|inst1[5]~38_combout\) # (!\inst|IO_WRITE_int~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_in2~q\,
	datab => \inst|AC\(12),
	datac => \inst|IO_WRITE_int~q\,
	datad => \inst13|inst1[5]~38_combout\,
	combout => \inst|Selector15~10_combout\);

-- Location: LCCOMB_X50_Y42_N20
\inst|Selector15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector15~2_combout\ = (\inst|Selector15~10_combout\ & (\inst13|inst1[10]~5_combout\ & ((\inst13|inst1[12]~42_combout\) # (!\inst13|inst1[5]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector15~10_combout\,
	datab => \inst13|inst1[10]~5_combout\,
	datac => \inst13|inst1[5]~38_combout\,
	datad => \inst13|inst1[12]~42_combout\,
	combout => \inst|Selector15~2_combout\);

-- Location: LCCOMB_X50_Y42_N4
\inst|Selector15~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector15~9_combout\ = (\inst|Selector15~8_combout\) # ((\inst|Selector15~3_combout\) # ((\inst|Selector15~4_combout\) # (\inst|Selector15~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector15~8_combout\,
	datab => \inst|Selector15~3_combout\,
	datac => \inst|Selector15~4_combout\,
	datad => \inst|Selector15~2_combout\,
	combout => \inst|Selector15~9_combout\);

-- Location: FF_X50_Y42_N5
\inst|AC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector15~9_combout\,
	ena => \inst13|inst14|ALT_INV_data_out[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|AC\(12));

-- Location: LCCOMB_X49_Y44_N22
\inst|shifter|auto_generated|sbit_w[27]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[27]~11_combout\ = (\inst|IR\(0) & ((\inst|IR\(4) & (\inst|AC\(12))) # (!\inst|IR\(4) & ((\inst|AC\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(4),
	datab => \inst|AC\(12),
	datac => \inst|IR\(0),
	datad => \inst|AC\(10),
	combout => \inst|shifter|auto_generated|sbit_w[27]~11_combout\);

-- Location: LCCOMB_X49_Y44_N24
\inst|shifter|auto_generated|sbit_w[27]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[27]~12_combout\ = (\inst|shifter|auto_generated|sbit_w[27]~11_combout\) # ((!\inst|IR\(0) & \inst|AC\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[27]~11_combout\,
	datac => \inst|IR\(0),
	datad => \inst|AC\(11),
	combout => \inst|shifter|auto_generated|sbit_w[27]~12_combout\);

-- Location: LCCOMB_X47_Y44_N12
\inst|shifter|auto_generated|sbit_w[41]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[41]~16_combout\ = (\inst|shifter|auto_generated|sbit_w[27]~12_combout\ & ((\inst3|I2C_RDY_EN~0_combout\) # ((\inst|shifter|auto_generated|sbit_w[23]~15_combout\ & \inst3|TIMER_EN~0_combout\)))) # 
-- (!\inst|shifter|auto_generated|sbit_w[27]~12_combout\ & (((\inst|shifter|auto_generated|sbit_w[23]~15_combout\ & \inst3|TIMER_EN~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[27]~12_combout\,
	datab => \inst3|I2C_RDY_EN~0_combout\,
	datac => \inst|shifter|auto_generated|sbit_w[23]~15_combout\,
	datad => \inst3|TIMER_EN~0_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[41]~16_combout\);

-- Location: LCCOMB_X49_Y44_N28
\inst|shifter|auto_generated|sbit_w[25]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[25]~17_combout\ = (\inst|IR\(0) & ((\inst|IR\(4) & (\inst|AC\(10))) # (!\inst|IR\(4) & ((\inst|AC\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(10),
	datab => \inst|AC\(8),
	datac => \inst|IR\(0),
	datad => \inst|IR\(4),
	combout => \inst|shifter|auto_generated|sbit_w[25]~17_combout\);

-- Location: LCCOMB_X49_Y44_N26
\inst|shifter|auto_generated|sbit_w[25]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[25]~18_combout\ = (\inst|shifter|auto_generated|sbit_w[25]~17_combout\) # ((!\inst|IR\(0) & \inst|AC\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|IR\(0),
	datac => \inst|AC\(9),
	datad => \inst|shifter|auto_generated|sbit_w[25]~17_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[25]~18_combout\);

-- Location: LCCOMB_X47_Y44_N10
\inst|shifter|auto_generated|sbit_w[41]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[41]~19_combout\ = (\inst|shifter|auto_generated|sbit_w[41]~16_combout\) # ((\inst|shifter|auto_generated|sbit_w[25]~18_combout\ & !\inst|IR\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[41]~16_combout\,
	datab => \inst|shifter|auto_generated|sbit_w[25]~18_combout\,
	datad => \inst|IR\(1),
	combout => \inst|shifter|auto_generated|sbit_w[41]~19_combout\);

-- Location: LCCOMB_X47_Y44_N24
\inst|shifter|auto_generated|sbit_w[53]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[53]~22_combout\ = (!\inst|IR\(1) & ((\inst|shifter|auto_generated|sbit_w[17]~21_combout\) # ((\inst|AC\(1) & !\inst|IR\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[17]~21_combout\,
	datab => \inst|IR\(1),
	datac => \inst|AC\(1),
	datad => \inst|IR\(0),
	combout => \inst|shifter|auto_generated|sbit_w[53]~22_combout\);

-- Location: LCCOMB_X47_Y44_N18
\inst|shifter|auto_generated|sbit_w[53]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[53]~23_combout\ = (\inst|IR\(2) & ((\inst|IR\(4) & (\inst|shifter|auto_generated|sbit_w[41]~19_combout\)) # (!\inst|IR\(4) & ((\inst|shifter|auto_generated|sbit_w[53]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[41]~19_combout\,
	datab => \inst|shifter|auto_generated|sbit_w[53]~22_combout\,
	datac => \inst|IR\(2),
	datad => \inst|IR\(4),
	combout => \inst|shifter|auto_generated|sbit_w[53]~23_combout\);

-- Location: LCCOMB_X47_Y44_N26
\inst|Selector14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector14~3_combout\ = (\inst|Selector19~7_combout\ & ((\inst|shifter|auto_generated|sbit_w[53]~23_combout\) # ((!\inst|IR\(2) & \inst|shifter|auto_generated|sbit_w[37]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector19~7_combout\,
	datab => \inst|IR\(2),
	datac => \inst|shifter|auto_generated|sbit_w[37]~29_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[53]~23_combout\,
	combout => \inst|Selector14~3_combout\);

-- Location: LCCOMB_X52_Y45_N30
\inst|Selector14~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector14~6_combout\ = (\inst|state.ex_xor~q\ & (\inst|altsyncram_component|auto_generated|q_a\(13) $ (\inst|AC\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(13),
	datac => \inst|AC\(13),
	datad => \inst|state.ex_xor~q\,
	combout => \inst|Selector14~6_combout\);

-- Location: LCCOMB_X52_Y45_N28
\inst|Selector14~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector14~7_combout\ = (\inst|Selector14~6_combout\) # (((\inst|Add1~71_combout\ & \inst|AC[3]~0_combout\)) # (!\inst|Selector16~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector14~6_combout\,
	datab => \inst|Add1~71_combout\,
	datac => \inst|AC[3]~0_combout\,
	datad => \inst|Selector16~1_combout\,
	combout => \inst|Selector14~7_combout\);

-- Location: LCCOMB_X49_Y45_N20
\inst|shifter|auto_generated|sbit_w[29]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[29]~8_combout\ = (\inst|IR\(0) & ((\inst|IR\(4) & ((\inst|AC\(14)))) # (!\inst|IR\(4) & (\inst|AC\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(12),
	datab => \inst|IR\(0),
	datac => \inst|AC\(14),
	datad => \inst|IR\(4),
	combout => \inst|shifter|auto_generated|sbit_w[29]~8_combout\);

-- Location: LCCOMB_X49_Y45_N30
\inst|shifter|auto_generated|sbit_w[29]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[29]~9_combout\ = (\inst|shifter|auto_generated|sbit_w[29]~8_combout\) # ((\inst|AC\(13) & !\inst|IR\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|AC\(13),
	datac => \inst|IR\(0),
	datad => \inst|shifter|auto_generated|sbit_w[29]~8_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[29]~9_combout\);

-- Location: LCCOMB_X49_Y44_N20
\inst|shifter|auto_generated|sbit_w[45]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[45]~10_combout\ = (\inst|IR\(1) & (((\inst|AC\(15) & \inst|IR\(4))))) # (!\inst|IR\(1) & (\inst|shifter|auto_generated|sbit_w[29]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[29]~9_combout\,
	datab => \inst|AC\(15),
	datac => \inst|IR\(1),
	datad => \inst|IR\(4),
	combout => \inst|shifter|auto_generated|sbit_w[45]~10_combout\);

-- Location: LCCOMB_X49_Y44_N14
\inst|shifter|auto_generated|sbit_w[45]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[45]~81_combout\ = (\inst|shifter|auto_generated|sbit_w[45]~10_combout\) # ((!\inst|IR\(4) & (\inst|IR\(1) & \inst|shifter|auto_generated|sbit_w[27]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[45]~10_combout\,
	datab => \inst|IR\(4),
	datac => \inst|IR\(1),
	datad => \inst|shifter|auto_generated|sbit_w[27]~12_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[45]~81_combout\);

-- Location: LCCOMB_X49_Y44_N18
\inst|shifter|auto_generated|sbit_w[61]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[61]~13_combout\ = (\inst|IR\(2) & (\inst|IR\(4) & ((\inst|AC\(15))))) # (!\inst|IR\(2) & (((\inst|shifter|auto_generated|sbit_w[45]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(4),
	datab => \inst|shifter|auto_generated|sbit_w[45]~81_combout\,
	datac => \inst|AC\(15),
	datad => \inst|IR\(2),
	combout => \inst|shifter|auto_generated|sbit_w[61]~13_combout\);

-- Location: LCCOMB_X49_Y44_N16
\inst|shifter|auto_generated|sbit_w[61]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[61]~20_combout\ = (\inst|shifter|auto_generated|sbit_w[61]~13_combout\) # ((!\inst|IR\(4) & (\inst|shifter|auto_generated|sbit_w[41]~19_combout\ & \inst|IR\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(4),
	datab => \inst|shifter|auto_generated|sbit_w[61]~13_combout\,
	datac => \inst|shifter|auto_generated|sbit_w[41]~19_combout\,
	datad => \inst|IR\(2),
	combout => \inst|shifter|auto_generated|sbit_w[61]~20_combout\);

-- Location: LCCOMB_X54_Y42_N8
\inst|Selector14~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector14~5_combout\ = (\inst|AC\(13) & (((\inst|state.ex_and~q\ & \inst|altsyncram_component|auto_generated|q_a\(13))) # (!\inst|Selector22~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(13),
	datab => \inst|Selector22~3_combout\,
	datac => \inst|state.ex_and~q\,
	datad => \inst|altsyncram_component|auto_generated|q_a\(13),
	combout => \inst|Selector14~5_combout\);

-- Location: LCCOMB_X55_Y42_N8
\inst|Selector14~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector14~8_combout\ = (\inst|Selector14~7_combout\) # ((\inst|Selector14~5_combout\) # ((\inst|Selector20~0_combout\ & \inst|shifter|auto_generated|sbit_w[61]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector20~0_combout\,
	datab => \inst|Selector14~7_combout\,
	datac => \inst|shifter|auto_generated|sbit_w[61]~20_combout\,
	datad => \inst|Selector14~5_combout\,
	combout => \inst|Selector14~8_combout\);

-- Location: LCCOMB_X54_Y42_N22
\inst|Selector14~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector14~10_combout\ = (\inst|state.ex_in2~q\ & ((\inst|AC\(13)) # ((!\inst13|inst1[5]~38_combout\) # (!\inst|IO_WRITE_int~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_in2~q\,
	datab => \inst|AC\(13),
	datac => \inst|IO_WRITE_int~q\,
	datad => \inst13|inst1[5]~38_combout\,
	combout => \inst|Selector14~10_combout\);

-- Location: LCCOMB_X54_Y42_N12
\inst|Selector14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector14~2_combout\ = (\inst|Selector14~10_combout\ & (\inst13|inst1[10]~5_combout\ & ((\inst13|inst1[13]~44_combout\) # (!\inst13|inst1[5]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector14~10_combout\,
	datab => \inst13|inst1[5]~38_combout\,
	datac => \inst13|inst1[10]~5_combout\,
	datad => \inst13|inst1[13]~44_combout\,
	combout => \inst|Selector14~2_combout\);

-- Location: LCCOMB_X54_Y42_N2
\inst|Selector14~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector14~9_combout\ = (\inst|Selector14~4_combout\) # ((\inst|Selector14~3_combout\) # ((\inst|Selector14~8_combout\) # (\inst|Selector14~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector14~4_combout\,
	datab => \inst|Selector14~3_combout\,
	datac => \inst|Selector14~8_combout\,
	datad => \inst|Selector14~2_combout\,
	combout => \inst|Selector14~9_combout\);

-- Location: FF_X54_Y42_N3
\inst|AC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector14~9_combout\,
	ena => \inst13|inst14|ALT_INV_data_out[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|AC\(13));

-- Location: LCCOMB_X54_Y42_N18
\inst|io_bus|dout[13]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|io_bus|dout[13]~3_combout\ = (\inst|AC\(13)) # (!\inst|IO_WRITE_int~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|IO_WRITE_int~q\,
	datad => \inst|AC\(13),
	combout => \inst|io_bus|dout[13]~3_combout\);

-- Location: LCCOMB_X54_Y42_N28
\inst13|inst1[13]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[13]~45_combout\ = (\inst13|inst1[10]~5_combout\ & (((\inst13|inst1[13]~44_combout\ & \inst|io_bus|dout[13]~3_combout\)) # (!\inst13|inst1[5]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[13]~44_combout\,
	datab => \inst|io_bus|dout[13]~3_combout\,
	datac => \inst13|inst1[10]~5_combout\,
	datad => \inst13|inst1[5]~38_combout\,
	combout => \inst13|inst1[13]~45_combout\);

-- Location: FF_X54_Y40_N19
\inst13|inst14|cmd_in[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst12~clkctrl_outclk\,
	asdata => \inst13|inst1[13]~45_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|cmd_in\(5));

-- Location: LCCOMB_X52_Y40_N0
\inst13|inst14|Selector21~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector21~1_combout\ = (!\inst13|inst14|state.idle~q\ & (\inst13|inst14|go~q\ & (\inst13|inst14|cmd_in\(5) $ (!\inst13|inst14|cmd_in\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|state.idle~q\,
	datab => \inst13|inst14|go~q\,
	datac => \inst13|inst14|cmd_in\(5),
	datad => \inst13|inst14|cmd_in\(4),
	combout => \inst13|inst14|Selector21~1_combout\);

-- Location: LCCOMB_X52_Y40_N10
\inst13|inst14|Selector20~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector20~2_combout\ = (!\inst13|inst14|cmd_in\(0) & (\inst13|inst14|cmd_in\(1) & ((\inst13|inst14|Selector22~1_combout\) # (\inst13|inst14|Selector21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|cmd_in\(0),
	datab => \inst13|inst14|Selector22~1_combout\,
	datac => \inst13|inst14|cmd_in\(1),
	datad => \inst13|inst14|Selector21~1_combout\,
	combout => \inst13|inst14|Selector20~2_combout\);

-- Location: LCCOMB_X52_Y40_N6
\inst13|inst14|Selector20~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector20~3_combout\ = (\inst13|inst14|Selector20~2_combout\) # ((\inst13|inst14|state.Rx2~q\ & ((\inst13|inst|busy~q\) # (!\inst13|inst14|prev_busy~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|busy~q\,
	datab => \inst13|inst14|prev_busy~q\,
	datac => \inst13|inst14|state.Rx2~q\,
	datad => \inst13|inst14|Selector20~2_combout\,
	combout => \inst13|inst14|Selector20~3_combout\);

-- Location: FF_X52_Y40_N7
\inst13|inst14|state.Rx2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|Selector20~3_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|state.Rx2~q\);

-- Location: LCCOMB_X52_Y41_N4
\inst13|inst|Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Decoder0~2_combout\ = (\inst13|inst|bit_cnt\(1) & (!\inst13|inst|bit_cnt\(2) & (\inst13|inst|Decoder0~0_combout\ & \inst13|inst|bit_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|bit_cnt\(1),
	datab => \inst13|inst|bit_cnt\(2),
	datac => \inst13|inst|Decoder0~0_combout\,
	datad => \inst13|inst|bit_cnt\(0),
	combout => \inst13|inst|Decoder0~2_combout\);

-- Location: LCCOMB_X51_Y41_N6
\inst13|inst|data_rx[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|data_rx[4]~1_combout\ = (\inst13|inst|Decoder0~2_combout\ & (\GSENSOR_SDI~input_o\)) # (!\inst13|inst|Decoder0~2_combout\ & ((\inst13|inst|data_rx\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GSENSOR_SDI~input_o\,
	datac => \inst13|inst|data_rx\(4),
	datad => \inst13|inst|Decoder0~2_combout\,
	combout => \inst13|inst|data_rx[4]~1_combout\);

-- Location: FF_X51_Y41_N7
\inst13|inst|data_rx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|ALT_INV_data_clk~clkctrl_outclk\,
	d => \inst13|inst|data_rx[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_rx\(4));

-- Location: LCCOMB_X51_Y41_N10
\inst13|inst|data_rd[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|data_rd[4]~feeder_combout\ = \inst13|inst|data_rx\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst|data_rx\(4),
	combout => \inst13|inst|data_rd[4]~feeder_combout\);

-- Location: FF_X51_Y41_N11
\inst13|inst|data_rd[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	d => \inst13|inst|data_rd[4]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	ena => \inst13|inst|state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_rd\(4));

-- Location: LCCOMB_X50_Y40_N2
\inst13|inst14|data_out[12]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_out[12]~15_combout\ = (\inst13|inst14|state.Rx2~q\ & (\inst13|inst|data_rd\(4) & (!\inst13|inst|busy~q\ & \inst13|inst14|prev_busy~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|state.Rx2~q\,
	datab => \inst13|inst|data_rd\(4),
	datac => \inst13|inst|busy~q\,
	datad => \inst13|inst14|prev_busy~q\,
	combout => \inst13|inst14|data_out[12]~15_combout\);

-- Location: FF_X50_Y40_N3
\inst13|inst14|data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|data_out[12]~15_combout\,
	ena => \inst13|inst14|data_out[15]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_out\(12));

-- Location: LCCOMB_X50_Y42_N16
\inst13|inst1[12]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[12]~42_combout\ = (\inst4|IO_OUT~combout\ & (\inst4|COUNT\(12) & ((\inst13|inst14|data_out\(12)) # (!\inst13|inst7~combout\)))) # (!\inst4|IO_OUT~combout\ & (((\inst13|inst14|data_out\(12))) # (!\inst13|inst7~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|IO_OUT~combout\,
	datab => \inst13|inst7~combout\,
	datac => \inst13|inst14|data_out\(12),
	datad => \inst4|COUNT\(12),
	combout => \inst13|inst1[12]~42_combout\);

-- Location: LCCOMB_X50_Y42_N22
\inst|io_bus|dout[12]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|io_bus|dout[12]~2_combout\ = (\inst|AC\(12)) # (!\inst|IO_WRITE_int~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|AC\(12),
	datad => \inst|IO_WRITE_int~q\,
	combout => \inst|io_bus|dout[12]~2_combout\);

-- Location: LCCOMB_X50_Y42_N14
\inst13|inst1[12]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[12]~43_combout\ = (\inst13|inst1[10]~5_combout\ & (((\inst13|inst1[12]~42_combout\ & \inst|io_bus|dout[12]~2_combout\)) # (!\inst13|inst1[5]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[5]~38_combout\,
	datab => \inst13|inst1[12]~42_combout\,
	datac => \inst|io_bus|dout[12]~2_combout\,
	datad => \inst13|inst1[10]~5_combout\,
	combout => \inst13|inst1[12]~43_combout\);

-- Location: LCCOMB_X54_Y40_N20
\inst13|inst14|cmd_in[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|cmd_in[4]~feeder_combout\ = \inst13|inst1[12]~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst1[12]~43_combout\,
	combout => \inst13|inst14|cmd_in[4]~feeder_combout\);

-- Location: FF_X54_Y40_N21
\inst13|inst14|cmd_in[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst12~clkctrl_outclk\,
	d => \inst13|inst14|cmd_in[4]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|cmd_in\(4));

-- Location: LCCOMB_X52_Y40_N4
\inst13|inst14|Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector18~0_combout\ = (!\inst13|inst14|state.idle~q\ & (\inst13|inst14|cmd_in\(4) & (!\inst13|inst14|cmd_in\(5) & \inst13|inst14|go~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|state.idle~q\,
	datab => \inst13|inst14|cmd_in\(4),
	datac => \inst13|inst14|cmd_in\(5),
	datad => \inst13|inst14|go~q\,
	combout => \inst13|inst14|Selector18~0_combout\);

-- Location: FF_X52_Y40_N5
\inst13|inst14|state.Tx1p\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|Selector18~0_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|state.Tx1p~q\);

-- Location: LCCOMB_X54_Y40_N24
\inst13|inst14|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Equal0~0_combout\ = (!\inst13|inst14|cmd_in\(4) & \inst13|inst14|cmd_in\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst14|cmd_in\(4),
	datad => \inst13|inst14|cmd_in\(5),
	combout => \inst13|inst14|Equal0~0_combout\);

-- Location: LCCOMB_X52_Y40_N14
\inst13|inst14|Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector17~0_combout\ = (\inst13|inst14|state_machine~0_combout\ & (\inst13|inst14|tx_addr[7]~0_combout\ & ((\inst13|inst14|Equal0~0_combout\)))) # (!\inst13|inst14|state_machine~0_combout\ & ((\inst13|inst14|state.Tx2~q\) # 
-- ((\inst13|inst14|tx_addr[7]~0_combout\ & \inst13|inst14|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|state_machine~0_combout\,
	datab => \inst13|inst14|tx_addr[7]~0_combout\,
	datac => \inst13|inst14|state.Tx2~q\,
	datad => \inst13|inst14|Equal0~0_combout\,
	combout => \inst13|inst14|Selector17~0_combout\);

-- Location: FF_X52_Y40_N15
\inst13|inst14|state.Tx2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|Selector17~0_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|state.Tx2~q\);

-- Location: LCCOMB_X52_Y40_N26
\inst13|inst14|Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector19~0_combout\ = (\inst13|inst14|state.Tx1p~q\) # ((\inst13|inst14|state_machine~0_combout\ & (\inst13|inst14|state.Tx2~q\)) # (!\inst13|inst14|state_machine~0_combout\ & ((\inst13|inst14|state.Tx1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|state.Tx1p~q\,
	datab => \inst13|inst14|state.Tx2~q\,
	datac => \inst13|inst14|state.Tx1~q\,
	datad => \inst13|inst14|state_machine~0_combout\,
	combout => \inst13|inst14|Selector19~0_combout\);

-- Location: FF_X52_Y40_N27
\inst13|inst14|state.Tx1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|Selector19~0_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|state.Tx1~q\);

-- Location: LCCOMB_X52_Y40_N24
\inst13|inst14|Selector22~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector22~1_combout\ = (\inst13|inst14|state.Tx1~q\ & (!\inst13|inst|busy~q\ & \inst13|inst14|prev_busy~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|state.Tx1~q\,
	datac => \inst13|inst|busy~q\,
	datad => \inst13|inst14|prev_busy~q\,
	combout => \inst13|inst14|Selector22~1_combout\);

-- Location: LCCOMB_X52_Y40_N28
\inst13|inst14|Selector21~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector21~2_combout\ = (\inst13|inst14|cmd_in\(0) & (!\inst13|inst14|cmd_in\(1) & \inst13|inst14|Selector21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|cmd_in\(0),
	datac => \inst13|inst14|cmd_in\(1),
	datad => \inst13|inst14|Selector21~1_combout\,
	combout => \inst13|inst14|Selector21~2_combout\);

-- Location: FF_X52_Y40_N29
\inst13|inst14|state.Rx1p\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|Selector21~2_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|state.Rx1p~q\);

-- Location: LCCOMB_X51_Y40_N20
\inst13|inst14|Selector22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector22~0_combout\ = (\inst13|inst14|state.Rx1p~q\) # ((\inst13|inst14|state_machine~0_combout\ & ((\inst13|inst14|state.Rx2~q\))) # (!\inst13|inst14|state_machine~0_combout\ & (\inst13|inst14|state.Rx1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|state.Rx1~q\,
	datab => \inst13|inst14|state.Rx1p~q\,
	datac => \inst13|inst14|state_machine~0_combout\,
	datad => \inst13|inst14|state.Rx2~q\,
	combout => \inst13|inst14|Selector22~0_combout\);

-- Location: LCCOMB_X51_Y40_N22
\inst13|inst14|Selector22~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector22~2_combout\ = (\inst13|inst14|Selector22~0_combout\) # ((\inst13|inst14|Selector22~1_combout\ & (!\inst13|inst14|cmd_in\(1) & \inst13|inst14|cmd_in\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|Selector22~1_combout\,
	datab => \inst13|inst14|cmd_in\(1),
	datac => \inst13|inst14|cmd_in\(0),
	datad => \inst13|inst14|Selector22~0_combout\,
	combout => \inst13|inst14|Selector22~2_combout\);

-- Location: FF_X51_Y40_N23
\inst13|inst14|state.Rx1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|Selector22~2_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|state.Rx1~q\);

-- Location: LCCOMB_X50_Y40_N20
\inst13|inst14|data_out[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_out[1]~6_combout\ = (\inst13|inst14|prev_busy~q\ & (\inst13|inst14|state.Rx1~q\ & (!\inst13|inst|busy~q\ & \inst13|inst|data_rd\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|prev_busy~q\,
	datab => \inst13|inst14|state.Rx1~q\,
	datac => \inst13|inst|busy~q\,
	datad => \inst13|inst|data_rd\(1),
	combout => \inst13|inst14|data_out[1]~6_combout\);

-- Location: LCCOMB_X50_Y40_N0
\inst13|inst14|data_out[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_out[7]~2_combout\ = (!\inst13|inst14|data_out[7]~1_combout\ & ((\inst13|inst14|tx_addr[7]~0_combout\) # ((\inst13|inst14|state.Rx1~q\ & \inst13|inst14|state_machine~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|data_out[7]~1_combout\,
	datab => \inst13|inst14|state.Rx1~q\,
	datac => \inst13|inst14|state_machine~0_combout\,
	datad => \inst13|inst14|tx_addr[7]~0_combout\,
	combout => \inst13|inst14|data_out[7]~2_combout\);

-- Location: FF_X50_Y40_N21
\inst13|inst14|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|data_out[1]~6_combout\,
	ena => \inst13|inst14|data_out[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_out\(1));

-- Location: LCCOMB_X54_Y44_N20
\inst13|inst1[1]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[1]~17_combout\ = (\inst13|inst7~combout\ & (\inst13|inst14|data_out\(1) & ((\inst4|COUNT\(1)) # (!\inst4|IO_OUT~combout\)))) # (!\inst13|inst7~combout\ & (((\inst4|COUNT\(1))) # (!\inst4|IO_OUT~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7~combout\,
	datab => \inst4|IO_OUT~combout\,
	datac => \inst4|COUNT\(1),
	datad => \inst13|inst14|data_out\(1),
	combout => \inst13|inst1[1]~17_combout\);

-- Location: LCCOMB_X54_Y44_N26
\inst13|inst1[1]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[1]~19_combout\ = ((\inst13|inst1[5]~2_combout\ & (\inst13|inst1[1]~18_combout\ & \inst13|inst1[1]~17_combout\))) # (!\inst13|inst1[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[5]~6_combout\,
	datab => \inst13|inst1[5]~2_combout\,
	datac => \inst13|inst1[1]~18_combout\,
	datad => \inst13|inst1[1]~17_combout\,
	combout => \inst13|inst1[1]~19_combout\);

-- Location: LCCOMB_X57_Y40_N26
\inst13|inst14|addr_in[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|addr_in[1]~feeder_combout\ = \inst13|inst1[1]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[1]~19_combout\,
	combout => \inst13|inst14|addr_in[1]~feeder_combout\);

-- Location: FF_X57_Y40_N27
\inst13|inst14|addr_in[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst12~clkctrl_outclk\,
	d => \inst13|inst14|addr_in[1]~feeder_combout\,
	ena => \inst13|inst14|ALT_INV_data_out[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|addr_in\(1));

-- Location: LCCOMB_X57_Y40_N10
\inst13|inst14|tx_addr[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|tx_addr[1]~feeder_combout\ = \inst13|inst14|addr_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst14|addr_in\(1),
	combout => \inst13|inst14|tx_addr[1]~feeder_combout\);

-- Location: LCCOMB_X57_Y40_N28
\inst13|inst14|tx_addr[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|tx_addr[7]~1_combout\ = (!\inst13|inst14|data_out[7]~1_combout\ & (!\inst13|inst14|state.idle~q\ & \inst13|inst14|go~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst14|data_out[7]~1_combout\,
	datac => \inst13|inst14|state.idle~q\,
	datad => \inst13|inst14|go~q\,
	combout => \inst13|inst14|tx_addr[7]~1_combout\);

-- Location: FF_X57_Y40_N11
\inst13|inst14|tx_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|tx_addr[1]~feeder_combout\,
	ena => \inst13|inst14|tx_addr[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|tx_addr\(1));

-- Location: IOIBUF_X51_Y54_N1
\SW[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X55_Y44_N24
\inst7|B_DI[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|B_DI[2]~feeder_combout\ = \SW[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[2]~input_o\,
	combout => \inst7|B_DI[2]~feeder_combout\);

-- Location: FF_X55_Y44_N25
\inst7|B_DI[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SWITCH_EN~clkctrl_outclk\,
	d => \inst7|B_DI[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|B_DI\(2));

-- Location: LCCOMB_X55_Y44_N30
\inst13|inst1[2]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[2]~15_combout\ = (\inst3|SWITCH_EN~combout\ & (\inst7|B_DI\(2) & ((\inst|AC\(2)) # (!\inst|IO_WRITE_int~q\)))) # (!\inst3|SWITCH_EN~combout\ & (((\inst|AC\(2))) # (!\inst|IO_WRITE_int~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|SWITCH_EN~combout\,
	datab => \inst|IO_WRITE_int~q\,
	datac => \inst|AC\(2),
	datad => \inst7|B_DI\(2),
	combout => \inst13|inst1[2]~15_combout\);

-- Location: LCCOMB_X50_Y40_N10
\inst13|inst14|data_out[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_out[2]~5_combout\ = (\inst13|inst|data_rd\(2) & (\inst13|inst14|state.Rx1~q\ & (!\inst13|inst|busy~q\ & \inst13|inst14|prev_busy~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|data_rd\(2),
	datab => \inst13|inst14|state.Rx1~q\,
	datac => \inst13|inst|busy~q\,
	datad => \inst13|inst14|prev_busy~q\,
	combout => \inst13|inst14|data_out[2]~5_combout\);

-- Location: FF_X50_Y40_N11
\inst13|inst14|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|data_out[2]~5_combout\,
	ena => \inst13|inst14|data_out[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_out\(2));

-- Location: LCCOMB_X54_Y44_N16
\inst13|inst1[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[2]~14_combout\ = (\inst13|inst7~combout\ & (\inst13|inst14|data_out\(2) & ((\inst4|COUNT\(2)) # (!\inst4|IO_OUT~combout\)))) # (!\inst13|inst7~combout\ & (((\inst4|COUNT\(2))) # (!\inst4|IO_OUT~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7~combout\,
	datab => \inst4|IO_OUT~combout\,
	datac => \inst4|COUNT\(2),
	datad => \inst13|inst14|data_out\(2),
	combout => \inst13|inst1[2]~14_combout\);

-- Location: LCCOMB_X54_Y44_N6
\inst13|inst1[2]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[2]~16_combout\ = ((\inst13|inst1[2]~15_combout\ & (\inst13|inst1[2]~14_combout\ & \inst13|inst1[5]~2_combout\))) # (!\inst13|inst1[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[2]~15_combout\,
	datab => \inst13|inst1[2]~14_combout\,
	datac => \inst13|inst1[5]~2_combout\,
	datad => \inst13|inst1[5]~6_combout\,
	combout => \inst13|inst1[2]~16_combout\);

-- Location: LCCOMB_X57_Y40_N6
\inst13|inst14|addr_in[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|addr_in[2]~feeder_combout\ = \inst13|inst1[2]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst1[2]~16_combout\,
	combout => \inst13|inst14|addr_in[2]~feeder_combout\);

-- Location: FF_X57_Y40_N7
\inst13|inst14|addr_in[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst12~clkctrl_outclk\,
	d => \inst13|inst14|addr_in[2]~feeder_combout\,
	ena => \inst13|inst14|ALT_INV_data_out[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|addr_in\(2));

-- Location: LCCOMB_X57_Y40_N4
\inst13|inst14|tx_addr[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|tx_addr[2]~feeder_combout\ = \inst13|inst14|addr_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst14|addr_in\(2),
	combout => \inst13|inst14|tx_addr[2]~feeder_combout\);

-- Location: FF_X57_Y40_N5
\inst13|inst14|tx_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|tx_addr[2]~feeder_combout\,
	ena => \inst13|inst14|tx_addr[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|tx_addr\(2));

-- Location: LCCOMB_X52_Y40_N12
\inst13|inst14|Selector32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector32~0_combout\ = (!\inst13|inst14|state.Tx1~q\ & (!\inst13|inst14|state.Rx1~q\ & ((\inst13|inst14|comm_en~q\) # (\inst13|inst14|state.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|comm_en~q\,
	datab => \inst13|inst14|state.Tx1~q\,
	datac => \inst13|inst14|state.Rx1~q\,
	datad => \inst13|inst14|state.idle~q\,
	combout => \inst13|inst14|Selector32~0_combout\);

-- Location: LCCOMB_X54_Y40_N6
\inst13|inst14|state_machine~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|state_machine~1_combout\ = (\inst13|inst|busy~q\ & !\inst13|inst14|prev_busy~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst|busy~q\,
	datad => \inst13|inst14|prev_busy~q\,
	combout => \inst13|inst14|state_machine~1_combout\);

-- Location: LCCOMB_X51_Y40_N16
\inst13|inst14|Selector32~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector32~1_combout\ = (!\inst13|inst14|state.Rx1~q\ & (\inst13|inst14|cmd_in\(0) $ (\inst13|inst14|cmd_in\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|state.Rx1~q\,
	datab => \inst13|inst14|cmd_in\(0),
	datad => \inst13|inst14|cmd_in\(1),
	combout => \inst13|inst14|Selector32~1_combout\);

-- Location: LCCOMB_X52_Y40_N22
\inst13|inst14|Selector32~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector32~2_combout\ = (\inst13|inst14|Selector32~0_combout\) # ((\inst13|inst14|comm_en~q\ & ((\inst13|inst14|Selector32~1_combout\) # (!\inst13|inst14|state_machine~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|Selector32~0_combout\,
	datab => \inst13|inst14|state_machine~1_combout\,
	datac => \inst13|inst14|comm_en~q\,
	datad => \inst13|inst14|Selector32~1_combout\,
	combout => \inst13|inst14|Selector32~2_combout\);

-- Location: FF_X52_Y40_N23
\inst13|inst14|comm_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|Selector32~2_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|comm_en~q\);

-- Location: LCCOMB_X54_Y40_N18
\inst13|inst|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Equal1~0_combout\ = (\inst13|inst|bit_cnt\(1) & (\inst13|inst|bit_cnt\(0) & \inst13|inst|bit_cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|bit_cnt\(1),
	datab => \inst13|inst|bit_cnt\(0),
	datad => \inst13|inst|bit_cnt\(2),
	combout => \inst13|inst|Equal1~0_combout\);

-- Location: LCCOMB_X54_Y40_N22
\inst13|inst|Selector21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector21~0_combout\ = (\inst13|inst|state.start~q\) # ((!\inst13|inst|Equal1~0_combout\ & \inst13|inst|state.command~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|state.start~q\,
	datab => \inst13|inst|Equal1~0_combout\,
	datac => \inst13|inst|state.command~q\,
	combout => \inst13|inst|Selector21~0_combout\);

-- Location: FF_X54_Y40_N23
\inst13|inst|state.command\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	d => \inst13|inst|Selector21~0_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|state.command~q\);

-- Location: LCCOMB_X56_Y41_N26
\inst13|inst|state~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|state~15_combout\ = (\inst13|inst|state.command~q\ & (\inst13|inst|bit_cnt\(2) & (\inst13|inst|bit_cnt\(1) & \inst13|inst|bit_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|state.command~q\,
	datab => \inst13|inst|bit_cnt\(2),
	datac => \inst13|inst|bit_cnt\(1),
	datad => \inst13|inst|bit_cnt\(0),
	combout => \inst13|inst|state~15_combout\);

-- Location: FF_X56_Y41_N27
\inst13|inst|state.slv_ack1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	d => \inst13|inst|state~15_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|state.slv_ack1~q\);

-- Location: FF_X56_Y40_N25
\inst13|inst|addr_rw[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	asdata => \inst13|inst14|rnw~q\,
	sload => VCC,
	ena => \inst13|inst|addr_rw[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|addr_rw\(0));

-- Location: LCCOMB_X55_Y41_N22
\inst13|inst|Selector22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector22~0_combout\ = (\inst13|inst|state.slv_ack2~q\ & (!\inst13|inst14|rnw~q\ & \inst13|inst|process_1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|state.slv_ack2~q\,
	datac => \inst13|inst14|rnw~q\,
	datad => \inst13|inst|process_1~4_combout\,
	combout => \inst13|inst|Selector22~0_combout\);

-- Location: LCCOMB_X55_Y41_N28
\inst13|inst|Selector22~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector22~1_combout\ = (!\inst13|inst|ack_error~q\ & ((\inst13|inst|Selector22~0_combout\) # ((\inst13|inst|state.slv_ack1~q\ & !\inst13|inst|addr_rw\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|state.slv_ack1~q\,
	datab => \inst13|inst|addr_rw\(0),
	datac => \inst13|inst|ack_error~q\,
	datad => \inst13|inst|Selector22~0_combout\,
	combout => \inst13|inst|Selector22~1_combout\);

-- Location: LCCOMB_X55_Y41_N10
\inst13|inst|Selector22~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector22~2_combout\ = (\inst13|inst|Selector22~1_combout\) # ((!\inst13|inst|Equal1~0_combout\ & \inst13|inst|state.wr~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst|Equal1~0_combout\,
	datac => \inst13|inst|state.wr~q\,
	datad => \inst13|inst|Selector22~1_combout\,
	combout => \inst13|inst|Selector22~2_combout\);

-- Location: FF_X55_Y41_N11
\inst13|inst|state.wr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	d => \inst13|inst|Selector22~2_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|state.wr~q\);

-- Location: LCCOMB_X56_Y41_N18
\inst13|inst|state~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|state~16_combout\ = (\inst13|inst|bit_cnt\(0) & (\inst13|inst|bit_cnt\(2) & (\inst13|inst|bit_cnt\(1) & \inst13|inst|state.wr~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|bit_cnt\(0),
	datab => \inst13|inst|bit_cnt\(2),
	datac => \inst13|inst|bit_cnt\(1),
	datad => \inst13|inst|state.wr~q\,
	combout => \inst13|inst|state~16_combout\);

-- Location: FF_X56_Y41_N19
\inst13|inst|state.slv_ack2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	d => \inst13|inst|state~16_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|state.slv_ack2~q\);

-- Location: LCCOMB_X56_Y40_N10
\inst13|inst|Selector24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector24~0_combout\ = (\inst13|inst|process_1~4_combout\ & (((\inst13|inst|ack_error~q\ & \inst13|inst|state.slv_ack2~q\)))) # (!\inst13|inst|process_1~4_combout\ & ((\inst13|inst|state.mstr_ack~q\) # ((\inst13|inst|state.slv_ack2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|process_1~4_combout\,
	datab => \inst13|inst|state.mstr_ack~q\,
	datac => \inst13|inst|ack_error~q\,
	datad => \inst13|inst|state.slv_ack2~q\,
	combout => \inst13|inst|Selector24~0_combout\);

-- Location: LCCOMB_X56_Y40_N12
\inst13|inst|Selector24~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector24~1_combout\ = (\inst13|inst|Selector24~0_combout\) # ((\inst13|inst|state.slv_ack1~q\ & \inst13|inst|ack_error~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|Selector24~0_combout\,
	datab => \inst13|inst|state.slv_ack1~q\,
	datac => \inst13|inst|ack_error~q\,
	combout => \inst13|inst|Selector24~1_combout\);

-- Location: FF_X56_Y40_N13
\inst13|inst|state.stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	d => \inst13|inst|Selector24~1_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|state.stop~q\);

-- Location: LCCOMB_X54_Y41_N20
\inst13|inst|Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector18~0_combout\ = (!\inst13|inst|state.stop~q\ & ((\inst13|inst14|comm_en~q\) # (\inst13|inst|state.ready~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst14|comm_en~q\,
	datac => \inst13|inst|state.ready~q\,
	datad => \inst13|inst|state.stop~q\,
	combout => \inst13|inst|Selector18~0_combout\);

-- Location: FF_X55_Y41_N1
\inst13|inst|state.ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	asdata => \inst13|inst|Selector18~0_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|state.ready~q\);

-- Location: LCCOMB_X56_Y40_N2
\inst13|inst|addr_rw[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|addr_rw[7]~0_combout\ = ((!\inst13|inst|state.mstr_ack~q\ & \inst13|inst|state.ready~q\)) # (!\inst13|inst14|comm_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|state.mstr_ack~q\,
	datab => \inst13|inst|state.ready~q\,
	datad => \inst13|inst14|comm_en~q\,
	combout => \inst13|inst|addr_rw[7]~0_combout\);

-- Location: LCCOMB_X56_Y40_N18
\inst13|inst|Selector25~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector25~6_combout\ = (\inst13|inst|state.slv_ack2~q\ & (!\inst13|inst|ack_error~q\ & \inst13|inst|process_1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|state.slv_ack2~q\,
	datab => \inst13|inst|ack_error~q\,
	datad => \inst13|inst|process_1~4_combout\,
	combout => \inst13|inst|Selector25~6_combout\);

-- Location: LCCOMB_X56_Y40_N24
\inst13|inst|addr_rw[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|addr_rw[7]~1_combout\ = (!\inst13|inst14|data_out[7]~1_combout\ & ((\inst13|inst|Selector25~6_combout\) # (!\inst13|inst|addr_rw[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|data_out[7]~1_combout\,
	datab => \inst13|inst|addr_rw[7]~0_combout\,
	datad => \inst13|inst|Selector25~6_combout\,
	combout => \inst13|inst|addr_rw[7]~1_combout\);

-- Location: FF_X58_Y40_N29
\inst13|inst|addr_rw[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	asdata => \inst13|inst14|tx_addr\(2),
	sload => VCC,
	ena => \inst13|inst|addr_rw[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|addr_rw\(2));

-- Location: FF_X56_Y40_N31
\inst13|inst|addr_rw[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	asdata => \inst13|inst14|tx_addr\(1),
	sload => VCC,
	ena => \inst13|inst|addr_rw[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|addr_rw\(1));

-- Location: LCCOMB_X56_Y40_N30
\inst13|inst|process_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|process_1~0_combout\ = (\inst13|inst14|tx_addr\(1) & (\inst13|inst|addr_rw\(1) & (\inst13|inst|addr_rw\(2) $ (!\inst13|inst14|tx_addr\(2))))) # (!\inst13|inst14|tx_addr\(1) & (!\inst13|inst|addr_rw\(1) & (\inst13|inst|addr_rw\(2) $ 
-- (!\inst13|inst14|tx_addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|tx_addr\(1),
	datab => \inst13|inst|addr_rw\(2),
	datac => \inst13|inst|addr_rw\(1),
	datad => \inst13|inst14|tx_addr\(2),
	combout => \inst13|inst|process_1~0_combout\);

-- Location: IOIBUF_X54_Y54_N22
\SW[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: FF_X50_Y47_N9
\inst7|B_DI[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SWITCH_EN~clkctrl_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|B_DI\(4));

-- Location: LCCOMB_X50_Y44_N12
\inst13|inst1[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[4]~9_combout\ = (\inst3|SWITCH_EN~combout\ & (\inst7|B_DI\(4) & ((\inst|AC\(4)) # (!\inst|IO_WRITE_int~q\)))) # (!\inst3|SWITCH_EN~combout\ & (((\inst|AC\(4))) # (!\inst|IO_WRITE_int~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|SWITCH_EN~combout\,
	datab => \inst|IO_WRITE_int~q\,
	datac => \inst|AC\(4),
	datad => \inst7|B_DI\(4),
	combout => \inst13|inst1[4]~9_combout\);

-- Location: LCCOMB_X50_Y40_N22
\inst13|inst14|data_out[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_out[4]~3_combout\ = (\inst13|inst14|prev_busy~q\ & (\inst13|inst14|state.Rx1~q\ & (!\inst13|inst|busy~q\ & \inst13|inst|data_rd\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|prev_busy~q\,
	datab => \inst13|inst14|state.Rx1~q\,
	datac => \inst13|inst|busy~q\,
	datad => \inst13|inst|data_rd\(4),
	combout => \inst13|inst14|data_out[4]~3_combout\);

-- Location: FF_X50_Y40_N23
\inst13|inst14|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|data_out[4]~3_combout\,
	ena => \inst13|inst14|data_out[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_out\(4));

-- Location: LCCOMB_X50_Y44_N24
\inst13|inst1[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[4]~8_combout\ = (\inst13|inst7~combout\ & (\inst13|inst14|data_out\(4) & ((\inst4|COUNT\(4)) # (!\inst4|IO_OUT~combout\)))) # (!\inst13|inst7~combout\ & (((\inst4|COUNT\(4))) # (!\inst4|IO_OUT~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7~combout\,
	datab => \inst4|IO_OUT~combout\,
	datac => \inst13|inst14|data_out\(4),
	datad => \inst4|COUNT\(4),
	combout => \inst13|inst1[4]~8_combout\);

-- Location: LCCOMB_X50_Y44_N0
\inst13|inst1[4]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[4]~10_combout\ = ((\inst13|inst1[4]~9_combout\ & (\inst13|inst1[4]~8_combout\ & \inst13|inst1[5]~2_combout\))) # (!\inst13|inst1[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[4]~9_combout\,
	datab => \inst13|inst1[4]~8_combout\,
	datac => \inst13|inst1[5]~2_combout\,
	datad => \inst13|inst1[5]~6_combout\,
	combout => \inst13|inst1[4]~10_combout\);

-- Location: LCCOMB_X57_Y40_N16
\inst13|inst14|addr_in[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|addr_in[4]~feeder_combout\ = \inst13|inst1[4]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst1[4]~10_combout\,
	combout => \inst13|inst14|addr_in[4]~feeder_combout\);

-- Location: FF_X57_Y40_N17
\inst13|inst14|addr_in[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst12~clkctrl_outclk\,
	d => \inst13|inst14|addr_in[4]~feeder_combout\,
	ena => \inst13|inst14|ALT_INV_data_out[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|addr_in\(4));

-- Location: LCCOMB_X57_Y40_N12
\inst13|inst14|tx_addr[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|tx_addr[4]~feeder_combout\ = \inst13|inst14|addr_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst14|addr_in\(4),
	combout => \inst13|inst14|tx_addr[4]~feeder_combout\);

-- Location: FF_X57_Y40_N13
\inst13|inst14|tx_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|tx_addr[4]~feeder_combout\,
	ena => \inst13|inst14|tx_addr[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|tx_addr\(4));

-- Location: FF_X58_Y40_N19
\inst13|inst|addr_rw[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	asdata => \inst13|inst14|tx_addr\(4),
	sload => VCC,
	ena => \inst13|inst|addr_rw[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|addr_rw\(4));

-- Location: LCCOMB_X52_Y41_N2
\inst13|inst|Decoder0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Decoder0~3_combout\ = (!\inst13|inst|bit_cnt\(1) & (\inst13|inst|bit_cnt\(2) & (\inst13|inst|Decoder0~0_combout\ & !\inst13|inst|bit_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|bit_cnt\(1),
	datab => \inst13|inst|bit_cnt\(2),
	datac => \inst13|inst|Decoder0~0_combout\,
	datad => \inst13|inst|bit_cnt\(0),
	combout => \inst13|inst|Decoder0~3_combout\);

-- Location: LCCOMB_X51_Y41_N4
\inst13|inst|data_rx[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|data_rx[3]~2_combout\ = (\inst13|inst|Decoder0~3_combout\ & (\GSENSOR_SDI~input_o\)) # (!\inst13|inst|Decoder0~3_combout\ & ((\inst13|inst|data_rx\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GSENSOR_SDI~input_o\,
	datac => \inst13|inst|data_rx\(3),
	datad => \inst13|inst|Decoder0~3_combout\,
	combout => \inst13|inst|data_rx[3]~2_combout\);

-- Location: FF_X51_Y41_N5
\inst13|inst|data_rx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|ALT_INV_data_clk~clkctrl_outclk\,
	d => \inst13|inst|data_rx[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_rx\(3));

-- Location: LCCOMB_X51_Y41_N12
\inst13|inst|data_rd[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|data_rd[3]~feeder_combout\ = \inst13|inst|data_rx\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst|data_rx\(3),
	combout => \inst13|inst|data_rd[3]~feeder_combout\);

-- Location: FF_X51_Y41_N13
\inst13|inst|data_rd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	d => \inst13|inst|data_rd[3]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	ena => \inst13|inst|state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_rd\(3));

-- Location: LCCOMB_X50_Y40_N24
\inst13|inst14|data_out[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_out[3]~4_combout\ = (\inst13|inst|data_rd\(3) & (\inst13|inst14|state.Rx1~q\ & (!\inst13|inst|busy~q\ & \inst13|inst14|prev_busy~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|data_rd\(3),
	datab => \inst13|inst14|state.Rx1~q\,
	datac => \inst13|inst|busy~q\,
	datad => \inst13|inst14|prev_busy~q\,
	combout => \inst13|inst14|data_out[3]~4_combout\);

-- Location: FF_X50_Y40_N25
\inst13|inst14|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|data_out[3]~4_combout\,
	ena => \inst13|inst14|data_out[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_out\(3));

-- Location: LCCOMB_X50_Y44_N20
\inst13|inst1[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[3]~11_combout\ = (\inst13|inst7~combout\ & (\inst13|inst14|data_out\(3) & ((\inst4|COUNT\(3)) # (!\inst4|IO_OUT~combout\)))) # (!\inst13|inst7~combout\ & (((\inst4|COUNT\(3))) # (!\inst4|IO_OUT~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7~combout\,
	datab => \inst4|IO_OUT~combout\,
	datac => \inst4|COUNT\(3),
	datad => \inst13|inst14|data_out\(3),
	combout => \inst13|inst1[3]~11_combout\);

-- Location: IOIBUF_X54_Y54_N29
\SW[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: FF_X50_Y47_N7
\inst7|B_DI[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SWITCH_EN~clkctrl_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|B_DI\(3));

-- Location: LCCOMB_X50_Y44_N4
\inst13|inst1[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[3]~12_combout\ = (\inst3|SWITCH_EN~combout\ & (\inst7|B_DI\(3) & ((\inst|AC\(3)) # (!\inst|IO_WRITE_int~q\)))) # (!\inst3|SWITCH_EN~combout\ & (((\inst|AC\(3))) # (!\inst|IO_WRITE_int~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|SWITCH_EN~combout\,
	datab => \inst|IO_WRITE_int~q\,
	datac => \inst|AC\(3),
	datad => \inst7|B_DI\(3),
	combout => \inst13|inst1[3]~12_combout\);

-- Location: LCCOMB_X50_Y44_N22
\inst13|inst1[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[3]~13_combout\ = ((\inst13|inst1[3]~11_combout\ & (\inst13|inst1[3]~12_combout\ & \inst13|inst1[5]~2_combout\))) # (!\inst13|inst1[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[3]~11_combout\,
	datab => \inst13|inst1[3]~12_combout\,
	datac => \inst13|inst1[5]~2_combout\,
	datad => \inst13|inst1[5]~6_combout\,
	combout => \inst13|inst1[3]~13_combout\);

-- Location: LCCOMB_X57_Y40_N18
\inst13|inst14|addr_in[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|addr_in[3]~feeder_combout\ = \inst13|inst1[3]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst1[3]~13_combout\,
	combout => \inst13|inst14|addr_in[3]~feeder_combout\);

-- Location: FF_X57_Y40_N19
\inst13|inst14|addr_in[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst12~clkctrl_outclk\,
	d => \inst13|inst14|addr_in[3]~feeder_combout\,
	ena => \inst13|inst14|ALT_INV_data_out[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|addr_in\(3));

-- Location: LCCOMB_X57_Y40_N14
\inst13|inst14|tx_addr[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|tx_addr[3]~feeder_combout\ = \inst13|inst14|addr_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst14|addr_in\(3),
	combout => \inst13|inst14|tx_addr[3]~feeder_combout\);

-- Location: FF_X57_Y40_N15
\inst13|inst14|tx_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|tx_addr[3]~feeder_combout\,
	ena => \inst13|inst14|tx_addr[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|tx_addr\(3));

-- Location: FF_X56_Y40_N5
\inst13|inst|addr_rw[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	asdata => \inst13|inst14|tx_addr\(3),
	sload => VCC,
	ena => \inst13|inst|addr_rw[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|addr_rw\(3));

-- Location: LCCOMB_X56_Y40_N4
\inst13|inst|process_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|process_1~1_combout\ = (\inst13|inst|addr_rw\(4) & (\inst13|inst14|tx_addr\(4) & (\inst13|inst14|tx_addr\(3) $ (!\inst13|inst|addr_rw\(3))))) # (!\inst13|inst|addr_rw\(4) & (!\inst13|inst14|tx_addr\(4) & (\inst13|inst14|tx_addr\(3) $ 
-- (!\inst13|inst|addr_rw\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|addr_rw\(4),
	datab => \inst13|inst14|tx_addr\(3),
	datac => \inst13|inst|addr_rw\(3),
	datad => \inst13|inst14|tx_addr\(4),
	combout => \inst13|inst|process_1~1_combout\);

-- Location: IOIBUF_X49_Y54_N1
\SW[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: FF_X51_Y47_N9
\inst7|B_DI[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SWITCH_EN~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|B_DI\(5));

-- Location: LCCOMB_X51_Y43_N16
\inst13|inst1[5]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[5]~4_combout\ = (\inst3|SWITCH_EN~combout\ & (\inst7|B_DI\(5) & ((\inst|AC\(5)) # (!\inst|IO_WRITE_int~q\)))) # (!\inst3|SWITCH_EN~combout\ & (((\inst|AC\(5))) # (!\inst|IO_WRITE_int~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|SWITCH_EN~combout\,
	datab => \inst|IO_WRITE_int~q\,
	datac => \inst|AC\(5),
	datad => \inst7|B_DI\(5),
	combout => \inst13|inst1[5]~4_combout\);

-- Location: LCCOMB_X50_Y40_N28
\inst13|inst14|data_out[5]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_out[5]~0_combout\ = (\inst13|inst14|prev_busy~q\ & (\inst13|inst14|state.Rx1~q\ & (!\inst13|inst|busy~q\ & \inst13|inst|data_rd\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|prev_busy~q\,
	datab => \inst13|inst14|state.Rx1~q\,
	datac => \inst13|inst|busy~q\,
	datad => \inst13|inst|data_rd\(5),
	combout => \inst13|inst14|data_out[5]~0_combout\);

-- Location: FF_X50_Y40_N29
\inst13|inst14|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|data_out[5]~0_combout\,
	ena => \inst13|inst14|data_out[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_out\(5));

-- Location: LCCOMB_X51_Y43_N22
\inst13|inst1[5]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[5]~3_combout\ = (\inst13|inst7~combout\ & (\inst13|inst14|data_out\(5) & ((\inst4|COUNT\(5)) # (!\inst4|IO_OUT~combout\)))) # (!\inst13|inst7~combout\ & (((\inst4|COUNT\(5))) # (!\inst4|IO_OUT~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7~combout\,
	datab => \inst4|IO_OUT~combout\,
	datac => \inst4|COUNT\(5),
	datad => \inst13|inst14|data_out\(5),
	combout => \inst13|inst1[5]~3_combout\);

-- Location: LCCOMB_X51_Y43_N30
\inst13|inst1[5]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[5]~7_combout\ = ((\inst13|inst1[5]~2_combout\ & (\inst13|inst1[5]~4_combout\ & \inst13|inst1[5]~3_combout\))) # (!\inst13|inst1[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[5]~2_combout\,
	datab => \inst13|inst1[5]~4_combout\,
	datac => \inst13|inst1[5]~3_combout\,
	datad => \inst13|inst1[5]~6_combout\,
	combout => \inst13|inst1[5]~7_combout\);

-- Location: LCCOMB_X57_Y40_N22
\inst13|inst14|addr_in[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|addr_in[5]~feeder_combout\ = \inst13|inst1[5]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst1[5]~7_combout\,
	combout => \inst13|inst14|addr_in[5]~feeder_combout\);

-- Location: FF_X57_Y40_N23
\inst13|inst14|addr_in[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst12~clkctrl_outclk\,
	d => \inst13|inst14|addr_in[5]~feeder_combout\,
	ena => \inst13|inst14|ALT_INV_data_out[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|addr_in\(5));

-- Location: LCCOMB_X57_Y40_N30
\inst13|inst14|tx_addr[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|tx_addr[5]~feeder_combout\ = \inst13|inst14|addr_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst14|addr_in\(5),
	combout => \inst13|inst14|tx_addr[5]~feeder_combout\);

-- Location: FF_X57_Y40_N31
\inst13|inst14|tx_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|tx_addr[5]~feeder_combout\,
	ena => \inst13|inst14|tx_addr[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|tx_addr\(5));

-- Location: LCCOMB_X50_Y40_N4
\inst13|inst14|data_out[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_out[6]~8_combout\ = (\inst13|inst|data_rd\(6) & (\inst13|inst14|state.Rx1~q\ & (!\inst13|inst|busy~q\ & \inst13|inst14|prev_busy~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|data_rd\(6),
	datab => \inst13|inst14|state.Rx1~q\,
	datac => \inst13|inst|busy~q\,
	datad => \inst13|inst14|prev_busy~q\,
	combout => \inst13|inst14|data_out[6]~8_combout\);

-- Location: FF_X50_Y40_N5
\inst13|inst14|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|data_out[6]~8_combout\,
	ena => \inst13|inst14|data_out[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_out\(6));

-- Location: LCCOMB_X51_Y44_N26
\inst13|inst1[6]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[6]~25_combout\ = (\inst4|IO_OUT~combout\ & (\inst4|COUNT\(6) & ((\inst13|inst14|data_out\(6)) # (!\inst13|inst7~combout\)))) # (!\inst4|IO_OUT~combout\ & (((\inst13|inst14|data_out\(6))) # (!\inst13|inst7~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|IO_OUT~combout\,
	datab => \inst13|inst7~combout\,
	datac => \inst4|COUNT\(6),
	datad => \inst13|inst14|data_out\(6),
	combout => \inst13|inst1[6]~25_combout\);

-- Location: IOIBUF_X54_Y54_N15
\SW[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: FF_X51_Y47_N7
\inst7|B_DI[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SWITCH_EN~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|B_DI\(6));

-- Location: LCCOMB_X51_Y44_N16
\inst13|inst1[6]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[6]~26_combout\ = (\inst|IO_WRITE_int~q\ & (\inst|AC\(6) & ((\inst7|B_DI\(6)) # (!\inst3|SWITCH_EN~combout\)))) # (!\inst|IO_WRITE_int~q\ & (((\inst7|B_DI\(6)) # (!\inst3|SWITCH_EN~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IO_WRITE_int~q\,
	datab => \inst|AC\(6),
	datac => \inst3|SWITCH_EN~combout\,
	datad => \inst7|B_DI\(6),
	combout => \inst13|inst1[6]~26_combout\);

-- Location: LCCOMB_X51_Y44_N22
\inst13|inst1[6]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[6]~27_combout\ = ((\inst13|inst1[6]~25_combout\ & (\inst13|inst1[5]~2_combout\ & \inst13|inst1[6]~26_combout\))) # (!\inst13|inst1[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[6]~25_combout\,
	datab => \inst13|inst1[5]~2_combout\,
	datac => \inst13|inst1[5]~6_combout\,
	datad => \inst13|inst1[6]~26_combout\,
	combout => \inst13|inst1[6]~27_combout\);

-- Location: LCCOMB_X57_Y40_N24
\inst13|inst14|addr_in[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|addr_in[6]~feeder_combout\ = \inst13|inst1[6]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst1[6]~27_combout\,
	combout => \inst13|inst14|addr_in[6]~feeder_combout\);

-- Location: FF_X57_Y40_N25
\inst13|inst14|addr_in[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst12~clkctrl_outclk\,
	d => \inst13|inst14|addr_in[6]~feeder_combout\,
	ena => \inst13|inst14|ALT_INV_data_out[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|addr_in\(6));

-- Location: LCCOMB_X57_Y40_N8
\inst13|inst14|tx_addr[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|tx_addr[6]~feeder_combout\ = \inst13|inst14|addr_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst14|addr_in\(6),
	combout => \inst13|inst14|tx_addr[6]~feeder_combout\);

-- Location: FF_X57_Y40_N9
\inst13|inst14|tx_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|tx_addr[6]~feeder_combout\,
	ena => \inst13|inst14|tx_addr[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|tx_addr\(6));

-- Location: FF_X56_Y40_N27
\inst13|inst|addr_rw[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	asdata => \inst13|inst14|tx_addr\(5),
	sload => VCC,
	ena => \inst13|inst|addr_rw[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|addr_rw\(5));

-- Location: FF_X58_Y40_N21
\inst13|inst|addr_rw[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	asdata => \inst13|inst14|tx_addr\(6),
	sload => VCC,
	ena => \inst13|inst|addr_rw[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|addr_rw\(6));

-- Location: LCCOMB_X56_Y40_N26
\inst13|inst|process_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|process_1~2_combout\ = (\inst13|inst14|tx_addr\(5) & (\inst13|inst|addr_rw\(5) & (\inst13|inst14|tx_addr\(6) $ (!\inst13|inst|addr_rw\(6))))) # (!\inst13|inst14|tx_addr\(5) & (!\inst13|inst|addr_rw\(5) & (\inst13|inst14|tx_addr\(6) $ 
-- (!\inst13|inst|addr_rw\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|tx_addr\(5),
	datab => \inst13|inst14|tx_addr\(6),
	datac => \inst13|inst|addr_rw\(5),
	datad => \inst13|inst|addr_rw\(6),
	combout => \inst13|inst|process_1~2_combout\);

-- Location: LCCOMB_X51_Y44_N8
\inst13|inst1[7]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[7]~30_combout\ = ((\inst13|inst1[7]~28_combout\ & (\inst13|inst1[5]~2_combout\ & \inst13|inst1[7]~29_combout\))) # (!\inst13|inst1[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[7]~28_combout\,
	datab => \inst13|inst1[5]~2_combout\,
	datac => \inst13|inst1[5]~6_combout\,
	datad => \inst13|inst1[7]~29_combout\,
	combout => \inst13|inst1[7]~30_combout\);

-- Location: FF_X57_Y40_N1
\inst13|inst14|addr_in[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst12~clkctrl_outclk\,
	asdata => \inst13|inst1[7]~30_combout\,
	sload => VCC,
	ena => \inst13|inst14|ALT_INV_data_out[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|addr_in\(7));

-- Location: LCCOMB_X57_Y40_N20
\inst13|inst14|tx_addr[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|tx_addr[7]~feeder_combout\ = \inst13|inst14|addr_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst14|addr_in\(7),
	combout => \inst13|inst14|tx_addr[7]~feeder_combout\);

-- Location: FF_X57_Y40_N21
\inst13|inst14|tx_addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|tx_addr[7]~feeder_combout\,
	ena => \inst13|inst14|tx_addr[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|tx_addr\(7));

-- Location: FF_X56_Y40_N17
\inst13|inst|addr_rw[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	asdata => \inst13|inst14|tx_addr\(7),
	sload => VCC,
	ena => \inst13|inst|addr_rw[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|addr_rw\(7));

-- Location: LCCOMB_X56_Y40_N16
\inst13|inst|process_1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|process_1~3_combout\ = (\inst13|inst14|comm_en~q\ & (\inst13|inst14|tx_addr\(7) $ (!\inst13|inst|addr_rw\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst14|tx_addr\(7),
	datac => \inst13|inst|addr_rw\(7),
	datad => \inst13|inst14|comm_en~q\,
	combout => \inst13|inst|process_1~3_combout\);

-- Location: LCCOMB_X56_Y40_N6
\inst13|inst|process_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|process_1~4_combout\ = (\inst13|inst|process_1~0_combout\ & (\inst13|inst|process_1~1_combout\ & (\inst13|inst|process_1~2_combout\ & \inst13|inst|process_1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|process_1~0_combout\,
	datab => \inst13|inst|process_1~1_combout\,
	datac => \inst13|inst|process_1~2_combout\,
	datad => \inst13|inst|process_1~3_combout\,
	combout => \inst13|inst|process_1~4_combout\);

-- Location: LCCOMB_X54_Y40_N28
\inst13|inst|Selector20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector20~0_combout\ = (\inst13|inst14|rnw~q\ & (\inst13|inst|state.slv_ack2~q\ & ((!\inst13|inst|ack_error~q\)))) # (!\inst13|inst14|rnw~q\ & (((\inst13|inst|state.mstr_ack~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|state.slv_ack2~q\,
	datab => \inst13|inst|state.mstr_ack~q\,
	datac => \inst13|inst|ack_error~q\,
	datad => \inst13|inst14|rnw~q\,
	combout => \inst13|inst|Selector20~0_combout\);

-- Location: LCCOMB_X55_Y40_N20
\inst13|inst|Selector20~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector20~1_combout\ = (\inst13|inst|process_1~4_combout\ & \inst13|inst|Selector20~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|process_1~4_combout\,
	datad => \inst13|inst|Selector20~0_combout\,
	combout => \inst13|inst|Selector20~1_combout\);

-- Location: FF_X55_Y40_N21
\inst13|inst|state.restart\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	d => \inst13|inst|Selector20~1_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|state.restart~q\);

-- Location: LCCOMB_X54_Y40_N26
\inst13|inst|Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector19~0_combout\ = (\inst13|inst|state.restart~q\) # ((!\inst13|inst|state.ready~q\ & \inst13|inst14|comm_en~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst|state.restart~q\,
	datac => \inst13|inst|state.ready~q\,
	datad => \inst13|inst14|comm_en~q\,
	combout => \inst13|inst|Selector19~0_combout\);

-- Location: FF_X54_Y40_N27
\inst13|inst|state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	d => \inst13|inst|Selector19~0_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|state.start~q\);

-- Location: LCCOMB_X54_Y41_N10
\inst13|inst|Selector29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector29~0_combout\ = (\GSENSOR_SDI~input_o\ & ((\inst13|inst|state.slv_ack2~q\) # ((\inst13|inst|state.slv_ack1~q\)))) # (!\GSENSOR_SDI~input_o\ & (\inst13|inst|ack_error~q\ & ((\inst13|inst|state.slv_ack2~q\) # 
-- (\inst13|inst|state.slv_ack1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GSENSOR_SDI~input_o\,
	datab => \inst13|inst|state.slv_ack2~q\,
	datac => \inst13|inst|ack_error~q\,
	datad => \inst13|inst|state.slv_ack1~q\,
	combout => \inst13|inst|Selector29~0_combout\);

-- Location: LCCOMB_X55_Y41_N30
\inst13|inst|Selector29~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector29~1_combout\ = (\inst13|inst|Selector29~0_combout\) # ((\inst13|inst|ack_error~q\ & ((\inst13|inst|state.rd~q\) # (!\inst13|inst|state.start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|state.rd~q\,
	datab => \inst13|inst|state.start~q\,
	datac => \inst13|inst|ack_error~q\,
	datad => \inst13|inst|Selector29~0_combout\,
	combout => \inst13|inst|Selector29~1_combout\);

-- Location: FF_X55_Y41_N31
\inst13|inst|ack_error\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|ALT_INV_data_clk~clkctrl_outclk\,
	d => \inst13|inst|Selector29~1_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|ack_error~q\);

-- Location: LCCOMB_X55_Y40_N14
\inst13|inst|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector0~1_combout\ = (!\inst13|inst|state.restart~q\ & (((!\inst13|inst|ack_error~q\ & \inst13|inst|process_1~4_combout\)) # (!\inst13|inst|state.slv_ack2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|ack_error~q\,
	datab => \inst13|inst|state.restart~q\,
	datac => \inst13|inst|state.slv_ack2~q\,
	datad => \inst13|inst|process_1~4_combout\,
	combout => \inst13|inst|Selector0~1_combout\);

-- Location: LCCOMB_X54_Y40_N12
\inst13|inst|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector0~0_combout\ = (\inst13|inst|state.command~q\) # ((\inst13|inst|state.slv_ack1~q\) # ((!\inst13|inst14|comm_en~q\ & \inst13|inst|state.mstr_ack~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|state.command~q\,
	datab => \inst13|inst14|comm_en~q\,
	datac => \inst13|inst|state.slv_ack1~q\,
	datad => \inst13|inst|state.mstr_ack~q\,
	combout => \inst13|inst|Selector0~0_combout\);

-- Location: LCCOMB_X54_Y40_N10
\inst13|inst|Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector0~2_combout\ = (\inst13|inst|busy~q\ & ((\inst13|inst|Selector0~0_combout\) # (!\inst13|inst|Selector0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst|busy~q\,
	datac => \inst13|inst|Selector0~1_combout\,
	datad => \inst13|inst|Selector0~0_combout\,
	combout => \inst13|inst|Selector0~2_combout\);

-- Location: LCCOMB_X54_Y40_N0
\inst13|inst|WideOr3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|WideOr3~0_combout\ = (!\inst13|inst|state.start~q\ & (!\inst13|inst|state.rd~q\ & !\inst13|inst|state.wr~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|state.start~q\,
	datac => \inst13|inst|state.rd~q\,
	datad => \inst13|inst|state.wr~q\,
	combout => \inst13|inst|WideOr3~0_combout\);

-- Location: LCCOMB_X54_Y40_N8
\inst13|inst|Selector0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector0~3_combout\ = (\inst13|inst|Selector0~2_combout\) # (((\inst13|inst14|comm_en~q\ & !\inst13|inst|state.ready~q\)) # (!\inst13|inst|WideOr3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|Selector0~2_combout\,
	datab => \inst13|inst14|comm_en~q\,
	datac => \inst13|inst|state.ready~q\,
	datad => \inst13|inst|WideOr3~0_combout\,
	combout => \inst13|inst|Selector0~3_combout\);

-- Location: FF_X54_Y40_N9
\inst13|inst|busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	d => \inst13|inst|Selector0~3_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|busy~q\);

-- Location: LCCOMB_X51_Y40_N0
\inst13|inst14|prev_busy~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|prev_busy~feeder_combout\ = \inst13|inst|busy~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst|busy~q\,
	combout => \inst13|inst14|prev_busy~feeder_combout\);

-- Location: FF_X51_Y40_N1
\inst13|inst14|prev_busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|prev_busy~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|prev_busy~q\);

-- Location: LCCOMB_X52_Y41_N18
\inst13|inst|Decoder0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Decoder0~7_combout\ = (!\inst13|inst|bit_cnt\(1) & (!\inst13|inst|bit_cnt\(2) & (\inst13|inst|Decoder0~0_combout\ & !\inst13|inst|bit_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|bit_cnt\(1),
	datab => \inst13|inst|bit_cnt\(2),
	datac => \inst13|inst|Decoder0~0_combout\,
	datad => \inst13|inst|bit_cnt\(0),
	combout => \inst13|inst|Decoder0~7_combout\);

-- Location: LCCOMB_X51_Y41_N18
\inst13|inst|data_rx[7]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|data_rx[7]~8_combout\ = (\inst13|inst|Decoder0~7_combout\ & (\GSENSOR_SDI~input_o\)) # (!\inst13|inst|Decoder0~7_combout\ & ((\inst13|inst|data_rx\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GSENSOR_SDI~input_o\,
	datac => \inst13|inst|data_rx\(7),
	datad => \inst13|inst|Decoder0~7_combout\,
	combout => \inst13|inst|data_rx[7]~8_combout\);

-- Location: FF_X51_Y41_N19
\inst13|inst|data_rx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|ALT_INV_data_clk~clkctrl_outclk\,
	d => \inst13|inst|data_rx[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_rx\(7));

-- Location: LCCOMB_X51_Y41_N26
\inst13|inst|data_rd[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|data_rd[7]~feeder_combout\ = \inst13|inst|data_rx\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst|data_rx\(7),
	combout => \inst13|inst|data_rd[7]~feeder_combout\);

-- Location: FF_X51_Y41_N27
\inst13|inst|data_rd[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	d => \inst13|inst|data_rd[7]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	ena => \inst13|inst|state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_rd\(7));

-- Location: LCCOMB_X50_Y40_N18
\inst13|inst14|data_out[7]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_out[7]~9_combout\ = (\inst13|inst14|prev_busy~q\ & (!\inst13|inst|busy~q\ & (\inst13|inst|data_rd\(7) & \inst13|inst14|state.Rx1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|prev_busy~q\,
	datab => \inst13|inst|busy~q\,
	datac => \inst13|inst|data_rd\(7),
	datad => \inst13|inst14|state.Rx1~q\,
	combout => \inst13|inst14|data_out[7]~9_combout\);

-- Location: FF_X50_Y40_N19
\inst13|inst14|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|data_out[7]~9_combout\,
	ena => \inst13|inst14|data_out[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_out\(7));

-- Location: LCCOMB_X51_Y44_N14
\inst13|inst1[7]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[7]~28_combout\ = (\inst4|IO_OUT~combout\ & (\inst4|COUNT\(7) & ((\inst13|inst14|data_out\(7)) # (!\inst13|inst7~combout\)))) # (!\inst4|IO_OUT~combout\ & (((\inst13|inst14|data_out\(7))) # (!\inst13|inst7~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|IO_OUT~combout\,
	datab => \inst13|inst7~combout\,
	datac => \inst4|COUNT\(7),
	datad => \inst13|inst14|data_out\(7),
	combout => \inst13|inst1[7]~28_combout\);

-- Location: LCCOMB_X52_Y44_N0
\inst|Selector20~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector20~6_combout\ = (\inst13|inst1[5]~2_combout\ & (\inst13|inst1[7]~29_combout\ & \inst13|inst1[7]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst1[5]~2_combout\,
	datac => \inst13|inst1[7]~29_combout\,
	datad => \inst13|inst1[7]~28_combout\,
	combout => \inst|Selector20~6_combout\);

-- Location: LCCOMB_X52_Y44_N2
\inst|Selector20~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector20~7_combout\ = (\inst|Selector20~5_combout\) # ((\inst|state.ex_in2~q\ & ((\inst|Selector20~6_combout\) # (!\inst13|inst1[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_in2~q\,
	datab => \inst13|inst1[5]~6_combout\,
	datac => \inst|Selector20~5_combout\,
	datad => \inst|Selector20~6_combout\,
	combout => \inst|Selector20~7_combout\);

-- Location: LCCOMB_X52_Y44_N28
\inst|Selector20~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector20~8_combout\ = (\inst|Selector20~4_combout\) # ((\inst|Selector20~2_combout\) # ((\inst|Selector20~1_combout\) # (\inst|Selector20~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector20~4_combout\,
	datab => \inst|Selector20~2_combout\,
	datac => \inst|Selector20~1_combout\,
	datad => \inst|Selector20~7_combout\,
	combout => \inst|Selector20~8_combout\);

-- Location: FF_X52_Y44_N29
\inst|AC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector20~8_combout\,
	ena => \inst13|inst14|ALT_INV_data_out[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|AC\(7));

-- Location: LCCOMB_X47_Y45_N20
\inst|shifter|auto_generated|sbit_w[23]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[23]~14_combout\ = (\inst|IR\(0) & ((\inst|IR\(4) & ((\inst|AC\(8)))) # (!\inst|IR\(4) & (\inst|AC\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(6),
	datab => \inst|AC\(8),
	datac => \inst|IR\(0),
	datad => \inst|IR\(4),
	combout => \inst|shifter|auto_generated|sbit_w[23]~14_combout\);

-- Location: LCCOMB_X47_Y45_N30
\inst|shifter|auto_generated|sbit_w[23]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[23]~15_combout\ = (\inst|shifter|auto_generated|sbit_w[23]~14_combout\) # ((\inst|AC\(7) & !\inst|IR\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|AC\(7),
	datac => \inst|IR\(0),
	datad => \inst|shifter|auto_generated|sbit_w[23]~14_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[23]~15_combout\);

-- Location: LCCOMB_X47_Y44_N2
\inst|shifter|auto_generated|sbit_w[39]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[39]~58_combout\ = (\inst3|TIMER_EN~0_combout\ & ((\inst|shifter|auto_generated|sbit_w[21]~28_combout\) # ((\inst3|I2C_RDY_EN~0_combout\ & \inst|shifter|auto_generated|sbit_w[25]~18_combout\)))) # 
-- (!\inst3|TIMER_EN~0_combout\ & (((\inst3|I2C_RDY_EN~0_combout\ & \inst|shifter|auto_generated|sbit_w[25]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|TIMER_EN~0_combout\,
	datab => \inst|shifter|auto_generated|sbit_w[21]~28_combout\,
	datac => \inst3|I2C_RDY_EN~0_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[25]~18_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[39]~58_combout\);

-- Location: LCCOMB_X47_Y44_N20
\inst|shifter|auto_generated|sbit_w[39]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[39]~59_combout\ = (\inst|shifter|auto_generated|sbit_w[39]~58_combout\) # ((!\inst|IR\(1) & \inst|shifter|auto_generated|sbit_w[23]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(1),
	datac => \inst|shifter|auto_generated|sbit_w[23]~15_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[39]~58_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[39]~59_combout\);

-- Location: LCCOMB_X50_Y45_N8
\inst|shifter|auto_generated|sbit_w[49]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[49]~57_combout\ = (\inst|IR\(2) & \inst|IR\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|IR\(2),
	datad => \inst|IR\(4),
	combout => \inst|shifter|auto_generated|sbit_w[49]~57_combout\);

-- Location: LCCOMB_X52_Y43_N30
\inst|Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector16~0_combout\ = (!\inst|IR\(2) & \inst|shifter|auto_generated|sbit_w[35]~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|IR\(2),
	datad => \inst|shifter|auto_generated|sbit_w[35]~56_combout\,
	combout => \inst|Selector16~0_combout\);

-- Location: LCCOMB_X50_Y45_N30
\inst|Selector24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector24~0_combout\ = (\inst|Selector20~0_combout\ & ((\inst|Selector16~0_combout\) # ((\inst|shifter|auto_generated|sbit_w[39]~59_combout\ & \inst|shifter|auto_generated|sbit_w[49]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[39]~59_combout\,
	datab => \inst|shifter|auto_generated|sbit_w[49]~57_combout\,
	datac => \inst|Selector16~0_combout\,
	datad => \inst|Selector20~0_combout\,
	combout => \inst|Selector24~0_combout\);

-- Location: LCCOMB_X51_Y44_N10
\inst|shifter|auto_generated|sbit_w[59]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[59]~60_combout\ = (\inst|IR\(2) & ((\inst|IR\(4) & (\inst|AC\(15))) # (!\inst|IR\(4) & ((\inst|shifter|auto_generated|sbit_w[39]~59_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(15),
	datab => \inst|IR\(4),
	datac => \inst|shifter|auto_generated|sbit_w[39]~59_combout\,
	datad => \inst|IR\(2),
	combout => \inst|shifter|auto_generated|sbit_w[59]~60_combout\);

-- Location: LCCOMB_X55_Y42_N0
\inst|Selector22~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector22~2_combout\ = (\inst|state.ex_shift~q\ & (\inst|IR\(4) & \inst|IR\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_shift~q\,
	datab => \inst|IR\(4),
	datad => \inst|IR\(3),
	combout => \inst|Selector22~2_combout\);

-- Location: LCCOMB_X47_Y44_N22
\inst|shifter|auto_generated|sbit_w[43]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[43]~61_combout\ = (\inst|shifter|auto_generated|sbit_w[29]~9_combout\ & ((\inst3|I2C_RDY_EN~0_combout\) # ((\inst3|TIMER_EN~0_combout\ & \inst|shifter|auto_generated|sbit_w[25]~18_combout\)))) # 
-- (!\inst|shifter|auto_generated|sbit_w[29]~9_combout\ & (\inst3|TIMER_EN~0_combout\ & ((\inst|shifter|auto_generated|sbit_w[25]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[29]~9_combout\,
	datab => \inst3|TIMER_EN~0_combout\,
	datac => \inst3|I2C_RDY_EN~0_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[25]~18_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[43]~61_combout\);

-- Location: LCCOMB_X49_Y44_N6
\inst|shifter|auto_generated|sbit_w[43]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[43]~62_combout\ = (\inst|shifter|auto_generated|sbit_w[43]~61_combout\) # ((!\inst|IR\(1) & \inst|shifter|auto_generated|sbit_w[27]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[43]~61_combout\,
	datac => \inst|IR\(1),
	datad => \inst|shifter|auto_generated|sbit_w[27]~12_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[43]~62_combout\);

-- Location: LCCOMB_X52_Y43_N8
\inst|Selector24~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector24~6_combout\ = (\inst|Selector22~2_combout\ & ((\inst|shifter|auto_generated|sbit_w[59]~60_combout\) # ((!\inst|IR\(2) & \inst|shifter|auto_generated|sbit_w[43]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(2),
	datab => \inst|shifter|auto_generated|sbit_w[59]~60_combout\,
	datac => \inst|Selector22~2_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[43]~62_combout\,
	combout => \inst|Selector24~6_combout\);

-- Location: LCCOMB_X50_Y44_N28
\inst|Selector24~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector24~5_combout\ = (\inst13|inst1[5]~2_combout\ & (\inst13|inst1[3]~12_combout\ & \inst13|inst1[3]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst1[5]~2_combout\,
	datac => \inst13|inst1[3]~12_combout\,
	datad => \inst13|inst1[3]~11_combout\,
	combout => \inst|Selector24~5_combout\);

-- Location: LCCOMB_X50_Y44_N18
\inst|Selector24~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector24~7_combout\ = (\inst|Selector24~6_combout\) # ((\inst|state.ex_in2~q\ & ((\inst|Selector24~5_combout\) # (!\inst13|inst1[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector24~6_combout\,
	datab => \inst|state.ex_in2~q\,
	datac => \inst13|inst1[5]~6_combout\,
	datad => \inst|Selector24~5_combout\,
	combout => \inst|Selector24~7_combout\);

-- Location: LCCOMB_X50_Y44_N30
\inst|Selector24~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector24~8_combout\ = (\inst|Selector24~4_combout\) # ((\inst|Selector24~1_combout\) # ((\inst|Selector24~0_combout\) # (\inst|Selector24~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector24~4_combout\,
	datab => \inst|Selector24~1_combout\,
	datac => \inst|Selector24~0_combout\,
	datad => \inst|Selector24~7_combout\,
	combout => \inst|Selector24~8_combout\);

-- Location: FF_X50_Y44_N31
\inst|AC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector24~8_combout\,
	ena => \inst13|inst14|ALT_INV_data_out[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|AC\(3));

-- Location: LCCOMB_X49_Y46_N30
\inst|Add1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~9_combout\ = (\inst|AC\(3) & ((\inst|state.ex_add~q\) # ((\inst|state.ex_addi~q\) # (\inst|state.ex_sub~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_add~q\,
	datab => \inst|AC\(3),
	datac => \inst|state.ex_addi~q\,
	datad => \inst|state.ex_sub~q\,
	combout => \inst|Add1~9_combout\);

-- Location: LCCOMB_X51_Y47_N26
\inst|Add1~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~29_combout\ = (\inst|Add1~6_combout\ & ((\inst|Add1~5_combout\ & (\inst|Add1~28\ & VCC)) # (!\inst|Add1~5_combout\ & (!\inst|Add1~28\)))) # (!\inst|Add1~6_combout\ & ((\inst|Add1~5_combout\ & (!\inst|Add1~28\)) # (!\inst|Add1~5_combout\ & 
-- ((\inst|Add1~28\) # (GND)))))
-- \inst|Add1~30\ = CARRY((\inst|Add1~6_combout\ & (!\inst|Add1~5_combout\ & !\inst|Add1~28\)) # (!\inst|Add1~6_combout\ & ((!\inst|Add1~28\) # (!\inst|Add1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~6_combout\,
	datab => \inst|Add1~5_combout\,
	datad => VCC,
	cin => \inst|Add1~28\,
	combout => \inst|Add1~29_combout\,
	cout => \inst|Add1~30\);

-- Location: LCCOMB_X50_Y47_N16
\inst|Selector23~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector23~6_combout\ = (\inst|Selector22~6_combout\ & ((\inst|altsyncram_component|auto_generated|q_a\(4)) # ((\inst|state.ex_loadi~q\ & \inst|IR\(4))))) # (!\inst|Selector22~6_combout\ & (\inst|state.ex_loadi~q\ & ((\inst|IR\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector22~6_combout\,
	datab => \inst|state.ex_loadi~q\,
	datac => \inst|altsyncram_component|auto_generated|q_a\(4),
	datad => \inst|IR\(4),
	combout => \inst|Selector23~6_combout\);

-- Location: LCCOMB_X50_Y47_N10
\inst|Selector23~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector23~7_combout\ = (\inst|Selector23~5_combout\) # ((\inst|Selector23~6_combout\) # ((\inst|AC[3]~0_combout\ & \inst|Add1~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC[3]~0_combout\,
	datab => \inst|Selector23~5_combout\,
	datac => \inst|Add1~29_combout\,
	datad => \inst|Selector23~6_combout\,
	combout => \inst|Selector23~7_combout\);

-- Location: LCCOMB_X50_Y47_N14
\inst|Selector23~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector23~4_combout\ = (\inst|AC\(4) & (((\inst|state.ex_and~q\ & \inst|altsyncram_component|auto_generated|q_a\(4))) # (!\inst|Selector22~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(4),
	datab => \inst|Selector22~3_combout\,
	datac => \inst|state.ex_and~q\,
	datad => \inst|altsyncram_component|auto_generated|q_a\(4),
	combout => \inst|Selector23~4_combout\);

-- Location: LCCOMB_X50_Y42_N18
\inst|Selector23~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector23~3_combout\ = (\inst|Selector20~0_combout\ & ((\inst|shifter|auto_generated|sbit_w[52]~47_combout\) # ((!\inst|IR\(2) & \inst|shifter|auto_generated|sbit_w[36]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(2),
	datab => \inst|shifter|auto_generated|sbit_w[36]~53_combout\,
	datac => \inst|shifter|auto_generated|sbit_w[52]~47_combout\,
	datad => \inst|Selector20~0_combout\,
	combout => \inst|Selector23~3_combout\);

-- Location: LCCOMB_X50_Y42_N2
\inst|Selector23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector23~1_combout\ = (\inst|Selector22~2_combout\ & ((\inst|shifter|auto_generated|sbit_w[60]~38_combout\) # ((!\inst|IR\(2) & \inst|shifter|auto_generated|sbit_w[44]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(2),
	datab => \inst|shifter|auto_generated|sbit_w[60]~38_combout\,
	datac => \inst|Selector22~2_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[44]~44_combout\,
	combout => \inst|Selector23~1_combout\);

-- Location: LCCOMB_X50_Y44_N10
\inst|Selector23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector23~0_combout\ = (\inst13|inst1[4]~8_combout\ & (\inst13|inst1[5]~2_combout\ & \inst13|inst1[4]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst1[4]~8_combout\,
	datac => \inst13|inst1[5]~2_combout\,
	datad => \inst13|inst1[4]~9_combout\,
	combout => \inst|Selector23~0_combout\);

-- Location: LCCOMB_X50_Y44_N6
\inst|Selector23~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector23~2_combout\ = (\inst|Selector23~1_combout\) # ((\inst|state.ex_in2~q\ & ((\inst|Selector23~0_combout\) # (!\inst13|inst1[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector23~1_combout\,
	datab => \inst|state.ex_in2~q\,
	datac => \inst13|inst1[5]~6_combout\,
	datad => \inst|Selector23~0_combout\,
	combout => \inst|Selector23~2_combout\);

-- Location: LCCOMB_X50_Y44_N14
\inst|Selector23~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector23~8_combout\ = (\inst|Selector23~7_combout\) # ((\inst|Selector23~4_combout\) # ((\inst|Selector23~3_combout\) # (\inst|Selector23~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector23~7_combout\,
	datab => \inst|Selector23~4_combout\,
	datac => \inst|Selector23~3_combout\,
	datad => \inst|Selector23~2_combout\,
	combout => \inst|Selector23~8_combout\);

-- Location: FF_X50_Y44_N15
\inst|AC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector23~8_combout\,
	ena => \inst13|inst14|ALT_INV_data_out[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|AC\(4));

-- Location: LCCOMB_X51_Y47_N12
\inst|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~6_combout\ = (\inst|AC\(4) & ((\inst|state.ex_addi~q\) # ((\inst|state.ex_sub~q\) # (\inst|state.ex_add~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_addi~q\,
	datab => \inst|AC\(4),
	datac => \inst|state.ex_sub~q\,
	datad => \inst|state.ex_add~q\,
	combout => \inst|Add1~6_combout\);

-- Location: LCCOMB_X51_Y47_N28
\inst|Add1~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~31_combout\ = ((\inst|Add1~3_combout\ $ (\inst|Add1~2_combout\ $ (!\inst|Add1~30\)))) # (GND)
-- \inst|Add1~32\ = CARRY((\inst|Add1~3_combout\ & ((\inst|Add1~2_combout\) # (!\inst|Add1~30\))) # (!\inst|Add1~3_combout\ & (\inst|Add1~2_combout\ & !\inst|Add1~30\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~3_combout\,
	datab => \inst|Add1~2_combout\,
	datad => VCC,
	cin => \inst|Add1~30\,
	combout => \inst|Add1~31_combout\,
	cout => \inst|Add1~32\);

-- Location: LCCOMB_X51_Y44_N12
\inst|Selector21~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector21~5_combout\ = (\inst|Selector21~3_combout\) # ((\inst|Selector21~4_combout\) # ((\inst|Add1~36_combout\ & \inst|AC[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector21~3_combout\,
	datab => \inst|Selector21~4_combout\,
	datac => \inst|Add1~36_combout\,
	datad => \inst|AC[3]~0_combout\,
	combout => \inst|Selector21~5_combout\);

-- Location: LCCOMB_X52_Y43_N28
\inst|Selector21~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector21~2_combout\ = (\inst|AC\(6) & (((\inst|state.ex_and~q\ & \inst|altsyncram_component|auto_generated|q_a\(6))) # (!\inst|Selector22~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(6),
	datab => \inst|state.ex_and~q\,
	datac => \inst|altsyncram_component|auto_generated|q_a\(6),
	datad => \inst|Selector22~3_combout\,
	combout => \inst|Selector21~2_combout\);

-- Location: LCCOMB_X50_Y45_N20
\inst|Selector21~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector21~10_combout\ = (\inst|shifter|auto_generated|sbit_w[62]~78_combout\ & (\inst|IR\(4) & (\inst|state.ex_shift~q\ & \inst|IR\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[62]~78_combout\,
	datab => \inst|IR\(4),
	datac => \inst|state.ex_shift~q\,
	datad => \inst|IR\(3),
	combout => \inst|Selector21~10_combout\);

-- Location: LCCOMB_X50_Y45_N24
\inst|Selector21~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector21~6_combout\ = (\inst|Selector20~0_combout\ & ((\inst|shifter|auto_generated|sbit_w[54]~79_combout\) # ((!\inst|IR\(2) & \inst|shifter|auto_generated|sbit_w[38]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[54]~79_combout\,
	datab => \inst|IR\(2),
	datac => \inst|shifter|auto_generated|sbit_w[38]~67_combout\,
	datad => \inst|Selector20~0_combout\,
	combout => \inst|Selector21~6_combout\);

-- Location: LCCOMB_X51_Y44_N24
\inst|Selector21~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector21~7_combout\ = (\inst13|inst1[5]~2_combout\ & (\inst13|inst1[6]~25_combout\ & \inst13|inst1[6]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst1[5]~2_combout\,
	datac => \inst13|inst1[6]~25_combout\,
	datad => \inst13|inst1[6]~26_combout\,
	combout => \inst|Selector21~7_combout\);

-- Location: LCCOMB_X51_Y44_N18
\inst|Selector21~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector21~8_combout\ = (\inst|Selector21~6_combout\) # ((\inst|state.ex_in2~q\ & ((\inst|Selector21~7_combout\) # (!\inst13|inst1[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_in2~q\,
	datab => \inst|Selector21~6_combout\,
	datac => \inst13|inst1[5]~6_combout\,
	datad => \inst|Selector21~7_combout\,
	combout => \inst|Selector21~8_combout\);

-- Location: LCCOMB_X51_Y44_N0
\inst|Selector21~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector21~9_combout\ = (\inst|Selector21~5_combout\) # ((\inst|Selector21~2_combout\) # ((\inst|Selector21~10_combout\) # (\inst|Selector21~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector21~5_combout\,
	datab => \inst|Selector21~2_combout\,
	datac => \inst|Selector21~10_combout\,
	datad => \inst|Selector21~8_combout\,
	combout => \inst|Selector21~9_combout\);

-- Location: FF_X51_Y44_N1
\inst|AC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector21~9_combout\,
	ena => \inst13|inst14|ALT_INV_data_out[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|AC\(6));

-- Location: M9K_X53_Y47_N0
\inst|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000F0000FF22778ED049AC048E6AE6926E5C6EB0FB72FDDDCF3482B0E8898E3B5207A0460000151C41FC5F762C5D8C5DBC5CBC5D9C5C9C5E8C5DAC5CA",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "SquareWave.mif",
	init_file_layout => "port_a",
	logical_ram_name => "SCOMP:inst|altsyncram:altsyncram_component|altsyncram_2ur3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 11,
	port_b_data_width => 4,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst|MW~q\,
	portare => VCC,
	clk0 => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X50_Y47_N2
\inst|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~16_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(0) & (\inst|state.ex_add~q\ & !\inst|state.ex_sub~q\)) # (!\inst|altsyncram_component|auto_generated|q_a\(0) & ((\inst|state.ex_sub~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(0),
	datac => \inst|state.ex_add~q\,
	datad => \inst|state.ex_sub~q\,
	combout => \inst|Add1~16_combout\);

-- Location: LCCOMB_X50_Y47_N12
\inst|Add1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~17_combout\ = (\inst|Add1~1_combout\ & ((\inst|IR\(0)) # ((\inst|Add1~16_combout\ & \inst|WideOr3~2_combout\)))) # (!\inst|Add1~1_combout\ & (\inst|Add1~16_combout\ & ((\inst|WideOr3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~1_combout\,
	datab => \inst|Add1~16_combout\,
	datac => \inst|IR\(0),
	datad => \inst|WideOr3~2_combout\,
	combout => \inst|Add1~17_combout\);

-- Location: LCCOMB_X51_Y47_N0
\inst|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~18_combout\ = (\inst|AC\(0) & ((\inst|state.ex_addi~q\) # ((\inst|state.ex_sub~q\) # (\inst|state.ex_add~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_addi~q\,
	datab => \inst|AC\(0),
	datac => \inst|state.ex_sub~q\,
	datad => \inst|state.ex_add~q\,
	combout => \inst|Add1~18_combout\);

-- Location: LCCOMB_X51_Y47_N16
\inst|Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~20_cout\ = CARRY(\inst|state.ex_sub~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.ex_sub~q\,
	datad => VCC,
	cout => \inst|Add1~20_cout\);

-- Location: LCCOMB_X51_Y47_N18
\inst|Add1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~21_combout\ = (\inst|Add1~17_combout\ & ((\inst|Add1~18_combout\ & (\inst|Add1~20_cout\ & VCC)) # (!\inst|Add1~18_combout\ & (!\inst|Add1~20_cout\)))) # (!\inst|Add1~17_combout\ & ((\inst|Add1~18_combout\ & (!\inst|Add1~20_cout\)) # 
-- (!\inst|Add1~18_combout\ & ((\inst|Add1~20_cout\) # (GND)))))
-- \inst|Add1~22\ = CARRY((\inst|Add1~17_combout\ & (!\inst|Add1~18_combout\ & !\inst|Add1~20_cout\)) # (!\inst|Add1~17_combout\ & ((!\inst|Add1~20_cout\) # (!\inst|Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~17_combout\,
	datab => \inst|Add1~18_combout\,
	datad => VCC,
	cin => \inst|Add1~20_cout\,
	combout => \inst|Add1~21_combout\,
	cout => \inst|Add1~22\);

-- Location: LCCOMB_X51_Y47_N20
\inst|Add1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~23_combout\ = ((\inst|Add1~15_combout\ $ (\inst|Add1~14_combout\ $ (!\inst|Add1~22\)))) # (GND)
-- \inst|Add1~24\ = CARRY((\inst|Add1~15_combout\ & ((\inst|Add1~14_combout\) # (!\inst|Add1~22\))) # (!\inst|Add1~15_combout\ & (\inst|Add1~14_combout\ & !\inst|Add1~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~15_combout\,
	datab => \inst|Add1~14_combout\,
	datad => VCC,
	cin => \inst|Add1~22\,
	combout => \inst|Add1~23_combout\,
	cout => \inst|Add1~24\);

-- Location: LCCOMB_X52_Y44_N18
\inst|Selector25~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector25~4_combout\ = (\inst|Selector25~2_combout\) # ((\inst|Selector25~3_combout\) # ((\inst|Add1~25_combout\ & \inst|AC[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector25~2_combout\,
	datab => \inst|Selector25~3_combout\,
	datac => \inst|Add1~25_combout\,
	datad => \inst|AC[3]~0_combout\,
	combout => \inst|Selector25~4_combout\);

-- Location: LCCOMB_X50_Y45_N28
\inst|Selector17~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector17~2_combout\ = (\inst|shifter|auto_generated|sbit_w[34]~65_combout\ & !\inst|IR\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|shifter|auto_generated|sbit_w[34]~65_combout\,
	datad => \inst|IR\(2),
	combout => \inst|Selector17~2_combout\);

-- Location: LCCOMB_X50_Y45_N2
\inst|Selector25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector25~0_combout\ = (\inst|Selector20~0_combout\ & ((\inst|Selector17~2_combout\) # ((\inst|shifter|auto_generated|sbit_w[49]~57_combout\ & \inst|shifter|auto_generated|sbit_w[38]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector20~0_combout\,
	datab => \inst|shifter|auto_generated|sbit_w[49]~57_combout\,
	datac => \inst|shifter|auto_generated|sbit_w[38]~67_combout\,
	datad => \inst|Selector17~2_combout\,
	combout => \inst|Selector25~0_combout\);

-- Location: LCCOMB_X50_Y45_N14
\inst|Selector25~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector25~6_combout\ = (\inst|Selector22~2_combout\ & ((\inst|shifter|auto_generated|sbit_w[58]~69_combout\) # ((\inst|shifter|auto_generated|sbit_w[42]~71_combout\ & !\inst|IR\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector22~2_combout\,
	datab => \inst|shifter|auto_generated|sbit_w[42]~71_combout\,
	datac => \inst|IR\(2),
	datad => \inst|shifter|auto_generated|sbit_w[58]~69_combout\,
	combout => \inst|Selector25~6_combout\);

-- Location: LCCOMB_X54_Y44_N2
\inst|Selector25~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector25~5_combout\ = (\inst13|inst1[2]~15_combout\ & (\inst13|inst1[5]~2_combout\ & \inst13|inst1[2]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[2]~15_combout\,
	datac => \inst13|inst1[5]~2_combout\,
	datad => \inst13|inst1[2]~14_combout\,
	combout => \inst|Selector25~5_combout\);

-- Location: LCCOMB_X54_Y44_N24
\inst|Selector25~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector25~7_combout\ = (\inst|Selector25~6_combout\) # ((\inst|state.ex_in2~q\ & ((\inst|Selector25~5_combout\) # (!\inst13|inst1[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[5]~6_combout\,
	datab => \inst|state.ex_in2~q\,
	datac => \inst|Selector25~6_combout\,
	datad => \inst|Selector25~5_combout\,
	combout => \inst|Selector25~7_combout\);

-- Location: LCCOMB_X54_Y44_N4
\inst|Selector25~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector25~8_combout\ = (\inst|Selector25~1_combout\) # ((\inst|Selector25~4_combout\) # ((\inst|Selector25~0_combout\) # (\inst|Selector25~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector25~1_combout\,
	datab => \inst|Selector25~4_combout\,
	datac => \inst|Selector25~0_combout\,
	datad => \inst|Selector25~7_combout\,
	combout => \inst|Selector25~8_combout\);

-- Location: FF_X54_Y44_N5
\inst|AC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector25~8_combout\,
	ena => \inst13|inst14|ALT_INV_data_out[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|AC\(2));

-- Location: LCCOMB_X47_Y45_N4
\inst|shifter|auto_generated|sbit_w[17]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[17]~21_combout\ = (\inst|IR\(0) & ((\inst|IR\(4) & (\inst|AC\(2))) # (!\inst|IR\(4) & ((\inst|AC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(2),
	datab => \inst|IR\(4),
	datac => \inst|IR\(0),
	datad => \inst|AC\(0),
	combout => \inst|shifter|auto_generated|sbit_w[17]~21_combout\);

-- Location: LCCOMB_X47_Y44_N6
\inst|shifter|auto_generated|sbit_w[35]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[35]~55_combout\ = (\inst3|TIMER_EN~0_combout\ & ((\inst|shifter|auto_generated|sbit_w[17]~21_combout\) # ((\inst|AC\(1) & !\inst|IR\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[17]~21_combout\,
	datab => \inst|AC\(1),
	datac => \inst|IR\(0),
	datad => \inst3|TIMER_EN~0_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[35]~55_combout\);

-- Location: LCCOMB_X47_Y44_N16
\inst|shifter|auto_generated|sbit_w[35]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[35]~54_combout\ = (!\inst|IR\(1) & ((\inst|shifter|auto_generated|sbit_w[19]~24_combout\) # ((!\inst|IR\(0) & \inst|AC\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[19]~24_combout\,
	datab => \inst|IR\(0),
	datac => \inst|AC\(3),
	datad => \inst|IR\(1),
	combout => \inst|shifter|auto_generated|sbit_w[35]~54_combout\);

-- Location: LCCOMB_X47_Y44_N28
\inst|shifter|auto_generated|sbit_w[35]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[35]~56_combout\ = (\inst|shifter|auto_generated|sbit_w[35]~55_combout\) # ((\inst|shifter|auto_generated|sbit_w[35]~54_combout\) # ((\inst|shifter|auto_generated|sbit_w[21]~28_combout\ & \inst3|I2C_RDY_EN~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[35]~55_combout\,
	datab => \inst|shifter|auto_generated|sbit_w[21]~28_combout\,
	datac => \inst3|I2C_RDY_EN~0_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[35]~54_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[35]~56_combout\);

-- Location: LCCOMB_X52_Y42_N28
\inst|shifter|auto_generated|sbit_w[55]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[55]~80_combout\ = (\inst|IR\(2) & ((\inst|IR\(4) & ((\inst|shifter|auto_generated|sbit_w[43]~62_combout\))) # (!\inst|IR\(4) & (\inst|shifter|auto_generated|sbit_w[35]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[35]~56_combout\,
	datab => \inst|IR\(2),
	datac => \inst|shifter|auto_generated|sbit_w[43]~62_combout\,
	datad => \inst|IR\(4),
	combout => \inst|shifter|auto_generated|sbit_w[55]~80_combout\);

-- Location: LCCOMB_X47_Y42_N16
\inst|Selector12~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector12~5_combout\ = (\inst|Selector19~7_combout\ & ((\inst|shifter|auto_generated|sbit_w[55]~80_combout\) # ((!\inst|IR\(2) & \inst|shifter|auto_generated|sbit_w[39]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector19~7_combout\,
	datab => \inst|IR\(2),
	datac => \inst|shifter|auto_generated|sbit_w[55]~80_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[39]~59_combout\,
	combout => \inst|Selector12~5_combout\);

-- Location: LCCOMB_X49_Y45_N2
\inst|Selector12~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector12~6_combout\ = (\inst|IR\(0) & (\inst|AC\(14))) # (!\inst|IR\(0) & ((\inst|AC\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(14),
	datac => \inst|IR\(0),
	datad => \inst|AC\(15),
	combout => \inst|Selector12~6_combout\);

-- Location: LCCOMB_X49_Y45_N0
\inst|Selector12~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector12~7_combout\ = (\inst|IR\(1) & (\inst|shifter|auto_generated|sbit_w[29]~9_combout\)) # (!\inst|IR\(1) & ((\inst|Selector12~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[29]~9_combout\,
	datab => \inst|Selector12~6_combout\,
	datac => \inst|IR\(1),
	combout => \inst|Selector12~7_combout\);

-- Location: LCCOMB_X55_Y44_N18
\inst|Selector12~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector12~8_combout\ = (\inst|IR\(2) & ((\inst|shifter|auto_generated|sbit_w[43]~62_combout\))) # (!\inst|IR\(2) & (\inst|Selector12~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|IR\(2),
	datac => \inst|Selector12~7_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[43]~62_combout\,
	combout => \inst|Selector12~8_combout\);

-- Location: LCCOMB_X55_Y42_N18
\inst|Selector12~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector12~16_combout\ = (\inst|Selector12~8_combout\ & (!\inst|IR\(4) & (\inst|state.ex_shift~q\ & !\inst|IR\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector12~8_combout\,
	datab => \inst|IR\(4),
	datac => \inst|state.ex_shift~q\,
	datad => \inst|IR\(3),
	combout => \inst|Selector12~16_combout\);

-- Location: LCCOMB_X51_Y46_N18
\inst|Add1~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~80_combout\ = (\inst|AC\(15) & ((\inst|state.ex_sub~q\) # ((\inst|state.ex_addi~q\) # (\inst|state.ex_add~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_sub~q\,
	datab => \inst|AC\(15),
	datac => \inst|state.ex_addi~q\,
	datad => \inst|state.ex_add~q\,
	combout => \inst|Add1~80_combout\);

-- Location: LCCOMB_X52_Y46_N8
\inst|Add1~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~78_combout\ = (\inst|state.ex_sub~q\ & (!\inst|altsyncram_component|auto_generated|q_a\(15))) # (!\inst|state.ex_sub~q\ & (\inst|altsyncram_component|auto_generated|q_a\(15) & \inst|state.ex_add~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_sub~q\,
	datab => \inst|altsyncram_component|auto_generated|q_a\(15),
	datad => \inst|state.ex_add~q\,
	combout => \inst|Add1~78_combout\);

-- Location: LCCOMB_X52_Y46_N24
\inst|Add1~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~79_combout\ = (\inst|IR\(10) & ((\inst|Add1~1_combout\) # ((\inst|Add1~78_combout\ & \inst|WideOr3~2_combout\)))) # (!\inst|IR\(10) & (\inst|Add1~78_combout\ & ((\inst|WideOr3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(10),
	datab => \inst|Add1~78_combout\,
	datac => \inst|Add1~1_combout\,
	datad => \inst|WideOr3~2_combout\,
	combout => \inst|Add1~79_combout\);

-- Location: LCCOMB_X51_Y46_N16
\inst|Add1~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~81_combout\ = \inst|Add1~80_combout\ $ (\inst|Add1~77\ $ (!\inst|Add1~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add1~80_combout\,
	datad => \inst|Add1~79_combout\,
	cin => \inst|Add1~77\,
	combout => \inst|Add1~81_combout\);

-- Location: LCCOMB_X52_Y45_N4
\inst|Selector12~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector12~10_combout\ = (\inst|Selector22~6_combout\ & ((\inst|altsyncram_component|auto_generated|q_a\(15)) # ((\inst|IR\(10) & \inst|state.ex_loadi~q\)))) # (!\inst|Selector22~6_combout\ & (\inst|IR\(10) & (\inst|state.ex_loadi~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector22~6_combout\,
	datab => \inst|IR\(10),
	datac => \inst|state.ex_loadi~q\,
	datad => \inst|altsyncram_component|auto_generated|q_a\(15),
	combout => \inst|Selector12~10_combout\);

-- Location: LCCOMB_X52_Y45_N2
\inst|Selector12~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector12~9_combout\ = (\inst|state.ex_xor~q\ & (\inst|altsyncram_component|auto_generated|q_a\(15) $ (\inst|AC\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|altsyncram_component|auto_generated|q_a\(15),
	datac => \inst|AC\(15),
	datad => \inst|state.ex_xor~q\,
	combout => \inst|Selector12~9_combout\);

-- Location: LCCOMB_X52_Y45_N14
\inst|Selector12~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector12~11_combout\ = (\inst|Selector12~10_combout\) # ((\inst|Selector12~9_combout\) # ((\inst|AC[3]~0_combout\ & \inst|Add1~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC[3]~0_combout\,
	datab => \inst|Add1~81_combout\,
	datac => \inst|Selector12~10_combout\,
	datad => \inst|Selector12~9_combout\,
	combout => \inst|Selector12~11_combout\);

-- Location: LCCOMB_X50_Y41_N10
\inst|Selector12~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector12~12_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(15) & ((\inst|state.ex_and~q\) # ((\inst|IR\(4) & \inst|state.ex_shift~q\)))) # (!\inst|altsyncram_component|auto_generated|q_a\(15) & (\inst|IR\(4) & 
-- (\inst|state.ex_shift~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(15),
	datab => \inst|IR\(4),
	datac => \inst|state.ex_shift~q\,
	datad => \inst|state.ex_and~q\,
	combout => \inst|Selector12~12_combout\);

-- Location: LCCOMB_X55_Y42_N24
\inst|Selector12~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector12~13_combout\ = (\inst|Selector12~11_combout\) # ((\inst|AC\(15) & ((\inst|Selector12~12_combout\) # (!\inst|Selector22~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector22~3_combout\,
	datab => \inst|Selector12~11_combout\,
	datac => \inst|Selector12~12_combout\,
	datad => \inst|AC\(15),
	combout => \inst|Selector12~13_combout\);

-- Location: LCCOMB_X55_Y42_N4
\inst|Selector12~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector12~15_combout\ = (\inst|state.ex_in2~q\ & (((\inst|AC\(15)) # (!\inst13|inst1[5]~38_combout\)) # (!\inst|IO_WRITE_int~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_in2~q\,
	datab => \inst|IO_WRITE_int~q\,
	datac => \inst13|inst1[5]~38_combout\,
	datad => \inst|AC\(15),
	combout => \inst|Selector12~15_combout\);

-- Location: LCCOMB_X51_Y42_N28
\inst4|COUNT[15]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|COUNT[15]~43_combout\ = \inst4|COUNT[14]~42\ $ (!\inst4|COUNT\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst4|COUNT\(15),
	cin => \inst4|COUNT[14]~42\,
	combout => \inst4|COUNT[15]~43_combout\);

-- Location: FF_X51_Y42_N29
\inst4|COUNT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_10Hz~clkctrl_outclk\,
	d => \inst4|COUNT[15]~43_combout\,
	clrn => \inst4|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|COUNT\(15));

-- Location: LCCOMB_X50_Y40_N14
\inst13|inst14|data_out[15]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_out[15]~18_combout\ = (\inst13|inst14|state.Rx2~q\ & (\inst13|inst|data_rd\(7) & (!\inst13|inst|busy~q\ & \inst13|inst14|prev_busy~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|state.Rx2~q\,
	datab => \inst13|inst|data_rd\(7),
	datac => \inst13|inst|busy~q\,
	datad => \inst13|inst14|prev_busy~q\,
	combout => \inst13|inst14|data_out[15]~18_combout\);

-- Location: FF_X50_Y40_N15
\inst13|inst14|data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|data_out[15]~18_combout\,
	ena => \inst13|inst14|data_out[15]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_out\(15));

-- Location: LCCOMB_X54_Y42_N24
\inst13|inst1[15]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[15]~48_combout\ = (\inst4|IO_OUT~combout\ & (\inst4|COUNT\(15) & ((\inst13|inst14|data_out\(15)) # (!\inst13|inst7~combout\)))) # (!\inst4|IO_OUT~combout\ & (((\inst13|inst14|data_out\(15))) # (!\inst13|inst7~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|IO_OUT~combout\,
	datab => \inst13|inst7~combout\,
	datac => \inst4|COUNT\(15),
	datad => \inst13|inst14|data_out\(15),
	combout => \inst13|inst1[15]~48_combout\);

-- Location: LCCOMB_X55_Y42_N2
\inst|Selector12~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector12~4_combout\ = (\inst13|inst1[10]~5_combout\ & (\inst|Selector12~15_combout\ & ((\inst13|inst1[15]~48_combout\) # (!\inst13|inst1[5]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[10]~5_combout\,
	datab => \inst|Selector12~15_combout\,
	datac => \inst13|inst1[5]~38_combout\,
	datad => \inst13|inst1[15]~48_combout\,
	combout => \inst|Selector12~4_combout\);

-- Location: LCCOMB_X55_Y42_N20
\inst|Selector12~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector12~14_combout\ = (\inst|Selector12~5_combout\) # ((\inst|Selector12~16_combout\) # ((\inst|Selector12~13_combout\) # (\inst|Selector12~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector12~5_combout\,
	datab => \inst|Selector12~16_combout\,
	datac => \inst|Selector12~13_combout\,
	datad => \inst|Selector12~4_combout\,
	combout => \inst|Selector12~14_combout\);

-- Location: FF_X55_Y42_N21
\inst|AC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector12~14_combout\,
	ena => \inst13|inst14|ALT_INV_data_out[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|AC\(15));

-- Location: LCCOMB_X55_Y42_N28
\inst|Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector19~0_combout\ = (\inst|IR\(3) & (\inst|IR\(4) & (\inst|state.ex_shift~q\ & \inst|AC\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(3),
	datab => \inst|IR\(4),
	datac => \inst|state.ex_shift~q\,
	datad => \inst|AC\(15),
	combout => \inst|Selector19~0_combout\);

-- Location: LCCOMB_X52_Y45_N6
\inst|Selector18~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector18~4_combout\ = (\inst|Selector18~3_combout\) # ((\inst|Selector19~0_combout\) # ((\inst|AC[3]~0_combout\ & \inst|Add1~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC[3]~0_combout\,
	datab => \inst|Selector18~3_combout\,
	datac => \inst|Selector19~0_combout\,
	datad => \inst|Add1~51_combout\,
	combout => \inst|Selector18~4_combout\);

-- Location: LCCOMB_X52_Y45_N22
\inst|Selector18~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector18~2_combout\ = (\inst|AC\(9) & (((\inst|altsyncram_component|auto_generated|q_a\(9) & \inst|state.ex_and~q\)) # (!\inst|Selector22~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(9),
	datab => \inst|Selector22~3_combout\,
	datac => \inst|altsyncram_component|auto_generated|q_a\(9),
	datad => \inst|state.ex_and~q\,
	combout => \inst|Selector18~2_combout\);

-- Location: LCCOMB_X47_Y44_N0
\inst|shifter|auto_generated|sbit_w[49]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[49]~72_combout\ = (!\inst|IR\(2) & ((\inst|shifter|auto_generated|sbit_w[53]~22_combout\) # ((\inst|shifter|auto_generated|sbit_w[19]~25_combout\ & \inst3|I2C_RDY_EN~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(2),
	datab => \inst|shifter|auto_generated|sbit_w[19]~25_combout\,
	datac => \inst3|I2C_RDY_EN~0_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[53]~22_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[49]~72_combout\);

-- Location: LCCOMB_X50_Y45_N10
\inst|shifter|auto_generated|sbit_w[49]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[49]~84_combout\ = (\inst|shifter|auto_generated|sbit_w[49]~72_combout\) # ((\inst|shifter|auto_generated|sbit_w[37]~29_combout\ & (\inst|IR\(4) & \inst|IR\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[37]~29_combout\,
	datab => \inst|IR\(4),
	datac => \inst|IR\(2),
	datad => \inst|shifter|auto_generated|sbit_w[49]~72_combout\,
	combout => \inst|shifter|auto_generated|sbit_w[49]~84_combout\);

-- Location: LCCOMB_X52_Y45_N0
\inst|Selector18~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector18~5_combout\ = (\inst|Selector18~4_combout\) # ((\inst|Selector18~2_combout\) # ((\inst|Selector19~7_combout\ & \inst|shifter|auto_generated|sbit_w[49]~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector18~4_combout\,
	datab => \inst|Selector19~7_combout\,
	datac => \inst|Selector18~2_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[49]~84_combout\,
	combout => \inst|Selector18~5_combout\);

-- Location: LCCOMB_X49_Y44_N12
\inst|shifter|auto_generated|sbit_w[57]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[57]~73_combout\ = (\inst|IR\(2) & ((\inst|IR\(4) & ((\inst|shifter|auto_generated|sbit_w[45]~81_combout\))) # (!\inst|IR\(4) & (\inst|shifter|auto_generated|sbit_w[37]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[37]~29_combout\,
	datab => \inst|IR\(4),
	datac => \inst|shifter|auto_generated|sbit_w[45]~81_combout\,
	datad => \inst|IR\(2),
	combout => \inst|shifter|auto_generated|sbit_w[57]~73_combout\);

-- Location: LCCOMB_X49_Y44_N30
\inst|shifter|auto_generated|sbit_w[57]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[57]~74_combout\ = (\inst|shifter|auto_generated|sbit_w[57]~73_combout\) # ((\inst|shifter|auto_generated|sbit_w[41]~19_combout\ & !\inst|IR\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[57]~73_combout\,
	datab => \inst|shifter|auto_generated|sbit_w[41]~19_combout\,
	datad => \inst|IR\(2),
	combout => \inst|shifter|auto_generated|sbit_w[57]~74_combout\);

-- Location: LCCOMB_X49_Y43_N16
\inst|Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector18~0_combout\ = (\inst13|inst1[5]~6_combout\ & (((!\inst13|inst1[9]~34_combout\) # (!\inst13|inst1[9]~35_combout\)) # (!\inst13|inst1[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[5]~6_combout\,
	datab => \inst13|inst1[5]~2_combout\,
	datac => \inst13|inst1[9]~35_combout\,
	datad => \inst13|inst1[9]~34_combout\,
	combout => \inst|Selector18~0_combout\);

-- Location: LCCOMB_X49_Y43_N12
\inst|Selector18~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector18~1_combout\ = (\inst|state.ex_in2~q\ & (((\inst|Selector20~0_combout\ & \inst|shifter|auto_generated|sbit_w[57]~74_combout\)) # (!\inst|Selector18~0_combout\))) # (!\inst|state.ex_in2~q\ & (\inst|Selector20~0_combout\ & 
-- (\inst|shifter|auto_generated|sbit_w[57]~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_in2~q\,
	datab => \inst|Selector20~0_combout\,
	datac => \inst|shifter|auto_generated|sbit_w[57]~74_combout\,
	datad => \inst|Selector18~0_combout\,
	combout => \inst|Selector18~1_combout\);

-- Location: LCCOMB_X49_Y43_N28
\inst|Selector18~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector18~6_combout\ = (\inst|Selector18~5_combout\) # ((\inst|Selector18~1_combout\) # ((\inst|IR\(9) & \inst|state.ex_loadi~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector18~5_combout\,
	datab => \inst|IR\(9),
	datac => \inst|state.ex_loadi~q\,
	datad => \inst|Selector18~1_combout\,
	combout => \inst|Selector18~6_combout\);

-- Location: FF_X49_Y43_N29
\inst|AC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector18~6_combout\,
	ena => \inst13|inst14|ALT_INV_data_out[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|AC\(9));

-- Location: M9K_X53_Y46_N0
\inst|altsyncram_component|auto_generated|ram_block1a8\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000F000000111111111111222222233333444455566777001123345667012356712450880000000080F00000800000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "SquareWave.mif",
	init_file_layout => "port_a",
	logical_ram_name => "SCOMP:inst|altsyncram:altsyncram_component|altsyncram_2ur3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 11,
	port_b_data_width => 4,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst|MW~q\,
	portare => VCC,
	clk0 => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \inst|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: FF_X52_Y46_N7
\inst|IR[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|altsyncram_component|auto_generated|q_a\(10),
	sload => VCC,
	ena => \inst|IR[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR\(10));

-- Location: LCCOMB_X54_Y46_N18
\inst|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector1~0_combout\ = (!\inst|state.fetch~q\ & ((\inst|WideNor0~combout\ & ((\inst|altsyncram_component|auto_generated|q_a\(10)))) # (!\inst|WideNor0~combout\ & (\inst|IR\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(10),
	datab => \inst|altsyncram_component|auto_generated|q_a\(10),
	datac => \inst|WideNor0~combout\,
	datad => \inst|state.fetch~q\,
	combout => \inst|Selector1~0_combout\);

-- Location: LCCOMB_X54_Y46_N6
\inst|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector1~1_combout\ = (\inst|Selector1~0_combout\) # ((\inst|state.fetch~q\ & \inst|Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.fetch~q\,
	datac => \inst|Add0~20_combout\,
	datad => \inst|Selector1~0_combout\,
	combout => \inst|Selector1~1_combout\);

-- Location: LCCOMB_X56_Y49_N28
\inst|PC_stack[9][10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC_stack[9][10]~feeder_combout\ = \inst|PC_stack[8][10]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|PC_stack[8][10]~q\,
	combout => \inst|PC_stack[9][10]~feeder_combout\);

-- Location: FF_X56_Y49_N29
\inst|PC_stack[9][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|PC_stack[9][10]~feeder_combout\,
	ena => \inst|PC_stack[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[9][10]~q\);

-- Location: LCCOMB_X56_Y47_N16
\inst|Selector119~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector119~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[9][10]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[7][10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[7][10]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[9][10]~q\,
	combout => \inst|Selector119~0_combout\);

-- Location: FF_X56_Y47_N17
\inst|PC_stack[8][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector119~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[8][10]~q\);

-- Location: LCCOMB_X56_Y47_N10
\inst|Selector108~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector108~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[8][10]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[6][10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[6][10]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[8][10]~q\,
	combout => \inst|Selector108~0_combout\);

-- Location: FF_X56_Y47_N11
\inst|PC_stack[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector108~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[7][10]~q\);

-- Location: LCCOMB_X56_Y47_N20
\inst|Selector97~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector97~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[7][10]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[5][10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[7][10]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[5][10]~q\,
	combout => \inst|Selector97~0_combout\);

-- Location: FF_X56_Y47_N21
\inst|PC_stack[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector97~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[6][10]~q\);

-- Location: LCCOMB_X56_Y47_N6
\inst|Selector86~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector86~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[6][10]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[4][10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[4][10]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[6][10]~q\,
	combout => \inst|Selector86~0_combout\);

-- Location: FF_X56_Y47_N7
\inst|PC_stack[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector86~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[5][10]~q\);

-- Location: LCCOMB_X56_Y47_N12
\inst|Selector75~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector75~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[5][10]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[3][10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[5][10]~q\,
	datab => \inst|PC_stack[3][10]~q\,
	datac => \inst|state.ex_return~q\,
	combout => \inst|Selector75~0_combout\);

-- Location: FF_X56_Y47_N13
\inst|PC_stack[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector75~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[4][10]~q\);

-- Location: LCCOMB_X56_Y47_N14
\inst|Selector64~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector64~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[4][10]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[2][10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[4][10]~q\,
	datab => \inst|state.ex_return~q\,
	datac => \inst|PC_stack[2][10]~q\,
	combout => \inst|Selector64~0_combout\);

-- Location: FF_X56_Y47_N15
\inst|PC_stack[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector64~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[3][10]~q\);

-- Location: LCCOMB_X56_Y47_N26
\inst|Selector53~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector53~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[3][10]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[1][10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[1][10]~q\,
	datab => \inst|PC_stack[3][10]~q\,
	datac => \inst|state.ex_return~q\,
	combout => \inst|Selector53~0_combout\);

-- Location: FF_X56_Y47_N27
\inst|PC_stack[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector53~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[2][10]~q\);

-- Location: LCCOMB_X56_Y47_N22
\inst|Selector42~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector42~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[2][10]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[0][10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[2][10]~q\,
	datac => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[0][10]~q\,
	combout => \inst|Selector42~0_combout\);

-- Location: FF_X56_Y47_N23
\inst|PC_stack[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector42~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[1][10]~q\);

-- Location: LCCOMB_X56_Y47_N2
\inst|Selector31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector31~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[1][10]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[1][10]~q\,
	datab => \inst|state.ex_return~q\,
	datac => \inst|PC\(10),
	combout => \inst|Selector31~0_combout\);

-- Location: FF_X56_Y47_N3
\inst|PC_stack[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector31~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[0][10]~q\);

-- Location: LCCOMB_X56_Y47_N30
\inst|Selector1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector1~2_combout\ = (\inst|state.ex_return~q\ & (((\inst|PC_stack[0][10]~q\)))) # (!\inst|state.ex_return~q\ & (\inst|state.init~q\ & (\inst|Selector1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_return~q\,
	datab => \inst|state.init~q\,
	datac => \inst|Selector1~1_combout\,
	datad => \inst|PC_stack[0][10]~q\,
	combout => \inst|Selector1~2_combout\);

-- Location: FF_X56_Y47_N31
\inst|PC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector1~2_combout\,
	ena => \inst|PC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(10));

-- Location: LCCOMB_X54_Y46_N24
\inst|next_mem_addr[10]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|next_mem_addr[10]~10_combout\ = (\inst|Selector1~0_combout\) # ((\inst|state.fetch~q\ & \inst|PC\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.fetch~q\,
	datac => \inst|PC\(10),
	datad => \inst|Selector1~0_combout\,
	combout => \inst|next_mem_addr[10]~10_combout\);

-- Location: LCCOMB_X54_Y46_N14
\inst|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector2~0_combout\ = (!\inst|state.fetch~q\ & ((\inst|WideNor0~combout\ & (\inst|altsyncram_component|auto_generated|q_a\(9))) # (!\inst|WideNor0~combout\ & ((\inst|IR\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(9),
	datab => \inst|IR\(9),
	datac => \inst|WideNor0~combout\,
	datad => \inst|state.fetch~q\,
	combout => \inst|Selector2~0_combout\);

-- Location: LCCOMB_X54_Y46_N20
\inst|next_mem_addr[9]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|next_mem_addr[9]~9_combout\ = (\inst|Selector2~0_combout\) # ((\inst|PC\(9) & \inst|state.fetch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Selector2~0_combout\,
	datac => \inst|PC\(9),
	datad => \inst|state.fetch~q\,
	combout => \inst|next_mem_addr[9]~9_combout\);

-- Location: M9K_X53_Y44_N0
\inst|altsyncram_component|auto_generated|ram_block1a1\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000F0000BE2627517DB9FF66778AD059EC44CE1EA1925A082DB4FB26BD98CB67D6F3E0431100020C20FC24334C246C255C254C255C254C244C253C252",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "SquareWave.mif",
	init_file_layout => "port_a",
	logical_ram_name => "SCOMP:inst|altsyncram:altsyncram_component|altsyncram_2ur3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 11,
	port_b_data_width => 4,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst|MW~q\,
	portare => VCC,
	clk0 => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \inst|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \inst|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: LCCOMB_X50_Y46_N8
\inst|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector4~0_combout\ = (!\inst|state.fetch~q\ & ((\inst|WideNor0~combout\ & (\inst|altsyncram_component|auto_generated|q_a\(7))) # (!\inst|WideNor0~combout\ & ((\inst|IR\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(7),
	datab => \inst|WideNor0~combout\,
	datac => \inst|IR\(7),
	datad => \inst|state.fetch~q\,
	combout => \inst|Selector4~0_combout\);

-- Location: LCCOMB_X50_Y46_N2
\inst|next_mem_addr[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|next_mem_addr[7]~7_combout\ = (\inst|Selector4~0_combout\) # ((\inst|state.fetch~q\ & \inst|PC\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.fetch~q\,
	datac => \inst|Selector4~0_combout\,
	datad => \inst|PC\(7),
	combout => \inst|next_mem_addr[7]~7_combout\);

-- Location: FF_X50_Y43_N29
\inst|IR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|altsyncram_component|auto_generated|q_a\(6),
	sload => VCC,
	ena => \inst|IR[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR\(6));

-- Location: LCCOMB_X50_Y46_N14
\inst|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector5~0_combout\ = (!\inst|state.fetch~q\ & ((\inst|WideNor0~combout\ & ((\inst|altsyncram_component|auto_generated|q_a\(6)))) # (!\inst|WideNor0~combout\ & (\inst|IR\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(6),
	datab => \inst|altsyncram_component|auto_generated|q_a\(6),
	datac => \inst|state.fetch~q\,
	datad => \inst|WideNor0~combout\,
	combout => \inst|Selector5~0_combout\);

-- Location: LCCOMB_X55_Y46_N22
\inst|next_mem_addr[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|next_mem_addr[6]~6_combout\ = (\inst|Selector5~0_combout\) # ((\inst|state.fetch~q\ & \inst|PC\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector5~0_combout\,
	datac => \inst|state.fetch~q\,
	datad => \inst|PC\(6),
	combout => \inst|next_mem_addr[6]~6_combout\);

-- Location: LCCOMB_X50_Y47_N30
\inst|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector7~0_combout\ = (!\inst|state.fetch~q\ & ((\inst|WideNor0~combout\ & (\inst|altsyncram_component|auto_generated|q_a\(4))) # (!\inst|WideNor0~combout\ & ((\inst|IR\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(4),
	datab => \inst|state.fetch~q\,
	datac => \inst|IR\(4),
	datad => \inst|WideNor0~combout\,
	combout => \inst|Selector7~0_combout\);

-- Location: LCCOMB_X54_Y46_N12
\inst|next_mem_addr[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|next_mem_addr[4]~4_combout\ = (\inst|Selector7~0_combout\) # ((\inst|PC\(4) & \inst|state.fetch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Selector7~0_combout\,
	datac => \inst|PC\(4),
	datad => \inst|state.fetch~q\,
	combout => \inst|next_mem_addr[4]~4_combout\);

-- Location: FF_X50_Y43_N3
\inst|IR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|altsyncram_component|auto_generated|q_a\(3),
	sload => VCC,
	ena => \inst|IR[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR\(3));

-- Location: LCCOMB_X54_Y46_N28
\inst|Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector8~0_combout\ = (!\inst|state.fetch~q\ & ((\inst|WideNor0~combout\ & ((\inst|altsyncram_component|auto_generated|q_a\(3)))) # (!\inst|WideNor0~combout\ & (\inst|IR\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(3),
	datab => \inst|WideNor0~combout\,
	datac => \inst|altsyncram_component|auto_generated|q_a\(3),
	datad => \inst|state.fetch~q\,
	combout => \inst|Selector8~0_combout\);

-- Location: LCCOMB_X54_Y46_N16
\inst|Selector8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector8~1_combout\ = (\inst|Selector8~0_combout\) # ((\inst|Add0~6_combout\ & \inst|state.fetch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~6_combout\,
	datab => \inst|Selector8~0_combout\,
	datad => \inst|state.fetch~q\,
	combout => \inst|Selector8~1_combout\);

-- Location: LCCOMB_X56_Y49_N16
\inst|PC_stack[9][3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC_stack[9][3]~feeder_combout\ = \inst|PC_stack[8][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|PC_stack[8][3]~q\,
	combout => \inst|PC_stack[9][3]~feeder_combout\);

-- Location: FF_X56_Y49_N17
\inst|PC_stack[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|PC_stack[9][3]~feeder_combout\,
	ena => \inst|PC_stack[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[9][3]~q\);

-- Location: LCCOMB_X56_Y49_N12
\inst|Selector126~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector126~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[9][3]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[7][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_return~q\,
	datac => \inst|PC_stack[7][3]~q\,
	datad => \inst|PC_stack[9][3]~q\,
	combout => \inst|Selector126~0_combout\);

-- Location: FF_X56_Y49_N13
\inst|PC_stack[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector126~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[8][3]~q\);

-- Location: LCCOMB_X54_Y49_N6
\inst|Selector115~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector115~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[8][3]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[6][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.ex_return~q\,
	datac => \inst|PC_stack[6][3]~q\,
	datad => \inst|PC_stack[8][3]~q\,
	combout => \inst|Selector115~0_combout\);

-- Location: FF_X54_Y49_N7
\inst|PC_stack[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector115~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[7][3]~q\);

-- Location: LCCOMB_X54_Y49_N4
\inst|Selector104~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector104~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[7][3]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[5][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[7][3]~q\,
	datac => \inst|PC_stack[5][3]~q\,
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector104~0_combout\);

-- Location: FF_X54_Y49_N5
\inst|PC_stack[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector104~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[6][3]~q\);

-- Location: LCCOMB_X54_Y49_N8
\inst|Selector93~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector93~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[6][3]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[4][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[4][3]~q\,
	datac => \inst|PC_stack[6][3]~q\,
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector93~0_combout\);

-- Location: FF_X54_Y49_N9
\inst|PC_stack[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector93~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[5][3]~q\);

-- Location: LCCOMB_X54_Y49_N12
\inst|Selector82~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector82~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[5][3]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[3][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[3][3]~q\,
	datac => \inst|PC_stack[5][3]~q\,
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector82~0_combout\);

-- Location: FF_X54_Y49_N13
\inst|PC_stack[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector82~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[4][3]~q\);

-- Location: LCCOMB_X54_Y49_N24
\inst|Selector71~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector71~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[4][3]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[2][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[4][3]~q\,
	datab => \inst|PC_stack[2][3]~q\,
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector71~0_combout\);

-- Location: FF_X54_Y49_N25
\inst|PC_stack[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector71~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[3][3]~q\);

-- Location: LCCOMB_X54_Y49_N20
\inst|Selector60~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector60~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[3][3]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[1][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[3][3]~q\,
	datac => \inst|PC_stack[1][3]~q\,
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector60~0_combout\);

-- Location: FF_X54_Y49_N21
\inst|PC_stack[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector60~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[2][3]~q\);

-- Location: LCCOMB_X54_Y49_N0
\inst|Selector49~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector49~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[2][3]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[0][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[0][3]~q\,
	datac => \inst|PC_stack[2][3]~q\,
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector49~0_combout\);

-- Location: FF_X54_Y49_N1
\inst|PC_stack[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector49~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[1][3]~q\);

-- Location: LCCOMB_X54_Y49_N28
\inst|Selector38~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector38~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[1][3]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(3),
	datac => \inst|PC_stack[1][3]~q\,
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector38~0_combout\);

-- Location: FF_X54_Y49_N29
\inst|PC_stack[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector38~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[0][3]~q\);

-- Location: LCCOMB_X54_Y49_N16
\inst|Selector8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector8~2_combout\ = (\inst|state.ex_return~q\ & (((\inst|PC_stack[0][3]~q\)))) # (!\inst|state.ex_return~q\ & (\inst|Selector8~1_combout\ & ((\inst|state.init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector8~1_combout\,
	datab => \inst|PC_stack[0][3]~q\,
	datac => \inst|state.init~q\,
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector8~2_combout\);

-- Location: FF_X54_Y49_N17
\inst|PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector8~2_combout\,
	ena => \inst|PC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(3));

-- Location: LCCOMB_X54_Y46_N22
\inst|next_mem_addr[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|next_mem_addr[3]~3_combout\ = (\inst|Selector8~0_combout\) # ((\inst|PC\(3) & \inst|state.fetch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC\(3),
	datab => \inst|Selector8~0_combout\,
	datad => \inst|state.fetch~q\,
	combout => \inst|next_mem_addr[3]~3_combout\);

-- Location: LCCOMB_X49_Y46_N4
\inst|Selector22~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector22~4_combout\ = (\inst|AC\(5) & (((\inst|state.ex_and~q\ & \inst|altsyncram_component|auto_generated|q_a\(5))) # (!\inst|Selector22~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(5),
	datab => \inst|state.ex_and~q\,
	datac => \inst|altsyncram_component|auto_generated|q_a\(5),
	datad => \inst|Selector22~3_combout\,
	combout => \inst|Selector22~4_combout\);

-- Location: LCCOMB_X55_Y42_N26
\inst|Selector22~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector22~13_combout\ = (\inst|shifter|auto_generated|sbit_w[61]~20_combout\ & (\inst|IR\(4) & (\inst|state.ex_shift~q\ & \inst|IR\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[61]~20_combout\,
	datab => \inst|IR\(4),
	datac => \inst|state.ex_shift~q\,
	datad => \inst|IR\(3),
	combout => \inst|Selector22~13_combout\);

-- Location: LCCOMB_X49_Y46_N10
\inst|Selector22~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector22~5_combout\ = (\inst|state.ex_xor~q\ & (\inst|AC\(5) $ (\inst|altsyncram_component|auto_generated|q_a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(5),
	datac => \inst|state.ex_xor~q\,
	datad => \inst|altsyncram_component|auto_generated|q_a\(5),
	combout => \inst|Selector22~5_combout\);

-- Location: LCCOMB_X50_Y46_N28
\inst|Selector22~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector22~7_combout\ = (\inst|state.ex_loadi~q\ & ((\inst|IR\(5)) # ((\inst|altsyncram_component|auto_generated|q_a\(5) & \inst|Selector22~6_combout\)))) # (!\inst|state.ex_loadi~q\ & (((\inst|altsyncram_component|auto_generated|q_a\(5) & 
-- \inst|Selector22~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_loadi~q\,
	datab => \inst|IR\(5),
	datac => \inst|altsyncram_component|auto_generated|q_a\(5),
	datad => \inst|Selector22~6_combout\,
	combout => \inst|Selector22~7_combout\);

-- Location: LCCOMB_X49_Y46_N12
\inst|Selector22~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector22~8_combout\ = (\inst|Selector22~5_combout\) # ((\inst|Selector22~7_combout\) # ((\inst|AC[3]~0_combout\ & \inst|Add1~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector22~5_combout\,
	datab => \inst|AC[3]~0_combout\,
	datac => \inst|Add1~31_combout\,
	datad => \inst|Selector22~7_combout\,
	combout => \inst|Selector22~8_combout\);

-- Location: LCCOMB_X51_Y43_N6
\inst|Selector22~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector22~10_combout\ = (\inst13|inst1[5]~2_combout\ & (\inst13|inst1[5]~3_combout\ & \inst13|inst1[5]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[5]~2_combout\,
	datac => \inst13|inst1[5]~3_combout\,
	datad => \inst13|inst1[5]~4_combout\,
	combout => \inst|Selector22~10_combout\);

-- Location: LCCOMB_X47_Y44_N30
\inst|Selector22~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector22~9_combout\ = (\inst|Selector20~0_combout\ & ((\inst|shifter|auto_generated|sbit_w[53]~23_combout\) # ((!\inst|IR\(2) & \inst|shifter|auto_generated|sbit_w[37]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector20~0_combout\,
	datab => \inst|IR\(2),
	datac => \inst|shifter|auto_generated|sbit_w[37]~29_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[53]~23_combout\,
	combout => \inst|Selector22~9_combout\);

-- Location: LCCOMB_X51_Y43_N28
\inst|Selector22~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector22~11_combout\ = (\inst|Selector22~9_combout\) # ((\inst|state.ex_in2~q\ & ((\inst|Selector22~10_combout\) # (!\inst13|inst1[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector22~10_combout\,
	datab => \inst|state.ex_in2~q\,
	datac => \inst13|inst1[5]~6_combout\,
	datad => \inst|Selector22~9_combout\,
	combout => \inst|Selector22~11_combout\);

-- Location: LCCOMB_X51_Y43_N26
\inst|Selector22~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector22~12_combout\ = (\inst|Selector22~4_combout\) # ((\inst|Selector22~13_combout\) # ((\inst|Selector22~8_combout\) # (\inst|Selector22~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector22~4_combout\,
	datab => \inst|Selector22~13_combout\,
	datac => \inst|Selector22~8_combout\,
	datad => \inst|Selector22~11_combout\,
	combout => \inst|Selector22~12_combout\);

-- Location: FF_X51_Y43_N27
\inst|AC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector22~12_combout\,
	ena => \inst13|inst14|ALT_INV_data_out[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|AC\(5));

-- Location: LCCOMB_X47_Y45_N6
\inst|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (!\inst|AC\(5) & (!\inst|AC\(7) & (!\inst|AC\(6) & !\inst|AC\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(5),
	datab => \inst|AC\(7),
	datac => \inst|AC\(6),
	datad => \inst|AC\(4),
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X49_Y44_N0
\inst|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (!\inst|AC\(10) & (!\inst|AC\(9) & (!\inst|AC\(8) & !\inst|AC\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(10),
	datab => \inst|AC\(9),
	datac => \inst|AC\(8),
	datad => \inst|AC\(11),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X47_Y45_N8
\inst|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = (!\inst|AC\(1) & (!\inst|AC\(3) & (!\inst|AC\(2) & !\inst|AC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(1),
	datab => \inst|AC\(3),
	datac => \inst|AC\(2),
	datad => \inst|AC\(0),
	combout => \inst|Equal0~3_combout\);

-- Location: LCCOMB_X49_Y45_N26
\inst|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (!\inst|AC\(14) & (!\inst|AC\(13) & (!\inst|AC\(15) & !\inst|AC\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(14),
	datab => \inst|AC\(13),
	datac => \inst|AC\(15),
	datad => \inst|AC\(12),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X47_Y45_N18
\inst|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~4_combout\ = (\inst|Equal0~2_combout\ & (\inst|Equal0~1_combout\ & (\inst|Equal0~3_combout\ & \inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~2_combout\,
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Equal0~3_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|Equal0~4_combout\);

-- Location: LCCOMB_X54_Y45_N20
\inst|state~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state~51_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(14) & (!\inst|altsyncram_component|auto_generated|q_a\(13) & \inst|state~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(14),
	datac => \inst|altsyncram_component|auto_generated|q_a\(13),
	datad => \inst|state~35_combout\,
	combout => \inst|state~51_combout\);

-- Location: FF_X54_Y45_N21
\inst|state.ex_jzero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|state~51_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_jzero~q\);

-- Location: LCCOMB_X51_Y45_N24
\inst|WideOr2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr2~0_combout\ = (!\inst|state.ex_call~q\ & (!\inst|state.ex_return~q\ & (!\inst|state.fetch~q\ & \inst|state.init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_call~q\,
	datab => \inst|state.ex_return~q\,
	datac => \inst|state.fetch~q\,
	datad => \inst|state.init~q\,
	combout => \inst|WideOr2~0_combout\);

-- Location: LCCOMB_X54_Y45_N28
\inst|state~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state~53_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(13) & (\inst|Selector30~0_combout\ & !\inst|altsyncram_component|auto_generated|q_a\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(13),
	datac => \inst|Selector30~0_combout\,
	datad => \inst|altsyncram_component|auto_generated|q_a\(14),
	combout => \inst|state~53_combout\);

-- Location: FF_X54_Y45_N29
\inst|state.ex_jump\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|state~53_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_jump~q\);

-- Location: LCCOMB_X54_Y45_N10
\inst|state~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state~52_combout\ = (!\inst|altsyncram_component|auto_generated|q_a\(14) & (\inst|altsyncram_component|auto_generated|q_a\(13) & \inst|state~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(14),
	datac => \inst|altsyncram_component|auto_generated|q_a\(13),
	datad => \inst|state~43_combout\,
	combout => \inst|state~52_combout\);

-- Location: FF_X54_Y45_N11
\inst|state.ex_jneg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|state~52_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_jneg~q\);

-- Location: LCCOMB_X54_Y45_N26
\inst|PC[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC[0]~0_combout\ = (\inst|state.ex_jneg~q\ & (((!\inst|AC\(15))))) # (!\inst|state.ex_jneg~q\ & (\inst|WideOr2~0_combout\ & (!\inst|state.ex_jump~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr2~0_combout\,
	datab => \inst|state.ex_jump~q\,
	datac => \inst|AC\(15),
	datad => \inst|state.ex_jneg~q\,
	combout => \inst|PC[0]~0_combout\);

-- Location: LCCOMB_X55_Y45_N24
\inst|state~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state~50_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(13) & (!\inst|altsyncram_component|auto_generated|q_a\(14) & \inst|state~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|altsyncram_component|auto_generated|q_a\(13),
	datac => \inst|altsyncram_component|auto_generated|q_a\(14),
	datad => \inst|state~38_combout\,
	combout => \inst|state~50_combout\);

-- Location: FF_X55_Y45_N25
\inst|state.ex_jpos\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|state~50_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_jpos~q\);

-- Location: LCCOMB_X54_Y45_N12
\inst|PC[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC[0]~1_combout\ = (\inst|state.ex_jpos~q\ & (\inst|Equal0~4_combout\)) # (!\inst|state.ex_jpos~q\ & ((\inst|state.ex_jzero~q\ & (!\inst|Equal0~4_combout\)) # (!\inst|state.ex_jzero~q\ & ((\inst|PC[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~4_combout\,
	datab => \inst|state.ex_jzero~q\,
	datac => \inst|PC[0]~0_combout\,
	datad => \inst|state.ex_jpos~q\,
	combout => \inst|PC[0]~1_combout\);

-- Location: LCCOMB_X54_Y45_N14
\inst|PC[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC[0]~2_combout\ = (!\inst|PC[0]~1_combout\ & (!\inst13|inst14|data_out[7]~1_combout\ & ((!\inst|state.ex_jpos~q\) # (!\inst|AC\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC[0]~1_combout\,
	datab => \inst|AC\(15),
	datac => \inst13|inst14|data_out[7]~1_combout\,
	datad => \inst|state.ex_jpos~q\,
	combout => \inst|PC[0]~2_combout\);

-- Location: FF_X55_Y49_N17
\inst|PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector9~2_combout\,
	ena => \inst|PC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(2));

-- Location: LCCOMB_X55_Y49_N30
\inst|next_mem_addr[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|next_mem_addr[2]~2_combout\ = (\inst|Selector9~0_combout\) # ((\inst|state.fetch~q\ & \inst|PC\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Selector9~0_combout\,
	datac => \inst|state.fetch~q\,
	datad => \inst|PC\(2),
	combout => \inst|next_mem_addr[2]~2_combout\);

-- Location: M9K_X53_Y45_N0
\inst|altsyncram_component|auto_generated|ram_block1a11\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003C8400000000000000000000000000000000000000011111111111122222223333920AB09B4BA1BBB8182BB831B831B831B831B831B831B831B831",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "SquareWave.mif",
	init_file_layout => "port_a",
	logical_ram_name => "SCOMP:inst|altsyncram:altsyncram_component|altsyncram_2ur3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 11,
	port_b_data_width => 4,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst|MW~q\,
	portare => VCC,
	clk0 => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \inst|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \inst|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

-- Location: LCCOMB_X55_Y45_N18
\inst|state~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state~38_combout\ = (!\inst|altsyncram_component|auto_generated|q_a\(15) & (\inst|altsyncram_component|auto_generated|q_a\(11) & (\inst|state.decode~q\ & \inst|altsyncram_component|auto_generated|q_a\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(15),
	datab => \inst|altsyncram_component|auto_generated|q_a\(11),
	datac => \inst|state.decode~q\,
	datad => \inst|altsyncram_component|auto_generated|q_a\(12),
	combout => \inst|state~38_combout\);

-- Location: LCCOMB_X55_Y45_N22
\inst|state~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state~45_combout\ = (!\inst|altsyncram_component|auto_generated|q_a\(13) & (\inst|altsyncram_component|auto_generated|q_a\(14) & \inst|state~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|altsyncram_component|auto_generated|q_a\(13),
	datac => \inst|altsyncram_component|auto_generated|q_a\(14),
	datad => \inst|state~38_combout\,
	combout => \inst|state~45_combout\);

-- Location: FF_X55_Y45_N23
\inst|state.ex_xor\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|state~45_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_xor~q\);

-- Location: LCCOMB_X55_Y43_N0
\inst|Selector26~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector26~2_combout\ = (\inst|state.ex_xor~q\ & (\inst|AC\(1) $ (\inst|altsyncram_component|auto_generated|q_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(1),
	datab => \inst|altsyncram_component|auto_generated|q_a\(1),
	datac => \inst|state.ex_xor~q\,
	combout => \inst|Selector26~2_combout\);

-- Location: LCCOMB_X54_Y44_N8
\inst|Selector26~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector26~3_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(1) & ((\inst|Selector22~6_combout\) # ((\inst|state.ex_loadi~q\ & \inst|IR\(1))))) # (!\inst|altsyncram_component|auto_generated|q_a\(1) & (((\inst|state.ex_loadi~q\ & 
-- \inst|IR\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(1),
	datab => \inst|Selector22~6_combout\,
	datac => \inst|state.ex_loadi~q\,
	datad => \inst|IR\(1),
	combout => \inst|Selector26~3_combout\);

-- Location: LCCOMB_X54_Y44_N30
\inst|Selector26~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector26~4_combout\ = (\inst|Selector26~2_combout\) # ((\inst|Selector26~3_combout\) # ((\inst|AC[3]~0_combout\ & \inst|Add1~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector26~2_combout\,
	datab => \inst|AC[3]~0_combout\,
	datac => \inst|Selector26~3_combout\,
	datad => \inst|Add1~23_combout\,
	combout => \inst|Selector26~4_combout\);

-- Location: LCCOMB_X52_Y44_N16
\inst|Selector26~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector26~1_combout\ = (\inst|AC\(1) & (((\inst|state.ex_and~q\ & \inst|altsyncram_component|auto_generated|q_a\(1))) # (!\inst|Selector22~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(1),
	datab => \inst|state.ex_and~q\,
	datac => \inst|Selector22~3_combout\,
	datad => \inst|altsyncram_component|auto_generated|q_a\(1),
	combout => \inst|Selector26~1_combout\);

-- Location: LCCOMB_X50_Y45_N4
\inst|Selector26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector26~0_combout\ = (\inst|Selector20~0_combout\ & ((\inst|shifter|auto_generated|sbit_w[49]~72_combout\) # ((\inst|shifter|auto_generated|sbit_w[49]~57_combout\ & \inst|shifter|auto_generated|sbit_w[37]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector20~0_combout\,
	datab => \inst|shifter|auto_generated|sbit_w[49]~72_combout\,
	datac => \inst|shifter|auto_generated|sbit_w[49]~57_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[37]~29_combout\,
	combout => \inst|Selector26~0_combout\);

-- Location: LCCOMB_X54_Y44_N28
\inst|Selector26~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector26~5_combout\ = (\inst13|inst1[5]~6_combout\ & (((!\inst13|inst1[1]~17_combout\) # (!\inst13|inst1[5]~2_combout\)) # (!\inst13|inst1[1]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[5]~6_combout\,
	datab => \inst13|inst1[1]~18_combout\,
	datac => \inst13|inst1[5]~2_combout\,
	datad => \inst13|inst1[1]~17_combout\,
	combout => \inst|Selector26~5_combout\);

-- Location: LCCOMB_X54_Y44_N10
\inst|Selector26~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector26~6_combout\ = (\inst|Selector22~2_combout\ & ((\inst|shifter|auto_generated|sbit_w[57]~74_combout\) # ((\inst|state.ex_in2~q\ & !\inst|Selector26~5_combout\)))) # (!\inst|Selector22~2_combout\ & (\inst|state.ex_in2~q\ & 
-- ((!\inst|Selector26~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector22~2_combout\,
	datab => \inst|state.ex_in2~q\,
	datac => \inst|shifter|auto_generated|sbit_w[57]~74_combout\,
	datad => \inst|Selector26~5_combout\,
	combout => \inst|Selector26~6_combout\);

-- Location: LCCOMB_X54_Y44_N0
\inst|Selector26~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector26~7_combout\ = (\inst|Selector26~4_combout\) # ((\inst|Selector26~1_combout\) # ((\inst|Selector26~0_combout\) # (\inst|Selector26~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector26~4_combout\,
	datab => \inst|Selector26~1_combout\,
	datac => \inst|Selector26~0_combout\,
	datad => \inst|Selector26~6_combout\,
	combout => \inst|Selector26~7_combout\);

-- Location: FF_X54_Y44_N1
\inst|AC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector26~7_combout\,
	ena => \inst13|inst14|ALT_INV_data_out[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|AC\(1));

-- Location: FF_X50_Y43_N17
\inst|IR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|altsyncram_component|auto_generated|q_a\(1),
	sload => VCC,
	ena => \inst|IR[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR\(1));

-- Location: LCCOMB_X54_Y46_N8
\inst|Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector10~0_combout\ = (!\inst|state.fetch~q\ & ((\inst|WideNor0~combout\ & ((\inst|altsyncram_component|auto_generated|q_a\(1)))) # (!\inst|WideNor0~combout\ & (\inst|IR\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(1),
	datab => \inst|altsyncram_component|auto_generated|q_a\(1),
	datac => \inst|WideNor0~combout\,
	datad => \inst|state.fetch~q\,
	combout => \inst|Selector10~0_combout\);

-- Location: LCCOMB_X54_Y46_N2
\inst|Selector10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector10~1_combout\ = (\inst|Selector10~0_combout\) # ((\inst|Add0~2_combout\ & \inst|state.fetch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~2_combout\,
	datac => \inst|Selector10~0_combout\,
	datad => \inst|state.fetch~q\,
	combout => \inst|Selector10~1_combout\);

-- Location: LCCOMB_X55_Y51_N16
\inst|PC_stack[9][1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC_stack[9][1]~feeder_combout\ = \inst|PC_stack[8][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|PC_stack[8][1]~q\,
	combout => \inst|PC_stack[9][1]~feeder_combout\);

-- Location: FF_X55_Y51_N17
\inst|PC_stack[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|PC_stack[9][1]~feeder_combout\,
	ena => \inst|PC_stack[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[9][1]~q\);

-- Location: LCCOMB_X54_Y48_N2
\inst|Selector128~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector128~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[9][1]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[7][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.ex_return~q\,
	datac => \inst|PC_stack[7][1]~q\,
	datad => \inst|PC_stack[9][1]~q\,
	combout => \inst|Selector128~0_combout\);

-- Location: FF_X54_Y48_N3
\inst|PC_stack[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector128~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[8][1]~q\);

-- Location: LCCOMB_X54_Y48_N4
\inst|Selector117~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector117~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[8][1]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[6][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[8][1]~q\,
	datac => \inst|PC_stack[6][1]~q\,
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector117~0_combout\);

-- Location: FF_X54_Y48_N5
\inst|PC_stack[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector117~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[7][1]~q\);

-- Location: LCCOMB_X54_Y48_N30
\inst|Selector106~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector106~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[7][1]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[5][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[5][1]~q\,
	datac => \inst|PC_stack[7][1]~q\,
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector106~0_combout\);

-- Location: FF_X54_Y48_N31
\inst|PC_stack[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector106~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[6][1]~q\);

-- Location: LCCOMB_X54_Y48_N0
\inst|Selector95~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector95~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[6][1]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[4][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[4][1]~q\,
	datac => \inst|PC_stack[6][1]~q\,
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector95~0_combout\);

-- Location: FF_X54_Y48_N1
\inst|PC_stack[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector95~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[5][1]~q\);

-- Location: LCCOMB_X54_Y48_N26
\inst|Selector84~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector84~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[5][1]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[3][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[3][1]~q\,
	datab => \inst|PC_stack[5][1]~q\,
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector84~0_combout\);

-- Location: FF_X54_Y48_N27
\inst|PC_stack[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector84~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[4][1]~q\);

-- Location: LCCOMB_X54_Y48_N12
\inst|Selector73~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector73~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[4][1]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[2][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[2][1]~q\,
	datac => \inst|PC_stack[4][1]~q\,
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector73~0_combout\);

-- Location: FF_X54_Y48_N13
\inst|PC_stack[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector73~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[3][1]~q\);

-- Location: LCCOMB_X54_Y48_N28
\inst|Selector62~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector62~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[3][1]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[1][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[3][1]~q\,
	datab => \inst|PC_stack[1][1]~q\,
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector62~0_combout\);

-- Location: FF_X54_Y48_N29
\inst|PC_stack[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector62~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[2][1]~q\);

-- Location: LCCOMB_X54_Y48_N24
\inst|Selector51~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector51~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[2][1]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[0][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[2][1]~q\,
	datac => \inst|PC_stack[0][1]~q\,
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector51~0_combout\);

-- Location: FF_X54_Y48_N25
\inst|PC_stack[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector51~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[1][1]~q\);

-- Location: LCCOMB_X54_Y48_N20
\inst|Selector40~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector40~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[1][1]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[1][1]~q\,
	datac => \inst|PC\(1),
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector40~0_combout\);

-- Location: FF_X54_Y48_N21
\inst|PC_stack[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector40~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[0][1]~q\);

-- Location: LCCOMB_X54_Y48_N8
\inst|Selector10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector10~2_combout\ = (\inst|state.ex_return~q\ & (((\inst|PC_stack[0][1]~q\)))) # (!\inst|state.ex_return~q\ & (\inst|Selector10~1_combout\ & ((\inst|state.init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector10~1_combout\,
	datab => \inst|PC_stack[0][1]~q\,
	datac => \inst|state.init~q\,
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector10~2_combout\);

-- Location: FF_X54_Y48_N9
\inst|PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector10~2_combout\,
	ena => \inst|PC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(1));

-- Location: LCCOMB_X54_Y46_N26
\inst|next_mem_addr[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|next_mem_addr[1]~1_combout\ = (\inst|Selector10~0_combout\) # ((\inst|PC\(1) & \inst|state.fetch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(1),
	datac => \inst|Selector10~0_combout\,
	datad => \inst|state.fetch~q\,
	combout => \inst|next_mem_addr[1]~1_combout\);

-- Location: FF_X52_Y46_N29
\inst|IR[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|altsyncram_component|auto_generated|q_a\(8),
	sload => VCC,
	ena => \inst|IR[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR\(8));

-- Location: LCCOMB_X49_Y42_N28
\inst|Selector19~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector19~5_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(8) & ((\inst|Selector22~6_combout\) # ((\inst|state.ex_xor~q\ & !\inst|AC\(8))))) # (!\inst|altsyncram_component|auto_generated|q_a\(8) & (\inst|state.ex_xor~q\ & 
-- ((\inst|AC\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_xor~q\,
	datab => \inst|Selector22~6_combout\,
	datac => \inst|AC\(8),
	datad => \inst|altsyncram_component|auto_generated|q_a\(8),
	combout => \inst|Selector19~5_combout\);

-- Location: LCCOMB_X49_Y42_N16
\inst|Selector19~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector19~6_combout\ = (\inst|Selector19~5_combout\) # ((\inst|Selector19~0_combout\) # ((\inst|Add1~46_combout\ & \inst|AC[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~46_combout\,
	datab => \inst|Selector19~5_combout\,
	datac => \inst|AC[3]~0_combout\,
	datad => \inst|Selector19~0_combout\,
	combout => \inst|Selector19~6_combout\);

-- Location: LCCOMB_X49_Y42_N22
\inst|Selector19~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector19~4_combout\ = (\inst|AC\(8) & (((\inst|altsyncram_component|auto_generated|q_a\(8) & \inst|state.ex_and~q\)) # (!\inst|Selector22~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector22~3_combout\,
	datab => \inst|altsyncram_component|auto_generated|q_a\(8),
	datac => \inst|state.ex_and~q\,
	datad => \inst|AC\(8),
	combout => \inst|Selector19~4_combout\);

-- Location: LCCOMB_X47_Y43_N22
\inst|shifter|auto_generated|sbit_w[48]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[48]~75_combout\ = (!\inst|IR\(2) & ((\inst|shifter|auto_generated|sbit_w[32]~46_combout\) # ((\inst|shifter|auto_generated|sbit_w[18]~49_combout\ & \inst3|I2C_RDY_EN~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[18]~49_combout\,
	datab => \inst3|I2C_RDY_EN~0_combout\,
	datac => \inst|shifter|auto_generated|sbit_w[32]~46_combout\,
	datad => \inst|IR\(2),
	combout => \inst|shifter|auto_generated|sbit_w[48]~75_combout\);

-- Location: LCCOMB_X47_Y43_N16
\inst|shifter|auto_generated|sbit_w[48]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[48]~83_combout\ = (\inst|shifter|auto_generated|sbit_w[48]~75_combout\) # ((\inst|shifter|auto_generated|sbit_w[36]~53_combout\ & (\inst|IR\(4) & \inst|IR\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[48]~75_combout\,
	datab => \inst|shifter|auto_generated|sbit_w[36]~53_combout\,
	datac => \inst|IR\(4),
	datad => \inst|IR\(2),
	combout => \inst|shifter|auto_generated|sbit_w[48]~83_combout\);

-- Location: LCCOMB_X49_Y42_N8
\inst|Selector19~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector19~8_combout\ = (\inst|Selector19~6_combout\) # ((\inst|Selector19~4_combout\) # ((\inst|Selector19~7_combout\ & \inst|shifter|auto_generated|sbit_w[48]~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector19~7_combout\,
	datab => \inst|Selector19~6_combout\,
	datac => \inst|Selector19~4_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[48]~83_combout\,
	combout => \inst|Selector19~8_combout\);

-- Location: LCCOMB_X50_Y42_N12
\inst|shifter|auto_generated|sbit_w[56]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|shifter|auto_generated|sbit_w[56]~76_combout\ = (\inst|IR\(2) & ((\inst|IR\(4) & (\inst|shifter|auto_generated|sbit_w[44]~44_combout\)) # (!\inst|IR\(4) & ((\inst|shifter|auto_generated|sbit_w[36]~53_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[44]~44_combout\,
	datab => \inst|shifter|auto_generated|sbit_w[36]~53_combout\,
	datac => \inst|IR\(4),
	datad => \inst|IR\(2),
	combout => \inst|shifter|auto_generated|sbit_w[56]~76_combout\);

-- Location: LCCOMB_X49_Y42_N18
\inst|Selector19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector19~1_combout\ = (\inst|Selector20~0_combout\ & ((\inst|shifter|auto_generated|sbit_w[56]~76_combout\) # ((!\inst|IR\(2) & \inst|shifter|auto_generated|sbit_w[40]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(2),
	datab => \inst|Selector20~0_combout\,
	datac => \inst|shifter|auto_generated|sbit_w[56]~76_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[40]~37_combout\,
	combout => \inst|Selector19~1_combout\);

-- Location: IOIBUF_X56_Y54_N1
\SW[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LCCOMB_X52_Y42_N26
\inst7|B_DI[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|B_DI[8]~feeder_combout\ = \SW[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[8]~input_o\,
	combout => \inst7|B_DI[8]~feeder_combout\);

-- Location: FF_X52_Y42_N27
\inst7|B_DI[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SWITCH_EN~clkctrl_outclk\,
	d => \inst7|B_DI[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|B_DI\(8));

-- Location: LCCOMB_X49_Y42_N26
\inst13|inst1[8]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[8]~32_combout\ = (\inst3|SWITCH_EN~combout\ & (\inst7|B_DI\(8) & ((\inst|AC\(8)) # (!\inst|IO_WRITE_int~q\)))) # (!\inst3|SWITCH_EN~combout\ & (((\inst|AC\(8))) # (!\inst|IO_WRITE_int~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|SWITCH_EN~combout\,
	datab => \inst|IO_WRITE_int~q\,
	datac => \inst|AC\(8),
	datad => \inst7|B_DI\(8),
	combout => \inst13|inst1[8]~32_combout\);

-- Location: LCCOMB_X52_Y41_N22
\inst13|inst|Decoder0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Decoder0~5_combout\ = (\inst13|inst|bit_cnt\(1) & (\inst13|inst|bit_cnt\(2) & (\inst13|inst|Decoder0~0_combout\ & \inst13|inst|bit_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|bit_cnt\(1),
	datab => \inst13|inst|bit_cnt\(2),
	datac => \inst13|inst|Decoder0~0_combout\,
	datad => \inst13|inst|bit_cnt\(0),
	combout => \inst13|inst|Decoder0~5_combout\);

-- Location: LCCOMB_X51_Y41_N22
\inst13|inst|data_rx[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|data_rx[0]~6_combout\ = (\inst13|inst|Decoder0~5_combout\ & (\GSENSOR_SDI~input_o\)) # (!\inst13|inst|Decoder0~5_combout\ & ((\inst13|inst|data_rx\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GSENSOR_SDI~input_o\,
	datac => \inst13|inst|data_rx\(0),
	datad => \inst13|inst|Decoder0~5_combout\,
	combout => \inst13|inst|data_rx[0]~6_combout\);

-- Location: FF_X51_Y41_N23
\inst13|inst|data_rx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|ALT_INV_data_clk~clkctrl_outclk\,
	d => \inst13|inst|data_rx[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_rx\(0));

-- Location: LCCOMB_X51_Y41_N30
\inst13|inst|data_rd[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|data_rd[0]~feeder_combout\ = \inst13|inst|data_rx\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst|data_rx\(0),
	combout => \inst13|inst|data_rd[0]~feeder_combout\);

-- Location: FF_X51_Y41_N31
\inst13|inst|data_rd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	d => \inst13|inst|data_rd[0]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	ena => \inst13|inst|state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_rd\(0));

-- Location: LCCOMB_X50_Y40_N12
\inst13|inst14|data_out[8]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_out[8]~10_combout\ = (\inst13|inst|data_rd\(0) & (!\inst13|inst|busy~q\ & (\inst13|inst14|state.Rx2~q\ & \inst13|inst14|prev_busy~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|data_rd\(0),
	datab => \inst13|inst|busy~q\,
	datac => \inst13|inst14|state.Rx2~q\,
	datad => \inst13|inst14|prev_busy~q\,
	combout => \inst13|inst14|data_out[8]~10_combout\);

-- Location: FF_X50_Y40_N13
\inst13|inst14|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|data_out[8]~10_combout\,
	ena => \inst13|inst14|data_out[15]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_out\(8));

-- Location: LCCOMB_X49_Y42_N20
\inst13|inst1[8]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[8]~31_combout\ = (\inst13|inst7~combout\ & (\inst13|inst14|data_out\(8) & ((\inst4|COUNT\(8)) # (!\inst4|IO_OUT~combout\)))) # (!\inst13|inst7~combout\ & (((\inst4|COUNT\(8))) # (!\inst4|IO_OUT~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7~combout\,
	datab => \inst4|IO_OUT~combout\,
	datac => \inst4|COUNT\(8),
	datad => \inst13|inst14|data_out\(8),
	combout => \inst13|inst1[8]~31_combout\);

-- Location: LCCOMB_X49_Y42_N12
\inst|Selector19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector19~2_combout\ = (\inst13|inst1[5]~2_combout\ & (\inst13|inst1[8]~32_combout\ & \inst13|inst1[8]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[5]~2_combout\,
	datac => \inst13|inst1[8]~32_combout\,
	datad => \inst13|inst1[8]~31_combout\,
	combout => \inst|Selector19~2_combout\);

-- Location: LCCOMB_X49_Y42_N24
\inst|Selector19~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector19~3_combout\ = (\inst|Selector19~1_combout\) # ((\inst|state.ex_in2~q\ & ((\inst|Selector19~2_combout\) # (!\inst13|inst1[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_in2~q\,
	datab => \inst|Selector19~1_combout\,
	datac => \inst13|inst1[5]~6_combout\,
	datad => \inst|Selector19~2_combout\,
	combout => \inst|Selector19~3_combout\);

-- Location: LCCOMB_X49_Y42_N2
\inst|Selector19~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector19~9_combout\ = (\inst|Selector19~8_combout\) # ((\inst|Selector19~3_combout\) # ((\inst|IR\(8) & \inst|state.ex_loadi~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(8),
	datab => \inst|Selector19~8_combout\,
	datac => \inst|state.ex_loadi~q\,
	datad => \inst|Selector19~3_combout\,
	combout => \inst|Selector19~9_combout\);

-- Location: FF_X49_Y42_N3
\inst|AC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector19~9_combout\,
	ena => \inst13|inst14|ALT_INV_data_out[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|AC\(8));

-- Location: LCCOMB_X55_Y45_N12
\inst|state~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state~48_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(13) & (\inst|altsyncram_component|auto_generated|q_a\(14) & \inst|state~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|altsyncram_component|auto_generated|q_a\(13),
	datac => \inst|altsyncram_component|auto_generated|q_a\(14),
	datad => \inst|state~38_combout\,
	combout => \inst|state~48_combout\);

-- Location: FF_X55_Y45_N13
\inst|state.ex_istore\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|state~48_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_istore~q\);

-- Location: LCCOMB_X51_Y45_N26
\inst|WideOr7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr7~0_combout\ = (\inst|state.decode~q\) # ((\inst|state.ex_in~q\) # ((\inst|state.ex_out~q\) # (\inst|state.ex_iload~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.decode~q\,
	datab => \inst|state.ex_in~q\,
	datac => \inst|state.ex_out~q\,
	datad => \inst|state.ex_iload~q\,
	combout => \inst|WideOr7~0_combout\);

-- Location: LCCOMB_X51_Y45_N4
\inst|WideOr7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr7~combout\ = (!\inst|state.ex_istore~q\ & (!\inst|state.ex_store~q\ & (!\inst|state.fetch~q\ & !\inst|WideOr7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_istore~q\,
	datab => \inst|state.ex_store~q\,
	datac => \inst|state.fetch~q\,
	datad => \inst|WideOr7~0_combout\,
	combout => \inst|WideOr7~combout\);

-- Location: FF_X51_Y45_N5
\inst|state.fetch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|WideOr7~combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.fetch~q\);

-- Location: LCCOMB_X50_Y47_N24
\inst|Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector11~0_combout\ = (!\inst|state.fetch~q\ & ((\inst|WideNor0~combout\ & (\inst|altsyncram_component|auto_generated|q_a\(0))) # (!\inst|WideNor0~combout\ & ((\inst|IR\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(0),
	datab => \inst|state.fetch~q\,
	datac => \inst|IR\(0),
	datad => \inst|WideNor0~combout\,
	combout => \inst|Selector11~0_combout\);

-- Location: LCCOMB_X55_Y46_N30
\inst|Selector11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector11~1_combout\ = (\inst|Selector11~0_combout\) # ((\inst|Add0~0_combout\ & \inst|state.fetch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~0_combout\,
	datac => \inst|state.fetch~q\,
	datad => \inst|Selector11~0_combout\,
	combout => \inst|Selector11~1_combout\);

-- Location: LCCOMB_X55_Y48_N6
\inst|PC_stack[9][0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC_stack[9][0]~feeder_combout\ = \inst|PC_stack[8][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|PC_stack[8][0]~q\,
	combout => \inst|PC_stack[9][0]~feeder_combout\);

-- Location: FF_X55_Y48_N7
\inst|PC_stack[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|PC_stack[9][0]~feeder_combout\,
	ena => \inst|PC_stack[9][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[9][0]~q\);

-- Location: LCCOMB_X55_Y48_N0
\inst|Selector129~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector129~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[9][0]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[7][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[9][0]~q\,
	datac => \inst|PC_stack[7][0]~q\,
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector129~0_combout\);

-- Location: FF_X55_Y48_N1
\inst|PC_stack[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector129~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[8][0]~q\);

-- Location: LCCOMB_X55_Y48_N22
\inst|Selector118~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector118~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[8][0]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[6][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[8][0]~q\,
	datac => \inst|PC_stack[6][0]~q\,
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector118~0_combout\);

-- Location: FF_X55_Y48_N23
\inst|PC_stack[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector118~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[7][0]~q\);

-- Location: LCCOMB_X55_Y48_N4
\inst|Selector107~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector107~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[7][0]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[5][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[7][0]~q\,
	datab => \inst|PC_stack[5][0]~q\,
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector107~0_combout\);

-- Location: FF_X55_Y48_N5
\inst|PC_stack[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector107~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[6][0]~q\);

-- Location: LCCOMB_X55_Y48_N28
\inst|Selector96~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector96~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[6][0]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[4][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC_stack[6][0]~q\,
	datac => \inst|PC_stack[4][0]~q\,
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector96~0_combout\);

-- Location: FF_X55_Y48_N29
\inst|PC_stack[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector96~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[5][0]~q\);

-- Location: LCCOMB_X55_Y48_N24
\inst|Selector85~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector85~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[5][0]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[3][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[3][0]~q\,
	datab => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[5][0]~q\,
	combout => \inst|Selector85~0_combout\);

-- Location: FF_X55_Y48_N25
\inst|PC_stack[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector85~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[4][0]~q\);

-- Location: LCCOMB_X54_Y48_N14
\inst|Selector74~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector74~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[4][0]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[2][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[2][0]~q\,
	datab => \inst|state.ex_return~q\,
	datad => \inst|PC_stack[4][0]~q\,
	combout => \inst|Selector74~0_combout\);

-- Location: FF_X54_Y48_N15
\inst|PC_stack[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector74~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[3][0]~q\);

-- Location: LCCOMB_X54_Y48_N10
\inst|Selector63~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector63~0_combout\ = (\inst|state.ex_return~q\ & ((\inst|PC_stack[3][0]~q\))) # (!\inst|state.ex_return~q\ & (\inst|PC_stack[1][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[1][0]~q\,
	datab => \inst|PC_stack[3][0]~q\,
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector63~0_combout\);

-- Location: FF_X54_Y48_N11
\inst|PC_stack[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector63~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[2][0]~q\);

-- Location: LCCOMB_X54_Y48_N6
\inst|Selector52~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector52~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[2][0]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC_stack[0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[2][0]~q\,
	datab => \inst|PC_stack[0][0]~q\,
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector52~0_combout\);

-- Location: FF_X54_Y48_N7
\inst|PC_stack[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector52~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[1][0]~q\);

-- Location: LCCOMB_X54_Y48_N18
\inst|Selector41~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector41~0_combout\ = (\inst|state.ex_return~q\ & (\inst|PC_stack[1][0]~q\)) # (!\inst|state.ex_return~q\ & ((\inst|PC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PC_stack[1][0]~q\,
	datab => \inst|PC\(0),
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector41~0_combout\);

-- Location: FF_X54_Y48_N19
\inst|PC_stack[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector41~0_combout\,
	ena => \inst|PC_stack[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC_stack[0][0]~q\);

-- Location: LCCOMB_X54_Y48_N16
\inst|Selector11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector11~2_combout\ = (\inst|state.ex_return~q\ & (((\inst|PC_stack[0][0]~q\)))) # (!\inst|state.ex_return~q\ & (\inst|Selector11~1_combout\ & ((\inst|state.init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector11~1_combout\,
	datab => \inst|PC_stack[0][0]~q\,
	datac => \inst|state.init~q\,
	datad => \inst|state.ex_return~q\,
	combout => \inst|Selector11~2_combout\);

-- Location: FF_X54_Y48_N17
\inst|PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector11~2_combout\,
	ena => \inst|PC[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PC\(0));

-- Location: LCCOMB_X54_Y48_N22
\inst|next_mem_addr[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|next_mem_addr[0]~0_combout\ = (\inst|Selector11~0_combout\) # ((\inst|PC\(0) & \inst|state.fetch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PC\(0),
	datac => \inst|Selector11~0_combout\,
	datad => \inst|state.fetch~q\,
	combout => \inst|next_mem_addr[0]~0_combout\);

-- Location: LCCOMB_X55_Y45_N16
\inst|state~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state~34_combout\ = (!\inst|altsyncram_component|auto_generated|q_a\(11) & (\inst|altsyncram_component|auto_generated|q_a\(12) & (\inst|state~32_combout\ & !\inst|altsyncram_component|auto_generated|q_a\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(11),
	datab => \inst|altsyncram_component|auto_generated|q_a\(12),
	datac => \inst|state~32_combout\,
	datad => \inst|altsyncram_component|auto_generated|q_a\(13),
	combout => \inst|state~34_combout\);

-- Location: FF_X55_Y45_N17
\inst|state.ex_in\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|state~34_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_in~q\);

-- Location: FF_X52_Y44_N11
\inst|state.ex_in2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|state.ex_in~q\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_in2~q\);

-- Location: LCCOMB_X50_Y47_N18
\inst|Selector27~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector27~2_combout\ = (\inst|Selector22~6_combout\ & ((\inst|altsyncram_component|auto_generated|q_a\(0)) # ((\inst|state.ex_loadi~q\ & \inst|IR\(0))))) # (!\inst|Selector22~6_combout\ & (\inst|state.ex_loadi~q\ & (\inst|IR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector22~6_combout\,
	datab => \inst|state.ex_loadi~q\,
	datac => \inst|IR\(0),
	datad => \inst|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst|Selector27~2_combout\);

-- Location: LCCOMB_X50_Y47_N28
\inst|Selector27~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector27~1_combout\ = (\inst|state.ex_xor~q\ & (\inst|altsyncram_component|auto_generated|q_a\(0) $ (\inst|AC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(0),
	datac => \inst|AC\(0),
	datad => \inst|state.ex_xor~q\,
	combout => \inst|Selector27~1_combout\);

-- Location: LCCOMB_X50_Y49_N12
\inst|Selector27~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector27~3_combout\ = (\inst|Selector27~2_combout\) # ((\inst|Selector27~1_combout\) # ((\inst|AC[3]~0_combout\ & \inst|Add1~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC[3]~0_combout\,
	datab => \inst|Selector27~2_combout\,
	datac => \inst|Add1~21_combout\,
	datad => \inst|Selector27~1_combout\,
	combout => \inst|Selector27~3_combout\);

-- Location: LCCOMB_X49_Y42_N4
\inst|Selector27~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector27~4_combout\ = (\inst|Selector22~2_combout\ & ((\inst|shifter|auto_generated|sbit_w[56]~76_combout\) # ((\inst|shifter|auto_generated|sbit_w[40]~37_combout\ & !\inst|IR\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|shifter|auto_generated|sbit_w[40]~37_combout\,
	datab => \inst|shifter|auto_generated|sbit_w[56]~76_combout\,
	datac => \inst|Selector22~2_combout\,
	datad => \inst|IR\(2),
	combout => \inst|Selector27~4_combout\);

-- Location: LCCOMB_X49_Y42_N10
\inst|Selector27~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector27~5_combout\ = (\inst|Selector27~3_combout\) # ((\inst|Selector27~4_combout\) # ((\inst|Selector20~0_combout\ & \inst|shifter|auto_generated|sbit_w[48]~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector27~3_combout\,
	datab => \inst|Selector20~0_combout\,
	datac => \inst|Selector27~4_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[48]~83_combout\,
	combout => \inst|Selector27~5_combout\);

-- Location: LCCOMB_X50_Y47_N26
\inst|Selector27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector27~0_combout\ = (\inst|AC\(0) & (((\inst|altsyncram_component|auto_generated|q_a\(0) & \inst|state.ex_and~q\)) # (!\inst|Selector22~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(0),
	datab => \inst|state.ex_and~q\,
	datac => \inst|AC\(0),
	datad => \inst|Selector22~3_combout\,
	combout => \inst|Selector27~0_combout\);

-- Location: LCCOMB_X50_Y40_N6
\inst13|inst14|data_out[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_out[0]~7_combout\ = (\inst13|inst14|prev_busy~q\ & (\inst13|inst14|state.Rx1~q\ & (!\inst13|inst|busy~q\ & \inst13|inst|data_rd\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|prev_busy~q\,
	datab => \inst13|inst14|state.Rx1~q\,
	datac => \inst13|inst|busy~q\,
	datad => \inst13|inst|data_rd\(0),
	combout => \inst13|inst14|data_out[0]~7_combout\);

-- Location: FF_X50_Y40_N7
\inst13|inst14|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|data_out[0]~7_combout\,
	ena => \inst13|inst14|data_out[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_out\(0));

-- Location: LCCOMB_X54_Y43_N6
\inst13|inst1[0]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[0]~20_combout\ = (\inst13|inst7~combout\ & (\inst13|inst14|data_out\(0) & ((\inst4|COUNT\(0)) # (!\inst4|IO_OUT~combout\)))) # (!\inst13|inst7~combout\ & (((\inst4|COUNT\(0))) # (!\inst4|IO_OUT~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7~combout\,
	datab => \inst4|IO_OUT~combout\,
	datac => \inst4|COUNT\(0),
	datad => \inst13|inst14|data_out\(0),
	combout => \inst13|inst1[0]~20_combout\);

-- Location: LCCOMB_X52_Y43_N10
\inst13|inst1[0]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[0]~50_combout\ = (((\inst|IO_WRITE_int~q\) # (!\inst|IR\(4))) # (!\inst|IR\(7))) # (!\inst|IR\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(1),
	datab => \inst|IR\(7),
	datac => \inst|IR\(4),
	datad => \inst|IO_WRITE_int~q\,
	combout => \inst13|inst1[0]~50_combout\);

-- Location: LCCOMB_X54_Y43_N22
\inst13|inst1[0]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[0]~21_combout\ = (\inst13|inst1[0]~50_combout\) # ((\inst13|inst14|go~q\) # ((\inst13|inst14|running~q\) # (!\inst3|SWITCH_EN~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[0]~50_combout\,
	datab => \inst13|inst14|go~q\,
	datac => \inst3|SWITCH_EN~3_combout\,
	datad => \inst13|inst14|running~q\,
	combout => \inst13|inst1[0]~21_combout\);

-- Location: IOIBUF_X51_Y54_N29
\SW[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: FF_X56_Y43_N29
\inst7|B_DI[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SWITCH_EN~clkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|B_DI\(0));

-- Location: LCCOMB_X56_Y43_N28
\inst13|inst1[0]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[0]~22_combout\ = (\inst|IO_WRITE_int~q\ & (\inst|AC\(0) & ((\inst7|B_DI\(0)) # (!\inst3|SWITCH_EN~combout\)))) # (!\inst|IO_WRITE_int~q\ & (((\inst7|B_DI\(0)) # (!\inst3|SWITCH_EN~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IO_WRITE_int~q\,
	datab => \inst|AC\(0),
	datac => \inst7|B_DI\(0),
	datad => \inst3|SWITCH_EN~combout\,
	combout => \inst13|inst1[0]~22_combout\);

-- Location: LCCOMB_X51_Y43_N14
\inst11|Finished[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Finished[0]~9_combout\ = (!\inst13|inst14|data_out[7]~1_combout\ & (\inst|IO_WRITE_int~q\ & \inst3|SQ_EN~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst14|data_out[7]~1_combout\,
	datac => \inst|IO_WRITE_int~q\,
	datad => \inst3|SQ_EN~combout\,
	combout => \inst11|Finished[0]~9_combout\);

-- Location: LCCOMB_X55_Y43_N26
\inst|io_bus|dout[14]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|io_bus|dout[14]~4_combout\ = (\inst|AC\(14)) # (!\inst|IO_WRITE_int~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|AC\(14),
	datad => \inst|IO_WRITE_int~q\,
	combout => \inst|io_bus|dout[14]~4_combout\);

-- Location: LCCOMB_X54_Y43_N10
\inst13|inst1[14]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[14]~47_combout\ = (\inst13|inst1[10]~5_combout\ & (((\inst13|inst1[14]~46_combout\ & \inst|io_bus|dout[14]~4_combout\)) # (!\inst13|inst1[5]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[10]~5_combout\,
	datab => \inst13|inst1[14]~46_combout\,
	datac => \inst|io_bus|dout[14]~4_combout\,
	datad => \inst13|inst1[5]~38_combout\,
	combout => \inst13|inst1[14]~47_combout\);

-- Location: LCCOMB_X54_Y43_N30
\inst11|process_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|process_1~0_combout\ = (\inst|IO_WRITE_int~q\ & \inst3|SQ_EN~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IO_WRITE_int~q\,
	datad => \inst3|SQ_EN~combout\,
	combout => \inst11|process_1~0_combout\);

-- Location: LCCOMB_X54_Y43_N20
\inst11|Duration[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Duration\(0) = (!\inst13|inst14|data_out[7]~1_combout\ & ((\inst11|process_1~0_combout\ & (\inst13|inst1[14]~47_combout\)) # (!\inst11|process_1~0_combout\ & ((\inst11|Duration\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[14]~47_combout\,
	datab => \inst13|inst14|data_out[7]~1_combout\,
	datac => \inst11|process_1~0_combout\,
	datad => \inst11|Duration\(0),
	combout => \inst11|Duration\(0));

-- Location: LCCOMB_X55_Y42_N22
\inst|io_bus|dout[15]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|io_bus|dout[15]~5_combout\ = (\inst|AC\(15)) # (!\inst|IO_WRITE_int~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|AC\(15),
	datac => \inst|IO_WRITE_int~q\,
	combout => \inst|io_bus|dout[15]~5_combout\);

-- Location: LCCOMB_X54_Y42_N20
\inst13|inst1[15]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[15]~49_combout\ = (\inst13|inst1[10]~5_combout\ & (((\inst|io_bus|dout[15]~5_combout\ & \inst13|inst1[15]~48_combout\)) # (!\inst13|inst1[5]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[5]~38_combout\,
	datab => \inst|io_bus|dout[15]~5_combout\,
	datac => \inst13|inst1[10]~5_combout\,
	datad => \inst13|inst1[15]~48_combout\,
	combout => \inst13|inst1[15]~49_combout\);

-- Location: LCCOMB_X54_Y42_N26
\inst11|Duration[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Duration\(1) = (!\inst13|inst14|data_out[7]~1_combout\ & ((\inst11|process_1~0_combout\ & ((\inst13|inst1[15]~49_combout\))) # (!\inst11|process_1~0_combout\ & (\inst11|Duration\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Duration\(1),
	datab => \inst13|inst14|data_out[7]~1_combout\,
	datac => \inst11|process_1~0_combout\,
	datad => \inst13|inst1[15]~49_combout\,
	combout => \inst11|Duration\(1));

-- Location: LCCOMB_X55_Y43_N22
\inst11|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Equal3~0_combout\ = (\inst11|Duration\(0)) # (\inst11|Duration\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Duration\(0),
	datad => \inst11|Duration\(1),
	combout => \inst11|Equal3~0_combout\);

-- Location: LCCOMB_X55_Y43_N14
\inst11|Finished[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Finished[0]~1_combout\ = (\inst13|inst14|data_out[7]~1_combout\) # ((\inst11|Finished[0]~9_combout\ & (!\inst11|Equal3~0_combout\)) # (!\inst11|Finished[0]~9_combout\ & ((\inst11|Finished[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal3~0_combout\,
	datab => \inst11|Finished[0]~1_combout\,
	datac => \inst11|Finished[0]~9_combout\,
	datad => \inst13|inst14|data_out[7]~1_combout\,
	combout => \inst11|Finished[0]~1_combout\);

-- Location: LCCOMB_X77_Y43_N12
\inst5|count_4Hz[0]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_4Hz[0]~21_combout\ = \inst5|count_4Hz\(0) $ (VCC)
-- \inst5|count_4Hz[0]~22\ = CARRY(\inst5|count_4Hz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count_4Hz\(0),
	datad => VCC,
	combout => \inst5|count_4Hz[0]~21_combout\,
	cout => \inst5|count_4Hz[0]~22\);

-- Location: FF_X77_Y43_N13
\inst5|count_4Hz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_4Hz[0]~21_combout\,
	sclr => \inst5|LessThan6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_4Hz\(0));

-- Location: LCCOMB_X77_Y43_N14
\inst5|count_4Hz[1]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_4Hz[1]~23_combout\ = (\inst5|count_4Hz\(1) & (!\inst5|count_4Hz[0]~22\)) # (!\inst5|count_4Hz\(1) & ((\inst5|count_4Hz[0]~22\) # (GND)))
-- \inst5|count_4Hz[1]~24\ = CARRY((!\inst5|count_4Hz[0]~22\) # (!\inst5|count_4Hz\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count_4Hz\(1),
	datad => VCC,
	cin => \inst5|count_4Hz[0]~22\,
	combout => \inst5|count_4Hz[1]~23_combout\,
	cout => \inst5|count_4Hz[1]~24\);

-- Location: FF_X77_Y43_N15
\inst5|count_4Hz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_4Hz[1]~23_combout\,
	sclr => \inst5|LessThan6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_4Hz\(1));

-- Location: LCCOMB_X77_Y43_N16
\inst5|count_4Hz[2]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_4Hz[2]~25_combout\ = (\inst5|count_4Hz\(2) & (\inst5|count_4Hz[1]~24\ $ (GND))) # (!\inst5|count_4Hz\(2) & (!\inst5|count_4Hz[1]~24\ & VCC))
-- \inst5|count_4Hz[2]~26\ = CARRY((\inst5|count_4Hz\(2) & !\inst5|count_4Hz[1]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count_4Hz\(2),
	datad => VCC,
	cin => \inst5|count_4Hz[1]~24\,
	combout => \inst5|count_4Hz[2]~25_combout\,
	cout => \inst5|count_4Hz[2]~26\);

-- Location: FF_X77_Y43_N17
\inst5|count_4Hz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_4Hz[2]~25_combout\,
	sclr => \inst5|LessThan6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_4Hz\(2));

-- Location: LCCOMB_X77_Y43_N18
\inst5|count_4Hz[3]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_4Hz[3]~27_combout\ = (\inst5|count_4Hz\(3) & (!\inst5|count_4Hz[2]~26\)) # (!\inst5|count_4Hz\(3) & ((\inst5|count_4Hz[2]~26\) # (GND)))
-- \inst5|count_4Hz[3]~28\ = CARRY((!\inst5|count_4Hz[2]~26\) # (!\inst5|count_4Hz\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count_4Hz\(3),
	datad => VCC,
	cin => \inst5|count_4Hz[2]~26\,
	combout => \inst5|count_4Hz[3]~27_combout\,
	cout => \inst5|count_4Hz[3]~28\);

-- Location: FF_X77_Y43_N19
\inst5|count_4Hz[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_4Hz[3]~27_combout\,
	sclr => \inst5|LessThan6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_4Hz\(3));

-- Location: LCCOMB_X77_Y43_N20
\inst5|count_4Hz[4]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_4Hz[4]~29_combout\ = (\inst5|count_4Hz\(4) & (\inst5|count_4Hz[3]~28\ $ (GND))) # (!\inst5|count_4Hz\(4) & (!\inst5|count_4Hz[3]~28\ & VCC))
-- \inst5|count_4Hz[4]~30\ = CARRY((\inst5|count_4Hz\(4) & !\inst5|count_4Hz[3]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count_4Hz\(4),
	datad => VCC,
	cin => \inst5|count_4Hz[3]~28\,
	combout => \inst5|count_4Hz[4]~29_combout\,
	cout => \inst5|count_4Hz[4]~30\);

-- Location: FF_X77_Y43_N21
\inst5|count_4Hz[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_4Hz[4]~29_combout\,
	sclr => \inst5|LessThan6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_4Hz\(4));

-- Location: LCCOMB_X77_Y43_N22
\inst5|count_4Hz[5]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_4Hz[5]~31_combout\ = (\inst5|count_4Hz\(5) & (!\inst5|count_4Hz[4]~30\)) # (!\inst5|count_4Hz\(5) & ((\inst5|count_4Hz[4]~30\) # (GND)))
-- \inst5|count_4Hz[5]~32\ = CARRY((!\inst5|count_4Hz[4]~30\) # (!\inst5|count_4Hz\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count_4Hz\(5),
	datad => VCC,
	cin => \inst5|count_4Hz[4]~30\,
	combout => \inst5|count_4Hz[5]~31_combout\,
	cout => \inst5|count_4Hz[5]~32\);

-- Location: FF_X77_Y43_N23
\inst5|count_4Hz[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_4Hz[5]~31_combout\,
	sclr => \inst5|LessThan6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_4Hz\(5));

-- Location: LCCOMB_X77_Y43_N24
\inst5|count_4Hz[6]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_4Hz[6]~33_combout\ = (\inst5|count_4Hz\(6) & (\inst5|count_4Hz[5]~32\ $ (GND))) # (!\inst5|count_4Hz\(6) & (!\inst5|count_4Hz[5]~32\ & VCC))
-- \inst5|count_4Hz[6]~34\ = CARRY((\inst5|count_4Hz\(6) & !\inst5|count_4Hz[5]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count_4Hz\(6),
	datad => VCC,
	cin => \inst5|count_4Hz[5]~32\,
	combout => \inst5|count_4Hz[6]~33_combout\,
	cout => \inst5|count_4Hz[6]~34\);

-- Location: FF_X77_Y43_N25
\inst5|count_4Hz[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_4Hz[6]~33_combout\,
	sclr => \inst5|LessThan6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_4Hz\(6));

-- Location: LCCOMB_X77_Y43_N26
\inst5|count_4Hz[7]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_4Hz[7]~35_combout\ = (\inst5|count_4Hz\(7) & (!\inst5|count_4Hz[6]~34\)) # (!\inst5|count_4Hz\(7) & ((\inst5|count_4Hz[6]~34\) # (GND)))
-- \inst5|count_4Hz[7]~36\ = CARRY((!\inst5|count_4Hz[6]~34\) # (!\inst5|count_4Hz\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count_4Hz\(7),
	datad => VCC,
	cin => \inst5|count_4Hz[6]~34\,
	combout => \inst5|count_4Hz[7]~35_combout\,
	cout => \inst5|count_4Hz[7]~36\);

-- Location: FF_X77_Y43_N27
\inst5|count_4Hz[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_4Hz[7]~35_combout\,
	sclr => \inst5|LessThan6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_4Hz\(7));

-- Location: LCCOMB_X77_Y43_N28
\inst5|count_4Hz[8]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_4Hz[8]~37_combout\ = (\inst5|count_4Hz\(8) & (\inst5|count_4Hz[7]~36\ $ (GND))) # (!\inst5|count_4Hz\(8) & (!\inst5|count_4Hz[7]~36\ & VCC))
-- \inst5|count_4Hz[8]~38\ = CARRY((\inst5|count_4Hz\(8) & !\inst5|count_4Hz[7]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count_4Hz\(8),
	datad => VCC,
	cin => \inst5|count_4Hz[7]~36\,
	combout => \inst5|count_4Hz[8]~37_combout\,
	cout => \inst5|count_4Hz[8]~38\);

-- Location: FF_X77_Y43_N29
\inst5|count_4Hz[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_4Hz[8]~37_combout\,
	sclr => \inst5|LessThan6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_4Hz\(8));

-- Location: LCCOMB_X77_Y43_N30
\inst5|count_4Hz[9]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_4Hz[9]~39_combout\ = (\inst5|count_4Hz\(9) & (!\inst5|count_4Hz[8]~38\)) # (!\inst5|count_4Hz\(9) & ((\inst5|count_4Hz[8]~38\) # (GND)))
-- \inst5|count_4Hz[9]~40\ = CARRY((!\inst5|count_4Hz[8]~38\) # (!\inst5|count_4Hz\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count_4Hz\(9),
	datad => VCC,
	cin => \inst5|count_4Hz[8]~38\,
	combout => \inst5|count_4Hz[9]~39_combout\,
	cout => \inst5|count_4Hz[9]~40\);

-- Location: FF_X77_Y43_N31
\inst5|count_4Hz[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_4Hz[9]~39_combout\,
	sclr => \inst5|LessThan6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_4Hz\(9));

-- Location: LCCOMB_X77_Y42_N0
\inst5|count_4Hz[10]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_4Hz[10]~41_combout\ = (\inst5|count_4Hz\(10) & (\inst5|count_4Hz[9]~40\ $ (GND))) # (!\inst5|count_4Hz\(10) & (!\inst5|count_4Hz[9]~40\ & VCC))
-- \inst5|count_4Hz[10]~42\ = CARRY((\inst5|count_4Hz\(10) & !\inst5|count_4Hz[9]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count_4Hz\(10),
	datad => VCC,
	cin => \inst5|count_4Hz[9]~40\,
	combout => \inst5|count_4Hz[10]~41_combout\,
	cout => \inst5|count_4Hz[10]~42\);

-- Location: FF_X77_Y42_N1
\inst5|count_4Hz[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_4Hz[10]~41_combout\,
	sclr => \inst5|LessThan6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_4Hz\(10));

-- Location: LCCOMB_X77_Y42_N2
\inst5|count_4Hz[11]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_4Hz[11]~43_combout\ = (\inst5|count_4Hz\(11) & (!\inst5|count_4Hz[10]~42\)) # (!\inst5|count_4Hz\(11) & ((\inst5|count_4Hz[10]~42\) # (GND)))
-- \inst5|count_4Hz[11]~44\ = CARRY((!\inst5|count_4Hz[10]~42\) # (!\inst5|count_4Hz\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count_4Hz\(11),
	datad => VCC,
	cin => \inst5|count_4Hz[10]~42\,
	combout => \inst5|count_4Hz[11]~43_combout\,
	cout => \inst5|count_4Hz[11]~44\);

-- Location: FF_X77_Y42_N3
\inst5|count_4Hz[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_4Hz[11]~43_combout\,
	sclr => \inst5|LessThan6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_4Hz\(11));

-- Location: LCCOMB_X77_Y42_N4
\inst5|count_4Hz[12]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_4Hz[12]~45_combout\ = (\inst5|count_4Hz\(12) & (\inst5|count_4Hz[11]~44\ $ (GND))) # (!\inst5|count_4Hz\(12) & (!\inst5|count_4Hz[11]~44\ & VCC))
-- \inst5|count_4Hz[12]~46\ = CARRY((\inst5|count_4Hz\(12) & !\inst5|count_4Hz[11]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count_4Hz\(12),
	datad => VCC,
	cin => \inst5|count_4Hz[11]~44\,
	combout => \inst5|count_4Hz[12]~45_combout\,
	cout => \inst5|count_4Hz[12]~46\);

-- Location: FF_X77_Y42_N5
\inst5|count_4Hz[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_4Hz[12]~45_combout\,
	sclr => \inst5|LessThan6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_4Hz\(12));

-- Location: LCCOMB_X77_Y42_N6
\inst5|count_4Hz[13]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_4Hz[13]~47_combout\ = (\inst5|count_4Hz\(13) & (!\inst5|count_4Hz[12]~46\)) # (!\inst5|count_4Hz\(13) & ((\inst5|count_4Hz[12]~46\) # (GND)))
-- \inst5|count_4Hz[13]~48\ = CARRY((!\inst5|count_4Hz[12]~46\) # (!\inst5|count_4Hz\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count_4Hz\(13),
	datad => VCC,
	cin => \inst5|count_4Hz[12]~46\,
	combout => \inst5|count_4Hz[13]~47_combout\,
	cout => \inst5|count_4Hz[13]~48\);

-- Location: FF_X77_Y42_N7
\inst5|count_4Hz[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_4Hz[13]~47_combout\,
	sclr => \inst5|LessThan6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_4Hz\(13));

-- Location: LCCOMB_X77_Y42_N8
\inst5|count_4Hz[14]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_4Hz[14]~49_combout\ = (\inst5|count_4Hz\(14) & (\inst5|count_4Hz[13]~48\ $ (GND))) # (!\inst5|count_4Hz\(14) & (!\inst5|count_4Hz[13]~48\ & VCC))
-- \inst5|count_4Hz[14]~50\ = CARRY((\inst5|count_4Hz\(14) & !\inst5|count_4Hz[13]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count_4Hz\(14),
	datad => VCC,
	cin => \inst5|count_4Hz[13]~48\,
	combout => \inst5|count_4Hz[14]~49_combout\,
	cout => \inst5|count_4Hz[14]~50\);

-- Location: FF_X77_Y42_N9
\inst5|count_4Hz[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_4Hz[14]~49_combout\,
	sclr => \inst5|LessThan6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_4Hz\(14));

-- Location: LCCOMB_X77_Y42_N10
\inst5|count_4Hz[15]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_4Hz[15]~51_combout\ = (\inst5|count_4Hz\(15) & (!\inst5|count_4Hz[14]~50\)) # (!\inst5|count_4Hz\(15) & ((\inst5|count_4Hz[14]~50\) # (GND)))
-- \inst5|count_4Hz[15]~52\ = CARRY((!\inst5|count_4Hz[14]~50\) # (!\inst5|count_4Hz\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count_4Hz\(15),
	datad => VCC,
	cin => \inst5|count_4Hz[14]~50\,
	combout => \inst5|count_4Hz[15]~51_combout\,
	cout => \inst5|count_4Hz[15]~52\);

-- Location: FF_X77_Y42_N11
\inst5|count_4Hz[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_4Hz[15]~51_combout\,
	sclr => \inst5|LessThan6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_4Hz\(15));

-- Location: LCCOMB_X77_Y42_N12
\inst5|count_4Hz[16]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_4Hz[16]~53_combout\ = (\inst5|count_4Hz\(16) & (\inst5|count_4Hz[15]~52\ $ (GND))) # (!\inst5|count_4Hz\(16) & (!\inst5|count_4Hz[15]~52\ & VCC))
-- \inst5|count_4Hz[16]~54\ = CARRY((\inst5|count_4Hz\(16) & !\inst5|count_4Hz[15]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count_4Hz\(16),
	datad => VCC,
	cin => \inst5|count_4Hz[15]~52\,
	combout => \inst5|count_4Hz[16]~53_combout\,
	cout => \inst5|count_4Hz[16]~54\);

-- Location: FF_X77_Y42_N13
\inst5|count_4Hz[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_4Hz[16]~53_combout\,
	sclr => \inst5|LessThan6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_4Hz\(16));

-- Location: LCCOMB_X77_Y42_N14
\inst5|count_4Hz[17]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_4Hz[17]~55_combout\ = (\inst5|count_4Hz\(17) & (!\inst5|count_4Hz[16]~54\)) # (!\inst5|count_4Hz\(17) & ((\inst5|count_4Hz[16]~54\) # (GND)))
-- \inst5|count_4Hz[17]~56\ = CARRY((!\inst5|count_4Hz[16]~54\) # (!\inst5|count_4Hz\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count_4Hz\(17),
	datad => VCC,
	cin => \inst5|count_4Hz[16]~54\,
	combout => \inst5|count_4Hz[17]~55_combout\,
	cout => \inst5|count_4Hz[17]~56\);

-- Location: FF_X77_Y42_N15
\inst5|count_4Hz[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_4Hz[17]~55_combout\,
	sclr => \inst5|LessThan6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_4Hz\(17));

-- Location: LCCOMB_X77_Y42_N16
\inst5|count_4Hz[18]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_4Hz[18]~57_combout\ = (\inst5|count_4Hz\(18) & (\inst5|count_4Hz[17]~56\ $ (GND))) # (!\inst5|count_4Hz\(18) & (!\inst5|count_4Hz[17]~56\ & VCC))
-- \inst5|count_4Hz[18]~58\ = CARRY((\inst5|count_4Hz\(18) & !\inst5|count_4Hz[17]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count_4Hz\(18),
	datad => VCC,
	cin => \inst5|count_4Hz[17]~56\,
	combout => \inst5|count_4Hz[18]~57_combout\,
	cout => \inst5|count_4Hz[18]~58\);

-- Location: FF_X77_Y42_N17
\inst5|count_4Hz[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_4Hz[18]~57_combout\,
	sclr => \inst5|LessThan6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_4Hz\(18));

-- Location: LCCOMB_X77_Y42_N18
\inst5|count_4Hz[19]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_4Hz[19]~59_combout\ = (\inst5|count_4Hz\(19) & (!\inst5|count_4Hz[18]~58\)) # (!\inst5|count_4Hz\(19) & ((\inst5|count_4Hz[18]~58\) # (GND)))
-- \inst5|count_4Hz[19]~60\ = CARRY((!\inst5|count_4Hz[18]~58\) # (!\inst5|count_4Hz\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|count_4Hz\(19),
	datad => VCC,
	cin => \inst5|count_4Hz[18]~58\,
	combout => \inst5|count_4Hz[19]~59_combout\,
	cout => \inst5|count_4Hz[19]~60\);

-- Location: FF_X77_Y42_N19
\inst5|count_4Hz[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_4Hz[19]~59_combout\,
	sclr => \inst5|LessThan6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_4Hz\(19));

-- Location: LCCOMB_X77_Y42_N20
\inst5|count_4Hz[20]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_4Hz[20]~61_combout\ = \inst5|count_4Hz[19]~60\ $ (!\inst5|count_4Hz\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst5|count_4Hz\(20),
	cin => \inst5|count_4Hz[19]~60\,
	combout => \inst5|count_4Hz[20]~61_combout\);

-- Location: FF_X77_Y42_N21
\inst5|count_4Hz[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_4Hz[20]~61_combout\,
	sclr => \inst5|LessThan6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_4Hz\(20));

-- Location: LCCOMB_X77_Y43_N10
\inst5|LessThan6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan6~0_combout\ = (((!\inst5|count_4Hz\(2)) # (!\inst5|count_4Hz\(1))) # (!\inst5|count_4Hz\(3))) # (!\inst5|count_4Hz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count_4Hz\(0),
	datab => \inst5|count_4Hz\(3),
	datac => \inst5|count_4Hz\(1),
	datad => \inst5|count_4Hz\(2),
	combout => \inst5|LessThan6~0_combout\);

-- Location: LCCOMB_X77_Y43_N4
\inst5|LessThan6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan6~1_combout\ = (\inst5|LessThan6~0_combout\ & (!\inst5|count_4Hz\(8) & (!\inst5|count_4Hz\(5) & !\inst5|count_4Hz\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|LessThan6~0_combout\,
	datab => \inst5|count_4Hz\(8),
	datac => \inst5|count_4Hz\(5),
	datad => \inst5|count_4Hz\(4),
	combout => \inst5|LessThan6~1_combout\);

-- Location: LCCOMB_X77_Y43_N6
\inst5|LessThan6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan6~2_combout\ = ((!\inst5|count_4Hz\(8) & ((!\inst5|count_4Hz\(6)) # (!\inst5|count_4Hz\(7))))) # (!\inst5|count_4Hz\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count_4Hz\(7),
	datab => \inst5|count_4Hz\(8),
	datac => \inst5|count_4Hz\(9),
	datad => \inst5|count_4Hz\(6),
	combout => \inst5|LessThan6~2_combout\);

-- Location: LCCOMB_X77_Y42_N30
\inst5|LessThan6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan6~3_combout\ = (!\inst5|count_4Hz\(11) & (!\inst5|count_4Hz\(10) & ((\inst5|LessThan6~1_combout\) # (\inst5|LessThan6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|LessThan6~1_combout\,
	datab => \inst5|count_4Hz\(11),
	datac => \inst5|LessThan6~2_combout\,
	datad => \inst5|count_4Hz\(10),
	combout => \inst5|LessThan6~3_combout\);

-- Location: LCCOMB_X77_Y42_N24
\inst5|LessThan6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan6~4_combout\ = (\inst5|count_4Hz\(15)) # ((\inst5|count_4Hz\(13)) # ((\inst5|count_4Hz\(12) & !\inst5|LessThan6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count_4Hz\(15),
	datab => \inst5|count_4Hz\(12),
	datac => \inst5|LessThan6~3_combout\,
	datad => \inst5|count_4Hz\(13),
	combout => \inst5|LessThan6~4_combout\);

-- Location: LCCOMB_X77_Y42_N26
\inst5|LessThan6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan6~5_combout\ = (((!\inst5|count_4Hz\(14) & !\inst5|LessThan6~4_combout\)) # (!\inst5|count_4Hz\(17))) # (!\inst5|count_4Hz\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count_4Hz\(16),
	datab => \inst5|count_4Hz\(17),
	datac => \inst5|count_4Hz\(14),
	datad => \inst5|LessThan6~4_combout\,
	combout => \inst5|LessThan6~5_combout\);

-- Location: LCCOMB_X77_Y42_N28
\inst5|LessThan6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|LessThan6~6_combout\ = (\inst5|count_4Hz\(20) & ((\inst5|count_4Hz\(19)) # ((\inst5|count_4Hz\(18)) # (!\inst5|LessThan6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count_4Hz\(20),
	datab => \inst5|count_4Hz\(19),
	datac => \inst5|LessThan6~5_combout\,
	datad => \inst5|count_4Hz\(18),
	combout => \inst5|LessThan6~6_combout\);

-- Location: LCCOMB_X77_Y43_N8
\inst5|clock_4Hz_int~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|clock_4Hz_int~0_combout\ = \inst5|clock_4Hz_int~q\ $ (\inst5|LessThan6~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|clock_4Hz_int~q\,
	datad => \inst5|LessThan6~6_combout\,
	combout => \inst5|clock_4Hz_int~0_combout\);

-- Location: FF_X77_Y43_N9
\inst5|clock_4Hz_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|clock_4Hz_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|clock_4Hz_int~q\);

-- Location: FF_X56_Y43_N31
\inst5|clock_4Hz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst5|clock_4Hz_int~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|clock_4Hz~q\);

-- Location: CLKCTRL_G5
\inst5|clock_4Hz~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst5|clock_4Hz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst5|clock_4Hz~clkctrl_outclk\);

-- Location: LCCOMB_X55_Y43_N4
\inst11|DurCount[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|DurCount[0]~2_combout\ = ((\inst13|inst14|data_out[7]~1_combout\) # (!\inst11|Equal3~0_combout\)) # (!\inst11|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal1~0_combout\,
	datac => \inst11|Equal3~0_combout\,
	datad => \inst13|inst14|data_out[7]~1_combout\,
	combout => \inst11|DurCount[0]~2_combout\);

-- Location: LCCOMB_X55_Y43_N12
\inst11|DurCount[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|DurCount[0]~3_combout\ = \inst11|DurCount\(0) $ (((!\inst11|DurCount[0]~2_combout\ & !\inst11|Finished[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|DurCount[0]~2_combout\,
	datab => \inst11|Finished[0]~2_combout\,
	datac => \inst11|DurCount\(0),
	combout => \inst11|DurCount[0]~3_combout\);

-- Location: FF_X55_Y43_N13
\inst11|DurCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_4Hz~clkctrl_outclk\,
	d => \inst11|DurCount[0]~3_combout\,
	clrn => \inst11|ALT_INV_Finished[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|DurCount\(0));

-- Location: LCCOMB_X55_Y43_N16
\inst11|DurCount[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|DurCount[0]~0_combout\ = (\inst13|inst14|data_out[7]~1_combout\) # (((\inst11|Finished[0]~2_combout\) # (!\inst11|Equal3~0_combout\)) # (!\inst11|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|data_out[7]~1_combout\,
	datab => \inst11|Equal1~0_combout\,
	datac => \inst11|Equal3~0_combout\,
	datad => \inst11|Finished[0]~2_combout\,
	combout => \inst11|DurCount[0]~0_combout\);

-- Location: LCCOMB_X55_Y43_N30
\inst11|DurCount[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|DurCount[1]~1_combout\ = \inst11|DurCount\(1) $ (((\inst11|DurCount\(0) & !\inst11|DurCount[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|DurCount\(0),
	datac => \inst11|DurCount\(1),
	datad => \inst11|DurCount[0]~0_combout\,
	combout => \inst11|DurCount[1]~1_combout\);

-- Location: FF_X55_Y43_N31
\inst11|DurCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_4Hz~clkctrl_outclk\,
	d => \inst11|DurCount[1]~1_combout\,
	clrn => \inst11|ALT_INV_Finished[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|DurCount\(1));

-- Location: LCCOMB_X55_Y43_N28
\inst11|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Equal1~0_combout\ = (\inst11|Duration\(1) & ((\inst11|Duration\(0) $ (\inst11|DurCount\(0))) # (!\inst11|DurCount\(1)))) # (!\inst11|Duration\(1) & ((\inst11|DurCount\(1)) # (\inst11|Duration\(0) $ (\inst11|DurCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Duration\(1),
	datab => \inst11|Duration\(0),
	datac => \inst11|DurCount\(1),
	datad => \inst11|DurCount\(0),
	combout => \inst11|Equal1~0_combout\);

-- Location: LCCOMB_X55_Y43_N10
\inst11|Finished[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Finished[0]~4_combout\ = \inst11|Finished[0]~1_combout\ $ (((\inst11|Finished[0]~2_combout\) # ((!\inst11|Equal1~0_combout\) # (!\inst11|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Finished[0]~2_combout\,
	datab => \inst11|Finished[0]~1_combout\,
	datac => \inst11|Equal3~0_combout\,
	datad => \inst11|Equal1~0_combout\,
	combout => \inst11|Finished[0]~4_combout\);

-- Location: LCCOMB_X55_Y43_N18
\inst11|Finished[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Finished[0]~0_combout\ = (\inst11|Finished[0]~9_combout\) # (\inst13|inst14|data_out[7]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Finished[0]~9_combout\,
	datad => \inst13|inst14|data_out[7]~1_combout\,
	combout => \inst11|Finished[0]~0_combout\);

-- Location: FF_X55_Y43_N11
\inst11|Finished[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_4Hz~q\,
	d => \inst11|Finished[0]~4_combout\,
	clrn => \inst11|ALT_INV_Finished[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|Finished[0]~_emulated_q\);

-- Location: LCCOMB_X55_Y43_N24
\inst11|Finished[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Finished[0]~3_combout\ = \inst11|Finished[0]~1_combout\ $ (\inst11|Finished[0]~_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|Finished[0]~1_combout\,
	datad => \inst11|Finished[0]~_emulated_q\,
	combout => \inst11|Finished[0]~3_combout\);

-- Location: LCCOMB_X55_Y43_N6
\inst11|Finished[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Finished[0]~2_combout\ = (\inst13|inst14|data_out[7]~1_combout\) # ((\inst11|Finished[0]~9_combout\ & (!\inst11|Equal3~0_combout\)) # (!\inst11|Finished[0]~9_combout\ & ((\inst11|Finished[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|data_out[7]~1_combout\,
	datab => \inst11|Finished[0]~9_combout\,
	datac => \inst11|Equal3~0_combout\,
	datad => \inst11|Finished[0]~3_combout\,
	combout => \inst11|Finished[0]~2_combout\);

-- Location: LCCOMB_X54_Y43_N12
\inst13|inst1[0]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[0]~23_combout\ = (\inst13|inst1[0]~22_combout\ & ((\inst11|Finished[0]~2_combout\) # ((\inst|IO_WRITE_int~q\) # (!\inst3|SQ_EN~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[0]~22_combout\,
	datab => \inst11|Finished[0]~2_combout\,
	datac => \inst|IO_WRITE_int~q\,
	datad => \inst3|SQ_EN~combout\,
	combout => \inst13|inst1[0]~23_combout\);

-- Location: LCCOMB_X54_Y43_N28
\inst|Selector27~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector27~6_combout\ = ((\inst13|inst1[0]~20_combout\ & (\inst13|inst1[0]~21_combout\ & \inst13|inst1[0]~23_combout\))) # (!\inst13|inst1[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[0]~20_combout\,
	datab => \inst13|inst1[5]~6_combout\,
	datac => \inst13|inst1[0]~21_combout\,
	datad => \inst13|inst1[0]~23_combout\,
	combout => \inst|Selector27~6_combout\);

-- Location: LCCOMB_X54_Y43_N14
\inst|Selector27~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector27~7_combout\ = (\inst|Selector27~5_combout\) # ((\inst|Selector27~0_combout\) # ((\inst|state.ex_in2~q\ & \inst|Selector27~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_in2~q\,
	datab => \inst|Selector27~5_combout\,
	datac => \inst|Selector27~0_combout\,
	datad => \inst|Selector27~6_combout\,
	combout => \inst|Selector27~7_combout\);

-- Location: FF_X54_Y43_N15
\inst|AC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector27~7_combout\,
	ena => \inst13|inst14|ALT_INV_data_out[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|AC\(0));

-- Location: FF_X50_Y43_N15
\inst|IR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|altsyncram_component|auto_generated|q_a\(2),
	sload => VCC,
	ena => \inst|IR[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IR\(2));

-- Location: LCCOMB_X52_Y43_N22
\inst|Selector16~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector16~4_combout\ = (\inst|Selector20~0_combout\ & ((\inst|shifter|auto_generated|sbit_w[59]~60_combout\) # ((!\inst|IR\(2) & \inst|shifter|auto_generated|sbit_w[43]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(2),
	datab => \inst|shifter|auto_generated|sbit_w[59]~60_combout\,
	datac => \inst|Selector20~0_combout\,
	datad => \inst|shifter|auto_generated|sbit_w[43]~62_combout\,
	combout => \inst|Selector16~4_combout\);

-- Location: LCCOMB_X52_Y43_N26
\inst|Selector16~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector16~6_combout\ = (\inst|AC\(11) & (((\inst|altsyncram_component|auto_generated|q_a\(11) & \inst|state.ex_and~q\)) # (!\inst|Selector22~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(11),
	datab => \inst|state.ex_and~q\,
	datac => \inst|Selector22~3_combout\,
	datad => \inst|AC\(11),
	combout => \inst|Selector16~6_combout\);

-- Location: LCCOMB_X52_Y43_N2
\inst|Selector16~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector16~7_combout\ = (\inst|state.ex_xor~q\ & (\inst|altsyncram_component|auto_generated|q_a\(11) $ (\inst|AC\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(11),
	datab => \inst|AC\(11),
	datad => \inst|state.ex_xor~q\,
	combout => \inst|Selector16~7_combout\);

-- Location: LCCOMB_X50_Y46_N10
\inst|Selector16~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector16~8_combout\ = (\inst|Selector16~7_combout\) # (((\inst|AC[3]~0_combout\ & \inst|Add1~61_combout\)) # (!\inst|Selector16~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC[3]~0_combout\,
	datab => \inst|Selector16~7_combout\,
	datac => \inst|Add1~61_combout\,
	datad => \inst|Selector16~1_combout\,
	combout => \inst|Selector16~8_combout\);

-- Location: LCCOMB_X52_Y43_N4
\inst|Selector16~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector16~9_combout\ = (\inst|Selector16~6_combout\) # ((\inst|Selector16~8_combout\) # ((\inst|Selector22~6_combout\ & \inst|altsyncram_component|auto_generated|q_a\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector16~6_combout\,
	datab => \inst|Selector16~8_combout\,
	datac => \inst|Selector22~6_combout\,
	datad => \inst|altsyncram_component|auto_generated|q_a\(11),
	combout => \inst|Selector16~9_combout\);

-- Location: LCCOMB_X52_Y44_N30
\inst|Selector16~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector16~5_combout\ = (!\inst|IR\(2) & (\inst|shifter|auto_generated|sbit_w[35]~56_combout\ & \inst|Selector19~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|IR\(2),
	datac => \inst|shifter|auto_generated|sbit_w[35]~56_combout\,
	datad => \inst|Selector19~7_combout\,
	combout => \inst|Selector16~5_combout\);

-- Location: LCCOMB_X52_Y43_N6
\inst|io_bus|dout[11]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|io_bus|dout[11]~1_combout\ = (\inst|AC\(11)) # (!\inst|IO_WRITE_int~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|IO_WRITE_int~q\,
	datad => \inst|AC\(11),
	combout => \inst|io_bus|dout[11]~1_combout\);

-- Location: LCCOMB_X52_Y43_N18
\inst|Selector16~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector16~2_combout\ = (\inst|state.ex_in2~q\ & \inst13|inst1[10]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_in2~q\,
	datad => \inst13|inst1[10]~5_combout\,
	combout => \inst|Selector16~2_combout\);

-- Location: LCCOMB_X52_Y43_N12
\inst13|inst14|data_out[11]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_out[11]~14_combout\ = (\inst13|inst14|prev_busy~q\ & (!\inst13|inst|busy~q\ & (\inst13|inst14|state.Rx2~q\ & \inst13|inst|data_rd\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|prev_busy~q\,
	datab => \inst13|inst|busy~q\,
	datac => \inst13|inst14|state.Rx2~q\,
	datad => \inst13|inst|data_rd\(3),
	combout => \inst13|inst14|data_out[11]~14_combout\);

-- Location: FF_X52_Y43_N13
\inst13|inst14|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|data_out[11]~14_combout\,
	ena => \inst13|inst14|data_out[15]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_out\(11));

-- Location: LCCOMB_X52_Y43_N20
\inst13|inst1[11]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[11]~40_combout\ = (\inst4|IO_OUT~combout\ & (\inst4|COUNT\(11) & ((\inst13|inst14|data_out\(11)) # (!\inst13|inst7~combout\)))) # (!\inst4|IO_OUT~combout\ & (((\inst13|inst14|data_out\(11))) # (!\inst13|inst7~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|IO_OUT~combout\,
	datab => \inst13|inst7~combout\,
	datac => \inst4|COUNT\(11),
	datad => \inst13|inst14|data_out\(11),
	combout => \inst13|inst1[11]~40_combout\);

-- Location: LCCOMB_X52_Y43_N16
\inst|Selector16~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector16~3_combout\ = (\inst|Selector16~2_combout\ & (((\inst|io_bus|dout[11]~1_combout\ & \inst13|inst1[11]~40_combout\)) # (!\inst13|inst1[5]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|io_bus|dout[11]~1_combout\,
	datab => \inst|Selector16~2_combout\,
	datac => \inst13|inst1[5]~38_combout\,
	datad => \inst13|inst1[11]~40_combout\,
	combout => \inst|Selector16~3_combout\);

-- Location: LCCOMB_X52_Y43_N0
\inst|Selector16~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector16~10_combout\ = (\inst|Selector16~4_combout\) # ((\inst|Selector16~9_combout\) # ((\inst|Selector16~5_combout\) # (\inst|Selector16~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector16~4_combout\,
	datab => \inst|Selector16~9_combout\,
	datac => \inst|Selector16~5_combout\,
	datad => \inst|Selector16~3_combout\,
	combout => \inst|Selector16~10_combout\);

-- Location: FF_X52_Y43_N1
\inst|AC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector16~10_combout\,
	ena => \inst13|inst14|ALT_INV_data_out[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|AC\(11));

-- Location: LCCOMB_X51_Y45_N22
\inst|state~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state~47_combout\ = (!\inst|altsyncram_component|auto_generated|q_a\(14) & (!\inst|altsyncram_component|auto_generated|q_a\(13) & \inst|state~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(14),
	datac => \inst|altsyncram_component|auto_generated|q_a\(13),
	datad => \inst|state~43_combout\,
	combout => \inst|state~47_combout\);

-- Location: FF_X51_Y45_N23
\inst|state.ex_store\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|state~47_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_store~q\);

-- Location: FF_X51_Y45_N1
\inst|state.ex_store2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|state.ex_store~q\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state.ex_store2~q\);

-- Location: LCCOMB_X51_Y45_N0
\inst|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector0~0_combout\ = (\inst|MW~q\ & (!\inst|state.ex_istore2~q\ & (!\inst|state.ex_store2~q\ & \inst|state.init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MW~q\,
	datab => \inst|state.ex_istore2~q\,
	datac => \inst|state.ex_store2~q\,
	datad => \inst|state.init~q\,
	combout => \inst|Selector0~0_combout\);

-- Location: LCCOMB_X51_Y45_N14
\inst|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector0~1_combout\ = (\inst|state.ex_store~q\) # ((\inst|state.ex_istore~q\) # (\inst|Selector0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.ex_store~q\,
	datac => \inst|state.ex_istore~q\,
	datad => \inst|Selector0~0_combout\,
	combout => \inst|Selector0~1_combout\);

-- Location: FF_X51_Y45_N15
\inst|MW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector0~1_combout\,
	ena => \inst13|inst14|ALT_INV_data_out[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MW~q\);

-- Location: LCCOMB_X55_Y45_N10
\inst|state~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|state~33_combout\ = (\inst|altsyncram_component|auto_generated|q_a\(11) & (\inst|altsyncram_component|auto_generated|q_a\(12) & (\inst|state~32_combout\ & !\inst|altsyncram_component|auto_generated|q_a\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(11),
	datab => \inst|altsyncram_component|auto_generated|q_a\(12),
	datac => \inst|state~32_combout\,
	datad => \inst|altsyncram_component|auto_generated|q_a\(13),
	combout => \inst|state~33_combout\);

-- Location: LCCOMB_X51_Y45_N20
\inst|Selector28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector28~0_combout\ = (\inst|IO_WRITE_int~q\ & ((\inst|state.decode~q\) # ((!\inst|state.fetch~q\ & \inst|state.init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IO_WRITE_int~q\,
	datab => \inst|state.fetch~q\,
	datac => \inst|state.decode~q\,
	datad => \inst|state.init~q\,
	combout => \inst|Selector28~0_combout\);

-- Location: LCCOMB_X51_Y45_N16
\inst|Selector28~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Selector28~1_combout\ = (\inst|state~33_combout\) # (\inst|Selector28~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state~33_combout\,
	datad => \inst|Selector28~0_combout\,
	combout => \inst|Selector28~1_combout\);

-- Location: FF_X51_Y45_N17
\inst|IO_WRITE_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector28~1_combout\,
	ena => \inst13|inst14|ALT_INV_data_out[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|IO_WRITE_int~q\);

-- Location: LCCOMB_X52_Y43_N24
\inst3|I2C_DATA_EN~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|I2C_DATA_EN~2_combout\ = (\inst|IR\(4) & \inst|IR\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|IR\(4),
	datad => \inst|IR\(7),
	combout => \inst3|I2C_DATA_EN~2_combout\);

-- Location: LCCOMB_X52_Y43_N14
\inst13|inst12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst12~combout\ = LCELL((\inst|IO_WRITE_int~q\ & (\inst3|I2C_DATA_EN~2_combout\ & (!\inst|IR\(1) & \inst3|SWITCH_EN~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IO_WRITE_int~q\,
	datab => \inst3|I2C_DATA_EN~2_combout\,
	datac => \inst|IR\(1),
	datad => \inst3|SWITCH_EN~3_combout\,
	combout => \inst13|inst12~combout\);

-- Location: CLKCTRL_G7
\inst13|inst12~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst13|inst12~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst13|inst12~clkctrl_outclk\);

-- Location: LCCOMB_X49_Y42_N30
\inst13|inst1[8]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[8]~33_combout\ = ((\inst13|inst1[5]~2_combout\ & (\inst13|inst1[8]~32_combout\ & \inst13|inst1[8]~31_combout\))) # (!\inst13|inst1[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[5]~2_combout\,
	datab => \inst13|inst1[8]~32_combout\,
	datac => \inst13|inst1[5]~6_combout\,
	datad => \inst13|inst1[8]~31_combout\,
	combout => \inst13|inst1[8]~33_combout\);

-- Location: FF_X51_Y40_N3
\inst13|inst14|cmd_in[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst12~clkctrl_outclk\,
	asdata => \inst13|inst1[8]~33_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|cmd_in\(0));

-- Location: LCCOMB_X51_Y40_N6
\inst13|inst14|state~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|state~18_combout\ = \inst13|inst14|cmd_in\(0) $ (\inst13|inst14|cmd_in\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst14|cmd_in\(0),
	datad => \inst13|inst14|cmd_in\(1),
	combout => \inst13|inst14|state~18_combout\);

-- Location: LCCOMB_X51_Y40_N2
\inst13|inst14|data_out[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_out[4]~19_combout\ = (\inst13|inst14|state.Rx1~q\ & (\inst13|inst14|prev_busy~q\ & !\inst13|inst|busy~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|state.Rx1~q\,
	datab => \inst13|inst14|prev_busy~q\,
	datad => \inst13|inst|busy~q\,
	combout => \inst13|inst14|data_out[4]~19_combout\);

-- Location: LCCOMB_X54_Y40_N14
\inst13|inst14|Selector21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector21~0_combout\ = \inst13|inst14|cmd_in\(4) $ (!\inst13|inst14|cmd_in\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst14|cmd_in\(4),
	datad => \inst13|inst14|cmd_in\(5),
	combout => \inst13|inst14|Selector21~0_combout\);

-- Location: LCCOMB_X51_Y40_N24
\inst13|inst14|Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector16~0_combout\ = (!\inst13|inst14|state.idle~q\ & (((\inst13|inst14|Selector21~0_combout\ & !\inst13|inst14|state~18_combout\)) # (!\inst13|inst14|go~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|go~q\,
	datab => \inst13|inst14|state.idle~q\,
	datac => \inst13|inst14|Selector21~0_combout\,
	datad => \inst13|inst14|state~18_combout\,
	combout => \inst13|inst14|Selector16~0_combout\);

-- Location: LCCOMB_X51_Y40_N8
\inst13|inst14|Selector16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector16~1_combout\ = (!\inst13|inst14|data_out[4]~19_combout\ & (!\inst13|inst14|Selector16~0_combout\ & ((\inst13|inst14|state~18_combout\) # (!\inst13|inst14|Selector22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|state~18_combout\,
	datab => \inst13|inst14|data_out[4]~19_combout\,
	datac => \inst13|inst14|Selector22~1_combout\,
	datad => \inst13|inst14|Selector16~0_combout\,
	combout => \inst13|inst14|Selector16~1_combout\);

-- Location: FF_X51_Y40_N9
\inst13|inst14|state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|Selector16~1_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|state.idle~q\);

-- Location: LCCOMB_X51_Y40_N14
\inst13|inst14|rnw~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|rnw~0_combout\ = (!\inst13|inst14|prev_busy~q\ & (\inst13|inst|busy~q\ & \inst13|inst14|state.Tx1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|prev_busy~q\,
	datab => \inst13|inst|busy~q\,
	datad => \inst13|inst14|state.Tx1~q\,
	combout => \inst13|inst14|rnw~0_combout\);

-- Location: LCCOMB_X51_Y40_N10
\inst13|inst14|rnw~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|rnw~1_combout\ = (\inst13|inst14|go~q\ & ((\inst13|inst14|rnw~q\) # (\inst13|inst14|cmd_in\(1) $ (\inst13|inst14|cmd_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|go~q\,
	datab => \inst13|inst14|rnw~q\,
	datac => \inst13|inst14|cmd_in\(1),
	datad => \inst13|inst14|cmd_in\(0),
	combout => \inst13|inst14|rnw~1_combout\);

-- Location: LCCOMB_X51_Y40_N12
\inst13|inst14|rnw~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|rnw~2_combout\ = (!\inst13|inst14|data_out[7]~1_combout\ & ((\inst13|inst14|state.idle~q\ & (\inst13|inst14|rnw~0_combout\)) # (!\inst13|inst14|state.idle~q\ & ((\inst13|inst14|rnw~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|state.idle~q\,
	datab => \inst13|inst14|data_out[7]~1_combout\,
	datac => \inst13|inst14|rnw~0_combout\,
	datad => \inst13|inst14|rnw~1_combout\,
	combout => \inst13|inst14|rnw~2_combout\);

-- Location: LCCOMB_X51_Y40_N30
\inst13|inst14|rnw~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|rnw~3_combout\ = (\inst13|inst14|rnw~2_combout\ & ((\inst13|inst14|state.idle~q\) # ((\inst13|inst14|Selector21~0_combout\)))) # (!\inst13|inst14|rnw~2_combout\ & (((\inst13|inst14|rnw~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|state.idle~q\,
	datab => \inst13|inst14|rnw~q\,
	datac => \inst13|inst14|Selector21~0_combout\,
	datad => \inst13|inst14|rnw~2_combout\,
	combout => \inst13|inst14|rnw~3_combout\);

-- Location: FF_X51_Y40_N15
\inst13|inst14|rnw\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	asdata => \inst13|inst14|rnw~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|rnw~q\);

-- Location: LCCOMB_X55_Y41_N20
\inst13|inst|Selector23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector23~1_combout\ = (\inst13|inst|state.slv_ack1~q\ & (!\inst13|inst|ack_error~q\ & \inst13|inst|addr_rw\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|state.slv_ack1~q\,
	datac => \inst13|inst|ack_error~q\,
	datad => \inst13|inst|addr_rw\(0),
	combout => \inst13|inst|Selector23~1_combout\);

-- Location: LCCOMB_X56_Y41_N24
\inst13|inst|Selector23~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector23~2_combout\ = (\inst13|inst|Selector23~1_combout\) # ((\inst13|inst|state.rd~q\ & !\inst13|inst|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|state.rd~q\,
	datac => \inst13|inst|Equal1~0_combout\,
	datad => \inst13|inst|Selector23~1_combout\,
	combout => \inst13|inst|Selector23~2_combout\);

-- Location: LCCOMB_X56_Y41_N30
\inst13|inst|Selector23~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector23~3_combout\ = (\inst13|inst|Selector23~2_combout\) # ((\inst13|inst|state.mstr_ack~q\ & (\inst13|inst14|rnw~q\ & \inst13|inst|process_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|state.mstr_ack~q\,
	datab => \inst13|inst14|rnw~q\,
	datac => \inst13|inst|process_1~4_combout\,
	datad => \inst13|inst|Selector23~2_combout\,
	combout => \inst13|inst|Selector23~3_combout\);

-- Location: FF_X56_Y41_N31
\inst13|inst|state.rd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	d => \inst13|inst|Selector23~3_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|state.rd~q\);

-- Location: LCCOMB_X57_Y41_N30
\inst13|inst|WideOr12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|WideOr12~0_combout\ = (\inst13|inst|state.rd~q\) # ((\inst13|inst|state.command~q\) # (\inst13|inst|state.wr~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst|state.rd~q\,
	datac => \inst13|inst|state.command~q\,
	datad => \inst13|inst|state.wr~q\,
	combout => \inst13|inst|WideOr12~0_combout\);

-- Location: FF_X58_Y40_N27
\inst13|inst|bit_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	d => \inst13|inst|bit_cnt[0]~0_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	ena => \inst13|inst|WideOr12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|bit_cnt\(0));

-- Location: LCCOMB_X58_Y40_N16
\inst13|inst|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Add1~0_combout\ = \inst13|inst|bit_cnt\(2) $ (((\inst13|inst|bit_cnt\(0) & \inst13|inst|bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|bit_cnt\(0),
	datac => \inst13|inst|bit_cnt\(2),
	datad => \inst13|inst|bit_cnt\(1),
	combout => \inst13|inst|Add1~0_combout\);

-- Location: LCCOMB_X57_Y41_N8
\inst13|inst|bit_cnt[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|bit_cnt[2]~feeder_combout\ = \inst13|inst|Add1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst|Add1~0_combout\,
	combout => \inst13|inst|bit_cnt[2]~feeder_combout\);

-- Location: FF_X57_Y41_N9
\inst13|inst|bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	d => \inst13|inst|bit_cnt[2]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	ena => \inst13|inst|WideOr12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|bit_cnt\(2));

-- Location: LCCOMB_X58_Y40_N22
\inst13|inst|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Mux0~0_combout\ = (\inst13|inst|bit_cnt\(0) & (\inst13|inst|bit_cnt\(1) & (\inst13|inst|addr_rw\(0)))) # (!\inst13|inst|bit_cnt\(0) & (((\inst13|inst|addr_rw\(1))) # (!\inst13|inst|bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|bit_cnt\(0),
	datab => \inst13|inst|bit_cnt\(1),
	datac => \inst13|inst|addr_rw\(0),
	datad => \inst13|inst|addr_rw\(1),
	combout => \inst13|inst|Mux0~0_combout\);

-- Location: LCCOMB_X58_Y40_N8
\inst13|inst|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Mux0~1_combout\ = (\inst13|inst|bit_cnt\(1) & (((\inst13|inst|Mux0~0_combout\)))) # (!\inst13|inst|bit_cnt\(1) & ((\inst13|inst|Mux0~0_combout\ & (\inst13|inst|addr_rw\(3))) # (!\inst13|inst|Mux0~0_combout\ & ((\inst13|inst|addr_rw\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|addr_rw\(3),
	datab => \inst13|inst|bit_cnt\(1),
	datac => \inst13|inst|Mux0~0_combout\,
	datad => \inst13|inst|addr_rw\(2),
	combout => \inst13|inst|Mux0~1_combout\);

-- Location: LCCOMB_X58_Y40_N14
\inst13|inst|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Mux0~2_combout\ = (\inst13|inst|bit_cnt\(0) & (\inst13|inst|bit_cnt\(1) & ((\inst13|inst|addr_rw\(4))))) # (!\inst13|inst|bit_cnt\(0) & (((\inst13|inst|addr_rw\(5))) # (!\inst13|inst|bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|bit_cnt\(0),
	datab => \inst13|inst|bit_cnt\(1),
	datac => \inst13|inst|addr_rw\(5),
	datad => \inst13|inst|addr_rw\(4),
	combout => \inst13|inst|Mux0~2_combout\);

-- Location: LCCOMB_X58_Y40_N24
\inst13|inst|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Mux0~3_combout\ = (\inst13|inst|Mux0~2_combout\ & ((\inst13|inst|addr_rw\(7)) # ((\inst13|inst|bit_cnt\(1))))) # (!\inst13|inst|Mux0~2_combout\ & (((\inst13|inst|addr_rw\(6) & !\inst13|inst|bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|addr_rw\(7),
	datab => \inst13|inst|addr_rw\(6),
	datac => \inst13|inst|Mux0~2_combout\,
	datad => \inst13|inst|bit_cnt\(1),
	combout => \inst13|inst|Mux0~3_combout\);

-- Location: LCCOMB_X58_Y40_N2
\inst13|inst|Selector25~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector25~13_combout\ = (\inst13|inst|state.start~q\ & ((\inst13|inst|bit_cnt\(2) & (\inst13|inst|Mux0~1_combout\)) # (!\inst13|inst|bit_cnt\(2) & ((\inst13|inst|Mux0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|bit_cnt\(2),
	datab => \inst13|inst|state.start~q\,
	datac => \inst13|inst|Mux0~1_combout\,
	datad => \inst13|inst|Mux0~3_combout\,
	combout => \inst13|inst|Selector25~13_combout\);

-- Location: LCCOMB_X55_Y41_N16
\inst13|inst|Selector23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector23~0_combout\ = (\inst13|inst|state.slv_ack1~q\ & !\inst13|inst|ack_error~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|state.slv_ack1~q\,
	datac => \inst13|inst|ack_error~q\,
	combout => \inst13|inst|Selector23~0_combout\);

-- Location: LCCOMB_X50_Y43_N24
\inst13|inst13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst13~combout\ = LCELL((\inst|IR\(7) & (\inst|IO_WRITE_int~q\ & (\inst|IR\(4) & \inst3|I2C_DATA_EN~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(7),
	datab => \inst|IO_WRITE_int~q\,
	datac => \inst|IR\(4),
	datad => \inst3|I2C_DATA_EN~1_combout\,
	combout => \inst13|inst13~combout\);

-- Location: CLKCTRL_G10
\inst13|inst13~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst13|inst13~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst13|inst13~clkctrl_outclk\);

-- Location: FF_X59_Y40_N29
\inst13|inst14|data_in[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst13~clkctrl_outclk\,
	asdata => \inst13|inst1[14]~47_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_in\(14));

-- Location: LCCOMB_X54_Y39_N30
\inst13|inst14|data_in[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_in[6]~feeder_combout\ = \inst13|inst1[6]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst1[6]~27_combout\,
	combout => \inst13|inst14|data_in[6]~feeder_combout\);

-- Location: FF_X54_Y39_N31
\inst13|inst14|data_in[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst13~clkctrl_outclk\,
	d => \inst13|inst14|data_in[6]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_in\(6));

-- Location: LCCOMB_X55_Y40_N16
\inst13|inst14|Selector24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector24~0_combout\ = (\inst13|inst14|Equal0~0_combout\ & ((\inst13|inst14|state.idle~q\ & ((\inst13|inst14|data_in\(6)))) # (!\inst13|inst14|state.idle~q\ & (\inst13|inst14|data_in\(14))))) # (!\inst13|inst14|Equal0~0_combout\ & 
-- (((\inst13|inst14|data_in\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|Equal0~0_combout\,
	datab => \inst13|inst14|state.idle~q\,
	datac => \inst13|inst14|data_in\(14),
	datad => \inst13|inst14|data_in\(6),
	combout => \inst13|inst14|Selector24~0_combout\);

-- Location: LCCOMB_X54_Y40_N30
\inst13|inst14|tx_byte[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|tx_byte[7]~0_combout\ = ((\inst13|inst14|state.idle~q\) # (\inst13|inst14|cmd_in\(5) $ (!\inst13|inst14|cmd_in\(4)))) # (!\inst13|inst14|go~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|go~q\,
	datab => \inst13|inst14|cmd_in\(5),
	datac => \inst13|inst14|state.idle~q\,
	datad => \inst13|inst14|cmd_in\(4),
	combout => \inst13|inst14|tx_byte[7]~0_combout\);

-- Location: LCCOMB_X54_Y40_N16
\inst13|inst14|tx_byte[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|tx_byte[7]~1_combout\ = (!\inst13|inst14|data_out[7]~1_combout\ & (((\inst13|inst14|state.Tx2~q\ & \inst13|inst14|state_machine~1_combout\)) # (!\inst13|inst14|tx_byte[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|state.Tx2~q\,
	datab => \inst13|inst14|data_out[7]~1_combout\,
	datac => \inst13|inst14|tx_byte[7]~0_combout\,
	datad => \inst13|inst14|state_machine~1_combout\,
	combout => \inst13|inst14|tx_byte[7]~1_combout\);

-- Location: FF_X55_Y40_N17
\inst13|inst14|tx_byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|Selector24~0_combout\,
	ena => \inst13|inst14|tx_byte[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|tx_byte\(6));

-- Location: FF_X56_Y40_N15
\inst13|inst|data_tx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	asdata => \inst13|inst14|tx_byte\(6),
	sload => VCC,
	ena => \inst13|inst|addr_rw[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_tx\(6));

-- Location: LCCOMB_X59_Y40_N22
\inst13|inst14|data_in[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_in[13]~feeder_combout\ = \inst13|inst1[13]~45_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst1[13]~45_combout\,
	combout => \inst13|inst14|data_in[13]~feeder_combout\);

-- Location: FF_X59_Y40_N23
\inst13|inst14|data_in[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst13~clkctrl_outclk\,
	d => \inst13|inst14|data_in[13]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_in\(13));

-- Location: LCCOMB_X56_Y39_N12
\inst13|inst14|data_in[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_in[5]~feeder_combout\ = \inst13|inst1[5]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst1[5]~7_combout\,
	combout => \inst13|inst14|data_in[5]~feeder_combout\);

-- Location: FF_X56_Y39_N13
\inst13|inst14|data_in[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst13~clkctrl_outclk\,
	d => \inst13|inst14|data_in[5]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_in\(5));

-- Location: LCCOMB_X55_Y40_N2
\inst13|inst14|Selector25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector25~0_combout\ = (\inst13|inst14|Equal0~0_combout\ & ((\inst13|inst14|state.idle~q\ & ((\inst13|inst14|data_in\(5)))) # (!\inst13|inst14|state.idle~q\ & (\inst13|inst14|data_in\(13))))) # (!\inst13|inst14|Equal0~0_combout\ & 
-- (((\inst13|inst14|data_in\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|Equal0~0_combout\,
	datab => \inst13|inst14|state.idle~q\,
	datac => \inst13|inst14|data_in\(13),
	datad => \inst13|inst14|data_in\(5),
	combout => \inst13|inst14|Selector25~0_combout\);

-- Location: FF_X55_Y40_N3
\inst13|inst14|tx_byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|Selector25~0_combout\,
	ena => \inst13|inst14|tx_byte[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|tx_byte\(5));

-- Location: FF_X56_Y40_N23
\inst13|inst|data_tx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	asdata => \inst13|inst14|tx_byte\(5),
	sload => VCC,
	ena => \inst13|inst|addr_rw[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_tx\(5));

-- Location: LCCOMB_X59_Y40_N14
\inst13|inst14|data_in[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_in[12]~feeder_combout\ = \inst13|inst1[12]~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst1[12]~43_combout\,
	combout => \inst13|inst14|data_in[12]~feeder_combout\);

-- Location: FF_X59_Y40_N15
\inst13|inst14|data_in[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst13~clkctrl_outclk\,
	d => \inst13|inst14|data_in[12]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_in\(12));

-- Location: LCCOMB_X59_Y40_N12
\inst13|inst14|data_in[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_in[4]~feeder_combout\ = \inst13|inst1[4]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst1[4]~10_combout\,
	combout => \inst13|inst14|data_in[4]~feeder_combout\);

-- Location: FF_X59_Y40_N13
\inst13|inst14|data_in[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst13~clkctrl_outclk\,
	d => \inst13|inst14|data_in[4]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_in\(4));

-- Location: LCCOMB_X55_Y40_N24
\inst13|inst14|Selector26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector26~0_combout\ = (\inst13|inst14|Equal0~0_combout\ & ((\inst13|inst14|state.idle~q\ & ((\inst13|inst14|data_in\(4)))) # (!\inst13|inst14|state.idle~q\ & (\inst13|inst14|data_in\(12))))) # (!\inst13|inst14|Equal0~0_combout\ & 
-- (((\inst13|inst14|data_in\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|Equal0~0_combout\,
	datab => \inst13|inst14|state.idle~q\,
	datac => \inst13|inst14|data_in\(12),
	datad => \inst13|inst14|data_in\(4),
	combout => \inst13|inst14|Selector26~0_combout\);

-- Location: FF_X55_Y40_N25
\inst13|inst14|tx_byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|Selector26~0_combout\,
	ena => \inst13|inst14|tx_byte[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|tx_byte\(4));

-- Location: FF_X56_Y40_N29
\inst13|inst|data_tx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	asdata => \inst13|inst14|tx_byte\(4),
	sload => VCC,
	ena => \inst13|inst|addr_rw[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_tx\(4));

-- Location: LCCOMB_X56_Y40_N28
\inst13|inst|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Mux2~2_combout\ = (\inst13|inst|bit_cnt\(1) & ((\inst13|inst|bit_cnt\(0) & ((\inst13|inst|data_tx\(4)))) # (!\inst13|inst|bit_cnt\(0) & (\inst13|inst|data_tx\(5))))) # (!\inst13|inst|bit_cnt\(1) & (((!\inst13|inst|bit_cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|data_tx\(5),
	datab => \inst13|inst|bit_cnt\(1),
	datac => \inst13|inst|data_tx\(4),
	datad => \inst13|inst|bit_cnt\(0),
	combout => \inst13|inst|Mux2~2_combout\);

-- Location: FF_X59_Y40_N17
\inst13|inst14|data_in[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst13~clkctrl_outclk\,
	asdata => \inst13|inst1[7]~30_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_in\(7));

-- Location: LCCOMB_X59_Y40_N18
\inst13|inst14|data_in[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_in[15]~feeder_combout\ = \inst13|inst1[15]~49_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst1[15]~49_combout\,
	combout => \inst13|inst14|data_in[15]~feeder_combout\);

-- Location: FF_X59_Y40_N19
\inst13|inst14|data_in[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst13~clkctrl_outclk\,
	d => \inst13|inst14|data_in[15]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_in\(15));

-- Location: LCCOMB_X55_Y40_N8
\inst13|inst14|Selector23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector23~0_combout\ = (\inst13|inst14|state.idle~q\ & (\inst13|inst14|data_in\(7))) # (!\inst13|inst14|state.idle~q\ & ((\inst13|inst14|Equal0~0_combout\ & ((\inst13|inst14|data_in\(15)))) # (!\inst13|inst14|Equal0~0_combout\ & 
-- (\inst13|inst14|data_in\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|data_in\(7),
	datab => \inst13|inst14|state.idle~q\,
	datac => \inst13|inst14|Equal0~0_combout\,
	datad => \inst13|inst14|data_in\(15),
	combout => \inst13|inst14|Selector23~0_combout\);

-- Location: FF_X55_Y40_N9
\inst13|inst14|tx_byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|Selector23~0_combout\,
	ena => \inst13|inst14|tx_byte[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|tx_byte\(7));

-- Location: FF_X56_Y40_N9
\inst13|inst|data_tx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	asdata => \inst13|inst14|tx_byte\(7),
	sload => VCC,
	ena => \inst13|inst|addr_rw[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_tx\(7));

-- Location: LCCOMB_X56_Y40_N8
\inst13|inst|Mux2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Mux2~3_combout\ = (\inst13|inst|Mux2~2_combout\ & (((\inst13|inst|data_tx\(7)) # (\inst13|inst|bit_cnt\(1))))) # (!\inst13|inst|Mux2~2_combout\ & (\inst13|inst|data_tx\(6) & ((!\inst13|inst|bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|data_tx\(6),
	datab => \inst13|inst|Mux2~2_combout\,
	datac => \inst13|inst|data_tx\(7),
	datad => \inst13|inst|bit_cnt\(1),
	combout => \inst13|inst|Mux2~3_combout\);

-- Location: LCCOMB_X54_Y39_N28
\inst13|inst14|data_in[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_in[2]~feeder_combout\ = \inst13|inst1[2]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst1[2]~16_combout\,
	combout => \inst13|inst14|data_in[2]~feeder_combout\);

-- Location: FF_X54_Y39_N29
\inst13|inst14|data_in[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst13~clkctrl_outclk\,
	d => \inst13|inst14|data_in[2]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_in\(2));

-- Location: LCCOMB_X51_Y45_N30
\inst|io_bus|dout[10]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|io_bus|dout[10]~0_combout\ = (\inst|AC\(10)) # (!\inst|IO_WRITE_int~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|AC\(10),
	datab => \inst|IO_WRITE_int~q\,
	combout => \inst|io_bus|dout[10]~0_combout\);

-- Location: LCCOMB_X49_Y43_N22
\inst13|inst1[10]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[10]~39_combout\ = (\inst13|inst1[10]~5_combout\ & (((\inst13|inst1[10]~37_combout\ & \inst|io_bus|dout[10]~0_combout\)) # (!\inst13|inst1[5]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[10]~37_combout\,
	datab => \inst|io_bus|dout[10]~0_combout\,
	datac => \inst13|inst1[5]~38_combout\,
	datad => \inst13|inst1[10]~5_combout\,
	combout => \inst13|inst1[10]~39_combout\);

-- Location: LCCOMB_X49_Y40_N28
\inst13|inst14|data_in[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_in[10]~feeder_combout\ = \inst13|inst1[10]~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst1[10]~39_combout\,
	combout => \inst13|inst14|data_in[10]~feeder_combout\);

-- Location: FF_X49_Y40_N29
\inst13|inst14|data_in[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst13~clkctrl_outclk\,
	d => \inst13|inst14|data_in[10]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_in\(10));

-- Location: LCCOMB_X55_Y40_N4
\inst13|inst14|Selector28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector28~0_combout\ = (\inst13|inst14|state.idle~q\ & (\inst13|inst14|data_in\(2))) # (!\inst13|inst14|state.idle~q\ & ((\inst13|inst14|Equal0~0_combout\ & ((\inst13|inst14|data_in\(10)))) # (!\inst13|inst14|Equal0~0_combout\ & 
-- (\inst13|inst14|data_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|data_in\(2),
	datab => \inst13|inst14|state.idle~q\,
	datac => \inst13|inst14|Equal0~0_combout\,
	datad => \inst13|inst14|data_in\(10),
	combout => \inst13|inst14|Selector28~0_combout\);

-- Location: FF_X55_Y40_N5
\inst13|inst14|tx_byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|Selector28~0_combout\,
	ena => \inst13|inst14|tx_byte[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|tx_byte\(2));

-- Location: FF_X56_Y40_N3
\inst13|inst|data_tx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	asdata => \inst13|inst14|tx_byte\(2),
	sload => VCC,
	ena => \inst13|inst|addr_rw[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_tx\(2));

-- Location: LCCOMB_X49_Y43_N8
\inst13|inst1[11]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[11]~41_combout\ = (\inst13|inst1[10]~5_combout\ & (((\inst13|inst1[11]~40_combout\ & \inst|io_bus|dout[11]~1_combout\)) # (!\inst13|inst1[5]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[11]~40_combout\,
	datab => \inst|io_bus|dout[11]~1_combout\,
	datac => \inst13|inst1[5]~38_combout\,
	datad => \inst13|inst1[10]~5_combout\,
	combout => \inst13|inst1[11]~41_combout\);

-- Location: LCCOMB_X49_Y40_N4
\inst13|inst14|data_in[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_in[11]~feeder_combout\ = \inst13|inst1[11]~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst1[11]~41_combout\,
	combout => \inst13|inst14|data_in[11]~feeder_combout\);

-- Location: FF_X49_Y40_N5
\inst13|inst14|data_in[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst13~clkctrl_outclk\,
	d => \inst13|inst14|data_in[11]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_in\(11));

-- Location: LCCOMB_X54_Y41_N8
\inst13|inst14|data_in[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_in[3]~feeder_combout\ = \inst13|inst1[3]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst1[3]~13_combout\,
	combout => \inst13|inst14|data_in[3]~feeder_combout\);

-- Location: FF_X54_Y41_N9
\inst13|inst14|data_in[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst13~clkctrl_outclk\,
	d => \inst13|inst14|data_in[3]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_in\(3));

-- Location: LCCOMB_X55_Y40_N0
\inst13|inst14|Selector27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector27~0_combout\ = (\inst13|inst14|state.idle~q\ & (((\inst13|inst14|data_in\(3))))) # (!\inst13|inst14|state.idle~q\ & ((\inst13|inst14|Equal0~0_combout\ & (\inst13|inst14|data_in\(11))) # (!\inst13|inst14|Equal0~0_combout\ & 
-- ((\inst13|inst14|data_in\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|data_in\(11),
	datab => \inst13|inst14|state.idle~q\,
	datac => \inst13|inst14|Equal0~0_combout\,
	datad => \inst13|inst14|data_in\(3),
	combout => \inst13|inst14|Selector27~0_combout\);

-- Location: FF_X55_Y40_N1
\inst13|inst14|tx_byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|Selector27~0_combout\,
	ena => \inst13|inst14|tx_byte[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|tx_byte\(3));

-- Location: FF_X56_Y40_N19
\inst13|inst|data_tx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	asdata => \inst13|inst14|tx_byte\(3),
	sload => VCC,
	ena => \inst13|inst|addr_rw[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_tx\(3));

-- Location: LCCOMB_X54_Y43_N8
\inst13|inst1[0]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1[0]~24_combout\ = ((\inst13|inst1[0]~20_combout\ & (\inst13|inst1[0]~21_combout\ & \inst13|inst1[0]~23_combout\))) # (!\inst13|inst1[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[0]~20_combout\,
	datab => \inst13|inst1[5]~6_combout\,
	datac => \inst13|inst1[0]~21_combout\,
	datad => \inst13|inst1[0]~23_combout\,
	combout => \inst13|inst1[0]~24_combout\);

-- Location: LCCOMB_X59_Y40_N10
\inst13|inst14|data_in[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_in[0]~feeder_combout\ = \inst13|inst1[0]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst1[0]~24_combout\,
	combout => \inst13|inst14|data_in[0]~feeder_combout\);

-- Location: FF_X59_Y40_N11
\inst13|inst14|data_in[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst13~clkctrl_outclk\,
	d => \inst13|inst14|data_in[0]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_in\(0));

-- Location: LCCOMB_X49_Y40_N14
\inst13|inst14|data_in[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_in[8]~feeder_combout\ = \inst13|inst1[8]~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst1[8]~33_combout\,
	combout => \inst13|inst14|data_in[8]~feeder_combout\);

-- Location: FF_X49_Y40_N15
\inst13|inst14|data_in[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst13~clkctrl_outclk\,
	d => \inst13|inst14|data_in[8]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_in\(8));

-- Location: LCCOMB_X55_Y40_N28
\inst13|inst14|Selector30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector30~0_combout\ = (\inst13|inst14|Equal0~0_combout\ & ((\inst13|inst14|state.idle~q\ & (\inst13|inst14|data_in\(0))) # (!\inst13|inst14|state.idle~q\ & ((\inst13|inst14|data_in\(8)))))) # (!\inst13|inst14|Equal0~0_combout\ & 
-- (((\inst13|inst14|data_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|Equal0~0_combout\,
	datab => \inst13|inst14|state.idle~q\,
	datac => \inst13|inst14|data_in\(0),
	datad => \inst13|inst14|data_in\(8),
	combout => \inst13|inst14|Selector30~0_combout\);

-- Location: FF_X55_Y40_N29
\inst13|inst14|tx_byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|Selector30~0_combout\,
	ena => \inst13|inst14|tx_byte[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|tx_byte\(0));

-- Location: FF_X56_Y40_N21
\inst13|inst|data_tx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	asdata => \inst13|inst14|tx_byte\(0),
	sload => VCC,
	ena => \inst13|inst|addr_rw[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_tx\(0));

-- Location: LCCOMB_X59_Y40_N4
\inst13|inst14|data_in[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_in[9]~feeder_combout\ = \inst13|inst1[9]~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst1[9]~36_combout\,
	combout => \inst13|inst14|data_in[9]~feeder_combout\);

-- Location: FF_X59_Y40_N5
\inst13|inst14|data_in[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst13~clkctrl_outclk\,
	d => \inst13|inst14|data_in[9]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_in\(9));

-- Location: LCCOMB_X54_Y41_N30
\inst13|inst14|data_in[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|data_in[1]~feeder_combout\ = \inst13|inst1[1]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst1[1]~19_combout\,
	combout => \inst13|inst14|data_in[1]~feeder_combout\);

-- Location: FF_X54_Y41_N31
\inst13|inst14|data_in[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst13~clkctrl_outclk\,
	d => \inst13|inst14|data_in[1]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|data_in\(1));

-- Location: LCCOMB_X55_Y40_N30
\inst13|inst14|Selector29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst14|Selector29~0_combout\ = (\inst13|inst14|Equal0~0_combout\ & ((\inst13|inst14|state.idle~q\ & ((\inst13|inst14|data_in\(1)))) # (!\inst13|inst14|state.idle~q\ & (\inst13|inst14|data_in\(9))))) # (!\inst13|inst14|Equal0~0_combout\ & 
-- (((\inst13|inst14|data_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|Equal0~0_combout\,
	datab => \inst13|inst14|state.idle~q\,
	datac => \inst13|inst14|data_in\(9),
	datad => \inst13|inst14|data_in\(1),
	combout => \inst13|inst14|Selector29~0_combout\);

-- Location: FF_X55_Y40_N31
\inst13|inst14|tx_byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst14|Selector29~0_combout\,
	ena => \inst13|inst14|tx_byte[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst14|tx_byte\(1));

-- Location: FF_X56_Y40_N1
\inst13|inst|data_tx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	asdata => \inst13|inst14|tx_byte\(1),
	sload => VCC,
	ena => \inst13|inst|addr_rw[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|data_tx\(1));

-- Location: LCCOMB_X56_Y40_N20
\inst13|inst|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Mux2~0_combout\ = (\inst13|inst|bit_cnt\(0) & (\inst13|inst|bit_cnt\(1) & (\inst13|inst|data_tx\(0)))) # (!\inst13|inst|bit_cnt\(0) & (((\inst13|inst|data_tx\(1))) # (!\inst13|inst|bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|bit_cnt\(0),
	datab => \inst13|inst|bit_cnt\(1),
	datac => \inst13|inst|data_tx\(0),
	datad => \inst13|inst|data_tx\(1),
	combout => \inst13|inst|Mux2~0_combout\);

-- Location: LCCOMB_X55_Y40_N6
\inst13|inst|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Mux2~1_combout\ = (\inst13|inst|Mux2~0_combout\ & (((\inst13|inst|data_tx\(3)) # (\inst13|inst|bit_cnt\(1))))) # (!\inst13|inst|Mux2~0_combout\ & (\inst13|inst|data_tx\(2) & ((!\inst13|inst|bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|data_tx\(2),
	datab => \inst13|inst|data_tx\(3),
	datac => \inst13|inst|Mux2~0_combout\,
	datad => \inst13|inst|bit_cnt\(1),
	combout => \inst13|inst|Mux2~1_combout\);

-- Location: LCCOMB_X55_Y41_N14
\inst13|inst|Selector25~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector25~11_combout\ = (\inst13|inst|Selector23~0_combout\ & ((\inst13|inst|bit_cnt\(2) & ((\inst13|inst|Mux2~1_combout\))) # (!\inst13|inst|bit_cnt\(2) & (\inst13|inst|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|bit_cnt\(2),
	datab => \inst13|inst|Selector23~0_combout\,
	datac => \inst13|inst|Mux2~3_combout\,
	datad => \inst13|inst|Mux2~1_combout\,
	combout => \inst13|inst|Selector25~11_combout\);

-- Location: LCCOMB_X56_Y40_N14
\inst13|inst|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Mux3~2_combout\ = (\inst13|inst|bit_cnt\(0) & (\inst13|inst|data_tx\(7) & ((\inst13|inst|bit_cnt\(1))))) # (!\inst13|inst|bit_cnt\(0) & (((\inst13|inst|data_tx\(6)) # (\inst13|inst|bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|bit_cnt\(0),
	datab => \inst13|inst|data_tx\(7),
	datac => \inst13|inst|data_tx\(6),
	datad => \inst13|inst|bit_cnt\(1),
	combout => \inst13|inst|Mux3~2_combout\);

-- Location: LCCOMB_X56_Y40_N22
\inst13|inst|Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Mux3~3_combout\ = (\inst13|inst|Mux3~2_combout\ & ((\inst13|inst|data_tx\(4)) # ((!\inst13|inst|Selector27~0_combout\)))) # (!\inst13|inst|Mux3~2_combout\ & (((\inst13|inst|data_tx\(5) & \inst13|inst|Selector27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|data_tx\(4),
	datab => \inst13|inst|Mux3~2_combout\,
	datac => \inst13|inst|data_tx\(5),
	datad => \inst13|inst|Selector27~0_combout\,
	combout => \inst13|inst|Mux3~3_combout\);

-- Location: LCCOMB_X58_Y40_N10
\inst13|inst|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Mux3~0_combout\ = (\inst13|inst|bit_cnt\(0) & (\inst13|inst|bit_cnt\(1) & (\inst13|inst|data_tx\(3)))) # (!\inst13|inst|bit_cnt\(0) & ((\inst13|inst|bit_cnt\(1)) # ((\inst13|inst|data_tx\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|bit_cnt\(0),
	datab => \inst13|inst|bit_cnt\(1),
	datac => \inst13|inst|data_tx\(3),
	datad => \inst13|inst|data_tx\(2),
	combout => \inst13|inst|Mux3~0_combout\);

-- Location: LCCOMB_X56_Y40_N0
\inst13|inst|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Mux3~1_combout\ = (\inst13|inst|Mux3~0_combout\ & (((\inst13|inst|data_tx\(0))) # (!\inst13|inst|Selector27~0_combout\))) # (!\inst13|inst|Mux3~0_combout\ & (\inst13|inst|Selector27~0_combout\ & (\inst13|inst|data_tx\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|Mux3~0_combout\,
	datab => \inst13|inst|Selector27~0_combout\,
	datac => \inst13|inst|data_tx\(1),
	datad => \inst13|inst|data_tx\(0),
	combout => \inst13|inst|Mux3~1_combout\);

-- Location: LCCOMB_X56_Y41_N0
\inst13|inst|Selector25~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector25~8_combout\ = (\inst13|inst|state.wr~q\ & ((\inst13|inst|Add1~0_combout\ & ((\inst13|inst|Mux3~1_combout\))) # (!\inst13|inst|Add1~0_combout\ & (\inst13|inst|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|state.wr~q\,
	datab => \inst13|inst|Mux3~3_combout\,
	datac => \inst13|inst|Add1~0_combout\,
	datad => \inst13|inst|Mux3~1_combout\,
	combout => \inst13|inst|Selector25~8_combout\);

-- Location: LCCOMB_X58_Y40_N28
\inst13|inst|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Mux1~0_combout\ = (\inst13|inst|bit_cnt\(0) & (\inst13|inst|bit_cnt\(1) & ((\inst13|inst|addr_rw\(3))))) # (!\inst13|inst|bit_cnt\(0) & ((\inst13|inst|bit_cnt\(1)) # ((\inst13|inst|addr_rw\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|bit_cnt\(0),
	datab => \inst13|inst|bit_cnt\(1),
	datac => \inst13|inst|addr_rw\(2),
	datad => \inst13|inst|addr_rw\(3),
	combout => \inst13|inst|Mux1~0_combout\);

-- Location: LCCOMB_X58_Y40_N30
\inst13|inst|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Mux1~1_combout\ = (\inst13|inst|Selector27~0_combout\ & ((\inst13|inst|Mux1~0_combout\ & (\inst13|inst|addr_rw\(0))) # (!\inst13|inst|Mux1~0_combout\ & ((\inst13|inst|addr_rw\(1)))))) # (!\inst13|inst|Selector27~0_combout\ & 
-- (((\inst13|inst|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|addr_rw\(0),
	datab => \inst13|inst|addr_rw\(1),
	datac => \inst13|inst|Selector27~0_combout\,
	datad => \inst13|inst|Mux1~0_combout\,
	combout => \inst13|inst|Mux1~1_combout\);

-- Location: LCCOMB_X58_Y40_N12
\inst13|inst|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Mux1~2_combout\ = (\inst13|inst|bit_cnt\(0) & (((\inst13|inst|addr_rw\(7) & \inst13|inst|bit_cnt\(1))))) # (!\inst13|inst|bit_cnt\(0) & ((\inst13|inst|addr_rw\(6)) # ((\inst13|inst|bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|bit_cnt\(0),
	datab => \inst13|inst|addr_rw\(6),
	datac => \inst13|inst|addr_rw\(7),
	datad => \inst13|inst|bit_cnt\(1),
	combout => \inst13|inst|Mux1~2_combout\);

-- Location: LCCOMB_X58_Y40_N6
\inst13|inst|Mux1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Mux1~3_combout\ = (\inst13|inst|Selector27~0_combout\ & ((\inst13|inst|Mux1~2_combout\ & (\inst13|inst|addr_rw\(4))) # (!\inst13|inst|Mux1~2_combout\ & ((\inst13|inst|addr_rw\(5)))))) # (!\inst13|inst|Selector27~0_combout\ & 
-- (((\inst13|inst|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|Selector27~0_combout\,
	datab => \inst13|inst|addr_rw\(4),
	datac => \inst13|inst|addr_rw\(5),
	datad => \inst13|inst|Mux1~2_combout\,
	combout => \inst13|inst|Mux1~3_combout\);

-- Location: LCCOMB_X58_Y40_N4
\inst13|inst|Selector25~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector25~9_combout\ = (\inst13|inst|state.command~q\ & ((\inst13|inst|Add1~0_combout\ & (\inst13|inst|Mux1~1_combout\)) # (!\inst13|inst|Add1~0_combout\ & ((\inst13|inst|Mux1~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|state.command~q\,
	datab => \inst13|inst|Add1~0_combout\,
	datac => \inst13|inst|Mux1~1_combout\,
	datad => \inst13|inst|Mux1~3_combout\,
	combout => \inst13|inst|Selector25~9_combout\);

-- Location: LCCOMB_X55_Y41_N2
\inst13|inst|Selector25~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector25~10_combout\ = (\inst13|inst|Selector25~8_combout\) # ((\inst13|inst|Selector25~9_combout\) # ((\inst13|inst|process_1~4_combout\ & \inst13|inst|state.mstr_ack~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|process_1~4_combout\,
	datab => \inst13|inst|state.mstr_ack~q\,
	datac => \inst13|inst|Selector25~8_combout\,
	datad => \inst13|inst|Selector25~9_combout\,
	combout => \inst13|inst|Selector25~10_combout\);

-- Location: LCCOMB_X55_Y41_N6
\inst13|inst|Selector25~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector25~14_combout\ = (\inst13|inst|Selector25~13_combout\) # ((\inst13|inst|Selector23~1_combout\) # ((\inst13|inst|Selector25~11_combout\) # (\inst13|inst|Selector25~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|Selector25~13_combout\,
	datab => \inst13|inst|Selector23~1_combout\,
	datac => \inst13|inst|Selector25~11_combout\,
	datad => \inst13|inst|Selector25~10_combout\,
	combout => \inst13|inst|Selector25~14_combout\);

-- Location: LCCOMB_X55_Y40_N10
\inst13|inst|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Mux4~2_combout\ = (\inst13|inst|bit_cnt\(1) & ((\inst13|inst|bit_cnt\(0) & (\inst13|inst14|tx_byte\(4))) # (!\inst13|inst|bit_cnt\(0) & ((\inst13|inst14|tx_byte\(5)))))) # (!\inst13|inst|bit_cnt\(1) & (((!\inst13|inst|bit_cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|bit_cnt\(1),
	datab => \inst13|inst14|tx_byte\(4),
	datac => \inst13|inst|bit_cnt\(0),
	datad => \inst13|inst14|tx_byte\(5),
	combout => \inst13|inst|Mux4~2_combout\);

-- Location: LCCOMB_X55_Y40_N26
\inst13|inst|Mux4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Mux4~3_combout\ = (\inst13|inst|Mux4~2_combout\ & (((\inst13|inst14|tx_byte\(7)) # (\inst13|inst|bit_cnt\(1))))) # (!\inst13|inst|Mux4~2_combout\ & (\inst13|inst14|tx_byte\(6) & ((!\inst13|inst|bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|Mux4~2_combout\,
	datab => \inst13|inst14|tx_byte\(6),
	datac => \inst13|inst14|tx_byte\(7),
	datad => \inst13|inst|bit_cnt\(1),
	combout => \inst13|inst|Mux4~3_combout\);

-- Location: LCCOMB_X55_Y40_N22
\inst13|inst|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Mux4~0_combout\ = (\inst13|inst|bit_cnt\(0) & (((\inst13|inst14|tx_byte\(0) & \inst13|inst|bit_cnt\(1))))) # (!\inst13|inst|bit_cnt\(0) & ((\inst13|inst14|tx_byte\(1)) # ((!\inst13|inst|bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|tx_byte\(1),
	datab => \inst13|inst14|tx_byte\(0),
	datac => \inst13|inst|bit_cnt\(0),
	datad => \inst13|inst|bit_cnt\(1),
	combout => \inst13|inst|Mux4~0_combout\);

-- Location: LCCOMB_X55_Y40_N18
\inst13|inst|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Mux4~1_combout\ = (\inst13|inst|Mux4~0_combout\ & ((\inst13|inst14|tx_byte\(3)) # ((\inst13|inst|bit_cnt\(1))))) # (!\inst13|inst|Mux4~0_combout\ & (((\inst13|inst14|tx_byte\(2) & !\inst13|inst|bit_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|Mux4~0_combout\,
	datab => \inst13|inst14|tx_byte\(3),
	datac => \inst13|inst14|tx_byte\(2),
	datad => \inst13|inst|bit_cnt\(1),
	combout => \inst13|inst|Mux4~1_combout\);

-- Location: LCCOMB_X55_Y40_N12
\inst13|inst|Selector25~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector25~7_combout\ = (\inst13|inst|Selector25~6_combout\ & ((\inst13|inst|bit_cnt\(2) & ((\inst13|inst|Mux4~1_combout\))) # (!\inst13|inst|bit_cnt\(2) & (\inst13|inst|Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|Mux4~3_combout\,
	datab => \inst13|inst|Mux4~1_combout\,
	datac => \inst13|inst|Selector25~6_combout\,
	datad => \inst13|inst|bit_cnt\(2),
	combout => \inst13|inst|Selector25~7_combout\);

-- Location: LCCOMB_X55_Y41_N12
\inst13|inst|Selector25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector25~0_combout\ = (\inst13|inst|state.slv_ack2~q\ & (\inst13|inst14|rnw~q\ & (!\inst13|inst|ack_error~q\ & \inst13|inst|process_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|state.slv_ack2~q\,
	datab => \inst13|inst14|rnw~q\,
	datac => \inst13|inst|ack_error~q\,
	datad => \inst13|inst|process_1~4_combout\,
	combout => \inst13|inst|Selector25~0_combout\);

-- Location: LCCOMB_X55_Y41_N0
\inst13|inst|Selector25~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector25~1_combout\ = (\inst13|inst|state.mstr_ack~q\) # (((\inst13|inst|ack_error~q\ & \inst13|inst|state.slv_ack1~q\)) # (!\inst13|inst|state.ready~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|ack_error~q\,
	datab => \inst13|inst|state.mstr_ack~q\,
	datac => \inst13|inst|state.ready~q\,
	datad => \inst13|inst|state.slv_ack1~q\,
	combout => \inst13|inst|Selector25~1_combout\);

-- Location: LCCOMB_X55_Y41_N18
\inst13|inst|Selector25~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector25~2_combout\ = (\inst13|inst|state.stop~q\) # ((\inst13|inst|Selector25~1_combout\) # ((\inst13|inst|state.rd~q\ & !\inst13|inst|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|state.rd~q\,
	datab => \inst13|inst|state.stop~q\,
	datac => \inst13|inst|Equal1~0_combout\,
	datad => \inst13|inst|Selector25~1_combout\,
	combout => \inst13|inst|Selector25~2_combout\);

-- Location: LCCOMB_X55_Y41_N8
\inst13|inst|Selector25~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector25~3_combout\ = (\inst13|inst|Selector25~0_combout\) # ((!\inst13|inst|sda_int~q\ & ((\inst13|inst|Selector25~2_combout\) # (!\inst13|inst|Selector0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|Selector25~0_combout\,
	datab => \inst13|inst|sda_int~q\,
	datac => \inst13|inst|Selector25~2_combout\,
	datad => \inst13|inst|Selector0~1_combout\,
	combout => \inst13|inst|Selector25~3_combout\);

-- Location: LCCOMB_X55_Y41_N26
\inst13|inst|Selector25~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector25~4_combout\ = (\inst13|inst|state.rd~q\ & ((\inst13|inst14|rnw~q\ $ (\inst13|inst|addr_rw\(0))) # (!\inst13|inst|process_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst14|rnw~q\,
	datab => \inst13|inst|addr_rw\(0),
	datac => \inst13|inst|state.rd~q\,
	datad => \inst13|inst|process_1~4_combout\,
	combout => \inst13|inst|Selector25~4_combout\);

-- Location: LCCOMB_X55_Y41_N4
\inst13|inst|Selector25~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector25~5_combout\ = (\inst13|inst|Equal1~0_combout\ & ((\inst13|inst|state.wr~q\) # ((\inst13|inst|Selector25~4_combout\) # (\inst13|inst|state.command~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|state.wr~q\,
	datab => \inst13|inst|Equal1~0_combout\,
	datac => \inst13|inst|Selector25~4_combout\,
	datad => \inst13|inst|state.command~q\,
	combout => \inst13|inst|Selector25~5_combout\);

-- Location: LCCOMB_X55_Y41_N24
\inst13|inst|Selector25~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector25~12_combout\ = (!\inst13|inst|Selector25~14_combout\ & (!\inst13|inst|Selector25~7_combout\ & (!\inst13|inst|Selector25~3_combout\ & !\inst13|inst|Selector25~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|Selector25~14_combout\,
	datab => \inst13|inst|Selector25~7_combout\,
	datac => \inst13|inst|Selector25~3_combout\,
	datad => \inst13|inst|Selector25~5_combout\,
	combout => \inst13|inst|Selector25~12_combout\);

-- Location: FF_X55_Y41_N25
\inst13|inst|sda_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	d => \inst13|inst|Selector25~12_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|sda_int~q\);

-- Location: LCCOMB_X54_Y40_N4
\inst13|inst|Selector30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector30~0_combout\ = (\inst13|inst|state.restart~q\) # ((!\inst13|inst|sda_int~q\ & (!\inst13|inst|state.stop~q\ & !\inst13|inst|state.start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|sda_int~q\,
	datab => \inst13|inst|state.restart~q\,
	datac => \inst13|inst|state.stop~q\,
	datad => \inst13|inst|state.start~q\,
	combout => \inst13|inst|Selector30~0_combout\);

-- Location: LCCOMB_X56_Y41_N28
\inst13|inst|Selector17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector17~1_combout\ = (\inst13|inst|scl_req~q\) # ((!\inst13|inst|state.command~q\ & (!\inst13|inst|state.stop~q\ & \inst13|inst|WideOr3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|state.command~q\,
	datab => \inst13|inst|state.stop~q\,
	datac => \inst13|inst|scl_req~q\,
	datad => \inst13|inst|WideOr3~0_combout\,
	combout => \inst13|inst|Selector17~1_combout\);

-- Location: LCCOMB_X56_Y41_N10
\inst13|inst|Selector17~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector17~2_combout\ = (\inst13|inst|Selector17~1_combout\ & (((\inst13|inst|scl_req~q\ & !\inst13|inst|ack_error~q\)) # (!\inst13|inst|state.slv_ack1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|scl_req~q\,
	datab => \inst13|inst|state.slv_ack1~q\,
	datac => \inst13|inst|ack_error~q\,
	datad => \inst13|inst|Selector17~1_combout\,
	combout => \inst13|inst|Selector17~2_combout\);

-- Location: LCCOMB_X56_Y41_N20
\inst13|inst|Selector17~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector17~3_combout\ = (\inst13|inst|Selector17~2_combout\ & ((\inst13|inst|state.ready~q\) # ((\inst13|inst14|comm_en~q\) # (\inst13|inst|scl_req~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|state.ready~q\,
	datab => \inst13|inst14|comm_en~q\,
	datac => \inst13|inst|scl_req~q\,
	datad => \inst13|inst|Selector17~2_combout\,
	combout => \inst13|inst|Selector17~3_combout\);

-- Location: LCCOMB_X56_Y41_N6
\inst13|inst|Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector17~0_combout\ = ((\inst13|inst|process_1~4_combout\ & (\inst13|inst14|rnw~q\ & \inst13|inst|scl_req~q\))) # (!\inst13|inst|state.mstr_ack~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|process_1~4_combout\,
	datab => \inst13|inst14|rnw~q\,
	datac => \inst13|inst|scl_req~q\,
	datad => \inst13|inst|state.mstr_ack~q\,
	combout => \inst13|inst|Selector17~0_combout\);

-- Location: LCCOMB_X56_Y41_N2
\inst13|inst|scl_req~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|scl_req~0_combout\ = (!\inst13|inst|ack_error~q\ & (\inst13|inst|process_1~4_combout\ & (\inst13|inst|scl_req~q\ & !\inst13|inst14|rnw~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|ack_error~q\,
	datab => \inst13|inst|process_1~4_combout\,
	datac => \inst13|inst|scl_req~q\,
	datad => \inst13|inst14|rnw~q\,
	combout => \inst13|inst|scl_req~0_combout\);

-- Location: LCCOMB_X56_Y41_N22
\inst13|inst|Selector17~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|Selector17~4_combout\ = (\inst13|inst|Selector17~3_combout\ & (\inst13|inst|Selector17~0_combout\ & ((\inst13|inst|scl_req~0_combout\) # (!\inst13|inst|state.slv_ack2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|Selector17~3_combout\,
	datab => \inst13|inst|Selector17~0_combout\,
	datac => \inst13|inst|scl_req~0_combout\,
	datad => \inst13|inst|state.slv_ack2~q\,
	combout => \inst13|inst|Selector17~4_combout\);

-- Location: FF_X56_Y41_N23
\inst13|inst|scl_req\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|data_clk~clkctrl_outclk\,
	d => \inst13|inst|Selector17~4_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|scl_req~q\);

-- Location: FF_X56_Y41_N17
\inst13|inst|scl_ena\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|ALT_INV_data_clk~clkctrl_outclk\,
	asdata => \inst13|inst|scl_req~q\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|scl_ena~q\);

-- Location: LCCOMB_X52_Y41_N20
\inst13|inst|scl_clk~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|scl_clk~1_combout\ = !\inst13|inst|count~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst|count~0_combout\,
	combout => \inst13|inst|scl_clk~1_combout\);

-- Location: FF_X52_Y41_N21
\inst13|inst|scl_clk~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_100kHz~clkctrl_outclk\,
	d => \inst13|inst|scl_clk~1_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|scl_clk~en_q\);

-- Location: LCCOMB_X56_Y41_N16
\inst13|inst|scl~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst|scl~1_combout\ = (!\inst13|inst|scl_clk~en_q\) # (!\inst13|inst|scl_ena~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst|scl_ena~q\,
	datad => \inst13|inst|scl_clk~en_q\,
	combout => \inst13|inst|scl~1_combout\);

-- Location: LCCOMB_X43_Y1_N12
\inst5|count_1MHz~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_1MHz~1_combout\ = (!\inst5|count_1MHz\(0) & !\inst5|count_1MHz\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|count_1MHz\(0),
	datad => \inst5|count_1MHz\(2),
	combout => \inst5|count_1MHz~1_combout\);

-- Location: FF_X43_Y1_N13
\inst5|count_1MHz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_1MHz~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_1MHz\(0));

-- Location: LCCOMB_X43_Y1_N18
\inst5|count_1MHz~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_1MHz~2_combout\ = (!\inst5|count_1MHz\(2) & (\inst5|count_1MHz\(0) $ (\inst5|count_1MHz\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count_1MHz\(0),
	datac => \inst5|count_1MHz\(1),
	datad => \inst5|count_1MHz\(2),
	combout => \inst5|count_1MHz~2_combout\);

-- Location: FF_X43_Y1_N19
\inst5|count_1MHz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_1MHz~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_1MHz\(1));

-- Location: LCCOMB_X43_Y1_N10
\inst5|count_1MHz~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|count_1MHz~0_combout\ = (\inst5|count_1MHz\(0) & (!\inst5|count_1MHz\(2) & \inst5|count_1MHz\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|count_1MHz\(0),
	datac => \inst5|count_1MHz\(2),
	datad => \inst5|count_1MHz\(1),
	combout => \inst5|count_1MHz~0_combout\);

-- Location: FF_X43_Y1_N11
\inst5|count_1MHz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|count_1MHz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count_1MHz\(2));

-- Location: LCCOMB_X43_Y1_N20
\inst5|clock_1MHz_int~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|clock_1MHz_int~0_combout\ = \inst5|clock_1MHz_int~q\ $ (\inst5|count_1MHz\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|clock_1MHz_int~q\,
	datad => \inst5|count_1MHz\(2),
	combout => \inst5|clock_1MHz_int~0_combout\);

-- Location: FF_X43_Y1_N21
\inst5|clock_1MHz_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|clock_1MHz_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|clock_1MHz_int~q\);

-- Location: LCCOMB_X44_Y1_N0
\inst5|clock_1MHz~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|clock_1MHz~feeder_combout\ = \inst5|clock_1MHz_int~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|clock_1MHz_int~q\,
	combout => \inst5|clock_1MHz~feeder_combout\);

-- Location: FF_X44_Y1_N1
\inst5|clock_1MHz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst5|clock_1MHz~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|clock_1MHz~q\);

-- Location: CLKCTRL_G16
\inst5|clock_1MHz~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst5|clock_1MHz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst5|clock_1MHz~clkctrl_outclk\);

-- Location: CLKCTRL_G1
\inst3|SQ_EN~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|SQ_EN~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|SQ_EN~clkctrl_outclk\);

-- Location: FF_X54_Y39_N27
\inst11|FreqCount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SQ_EN~clkctrl_outclk\,
	asdata => \inst13|inst1[13]~45_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	sload => VCC,
	ena => \inst|IO_WRITE_int~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|FreqCount\(13));

-- Location: LCCOMB_X55_Y39_N0
\inst11|Count[0]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Count[0]~14_combout\ = \inst11|Count\(0) $ (VCC)
-- \inst11|Count[0]~15\ = CARRY(\inst11|Count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Count\(0),
	datad => VCC,
	combout => \inst11|Count[0]~14_combout\,
	cout => \inst11|Count[0]~15\);

-- Location: FF_X55_Y39_N1
\inst11|Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_1MHz~clkctrl_outclk\,
	d => \inst11|Count[0]~14_combout\,
	sclr => \inst11|ALT_INV_LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|Count\(0));

-- Location: LCCOMB_X55_Y39_N2
\inst11|Count[1]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Count[1]~16_combout\ = (\inst11|Count\(1) & (!\inst11|Count[0]~15\)) # (!\inst11|Count\(1) & ((\inst11|Count[0]~15\) # (GND)))
-- \inst11|Count[1]~17\ = CARRY((!\inst11|Count[0]~15\) # (!\inst11|Count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Count\(1),
	datad => VCC,
	cin => \inst11|Count[0]~15\,
	combout => \inst11|Count[1]~16_combout\,
	cout => \inst11|Count[1]~17\);

-- Location: FF_X55_Y39_N3
\inst11|Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_1MHz~clkctrl_outclk\,
	d => \inst11|Count[1]~16_combout\,
	sclr => \inst11|ALT_INV_LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|Count\(1));

-- Location: LCCOMB_X55_Y39_N4
\inst11|Count[2]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Count[2]~18_combout\ = (\inst11|Count\(2) & (\inst11|Count[1]~17\ $ (GND))) # (!\inst11|Count\(2) & (!\inst11|Count[1]~17\ & VCC))
-- \inst11|Count[2]~19\ = CARRY((\inst11|Count\(2) & !\inst11|Count[1]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Count\(2),
	datad => VCC,
	cin => \inst11|Count[1]~17\,
	combout => \inst11|Count[2]~18_combout\,
	cout => \inst11|Count[2]~19\);

-- Location: FF_X55_Y39_N5
\inst11|Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_1MHz~clkctrl_outclk\,
	d => \inst11|Count[2]~18_combout\,
	sclr => \inst11|ALT_INV_LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|Count\(2));

-- Location: LCCOMB_X55_Y39_N6
\inst11|Count[3]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Count[3]~20_combout\ = (\inst11|Count\(3) & (!\inst11|Count[2]~19\)) # (!\inst11|Count\(3) & ((\inst11|Count[2]~19\) # (GND)))
-- \inst11|Count[3]~21\ = CARRY((!\inst11|Count[2]~19\) # (!\inst11|Count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Count\(3),
	datad => VCC,
	cin => \inst11|Count[2]~19\,
	combout => \inst11|Count[3]~20_combout\,
	cout => \inst11|Count[3]~21\);

-- Location: FF_X55_Y39_N7
\inst11|Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_1MHz~clkctrl_outclk\,
	d => \inst11|Count[3]~20_combout\,
	sclr => \inst11|ALT_INV_LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|Count\(3));

-- Location: LCCOMB_X55_Y39_N8
\inst11|Count[4]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Count[4]~22_combout\ = (\inst11|Count\(4) & (\inst11|Count[3]~21\ $ (GND))) # (!\inst11|Count\(4) & (!\inst11|Count[3]~21\ & VCC))
-- \inst11|Count[4]~23\ = CARRY((\inst11|Count\(4) & !\inst11|Count[3]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Count\(4),
	datad => VCC,
	cin => \inst11|Count[3]~21\,
	combout => \inst11|Count[4]~22_combout\,
	cout => \inst11|Count[4]~23\);

-- Location: FF_X55_Y39_N9
\inst11|Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_1MHz~clkctrl_outclk\,
	d => \inst11|Count[4]~22_combout\,
	sclr => \inst11|ALT_INV_LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|Count\(4));

-- Location: LCCOMB_X55_Y39_N10
\inst11|Count[5]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Count[5]~24_combout\ = (\inst11|Count\(5) & (!\inst11|Count[4]~23\)) # (!\inst11|Count\(5) & ((\inst11|Count[4]~23\) # (GND)))
-- \inst11|Count[5]~25\ = CARRY((!\inst11|Count[4]~23\) # (!\inst11|Count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Count\(5),
	datad => VCC,
	cin => \inst11|Count[4]~23\,
	combout => \inst11|Count[5]~24_combout\,
	cout => \inst11|Count[5]~25\);

-- Location: FF_X55_Y39_N11
\inst11|Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_1MHz~clkctrl_outclk\,
	d => \inst11|Count[5]~24_combout\,
	sclr => \inst11|ALT_INV_LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|Count\(5));

-- Location: LCCOMB_X55_Y39_N12
\inst11|Count[6]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Count[6]~26_combout\ = (\inst11|Count\(6) & (\inst11|Count[5]~25\ $ (GND))) # (!\inst11|Count\(6) & (!\inst11|Count[5]~25\ & VCC))
-- \inst11|Count[6]~27\ = CARRY((\inst11|Count\(6) & !\inst11|Count[5]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Count\(6),
	datad => VCC,
	cin => \inst11|Count[5]~25\,
	combout => \inst11|Count[6]~26_combout\,
	cout => \inst11|Count[6]~27\);

-- Location: FF_X55_Y39_N13
\inst11|Count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_1MHz~clkctrl_outclk\,
	d => \inst11|Count[6]~26_combout\,
	sclr => \inst11|ALT_INV_LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|Count\(6));

-- Location: LCCOMB_X55_Y39_N14
\inst11|Count[7]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Count[7]~28_combout\ = (\inst11|Count\(7) & (!\inst11|Count[6]~27\)) # (!\inst11|Count\(7) & ((\inst11|Count[6]~27\) # (GND)))
-- \inst11|Count[7]~29\ = CARRY((!\inst11|Count[6]~27\) # (!\inst11|Count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Count\(7),
	datad => VCC,
	cin => \inst11|Count[6]~27\,
	combout => \inst11|Count[7]~28_combout\,
	cout => \inst11|Count[7]~29\);

-- Location: FF_X55_Y39_N15
\inst11|Count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_1MHz~clkctrl_outclk\,
	d => \inst11|Count[7]~28_combout\,
	sclr => \inst11|ALT_INV_LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|Count\(7));

-- Location: LCCOMB_X55_Y39_N16
\inst11|Count[8]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Count[8]~30_combout\ = (\inst11|Count\(8) & (\inst11|Count[7]~29\ $ (GND))) # (!\inst11|Count\(8) & (!\inst11|Count[7]~29\ & VCC))
-- \inst11|Count[8]~31\ = CARRY((\inst11|Count\(8) & !\inst11|Count[7]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Count\(8),
	datad => VCC,
	cin => \inst11|Count[7]~29\,
	combout => \inst11|Count[8]~30_combout\,
	cout => \inst11|Count[8]~31\);

-- Location: FF_X55_Y39_N17
\inst11|Count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_1MHz~clkctrl_outclk\,
	d => \inst11|Count[8]~30_combout\,
	sclr => \inst11|ALT_INV_LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|Count\(8));

-- Location: LCCOMB_X55_Y39_N18
\inst11|Count[9]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Count[9]~32_combout\ = (\inst11|Count\(9) & (!\inst11|Count[8]~31\)) # (!\inst11|Count\(9) & ((\inst11|Count[8]~31\) # (GND)))
-- \inst11|Count[9]~33\ = CARRY((!\inst11|Count[8]~31\) # (!\inst11|Count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Count\(9),
	datad => VCC,
	cin => \inst11|Count[8]~31\,
	combout => \inst11|Count[9]~32_combout\,
	cout => \inst11|Count[9]~33\);

-- Location: FF_X55_Y39_N19
\inst11|Count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_1MHz~clkctrl_outclk\,
	d => \inst11|Count[9]~32_combout\,
	sclr => \inst11|ALT_INV_LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|Count\(9));

-- Location: LCCOMB_X55_Y39_N20
\inst11|Count[10]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Count[10]~34_combout\ = (\inst11|Count\(10) & (\inst11|Count[9]~33\ $ (GND))) # (!\inst11|Count\(10) & (!\inst11|Count[9]~33\ & VCC))
-- \inst11|Count[10]~35\ = CARRY((\inst11|Count\(10) & !\inst11|Count[9]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Count\(10),
	datad => VCC,
	cin => \inst11|Count[9]~33\,
	combout => \inst11|Count[10]~34_combout\,
	cout => \inst11|Count[10]~35\);

-- Location: FF_X55_Y39_N21
\inst11|Count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_1MHz~clkctrl_outclk\,
	d => \inst11|Count[10]~34_combout\,
	sclr => \inst11|ALT_INV_LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|Count\(10));

-- Location: LCCOMB_X55_Y39_N22
\inst11|Count[11]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Count[11]~36_combout\ = (\inst11|Count\(11) & (!\inst11|Count[10]~35\)) # (!\inst11|Count\(11) & ((\inst11|Count[10]~35\) # (GND)))
-- \inst11|Count[11]~37\ = CARRY((!\inst11|Count[10]~35\) # (!\inst11|Count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Count\(11),
	datad => VCC,
	cin => \inst11|Count[10]~35\,
	combout => \inst11|Count[11]~36_combout\,
	cout => \inst11|Count[11]~37\);

-- Location: FF_X55_Y39_N23
\inst11|Count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_1MHz~clkctrl_outclk\,
	d => \inst11|Count[11]~36_combout\,
	sclr => \inst11|ALT_INV_LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|Count\(11));

-- Location: LCCOMB_X55_Y39_N24
\inst11|Count[12]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Count[12]~38_combout\ = (\inst11|Count\(12) & (\inst11|Count[11]~37\ $ (GND))) # (!\inst11|Count\(12) & (!\inst11|Count[11]~37\ & VCC))
-- \inst11|Count[12]~39\ = CARRY((\inst11|Count\(12) & !\inst11|Count[11]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Count\(12),
	datad => VCC,
	cin => \inst11|Count[11]~37\,
	combout => \inst11|Count[12]~38_combout\,
	cout => \inst11|Count[12]~39\);

-- Location: FF_X55_Y39_N25
\inst11|Count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_1MHz~clkctrl_outclk\,
	d => \inst11|Count[12]~38_combout\,
	sclr => \inst11|ALT_INV_LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|Count\(12));

-- Location: LCCOMB_X55_Y39_N26
\inst11|Count[13]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Count[13]~40_combout\ = \inst11|Count\(13) $ (\inst11|Count[12]~39\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Count\(13),
	cin => \inst11|Count[12]~39\,
	combout => \inst11|Count[13]~40_combout\);

-- Location: FF_X55_Y39_N27
\inst11|Count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_1MHz~clkctrl_outclk\,
	d => \inst11|Count[13]~40_combout\,
	sclr => \inst11|ALT_INV_LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|Count\(13));

-- Location: FF_X54_Y39_N25
\inst11|FreqCount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SQ_EN~clkctrl_outclk\,
	asdata => \inst13|inst1[12]~43_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	sload => VCC,
	ena => \inst|IO_WRITE_int~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|FreqCount\(12));

-- Location: FF_X54_Y39_N23
\inst11|FreqCount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SQ_EN~clkctrl_outclk\,
	asdata => \inst13|inst1[11]~41_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	sload => VCC,
	ena => \inst|IO_WRITE_int~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|FreqCount\(11));

-- Location: FF_X54_Y39_N21
\inst11|FreqCount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SQ_EN~clkctrl_outclk\,
	asdata => \inst13|inst1[10]~39_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	sload => VCC,
	ena => \inst|IO_WRITE_int~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|FreqCount\(10));

-- Location: FF_X54_Y39_N19
\inst11|FreqCount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SQ_EN~clkctrl_outclk\,
	asdata => \inst13|inst1[9]~36_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	sload => VCC,
	ena => \inst|IO_WRITE_int~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|FreqCount\(9));

-- Location: FF_X54_Y39_N17
\inst11|FreqCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SQ_EN~clkctrl_outclk\,
	asdata => \inst13|inst1[8]~33_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	sload => VCC,
	ena => \inst|IO_WRITE_int~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|FreqCount\(8));

-- Location: FF_X54_Y39_N15
\inst11|FreqCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SQ_EN~clkctrl_outclk\,
	asdata => \inst13|inst1[7]~30_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	sload => VCC,
	ena => \inst|IO_WRITE_int~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|FreqCount\(7));

-- Location: FF_X54_Y39_N13
\inst11|FreqCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SQ_EN~clkctrl_outclk\,
	asdata => \inst13|inst1[6]~27_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	sload => VCC,
	ena => \inst|IO_WRITE_int~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|FreqCount\(6));

-- Location: FF_X54_Y39_N11
\inst11|FreqCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SQ_EN~clkctrl_outclk\,
	asdata => \inst13|inst1[5]~7_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	sload => VCC,
	ena => \inst|IO_WRITE_int~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|FreqCount\(5));

-- Location: FF_X54_Y39_N9
\inst11|FreqCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SQ_EN~clkctrl_outclk\,
	asdata => \inst13|inst1[4]~10_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	sload => VCC,
	ena => \inst|IO_WRITE_int~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|FreqCount\(4));

-- Location: FF_X54_Y39_N7
\inst11|FreqCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SQ_EN~clkctrl_outclk\,
	asdata => \inst13|inst1[3]~13_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	sload => VCC,
	ena => \inst|IO_WRITE_int~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|FreqCount\(3));

-- Location: FF_X54_Y39_N5
\inst11|FreqCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SQ_EN~clkctrl_outclk\,
	asdata => \inst13|inst1[2]~16_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	sload => VCC,
	ena => \inst|IO_WRITE_int~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|FreqCount\(2));

-- Location: FF_X54_Y39_N3
\inst11|FreqCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SQ_EN~clkctrl_outclk\,
	asdata => \inst13|inst1[1]~19_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	sload => VCC,
	ena => \inst|IO_WRITE_int~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|FreqCount\(1));

-- Location: FF_X54_Y39_N1
\inst11|FreqCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SQ_EN~clkctrl_outclk\,
	asdata => \inst13|inst1[0]~24_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	sload => VCC,
	ena => \inst|IO_WRITE_int~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|FreqCount\(0));

-- Location: LCCOMB_X54_Y39_N0
\inst11|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~1_cout\ = CARRY((\inst11|FreqCount\(0) & !\inst11|Count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|FreqCount\(0),
	datab => \inst11|Count\(0),
	datad => VCC,
	cout => \inst11|LessThan0~1_cout\);

-- Location: LCCOMB_X54_Y39_N2
\inst11|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~3_cout\ = CARRY((\inst11|Count\(1) & ((!\inst11|LessThan0~1_cout\) # (!\inst11|FreqCount\(1)))) # (!\inst11|Count\(1) & (!\inst11|FreqCount\(1) & !\inst11|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Count\(1),
	datab => \inst11|FreqCount\(1),
	datad => VCC,
	cin => \inst11|LessThan0~1_cout\,
	cout => \inst11|LessThan0~3_cout\);

-- Location: LCCOMB_X54_Y39_N4
\inst11|LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~5_cout\ = CARRY((\inst11|Count\(2) & (\inst11|FreqCount\(2) & !\inst11|LessThan0~3_cout\)) # (!\inst11|Count\(2) & ((\inst11|FreqCount\(2)) # (!\inst11|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Count\(2),
	datab => \inst11|FreqCount\(2),
	datad => VCC,
	cin => \inst11|LessThan0~3_cout\,
	cout => \inst11|LessThan0~5_cout\);

-- Location: LCCOMB_X54_Y39_N6
\inst11|LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~7_cout\ = CARRY((\inst11|FreqCount\(3) & (\inst11|Count\(3) & !\inst11|LessThan0~5_cout\)) # (!\inst11|FreqCount\(3) & ((\inst11|Count\(3)) # (!\inst11|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|FreqCount\(3),
	datab => \inst11|Count\(3),
	datad => VCC,
	cin => \inst11|LessThan0~5_cout\,
	cout => \inst11|LessThan0~7_cout\);

-- Location: LCCOMB_X54_Y39_N8
\inst11|LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~9_cout\ = CARRY((\inst11|Count\(4) & (\inst11|FreqCount\(4) & !\inst11|LessThan0~7_cout\)) # (!\inst11|Count\(4) & ((\inst11|FreqCount\(4)) # (!\inst11|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Count\(4),
	datab => \inst11|FreqCount\(4),
	datad => VCC,
	cin => \inst11|LessThan0~7_cout\,
	cout => \inst11|LessThan0~9_cout\);

-- Location: LCCOMB_X54_Y39_N10
\inst11|LessThan0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~11_cout\ = CARRY((\inst11|FreqCount\(5) & (\inst11|Count\(5) & !\inst11|LessThan0~9_cout\)) # (!\inst11|FreqCount\(5) & ((\inst11|Count\(5)) # (!\inst11|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|FreqCount\(5),
	datab => \inst11|Count\(5),
	datad => VCC,
	cin => \inst11|LessThan0~9_cout\,
	cout => \inst11|LessThan0~11_cout\);

-- Location: LCCOMB_X54_Y39_N12
\inst11|LessThan0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~13_cout\ = CARRY((\inst11|FreqCount\(6) & ((!\inst11|LessThan0~11_cout\) # (!\inst11|Count\(6)))) # (!\inst11|FreqCount\(6) & (!\inst11|Count\(6) & !\inst11|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|FreqCount\(6),
	datab => \inst11|Count\(6),
	datad => VCC,
	cin => \inst11|LessThan0~11_cout\,
	cout => \inst11|LessThan0~13_cout\);

-- Location: LCCOMB_X54_Y39_N14
\inst11|LessThan0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~15_cout\ = CARRY((\inst11|Count\(7) & ((!\inst11|LessThan0~13_cout\) # (!\inst11|FreqCount\(7)))) # (!\inst11|Count\(7) & (!\inst11|FreqCount\(7) & !\inst11|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Count\(7),
	datab => \inst11|FreqCount\(7),
	datad => VCC,
	cin => \inst11|LessThan0~13_cout\,
	cout => \inst11|LessThan0~15_cout\);

-- Location: LCCOMB_X54_Y39_N16
\inst11|LessThan0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~17_cout\ = CARRY((\inst11|Count\(8) & (\inst11|FreqCount\(8) & !\inst11|LessThan0~15_cout\)) # (!\inst11|Count\(8) & ((\inst11|FreqCount\(8)) # (!\inst11|LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Count\(8),
	datab => \inst11|FreqCount\(8),
	datad => VCC,
	cin => \inst11|LessThan0~15_cout\,
	cout => \inst11|LessThan0~17_cout\);

-- Location: LCCOMB_X54_Y39_N18
\inst11|LessThan0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~19_cout\ = CARRY((\inst11|Count\(9) & ((!\inst11|LessThan0~17_cout\) # (!\inst11|FreqCount\(9)))) # (!\inst11|Count\(9) & (!\inst11|FreqCount\(9) & !\inst11|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Count\(9),
	datab => \inst11|FreqCount\(9),
	datad => VCC,
	cin => \inst11|LessThan0~17_cout\,
	cout => \inst11|LessThan0~19_cout\);

-- Location: LCCOMB_X54_Y39_N20
\inst11|LessThan0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~21_cout\ = CARRY((\inst11|Count\(10) & (\inst11|FreqCount\(10) & !\inst11|LessThan0~19_cout\)) # (!\inst11|Count\(10) & ((\inst11|FreqCount\(10)) # (!\inst11|LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Count\(10),
	datab => \inst11|FreqCount\(10),
	datad => VCC,
	cin => \inst11|LessThan0~19_cout\,
	cout => \inst11|LessThan0~21_cout\);

-- Location: LCCOMB_X54_Y39_N22
\inst11|LessThan0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~23_cout\ = CARRY((\inst11|FreqCount\(11) & (\inst11|Count\(11) & !\inst11|LessThan0~21_cout\)) # (!\inst11|FreqCount\(11) & ((\inst11|Count\(11)) # (!\inst11|LessThan0~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|FreqCount\(11),
	datab => \inst11|Count\(11),
	datad => VCC,
	cin => \inst11|LessThan0~21_cout\,
	cout => \inst11|LessThan0~23_cout\);

-- Location: LCCOMB_X54_Y39_N24
\inst11|LessThan0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~25_cout\ = CARRY((\inst11|Count\(12) & (\inst11|FreqCount\(12) & !\inst11|LessThan0~23_cout\)) # (!\inst11|Count\(12) & ((\inst11|FreqCount\(12)) # (!\inst11|LessThan0~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Count\(12),
	datab => \inst11|FreqCount\(12),
	datad => VCC,
	cin => \inst11|LessThan0~23_cout\,
	cout => \inst11|LessThan0~25_cout\);

-- Location: LCCOMB_X54_Y39_N26
\inst11|LessThan0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~26_combout\ = (\inst11|FreqCount\(13) & ((\inst11|LessThan0~25_cout\) # (!\inst11|Count\(13)))) # (!\inst11|FreqCount\(13) & (\inst11|LessThan0~25_cout\ & !\inst11|Count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|FreqCount\(13),
	datad => \inst11|Count\(13),
	cin => \inst11|LessThan0~25_cout\,
	combout => \inst11|LessThan0~26_combout\);

-- Location: LCCOMB_X55_Y39_N28
\inst11|SqWave~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|SqWave~0_combout\ = \inst11|LessThan0~26_combout\ $ (!\inst11|SqWave~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|LessThan0~26_combout\,
	datac => \inst11|SqWave~q\,
	combout => \inst11|SqWave~0_combout\);

-- Location: FF_X55_Y39_N29
\inst11|SqWave\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clock_1MHz~clkctrl_outclk\,
	d => \inst11|SqWave~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|SqWave~q\);

-- Location: LCCOMB_X49_Y43_N10
\inst11|IO_VAL[9]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|IO_VAL[9]~9_combout\ = !\inst13|inst1[9]~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst1[9]~36_combout\,
	combout => \inst11|IO_VAL[9]~9_combout\);

-- Location: FF_X49_Y43_N11
\inst11|IO_VAL[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SQ_EN~combout\,
	d => \inst11|IO_VAL[9]~9_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	ena => \inst|IO_WRITE_int~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|IO_VAL\(9));

-- Location: LCCOMB_X49_Y43_N4
\inst11|IO_VAL[10]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|IO_VAL[10]~10_combout\ = !\inst13|inst1[10]~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst1[10]~39_combout\,
	combout => \inst11|IO_VAL[10]~10_combout\);

-- Location: FF_X49_Y43_N5
\inst11|IO_VAL[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SQ_EN~combout\,
	d => \inst11|IO_VAL[10]~10_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	ena => \inst|IO_WRITE_int~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|IO_VAL\(10));

-- Location: LCCOMB_X49_Y43_N26
\inst11|IO_VAL[11]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|IO_VAL[11]~11_combout\ = !\inst13|inst1[11]~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst1[11]~41_combout\,
	combout => \inst11|IO_VAL[11]~11_combout\);

-- Location: FF_X49_Y43_N27
\inst11|IO_VAL[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SQ_EN~combout\,
	d => \inst11|IO_VAL[11]~11_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	ena => \inst|IO_WRITE_int~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|IO_VAL\(11));

-- Location: LCCOMB_X49_Y42_N0
\inst11|IO_VAL[8]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|IO_VAL[8]~8_combout\ = !\inst13|inst1[8]~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst1[8]~33_combout\,
	combout => \inst11|IO_VAL[8]~8_combout\);

-- Location: FF_X49_Y42_N1
\inst11|IO_VAL[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SQ_EN~combout\,
	d => \inst11|IO_VAL[8]~8_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	ena => \inst|IO_WRITE_int~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|IO_VAL\(8));

-- Location: LCCOMB_X49_Y43_N24
\inst11|Equal4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Equal4~2_combout\ = (!\inst11|IO_VAL\(9) & (!\inst11|IO_VAL\(10) & (!\inst11|IO_VAL\(11) & !\inst11|IO_VAL\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|IO_VAL\(9),
	datab => \inst11|IO_VAL\(10),
	datac => \inst11|IO_VAL\(11),
	datad => \inst11|IO_VAL\(8),
	combout => \inst11|Equal4~2_combout\);

-- Location: LCCOMB_X50_Y44_N16
\inst11|IO_VAL[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|IO_VAL[4]~4_combout\ = !\inst13|inst1[4]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst1[4]~10_combout\,
	combout => \inst11|IO_VAL[4]~4_combout\);

-- Location: FF_X50_Y44_N17
\inst11|IO_VAL[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SQ_EN~combout\,
	d => \inst11|IO_VAL[4]~4_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	ena => \inst|IO_WRITE_int~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|IO_VAL\(4));

-- Location: LCCOMB_X51_Y44_N20
\inst11|IO_VAL[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|IO_VAL[7]~7_combout\ = !\inst13|inst1[7]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst1[7]~30_combout\,
	combout => \inst11|IO_VAL[7]~7_combout\);

-- Location: FF_X51_Y44_N21
\inst11|IO_VAL[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SQ_EN~combout\,
	d => \inst11|IO_VAL[7]~7_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	ena => \inst|IO_WRITE_int~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|IO_VAL\(7));

-- Location: LCCOMB_X51_Y44_N4
\inst11|IO_VAL[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|IO_VAL[6]~6_combout\ = !\inst13|inst1[6]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[6]~27_combout\,
	combout => \inst11|IO_VAL[6]~6_combout\);

-- Location: FF_X51_Y44_N5
\inst11|IO_VAL[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SQ_EN~combout\,
	d => \inst11|IO_VAL[6]~6_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	ena => \inst|IO_WRITE_int~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|IO_VAL\(6));

-- Location: LCCOMB_X51_Y43_N2
\inst11|IO_VAL[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|IO_VAL[5]~5_combout\ = !\inst13|inst1[5]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst1[5]~7_combout\,
	combout => \inst11|IO_VAL[5]~5_combout\);

-- Location: FF_X51_Y43_N3
\inst11|IO_VAL[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SQ_EN~combout\,
	d => \inst11|IO_VAL[5]~5_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	ena => \inst|IO_WRITE_int~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|IO_VAL\(5));

-- Location: LCCOMB_X51_Y44_N30
\inst11|Equal4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Equal4~1_combout\ = (!\inst11|IO_VAL\(4) & (!\inst11|IO_VAL\(7) & (!\inst11|IO_VAL\(6) & !\inst11|IO_VAL\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|IO_VAL\(4),
	datab => \inst11|IO_VAL\(7),
	datac => \inst11|IO_VAL\(6),
	datad => \inst11|IO_VAL\(5),
	combout => \inst11|Equal4~1_combout\);

-- Location: LCCOMB_X54_Y44_N22
\inst11|IO_VAL[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|IO_VAL[1]~1_combout\ = !\inst13|inst1[1]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[1]~19_combout\,
	combout => \inst11|IO_VAL[1]~1_combout\);

-- Location: FF_X54_Y44_N23
\inst11|IO_VAL[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SQ_EN~combout\,
	d => \inst11|IO_VAL[1]~1_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	ena => \inst|IO_WRITE_int~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|IO_VAL\(1));

-- Location: LCCOMB_X54_Y44_N18
\inst11|IO_VAL[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|IO_VAL[2]~2_combout\ = !\inst13|inst1[2]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[2]~16_combout\,
	combout => \inst11|IO_VAL[2]~2_combout\);

-- Location: FF_X54_Y44_N19
\inst11|IO_VAL[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SQ_EN~combout\,
	d => \inst11|IO_VAL[2]~2_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	ena => \inst|IO_WRITE_int~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|IO_VAL\(2));

-- Location: LCCOMB_X54_Y43_N26
\inst11|IO_VAL[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|IO_VAL[0]~0_combout\ = !\inst13|inst1[0]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst1[0]~24_combout\,
	combout => \inst11|IO_VAL[0]~0_combout\);

-- Location: FF_X54_Y43_N27
\inst11|IO_VAL[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SQ_EN~combout\,
	d => \inst11|IO_VAL[0]~0_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	ena => \inst|IO_WRITE_int~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|IO_VAL\(0));

-- Location: LCCOMB_X50_Y44_N26
\inst11|IO_VAL[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|IO_VAL[3]~3_combout\ = !\inst13|inst1[3]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[3]~13_combout\,
	combout => \inst11|IO_VAL[3]~3_combout\);

-- Location: FF_X50_Y44_N27
\inst11|IO_VAL[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SQ_EN~combout\,
	d => \inst11|IO_VAL[3]~3_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	ena => \inst|IO_WRITE_int~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|IO_VAL\(3));

-- Location: LCCOMB_X54_Y44_N12
\inst11|Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Equal4~0_combout\ = (!\inst11|IO_VAL\(1) & (!\inst11|IO_VAL\(2) & (!\inst11|IO_VAL\(0) & !\inst11|IO_VAL\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|IO_VAL\(1),
	datab => \inst11|IO_VAL\(2),
	datac => \inst11|IO_VAL\(0),
	datad => \inst11|IO_VAL\(3),
	combout => \inst11|Equal4~0_combout\);

-- Location: FF_X54_Y43_N31
\inst11|IO_VAL[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SQ_EN~combout\,
	asdata => \inst13|inst1[14]~47_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	sload => VCC,
	ena => \inst|IO_WRITE_int~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|IO_VAL\(14));

-- Location: LCCOMB_X54_Y42_N10
\inst11|IO_VAL[13]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|IO_VAL[13]~13_combout\ = !\inst13|inst1[13]~45_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst1[13]~45_combout\,
	combout => \inst11|IO_VAL[13]~13_combout\);

-- Location: FF_X54_Y42_N11
\inst11|IO_VAL[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SQ_EN~combout\,
	d => \inst11|IO_VAL[13]~13_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	ena => \inst|IO_WRITE_int~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|IO_VAL\(13));

-- Location: FF_X54_Y42_N15
\inst11|IO_VAL[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SQ_EN~combout\,
	asdata => \inst13|inst1[15]~49_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	sload => VCC,
	ena => \inst|IO_WRITE_int~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|IO_VAL\(15));

-- Location: LCCOMB_X50_Y42_N30
\inst11|IO_VAL[12]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|IO_VAL[12]~12_combout\ = !\inst13|inst1[12]~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst1[12]~43_combout\,
	combout => \inst11|IO_VAL[12]~12_combout\);

-- Location: FF_X50_Y42_N31
\inst11|IO_VAL[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|SQ_EN~combout\,
	d => \inst11|IO_VAL[12]~12_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	ena => \inst|IO_WRITE_int~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|IO_VAL\(12));

-- Location: LCCOMB_X54_Y42_N14
\inst11|Equal4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Equal4~3_combout\ = (!\inst11|IO_VAL\(14) & (!\inst11|IO_VAL\(13) & (!\inst11|IO_VAL\(15) & !\inst11|IO_VAL\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|IO_VAL\(14),
	datab => \inst11|IO_VAL\(13),
	datac => \inst11|IO_VAL\(15),
	datad => \inst11|IO_VAL\(12),
	combout => \inst11|Equal4~3_combout\);

-- Location: LCCOMB_X55_Y43_N2
\inst11|Equal4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Equal4~4_combout\ = (\inst11|Equal4~2_combout\ & (\inst11|Equal4~1_combout\ & (\inst11|Equal4~0_combout\ & \inst11|Equal4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Equal4~2_combout\,
	datab => \inst11|Equal4~1_combout\,
	datac => \inst11|Equal4~0_combout\,
	datad => \inst11|Equal4~3_combout\,
	combout => \inst11|Equal4~4_combout\);

-- Location: LCCOMB_X55_Y43_N20
\inst11|process_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|process_2~0_combout\ = (!\inst11|Equal4~4_combout\ & ((!\inst11|Equal3~0_combout\) # (!\inst11|Finished[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Finished[0]~2_combout\,
	datac => \inst11|Equal3~0_combout\,
	datad => \inst11|Equal4~4_combout\,
	combout => \inst11|process_2~0_combout\);

-- Location: LCCOMB_X55_Y39_N30
\inst11|SQ\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|SQ~combout\ = (\inst11|process_2~0_combout\ & (\inst11|SqWave~q\)) # (!\inst11|process_2~0_combout\ & ((\inst11|SQ~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|SqWave~q\,
	datac => \inst11|SQ~combout\,
	datad => \inst11|process_2~0_combout\,
	combout => \inst11|SQ~combout\);

-- Location: LCCOMB_X50_Y43_N2
\inst3|DP_EN~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DP_EN~2_combout\ = (\inst3|DP_EN~0_combout\ & (\inst3|DP_EN~1_combout\ & (!\inst|IR\(3) & \inst3|SWITCH_EN~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|DP_EN~0_combout\,
	datab => \inst3|DP_EN~1_combout\,
	datac => \inst|IR\(3),
	datad => \inst3|SWITCH_EN~0_combout\,
	combout => \inst3|DP_EN~2_combout\);

-- Location: LCCOMB_X50_Y46_N18
\inst3|DP_EN\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DP_EN~combout\ = LCELL((\inst3|DP_EN~2_combout\ & !\inst|IR\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|DP_EN~2_combout\,
	datad => \inst|IR\(4),
	combout => \inst3|DP_EN~combout\);

-- Location: CLKCTRL_G12
\inst3|DP_EN~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|DP_EN~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|DP_EN~clkctrl_outclk\);

-- Location: LCCOMB_X75_Y40_N28
\inst10|inst[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst[5]~feeder_combout\ = \inst13|inst1[5]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst1[5]~7_combout\,
	combout => \inst10|inst[5]~feeder_combout\);

-- Location: FF_X75_Y40_N29
\inst10|inst[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|DP_EN~clkctrl_outclk\,
	d => \inst10|inst[5]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst\(5));

-- Location: FF_X75_Y40_N23
\inst10|inst[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|DP_EN~clkctrl_outclk\,
	asdata => \inst13|inst1[4]~10_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst\(4));

-- Location: LCCOMB_X77_Y40_N12
\inst10|inst[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst[3]~feeder_combout\ = \inst13|inst1[3]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst1[3]~13_combout\,
	combout => \inst10|inst[3]~feeder_combout\);

-- Location: FF_X77_Y40_N13
\inst10|inst[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|DP_EN~clkctrl_outclk\,
	d => \inst10|inst[3]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst\(3));

-- Location: LCCOMB_X67_Y51_N4
\inst10|inst[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst[2]~feeder_combout\ = \inst13|inst1[2]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst1[2]~16_combout\,
	combout => \inst10|inst[2]~feeder_combout\);

-- Location: FF_X67_Y51_N5
\inst10|inst[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|DP_EN~clkctrl_outclk\,
	d => \inst10|inst[2]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst\(2));

-- Location: LCCOMB_X61_Y51_N24
\inst10|inst[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst[1]~feeder_combout\ = \inst13|inst1[1]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst1[1]~19_combout\,
	combout => \inst10|inst[1]~feeder_combout\);

-- Location: FF_X61_Y51_N25
\inst10|inst[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|DP_EN~clkctrl_outclk\,
	d => \inst10|inst[1]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst\(1));

-- Location: LCCOMB_X67_Y51_N2
\inst10|inst[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst[0]~feeder_combout\ = \inst13|inst1[0]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst1[0]~24_combout\,
	combout => \inst10|inst[0]~feeder_combout\);

-- Location: FF_X67_Y51_N3
\inst10|inst[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|DP_EN~clkctrl_outclk\,
	d => \inst10|inst[0]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst\(0));

-- Location: LCCOMB_X50_Y43_N8
\inst3|HEX0_EN~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|HEX0_EN~0_combout\ = (!\inst|IR\(4) & (\inst|IR\(2) & !\inst|IR\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(4),
	datab => \inst|IR\(2),
	datad => \inst|IR\(7),
	combout => \inst3|HEX0_EN~0_combout\);

-- Location: LCCOMB_X50_Y43_N12
\inst3|HEX0_EN~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|HEX0_EN~1_combout\ = (\inst3|HEX0_EN~0_combout\ & (!\inst|IR\(3) & (\inst3|SWITCH_EN~1_combout\ & \inst3|SWITCH_EN~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|HEX0_EN~0_combout\,
	datab => \inst|IR\(3),
	datac => \inst3|SWITCH_EN~1_combout\,
	datad => \inst3|SWITCH_EN~0_combout\,
	combout => \inst3|HEX0_EN~1_combout\);

-- Location: LCCOMB_X50_Y43_N28
\inst3|HEX0_EN\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|HEX0_EN~combout\ = LCELL((\inst3|HEX0_EN~1_combout\ & (!\inst|IR\(1) & !\inst|IR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|HEX0_EN~1_combout\,
	datab => \inst|IR\(1),
	datad => \inst|IR\(0),
	combout => \inst3|HEX0_EN~combout\);

-- Location: CLKCTRL_G14
\inst3|HEX0_EN~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|HEX0_EN~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|HEX0_EN~clkctrl_outclk\);

-- Location: LCCOMB_X55_Y50_N22
\inst9|inst1|latched_hex[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst1|latched_hex[3]~feeder_combout\ = \inst13|inst1[3]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst1[3]~13_combout\,
	combout => \inst9|inst1|latched_hex[3]~feeder_combout\);

-- Location: FF_X55_Y50_N23
\inst9|inst1|latched_hex[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX0_EN~clkctrl_outclk\,
	d => \inst9|inst1|latched_hex[3]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst1|latched_hex\(3));

-- Location: LCCOMB_X55_Y50_N16
\inst9|inst1|latched_hex[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst1|latched_hex[2]~feeder_combout\ = \inst13|inst1[2]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst1[2]~16_combout\,
	combout => \inst9|inst1|latched_hex[2]~feeder_combout\);

-- Location: FF_X55_Y50_N17
\inst9|inst1|latched_hex[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX0_EN~clkctrl_outclk\,
	d => \inst9|inst1|latched_hex[2]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst1|latched_hex\(2));

-- Location: LCCOMB_X55_Y50_N8
\inst9|inst1|latched_hex[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst1|latched_hex[0]~feeder_combout\ = \inst13|inst1[0]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst1[0]~24_combout\,
	combout => \inst9|inst1|latched_hex[0]~feeder_combout\);

-- Location: FF_X55_Y50_N9
\inst9|inst1|latched_hex[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX0_EN~clkctrl_outclk\,
	d => \inst9|inst1|latched_hex[0]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst1|latched_hex\(0));

-- Location: LCCOMB_X55_Y50_N18
\inst9|inst1|latched_hex[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst1|latched_hex[1]~feeder_combout\ = \inst13|inst1[1]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst1[1]~19_combout\,
	combout => \inst9|inst1|latched_hex[1]~feeder_combout\);

-- Location: FF_X55_Y50_N19
\inst9|inst1|latched_hex[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX0_EN~clkctrl_outclk\,
	d => \inst9|inst1|latched_hex[1]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst1|latched_hex\(1));

-- Location: LCCOMB_X55_Y50_N28
\inst9|inst1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst1|Mux0~0_combout\ = (\inst9|inst1|latched_hex\(0) & ((\inst9|inst1|latched_hex\(3)) # (\inst9|inst1|latched_hex\(2) $ (\inst9|inst1|latched_hex\(1))))) # (!\inst9|inst1|latched_hex\(0) & ((\inst9|inst1|latched_hex\(1)) # 
-- (\inst9|inst1|latched_hex\(3) $ (\inst9|inst1|latched_hex\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst1|latched_hex\(3),
	datab => \inst9|inst1|latched_hex\(2),
	datac => \inst9|inst1|latched_hex\(0),
	datad => \inst9|inst1|latched_hex\(1),
	combout => \inst9|inst1|Mux0~0_combout\);

-- Location: LCCOMB_X55_Y50_N26
\inst9|inst1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst1|Mux1~0_combout\ = (\inst9|inst1|latched_hex\(2) & (\inst9|inst1|latched_hex\(0) & (\inst9|inst1|latched_hex\(3) $ (\inst9|inst1|latched_hex\(1))))) # (!\inst9|inst1|latched_hex\(2) & (!\inst9|inst1|latched_hex\(3) & 
-- ((\inst9|inst1|latched_hex\(0)) # (\inst9|inst1|latched_hex\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst1|latched_hex\(3),
	datab => \inst9|inst1|latched_hex\(2),
	datac => \inst9|inst1|latched_hex\(0),
	datad => \inst9|inst1|latched_hex\(1),
	combout => \inst9|inst1|Mux1~0_combout\);

-- Location: LCCOMB_X55_Y50_N4
\inst9|inst1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst1|Mux2~0_combout\ = (\inst9|inst1|latched_hex\(1) & (!\inst9|inst1|latched_hex\(3) & ((\inst9|inst1|latched_hex\(0))))) # (!\inst9|inst1|latched_hex\(1) & ((\inst9|inst1|latched_hex\(2) & (!\inst9|inst1|latched_hex\(3))) # 
-- (!\inst9|inst1|latched_hex\(2) & ((\inst9|inst1|latched_hex\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst1|latched_hex\(3),
	datab => \inst9|inst1|latched_hex\(2),
	datac => \inst9|inst1|latched_hex\(0),
	datad => \inst9|inst1|latched_hex\(1),
	combout => \inst9|inst1|Mux2~0_combout\);

-- Location: LCCOMB_X55_Y50_N14
\inst9|inst1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst1|Mux3~0_combout\ = (\inst9|inst1|latched_hex\(1) & ((\inst9|inst1|latched_hex\(2) & ((\inst9|inst1|latched_hex\(0)))) # (!\inst9|inst1|latched_hex\(2) & (\inst9|inst1|latched_hex\(3) & !\inst9|inst1|latched_hex\(0))))) # 
-- (!\inst9|inst1|latched_hex\(1) & (!\inst9|inst1|latched_hex\(3) & (\inst9|inst1|latched_hex\(2) $ (\inst9|inst1|latched_hex\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst1|latched_hex\(3),
	datab => \inst9|inst1|latched_hex\(2),
	datac => \inst9|inst1|latched_hex\(0),
	datad => \inst9|inst1|latched_hex\(1),
	combout => \inst9|inst1|Mux3~0_combout\);

-- Location: LCCOMB_X55_Y50_N12
\inst9|inst1|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst1|Mux4~0_combout\ = (\inst9|inst1|latched_hex\(3) & (\inst9|inst1|latched_hex\(2) & ((\inst9|inst1|latched_hex\(1)) # (!\inst9|inst1|latched_hex\(0))))) # (!\inst9|inst1|latched_hex\(3) & (!\inst9|inst1|latched_hex\(2) & 
-- (!\inst9|inst1|latched_hex\(0) & \inst9|inst1|latched_hex\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst1|latched_hex\(3),
	datab => \inst9|inst1|latched_hex\(2),
	datac => \inst9|inst1|latched_hex\(0),
	datad => \inst9|inst1|latched_hex\(1),
	combout => \inst9|inst1|Mux4~0_combout\);

-- Location: LCCOMB_X55_Y50_N10
\inst9|inst1|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst1|Mux5~0_combout\ = (\inst9|inst1|latched_hex\(3) & ((\inst9|inst1|latched_hex\(0) & ((\inst9|inst1|latched_hex\(1)))) # (!\inst9|inst1|latched_hex\(0) & (\inst9|inst1|latched_hex\(2))))) # (!\inst9|inst1|latched_hex\(3) & 
-- (\inst9|inst1|latched_hex\(2) & (\inst9|inst1|latched_hex\(0) $ (\inst9|inst1|latched_hex\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst1|latched_hex\(3),
	datab => \inst9|inst1|latched_hex\(2),
	datac => \inst9|inst1|latched_hex\(0),
	datad => \inst9|inst1|latched_hex\(1),
	combout => \inst9|inst1|Mux5~0_combout\);

-- Location: LCCOMB_X55_Y50_N20
\inst9|inst1|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst1|Mux6~0_combout\ = (\inst9|inst1|latched_hex\(3) & (\inst9|inst1|latched_hex\(0) & (\inst9|inst1|latched_hex\(2) $ (\inst9|inst1|latched_hex\(1))))) # (!\inst9|inst1|latched_hex\(3) & (!\inst9|inst1|latched_hex\(1) & 
-- (\inst9|inst1|latched_hex\(2) $ (\inst9|inst1|latched_hex\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst1|latched_hex\(3),
	datab => \inst9|inst1|latched_hex\(2),
	datac => \inst9|inst1|latched_hex\(0),
	datad => \inst9|inst1|latched_hex\(1),
	combout => \inst9|inst1|Mux6~0_combout\);

-- Location: LCCOMB_X64_Y50_N26
\inst9|inst2|latched_hex[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst2|latched_hex[3]~feeder_combout\ = \inst13|inst1[7]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst1[7]~30_combout\,
	combout => \inst9|inst2|latched_hex[3]~feeder_combout\);

-- Location: FF_X64_Y50_N27
\inst9|inst2|latched_hex[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX0_EN~clkctrl_outclk\,
	d => \inst9|inst2|latched_hex[3]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst2|latched_hex\(3));

-- Location: LCCOMB_X64_Y50_N24
\inst9|inst2|latched_hex[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst2|latched_hex[2]~feeder_combout\ = \inst13|inst1[6]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst1[6]~27_combout\,
	combout => \inst9|inst2|latched_hex[2]~feeder_combout\);

-- Location: FF_X64_Y50_N25
\inst9|inst2|latched_hex[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX0_EN~clkctrl_outclk\,
	d => \inst9|inst2|latched_hex[2]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst2|latched_hex\(2));

-- Location: LCCOMB_X64_Y50_N22
\inst9|inst2|latched_hex[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst2|latched_hex[1]~feeder_combout\ = \inst13|inst1[5]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst1[5]~7_combout\,
	combout => \inst9|inst2|latched_hex[1]~feeder_combout\);

-- Location: FF_X64_Y50_N23
\inst9|inst2|latched_hex[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX0_EN~clkctrl_outclk\,
	d => \inst9|inst2|latched_hex[1]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst2|latched_hex\(1));

-- Location: LCCOMB_X64_Y50_N16
\inst9|inst2|latched_hex[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst2|latched_hex[0]~feeder_combout\ = \inst13|inst1[4]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst1[4]~10_combout\,
	combout => \inst9|inst2|latched_hex[0]~feeder_combout\);

-- Location: FF_X64_Y50_N17
\inst9|inst2|latched_hex[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX0_EN~clkctrl_outclk\,
	d => \inst9|inst2|latched_hex[0]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst2|latched_hex\(0));

-- Location: LCCOMB_X64_Y50_N28
\inst9|inst2|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst2|Mux0~0_combout\ = (\inst9|inst2|latched_hex\(0) & ((\inst9|inst2|latched_hex\(3)) # (\inst9|inst2|latched_hex\(2) $ (\inst9|inst2|latched_hex\(1))))) # (!\inst9|inst2|latched_hex\(0) & ((\inst9|inst2|latched_hex\(1)) # 
-- (\inst9|inst2|latched_hex\(3) $ (\inst9|inst2|latched_hex\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst2|latched_hex\(3),
	datab => \inst9|inst2|latched_hex\(2),
	datac => \inst9|inst2|latched_hex\(1),
	datad => \inst9|inst2|latched_hex\(0),
	combout => \inst9|inst2|Mux0~0_combout\);

-- Location: LCCOMB_X64_Y50_N2
\inst9|inst2|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst2|Mux1~0_combout\ = (\inst9|inst2|latched_hex\(2) & (\inst9|inst2|latched_hex\(0) & (\inst9|inst2|latched_hex\(3) $ (\inst9|inst2|latched_hex\(1))))) # (!\inst9|inst2|latched_hex\(2) & (!\inst9|inst2|latched_hex\(3) & 
-- ((\inst9|inst2|latched_hex\(1)) # (\inst9|inst2|latched_hex\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst2|latched_hex\(3),
	datab => \inst9|inst2|latched_hex\(2),
	datac => \inst9|inst2|latched_hex\(1),
	datad => \inst9|inst2|latched_hex\(0),
	combout => \inst9|inst2|Mux1~0_combout\);

-- Location: LCCOMB_X64_Y50_N4
\inst9|inst2|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst2|Mux2~0_combout\ = (\inst9|inst2|latched_hex\(1) & (!\inst9|inst2|latched_hex\(3) & ((\inst9|inst2|latched_hex\(0))))) # (!\inst9|inst2|latched_hex\(1) & ((\inst9|inst2|latched_hex\(2) & (!\inst9|inst2|latched_hex\(3))) # 
-- (!\inst9|inst2|latched_hex\(2) & ((\inst9|inst2|latched_hex\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst2|latched_hex\(3),
	datab => \inst9|inst2|latched_hex\(2),
	datac => \inst9|inst2|latched_hex\(1),
	datad => \inst9|inst2|latched_hex\(0),
	combout => \inst9|inst2|Mux2~0_combout\);

-- Location: LCCOMB_X64_Y50_N18
\inst9|inst2|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst2|Mux3~0_combout\ = (\inst9|inst2|latched_hex\(1) & ((\inst9|inst2|latched_hex\(2) & ((\inst9|inst2|latched_hex\(0)))) # (!\inst9|inst2|latched_hex\(2) & (\inst9|inst2|latched_hex\(3) & !\inst9|inst2|latched_hex\(0))))) # 
-- (!\inst9|inst2|latched_hex\(1) & (!\inst9|inst2|latched_hex\(3) & (\inst9|inst2|latched_hex\(2) $ (\inst9|inst2|latched_hex\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst2|latched_hex\(3),
	datab => \inst9|inst2|latched_hex\(2),
	datac => \inst9|inst2|latched_hex\(1),
	datad => \inst9|inst2|latched_hex\(0),
	combout => \inst9|inst2|Mux3~0_combout\);

-- Location: LCCOMB_X64_Y50_N12
\inst9|inst2|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst2|Mux4~0_combout\ = (\inst9|inst2|latched_hex\(3) & (\inst9|inst2|latched_hex\(2) & ((\inst9|inst2|latched_hex\(1)) # (!\inst9|inst2|latched_hex\(0))))) # (!\inst9|inst2|latched_hex\(3) & (!\inst9|inst2|latched_hex\(2) & 
-- (\inst9|inst2|latched_hex\(1) & !\inst9|inst2|latched_hex\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst2|latched_hex\(3),
	datab => \inst9|inst2|latched_hex\(2),
	datac => \inst9|inst2|latched_hex\(1),
	datad => \inst9|inst2|latched_hex\(0),
	combout => \inst9|inst2|Mux4~0_combout\);

-- Location: LCCOMB_X64_Y50_N30
\inst9|inst2|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst2|Mux5~0_combout\ = (\inst9|inst2|latched_hex\(3) & ((\inst9|inst2|latched_hex\(0) & ((\inst9|inst2|latched_hex\(1)))) # (!\inst9|inst2|latched_hex\(0) & (\inst9|inst2|latched_hex\(2))))) # (!\inst9|inst2|latched_hex\(3) & 
-- (\inst9|inst2|latched_hex\(2) & (\inst9|inst2|latched_hex\(1) $ (\inst9|inst2|latched_hex\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst2|latched_hex\(3),
	datab => \inst9|inst2|latched_hex\(2),
	datac => \inst9|inst2|latched_hex\(1),
	datad => \inst9|inst2|latched_hex\(0),
	combout => \inst9|inst2|Mux5~0_combout\);

-- Location: LCCOMB_X64_Y50_N0
\inst9|inst2|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst2|Mux6~0_combout\ = (\inst9|inst2|latched_hex\(3) & (\inst9|inst2|latched_hex\(0) & (\inst9|inst2|latched_hex\(2) $ (\inst9|inst2|latched_hex\(1))))) # (!\inst9|inst2|latched_hex\(3) & (!\inst9|inst2|latched_hex\(1) & 
-- (\inst9|inst2|latched_hex\(2) $ (\inst9|inst2|latched_hex\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst2|latched_hex\(3),
	datab => \inst9|inst2|latched_hex\(2),
	datac => \inst9|inst2|latched_hex\(1),
	datad => \inst9|inst2|latched_hex\(0),
	combout => \inst9|inst2|Mux6~0_combout\);

-- Location: LCCOMB_X61_Y43_N14
\inst9|inst3|latched_hex[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst3|latched_hex[2]~feeder_combout\ = \inst13|inst1[10]~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst1[10]~39_combout\,
	combout => \inst9|inst3|latched_hex[2]~feeder_combout\);

-- Location: FF_X61_Y43_N15
\inst9|inst3|latched_hex[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX0_EN~clkctrl_outclk\,
	d => \inst9|inst3|latched_hex[2]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst3|latched_hex\(2));

-- Location: LCCOMB_X61_Y43_N24
\inst9|inst3|latched_hex[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst3|latched_hex[1]~feeder_combout\ = \inst13|inst1[9]~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst1[9]~36_combout\,
	combout => \inst9|inst3|latched_hex[1]~feeder_combout\);

-- Location: FF_X61_Y43_N25
\inst9|inst3|latched_hex[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX0_EN~clkctrl_outclk\,
	d => \inst9|inst3|latched_hex[1]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst3|latched_hex\(1));

-- Location: LCCOMB_X61_Y43_N4
\inst9|inst3|latched_hex[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst3|latched_hex[3]~feeder_combout\ = \inst13|inst1[11]~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst1[11]~41_combout\,
	combout => \inst9|inst3|latched_hex[3]~feeder_combout\);

-- Location: FF_X61_Y43_N5
\inst9|inst3|latched_hex[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX0_EN~clkctrl_outclk\,
	d => \inst9|inst3|latched_hex[3]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst3|latched_hex\(3));

-- Location: LCCOMB_X62_Y43_N12
\inst9|inst3|latched_hex[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst3|latched_hex[0]~feeder_combout\ = \inst13|inst1[8]~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[8]~33_combout\,
	combout => \inst9|inst3|latched_hex[0]~feeder_combout\);

-- Location: FF_X62_Y43_N13
\inst9|inst3|latched_hex[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX0_EN~clkctrl_outclk\,
	d => \inst9|inst3|latched_hex[0]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst3|latched_hex\(0));

-- Location: LCCOMB_X62_Y43_N22
\inst9|inst3|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst3|Mux0~0_combout\ = (\inst9|inst3|latched_hex\(0) & ((\inst9|inst3|latched_hex\(3)) # (\inst9|inst3|latched_hex\(2) $ (\inst9|inst3|latched_hex\(1))))) # (!\inst9|inst3|latched_hex\(0) & ((\inst9|inst3|latched_hex\(1)) # 
-- (\inst9|inst3|latched_hex\(2) $ (\inst9|inst3|latched_hex\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst3|latched_hex\(2),
	datab => \inst9|inst3|latched_hex\(1),
	datac => \inst9|inst3|latched_hex\(3),
	datad => \inst9|inst3|latched_hex\(0),
	combout => \inst9|inst3|Mux0~0_combout\);

-- Location: LCCOMB_X62_Y43_N4
\inst9|inst3|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst3|Mux1~0_combout\ = (\inst9|inst3|latched_hex\(2) & (\inst9|inst3|latched_hex\(0) & (\inst9|inst3|latched_hex\(1) $ (\inst9|inst3|latched_hex\(3))))) # (!\inst9|inst3|latched_hex\(2) & (!\inst9|inst3|latched_hex\(3) & 
-- ((\inst9|inst3|latched_hex\(1)) # (\inst9|inst3|latched_hex\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst3|latched_hex\(2),
	datab => \inst9|inst3|latched_hex\(1),
	datac => \inst9|inst3|latched_hex\(3),
	datad => \inst9|inst3|latched_hex\(0),
	combout => \inst9|inst3|Mux1~0_combout\);

-- Location: LCCOMB_X62_Y43_N6
\inst9|inst3|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst3|Mux2~0_combout\ = (\inst9|inst3|latched_hex\(1) & (((!\inst9|inst3|latched_hex\(3) & \inst9|inst3|latched_hex\(0))))) # (!\inst9|inst3|latched_hex\(1) & ((\inst9|inst3|latched_hex\(2) & (!\inst9|inst3|latched_hex\(3))) # 
-- (!\inst9|inst3|latched_hex\(2) & ((\inst9|inst3|latched_hex\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst3|latched_hex\(2),
	datab => \inst9|inst3|latched_hex\(1),
	datac => \inst9|inst3|latched_hex\(3),
	datad => \inst9|inst3|latched_hex\(0),
	combout => \inst9|inst3|Mux2~0_combout\);

-- Location: LCCOMB_X62_Y43_N0
\inst9|inst3|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst3|Mux3~0_combout\ = (\inst9|inst3|latched_hex\(1) & ((\inst9|inst3|latched_hex\(2) & ((\inst9|inst3|latched_hex\(0)))) # (!\inst9|inst3|latched_hex\(2) & (\inst9|inst3|latched_hex\(3) & !\inst9|inst3|latched_hex\(0))))) # 
-- (!\inst9|inst3|latched_hex\(1) & (!\inst9|inst3|latched_hex\(3) & (\inst9|inst3|latched_hex\(2) $ (\inst9|inst3|latched_hex\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst3|latched_hex\(2),
	datab => \inst9|inst3|latched_hex\(1),
	datac => \inst9|inst3|latched_hex\(3),
	datad => \inst9|inst3|latched_hex\(0),
	combout => \inst9|inst3|Mux3~0_combout\);

-- Location: LCCOMB_X62_Y43_N14
\inst9|inst3|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst3|Mux4~0_combout\ = (\inst9|inst3|latched_hex\(2) & (\inst9|inst3|latched_hex\(3) & ((\inst9|inst3|latched_hex\(1)) # (!\inst9|inst3|latched_hex\(0))))) # (!\inst9|inst3|latched_hex\(2) & (\inst9|inst3|latched_hex\(1) & 
-- (!\inst9|inst3|latched_hex\(3) & !\inst9|inst3|latched_hex\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst3|latched_hex\(2),
	datab => \inst9|inst3|latched_hex\(1),
	datac => \inst9|inst3|latched_hex\(3),
	datad => \inst9|inst3|latched_hex\(0),
	combout => \inst9|inst3|Mux4~0_combout\);

-- Location: LCCOMB_X62_Y43_N24
\inst9|inst3|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst3|Mux5~0_combout\ = (\inst9|inst3|latched_hex\(1) & ((\inst9|inst3|latched_hex\(0) & ((\inst9|inst3|latched_hex\(3)))) # (!\inst9|inst3|latched_hex\(0) & (\inst9|inst3|latched_hex\(2))))) # (!\inst9|inst3|latched_hex\(1) & 
-- (\inst9|inst3|latched_hex\(2) & (\inst9|inst3|latched_hex\(3) $ (\inst9|inst3|latched_hex\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst3|latched_hex\(2),
	datab => \inst9|inst3|latched_hex\(1),
	datac => \inst9|inst3|latched_hex\(3),
	datad => \inst9|inst3|latched_hex\(0),
	combout => \inst9|inst3|Mux5~0_combout\);

-- Location: LCCOMB_X62_Y43_N10
\inst9|inst3|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst3|Mux6~0_combout\ = (\inst9|inst3|latched_hex\(2) & (!\inst9|inst3|latched_hex\(1) & (\inst9|inst3|latched_hex\(3) $ (!\inst9|inst3|latched_hex\(0))))) # (!\inst9|inst3|latched_hex\(2) & (\inst9|inst3|latched_hex\(0) & 
-- (\inst9|inst3|latched_hex\(1) $ (!\inst9|inst3|latched_hex\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst3|latched_hex\(2),
	datab => \inst9|inst3|latched_hex\(1),
	datac => \inst9|inst3|latched_hex\(3),
	datad => \inst9|inst3|latched_hex\(0),
	combout => \inst9|inst3|Mux6~0_combout\);

-- Location: FF_X59_Y40_N31
\inst9|inst4|latched_hex[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX0_EN~clkctrl_outclk\,
	asdata => \inst13|inst1[15]~49_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst4|latched_hex\(3));

-- Location: FF_X59_Y40_N21
\inst9|inst4|latched_hex[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX0_EN~clkctrl_outclk\,
	asdata => \inst13|inst1[14]~47_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst4|latched_hex\(2));

-- Location: FF_X59_Y40_N9
\inst9|inst4|latched_hex[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX0_EN~clkctrl_outclk\,
	asdata => \inst13|inst1[12]~43_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst4|latched_hex\(0));

-- Location: FF_X59_Y40_N7
\inst9|inst4|latched_hex[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX0_EN~clkctrl_outclk\,
	asdata => \inst13|inst1[13]~45_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst4|latched_hex\(1));

-- Location: LCCOMB_X59_Y40_N24
\inst9|inst4|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst4|Mux0~0_combout\ = (\inst9|inst4|latched_hex\(0) & ((\inst9|inst4|latched_hex\(3)) # (\inst9|inst4|latched_hex\(2) $ (\inst9|inst4|latched_hex\(1))))) # (!\inst9|inst4|latched_hex\(0) & ((\inst9|inst4|latched_hex\(1)) # 
-- (\inst9|inst4|latched_hex\(3) $ (\inst9|inst4|latched_hex\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst4|latched_hex\(3),
	datab => \inst9|inst4|latched_hex\(2),
	datac => \inst9|inst4|latched_hex\(0),
	datad => \inst9|inst4|latched_hex\(1),
	combout => \inst9|inst4|Mux0~0_combout\);

-- Location: LCCOMB_X59_Y40_N2
\inst9|inst4|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst4|Mux1~0_combout\ = (\inst9|inst4|latched_hex\(2) & (\inst9|inst4|latched_hex\(0) & (\inst9|inst4|latched_hex\(3) $ (\inst9|inst4|latched_hex\(1))))) # (!\inst9|inst4|latched_hex\(2) & (!\inst9|inst4|latched_hex\(3) & 
-- ((\inst9|inst4|latched_hex\(0)) # (\inst9|inst4|latched_hex\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst4|latched_hex\(3),
	datab => \inst9|inst4|latched_hex\(2),
	datac => \inst9|inst4|latched_hex\(0),
	datad => \inst9|inst4|latched_hex\(1),
	combout => \inst9|inst4|Mux1~0_combout\);

-- Location: LCCOMB_X59_Y40_N0
\inst9|inst4|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst4|Mux2~0_combout\ = (\inst9|inst4|latched_hex\(1) & (!\inst9|inst4|latched_hex\(3) & ((\inst9|inst4|latched_hex\(0))))) # (!\inst9|inst4|latched_hex\(1) & ((\inst9|inst4|latched_hex\(2) & (!\inst9|inst4|latched_hex\(3))) # 
-- (!\inst9|inst4|latched_hex\(2) & ((\inst9|inst4|latched_hex\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst4|latched_hex\(3),
	datab => \inst9|inst4|latched_hex\(2),
	datac => \inst9|inst4|latched_hex\(0),
	datad => \inst9|inst4|latched_hex\(1),
	combout => \inst9|inst4|Mux2~0_combout\);

-- Location: LCCOMB_X59_Y40_N26
\inst9|inst4|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst4|Mux3~0_combout\ = (\inst9|inst4|latched_hex\(1) & ((\inst9|inst4|latched_hex\(2) & ((\inst9|inst4|latched_hex\(0)))) # (!\inst9|inst4|latched_hex\(2) & (\inst9|inst4|latched_hex\(3) & !\inst9|inst4|latched_hex\(0))))) # 
-- (!\inst9|inst4|latched_hex\(1) & (!\inst9|inst4|latched_hex\(3) & (\inst9|inst4|latched_hex\(2) $ (\inst9|inst4|latched_hex\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst4|latched_hex\(3),
	datab => \inst9|inst4|latched_hex\(2),
	datac => \inst9|inst4|latched_hex\(0),
	datad => \inst9|inst4|latched_hex\(1),
	combout => \inst9|inst4|Mux3~0_combout\);

-- Location: LCCOMB_X59_Y40_N6
\inst9|inst4|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst4|Mux4~0_combout\ = (\inst9|inst4|latched_hex\(3) & (\inst9|inst4|latched_hex\(2) & ((\inst9|inst4|latched_hex\(1)) # (!\inst9|inst4|latched_hex\(0))))) # (!\inst9|inst4|latched_hex\(3) & (!\inst9|inst4|latched_hex\(0) & 
-- (\inst9|inst4|latched_hex\(1) & !\inst9|inst4|latched_hex\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst4|latched_hex\(3),
	datab => \inst9|inst4|latched_hex\(0),
	datac => \inst9|inst4|latched_hex\(1),
	datad => \inst9|inst4|latched_hex\(2),
	combout => \inst9|inst4|Mux4~0_combout\);

-- Location: LCCOMB_X59_Y40_N20
\inst9|inst4|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst4|Mux5~0_combout\ = (\inst9|inst4|latched_hex\(3) & ((\inst9|inst4|latched_hex\(0) & ((\inst9|inst4|latched_hex\(1)))) # (!\inst9|inst4|latched_hex\(0) & (\inst9|inst4|latched_hex\(2))))) # (!\inst9|inst4|latched_hex\(3) & 
-- (\inst9|inst4|latched_hex\(2) & (\inst9|inst4|latched_hex\(0) $ (\inst9|inst4|latched_hex\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst4|latched_hex\(3),
	datab => \inst9|inst4|latched_hex\(0),
	datac => \inst9|inst4|latched_hex\(2),
	datad => \inst9|inst4|latched_hex\(1),
	combout => \inst9|inst4|Mux5~0_combout\);

-- Location: LCCOMB_X59_Y40_N30
\inst9|inst4|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst4|Mux6~0_combout\ = (\inst9|inst4|latched_hex\(3) & (\inst9|inst4|latched_hex\(0) & (\inst9|inst4|latched_hex\(1) $ (\inst9|inst4|latched_hex\(2))))) # (!\inst9|inst4|latched_hex\(3) & (!\inst9|inst4|latched_hex\(1) & 
-- (\inst9|inst4|latched_hex\(0) $ (\inst9|inst4|latched_hex\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst4|latched_hex\(1),
	datab => \inst9|inst4|latched_hex\(0),
	datac => \inst9|inst4|latched_hex\(3),
	datad => \inst9|inst4|latched_hex\(2),
	combout => \inst9|inst4|Mux6~0_combout\);

-- Location: LCCOMB_X49_Y43_N30
\inst3|HEX1_EN\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|HEX1_EN~combout\ = LCELL((\inst|IR\(0) & (\inst3|HEX0_EN~1_combout\ & !\inst|IR\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|IR\(0),
	datac => \inst3|HEX0_EN~1_combout\,
	datad => \inst|IR\(1),
	combout => \inst3|HEX1_EN~combout\);

-- Location: CLKCTRL_G13
\inst3|HEX1_EN~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|HEX1_EN~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|HEX1_EN~clkctrl_outclk\);

-- Location: LCCOMB_X72_Y40_N24
\inst9|inst5|latched_hex[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst5|latched_hex[0]~feeder_combout\ = \inst13|inst1[0]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst1[0]~24_combout\,
	combout => \inst9|inst5|latched_hex[0]~feeder_combout\);

-- Location: FF_X72_Y40_N25
\inst9|inst5|latched_hex[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX1_EN~clkctrl_outclk\,
	d => \inst9|inst5|latched_hex[0]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst5|latched_hex\(0));

-- Location: LCCOMB_X77_Y40_N18
\inst9|inst5|latched_hex[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst5|latched_hex[3]~feeder_combout\ = \inst13|inst1[3]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst1[3]~13_combout\,
	combout => \inst9|inst5|latched_hex[3]~feeder_combout\);

-- Location: FF_X77_Y40_N19
\inst9|inst5|latched_hex[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX1_EN~clkctrl_outclk\,
	d => \inst9|inst5|latched_hex[3]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst5|latched_hex\(3));

-- Location: LCCOMB_X69_Y40_N12
\inst9|inst5|latched_hex[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst5|latched_hex[1]~feeder_combout\ = \inst13|inst1[1]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst1[1]~19_combout\,
	combout => \inst9|inst5|latched_hex[1]~feeder_combout\);

-- Location: FF_X69_Y40_N13
\inst9|inst5|latched_hex[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX1_EN~clkctrl_outclk\,
	d => \inst9|inst5|latched_hex[1]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst5|latched_hex\(1));

-- Location: LCCOMB_X72_Y40_N2
\inst9|inst5|latched_hex[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst5|latched_hex[2]~feeder_combout\ = \inst13|inst1[2]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst1[2]~16_combout\,
	combout => \inst9|inst5|latched_hex[2]~feeder_combout\);

-- Location: FF_X72_Y40_N3
\inst9|inst5|latched_hex[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX1_EN~clkctrl_outclk\,
	d => \inst9|inst5|latched_hex[2]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst5|latched_hex\(2));

-- Location: LCCOMB_X77_Y40_N20
\inst9|inst5|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst5|Mux0~0_combout\ = (\inst9|inst5|latched_hex\(0) & ((\inst9|inst5|latched_hex\(3)) # (\inst9|inst5|latched_hex\(1) $ (\inst9|inst5|latched_hex\(2))))) # (!\inst9|inst5|latched_hex\(0) & ((\inst9|inst5|latched_hex\(1)) # 
-- (\inst9|inst5|latched_hex\(3) $ (\inst9|inst5|latched_hex\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst5|latched_hex\(0),
	datab => \inst9|inst5|latched_hex\(3),
	datac => \inst9|inst5|latched_hex\(1),
	datad => \inst9|inst5|latched_hex\(2),
	combout => \inst9|inst5|Mux0~0_combout\);

-- Location: LCCOMB_X77_Y40_N14
\inst9|inst5|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst5|Mux1~0_combout\ = (\inst9|inst5|latched_hex\(0) & (\inst9|inst5|latched_hex\(3) $ (((\inst9|inst5|latched_hex\(1)) # (!\inst9|inst5|latched_hex\(2)))))) # (!\inst9|inst5|latched_hex\(0) & (!\inst9|inst5|latched_hex\(3) & 
-- (\inst9|inst5|latched_hex\(1) & !\inst9|inst5|latched_hex\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst5|latched_hex\(0),
	datab => \inst9|inst5|latched_hex\(3),
	datac => \inst9|inst5|latched_hex\(1),
	datad => \inst9|inst5|latched_hex\(2),
	combout => \inst9|inst5|Mux1~0_combout\);

-- Location: LCCOMB_X77_Y40_N4
\inst9|inst5|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst5|Mux2~0_combout\ = (\inst9|inst5|latched_hex\(1) & (\inst9|inst5|latched_hex\(0) & (!\inst9|inst5|latched_hex\(3)))) # (!\inst9|inst5|latched_hex\(1) & ((\inst9|inst5|latched_hex\(2) & ((!\inst9|inst5|latched_hex\(3)))) # 
-- (!\inst9|inst5|latched_hex\(2) & (\inst9|inst5|latched_hex\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst5|latched_hex\(0),
	datab => \inst9|inst5|latched_hex\(3),
	datac => \inst9|inst5|latched_hex\(1),
	datad => \inst9|inst5|latched_hex\(2),
	combout => \inst9|inst5|Mux2~0_combout\);

-- Location: LCCOMB_X77_Y40_N2
\inst9|inst5|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst5|Mux3~0_combout\ = (\inst9|inst5|latched_hex\(1) & ((\inst9|inst5|latched_hex\(0) & ((\inst9|inst5|latched_hex\(2)))) # (!\inst9|inst5|latched_hex\(0) & (\inst9|inst5|latched_hex\(3) & !\inst9|inst5|latched_hex\(2))))) # 
-- (!\inst9|inst5|latched_hex\(1) & (!\inst9|inst5|latched_hex\(3) & (\inst9|inst5|latched_hex\(0) $ (\inst9|inst5|latched_hex\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst5|latched_hex\(0),
	datab => \inst9|inst5|latched_hex\(3),
	datac => \inst9|inst5|latched_hex\(1),
	datad => \inst9|inst5|latched_hex\(2),
	combout => \inst9|inst5|Mux3~0_combout\);

-- Location: LCCOMB_X77_Y40_N16
\inst9|inst5|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst5|Mux4~0_combout\ = (\inst9|inst5|latched_hex\(3) & (\inst9|inst5|latched_hex\(2) & ((\inst9|inst5|latched_hex\(1)) # (!\inst9|inst5|latched_hex\(0))))) # (!\inst9|inst5|latched_hex\(3) & (!\inst9|inst5|latched_hex\(0) & 
-- (\inst9|inst5|latched_hex\(1) & !\inst9|inst5|latched_hex\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst5|latched_hex\(0),
	datab => \inst9|inst5|latched_hex\(3),
	datac => \inst9|inst5|latched_hex\(1),
	datad => \inst9|inst5|latched_hex\(2),
	combout => \inst9|inst5|Mux4~0_combout\);

-- Location: LCCOMB_X77_Y40_N22
\inst9|inst5|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst5|Mux5~0_combout\ = (\inst9|inst5|latched_hex\(3) & ((\inst9|inst5|latched_hex\(0) & (\inst9|inst5|latched_hex\(1))) # (!\inst9|inst5|latched_hex\(0) & ((\inst9|inst5|latched_hex\(2)))))) # (!\inst9|inst5|latched_hex\(3) & 
-- (\inst9|inst5|latched_hex\(2) & (\inst9|inst5|latched_hex\(0) $ (\inst9|inst5|latched_hex\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst5|latched_hex\(0),
	datab => \inst9|inst5|latched_hex\(3),
	datac => \inst9|inst5|latched_hex\(1),
	datad => \inst9|inst5|latched_hex\(2),
	combout => \inst9|inst5|Mux5~0_combout\);

-- Location: LCCOMB_X77_Y40_N8
\inst9|inst5|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst5|Mux6~0_combout\ = (\inst9|inst5|latched_hex\(3) & (\inst9|inst5|latched_hex\(0) & (\inst9|inst5|latched_hex\(1) $ (\inst9|inst5|latched_hex\(2))))) # (!\inst9|inst5|latched_hex\(3) & (!\inst9|inst5|latched_hex\(1) & 
-- (\inst9|inst5|latched_hex\(0) $ (\inst9|inst5|latched_hex\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst5|latched_hex\(0),
	datab => \inst9|inst5|latched_hex\(3),
	datac => \inst9|inst5|latched_hex\(1),
	datad => \inst9|inst5|latched_hex\(2),
	combout => \inst9|inst5|Mux6~0_combout\);

-- Location: LCCOMB_X74_Y40_N14
\inst9|inst6|latched_hex[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst6|latched_hex[3]~feeder_combout\ = \inst13|inst1[7]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst1[7]~30_combout\,
	combout => \inst9|inst6|latched_hex[3]~feeder_combout\);

-- Location: FF_X74_Y40_N15
\inst9|inst6|latched_hex[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX1_EN~clkctrl_outclk\,
	d => \inst9|inst6|latched_hex[3]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst6|latched_hex\(3));

-- Location: LCCOMB_X74_Y40_N28
\inst9|inst6|latched_hex[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst6|latched_hex[2]~feeder_combout\ = \inst13|inst1[6]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst1[6]~27_combout\,
	combout => \inst9|inst6|latched_hex[2]~feeder_combout\);

-- Location: FF_X74_Y40_N29
\inst9|inst6|latched_hex[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX1_EN~clkctrl_outclk\,
	d => \inst9|inst6|latched_hex[2]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst6|latched_hex\(2));

-- Location: LCCOMB_X75_Y40_N4
\inst9|inst6|latched_hex[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst6|latched_hex[0]~feeder_combout\ = \inst13|inst1[4]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst1[4]~10_combout\,
	combout => \inst9|inst6|latched_hex[0]~feeder_combout\);

-- Location: FF_X75_Y40_N5
\inst9|inst6|latched_hex[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX1_EN~clkctrl_outclk\,
	d => \inst9|inst6|latched_hex[0]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst6|latched_hex\(0));

-- Location: LCCOMB_X75_Y40_N18
\inst9|inst6|latched_hex[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst6|latched_hex[1]~feeder_combout\ = \inst13|inst1[5]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst1[5]~7_combout\,
	combout => \inst9|inst6|latched_hex[1]~feeder_combout\);

-- Location: FF_X75_Y40_N19
\inst9|inst6|latched_hex[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|HEX1_EN~clkctrl_outclk\,
	d => \inst9|inst6|latched_hex[1]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|inst6|latched_hex\(1));

-- Location: LCCOMB_X75_Y40_N24
\inst9|inst6|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst6|Mux0~0_combout\ = (\inst9|inst6|latched_hex\(0) & ((\inst9|inst6|latched_hex\(3)) # (\inst9|inst6|latched_hex\(2) $ (\inst9|inst6|latched_hex\(1))))) # (!\inst9|inst6|latched_hex\(0) & ((\inst9|inst6|latched_hex\(1)) # 
-- (\inst9|inst6|latched_hex\(3) $ (\inst9|inst6|latched_hex\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst6|latched_hex\(3),
	datab => \inst9|inst6|latched_hex\(2),
	datac => \inst9|inst6|latched_hex\(0),
	datad => \inst9|inst6|latched_hex\(1),
	combout => \inst9|inst6|Mux0~0_combout\);

-- Location: LCCOMB_X75_Y40_N26
\inst9|inst6|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst6|Mux1~0_combout\ = (\inst9|inst6|latched_hex\(2) & (\inst9|inst6|latched_hex\(0) & (\inst9|inst6|latched_hex\(3) $ (\inst9|inst6|latched_hex\(1))))) # (!\inst9|inst6|latched_hex\(2) & (!\inst9|inst6|latched_hex\(3) & 
-- ((\inst9|inst6|latched_hex\(0)) # (\inst9|inst6|latched_hex\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst6|latched_hex\(3),
	datab => \inst9|inst6|latched_hex\(2),
	datac => \inst9|inst6|latched_hex\(0),
	datad => \inst9|inst6|latched_hex\(1),
	combout => \inst9|inst6|Mux1~0_combout\);

-- Location: LCCOMB_X75_Y40_N20
\inst9|inst6|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst6|Mux2~0_combout\ = (\inst9|inst6|latched_hex\(1) & (!\inst9|inst6|latched_hex\(3) & ((\inst9|inst6|latched_hex\(0))))) # (!\inst9|inst6|latched_hex\(1) & ((\inst9|inst6|latched_hex\(2) & (!\inst9|inst6|latched_hex\(3))) # 
-- (!\inst9|inst6|latched_hex\(2) & ((\inst9|inst6|latched_hex\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst6|latched_hex\(3),
	datab => \inst9|inst6|latched_hex\(2),
	datac => \inst9|inst6|latched_hex\(0),
	datad => \inst9|inst6|latched_hex\(1),
	combout => \inst9|inst6|Mux2~0_combout\);

-- Location: LCCOMB_X75_Y40_N6
\inst9|inst6|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst6|Mux3~0_combout\ = (\inst9|inst6|latched_hex\(1) & ((\inst9|inst6|latched_hex\(2) & ((\inst9|inst6|latched_hex\(0)))) # (!\inst9|inst6|latched_hex\(2) & (\inst9|inst6|latched_hex\(3) & !\inst9|inst6|latched_hex\(0))))) # 
-- (!\inst9|inst6|latched_hex\(1) & (!\inst9|inst6|latched_hex\(3) & (\inst9|inst6|latched_hex\(2) $ (\inst9|inst6|latched_hex\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst6|latched_hex\(3),
	datab => \inst9|inst6|latched_hex\(2),
	datac => \inst9|inst6|latched_hex\(0),
	datad => \inst9|inst6|latched_hex\(1),
	combout => \inst9|inst6|Mux3~0_combout\);

-- Location: LCCOMB_X75_Y40_N12
\inst9|inst6|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst6|Mux4~0_combout\ = (\inst9|inst6|latched_hex\(3) & (\inst9|inst6|latched_hex\(2) & ((\inst9|inst6|latched_hex\(1)) # (!\inst9|inst6|latched_hex\(0))))) # (!\inst9|inst6|latched_hex\(3) & (!\inst9|inst6|latched_hex\(2) & 
-- (!\inst9|inst6|latched_hex\(0) & \inst9|inst6|latched_hex\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst6|latched_hex\(3),
	datab => \inst9|inst6|latched_hex\(2),
	datac => \inst9|inst6|latched_hex\(0),
	datad => \inst9|inst6|latched_hex\(1),
	combout => \inst9|inst6|Mux4~0_combout\);

-- Location: LCCOMB_X75_Y40_N10
\inst9|inst6|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst6|Mux5~0_combout\ = (\inst9|inst6|latched_hex\(3) & ((\inst9|inst6|latched_hex\(0) & ((\inst9|inst6|latched_hex\(1)))) # (!\inst9|inst6|latched_hex\(0) & (\inst9|inst6|latched_hex\(2))))) # (!\inst9|inst6|latched_hex\(3) & 
-- (\inst9|inst6|latched_hex\(2) & (\inst9|inst6|latched_hex\(0) $ (\inst9|inst6|latched_hex\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst6|latched_hex\(3),
	datab => \inst9|inst6|latched_hex\(2),
	datac => \inst9|inst6|latched_hex\(0),
	datad => \inst9|inst6|latched_hex\(1),
	combout => \inst9|inst6|Mux5~0_combout\);

-- Location: LCCOMB_X75_Y40_N0
\inst9|inst6|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst6|Mux6~0_combout\ = (\inst9|inst6|latched_hex\(3) & (\inst9|inst6|latched_hex\(0) & (\inst9|inst6|latched_hex\(2) $ (\inst9|inst6|latched_hex\(1))))) # (!\inst9|inst6|latched_hex\(3) & (!\inst9|inst6|latched_hex\(1) & 
-- (\inst9|inst6|latched_hex\(2) $ (\inst9|inst6|latched_hex\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst6|latched_hex\(3),
	datab => \inst9|inst6|latched_hex\(2),
	datac => \inst9|inst6|latched_hex\(0),
	datad => \inst9|inst6|latched_hex\(1),
	combout => \inst9|inst6|Mux6~0_combout\);

-- Location: LCCOMB_X50_Y43_N14
\inst3|LED_EN\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|LED_EN~combout\ = LCELL((\inst3|I2C_DATA_EN~1_combout\ & (!\inst|IR\(7) & !\inst|IR\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|I2C_DATA_EN~1_combout\,
	datab => \inst|IR\(7),
	datad => \inst|IR\(4),
	combout => \inst3|LED_EN~combout\);

-- Location: CLKCTRL_G6
\inst3|LED_EN~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|LED_EN~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|LED_EN~clkctrl_outclk\);

-- Location: LCCOMB_X50_Y50_N8
\inst6|DATA[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|DATA[9]~feeder_combout\ = \inst13|inst1[9]~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst1[9]~36_combout\,
	combout => \inst6|DATA[9]~feeder_combout\);

-- Location: FF_X50_Y50_N9
\inst6|DATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|LED_EN~clkctrl_outclk\,
	d => \inst6|DATA[9]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|DATA\(9));

-- Location: LCCOMB_X52_Y50_N0
\inst6|DATA[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|DATA[8]~feeder_combout\ = \inst13|inst1[8]~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst1[8]~33_combout\,
	combout => \inst6|DATA[8]~feeder_combout\);

-- Location: FF_X52_Y50_N1
\inst6|DATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|LED_EN~clkctrl_outclk\,
	d => \inst6|DATA[8]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|DATA\(8));

-- Location: LCCOMB_X57_Y50_N24
\inst6|DATA[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|DATA[7]~feeder_combout\ = \inst13|inst1[7]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst1[7]~30_combout\,
	combout => \inst6|DATA[7]~feeder_combout\);

-- Location: FF_X57_Y50_N25
\inst6|DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|LED_EN~clkctrl_outclk\,
	d => \inst6|DATA[7]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|DATA\(7));

-- Location: FF_X56_Y50_N9
\inst6|DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|LED_EN~clkctrl_outclk\,
	asdata => \inst13|inst1[6]~27_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|DATA\(6));

-- Location: LCCOMB_X58_Y50_N4
\inst6|DATA[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|DATA[5]~feeder_combout\ = \inst13|inst1[5]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst1[5]~7_combout\,
	combout => \inst6|DATA[5]~feeder_combout\);

-- Location: FF_X58_Y50_N5
\inst6|DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|LED_EN~clkctrl_outclk\,
	d => \inst6|DATA[5]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|DATA\(5));

-- Location: LCCOMB_X56_Y50_N14
\inst6|DATA[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|DATA[4]~feeder_combout\ = \inst13|inst1[4]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[4]~10_combout\,
	combout => \inst6|DATA[4]~feeder_combout\);

-- Location: FF_X56_Y50_N15
\inst6|DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|LED_EN~clkctrl_outclk\,
	d => \inst6|DATA[4]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|DATA\(4));

-- Location: LCCOMB_X50_Y50_N2
\inst6|DATA[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|DATA[3]~feeder_combout\ = \inst13|inst1[3]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[3]~13_combout\,
	combout => \inst6|DATA[3]~feeder_combout\);

-- Location: FF_X50_Y50_N3
\inst6|DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|LED_EN~clkctrl_outclk\,
	d => \inst6|DATA[3]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|DATA\(3));

-- Location: LCCOMB_X55_Y50_N6
\inst6|DATA[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|DATA[2]~feeder_combout\ = \inst13|inst1[2]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst1[2]~16_combout\,
	combout => \inst6|DATA[2]~feeder_combout\);

-- Location: FF_X55_Y50_N7
\inst6|DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|LED_EN~clkctrl_outclk\,
	d => \inst6|DATA[2]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|DATA\(2));

-- Location: LCCOMB_X55_Y50_N24
\inst6|DATA[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|DATA[1]~feeder_combout\ = \inst13|inst1[1]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst1[1]~19_combout\,
	combout => \inst6|DATA[1]~feeder_combout\);

-- Location: FF_X55_Y50_N25
\inst6|DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|LED_EN~clkctrl_outclk\,
	d => \inst6|DATA[1]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|DATA\(1));

-- Location: LCCOMB_X55_Y50_N30
\inst6|DATA[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|DATA[0]~feeder_combout\ = \inst13|inst1[0]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1[0]~24_combout\,
	combout => \inst6|DATA[0]~feeder_combout\);

-- Location: FF_X55_Y50_N31
\inst6|DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|LED_EN~clkctrl_outclk\,
	d => \inst6|DATA[0]~feeder_combout\,
	clrn => \inst13|inst14|ALT_INV_data_out[7]~1clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|DATA\(0));

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
END structure;

