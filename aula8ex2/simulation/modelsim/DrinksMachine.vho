-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.1 Build 189 12/02/2015 SJ Lite Edition"

-- DATE "04/07/2017 15:21:34"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DrinksMachine IS
    PORT (
	LEDG : OUT std_logic_vector(0 DOWNTO 0);
	SW : IN std_logic_vector(1 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(0 DOWNTO 0)
	);
END DrinksMachine;

-- Design Ports Information
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DrinksMachine IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDG : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst4|s_divCounter[0]~26_combout\ : std_logic;
SIGNAL \inst4|LessThan0~4_combout\ : std_logic;
SIGNAL \inst4|LessThan0~5_combout\ : std_logic;
SIGNAL \inst4|LessThan0~2_combout\ : std_logic;
SIGNAL \inst4|LessThan1~0_combout\ : std_logic;
SIGNAL \inst4|LessThan0~3_combout\ : std_logic;
SIGNAL \inst4|LessThan1~4_combout\ : std_logic;
SIGNAL \inst4|LessThan0~0_combout\ : std_logic;
SIGNAL \inst4|LessThan1~2_combout\ : std_logic;
SIGNAL \inst4|LessThan1~3_combout\ : std_logic;
SIGNAL \inst4|LessThan0~1_combout\ : std_logic;
SIGNAL \inst4|LessThan0~6_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[0]~27\ : std_logic;
SIGNAL \inst4|s_divCounter[1]~28_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[1]~29\ : std_logic;
SIGNAL \inst4|s_divCounter[2]~30_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[2]~31\ : std_logic;
SIGNAL \inst4|s_divCounter[3]~32_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[3]~33\ : std_logic;
SIGNAL \inst4|s_divCounter[4]~34_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[4]~35\ : std_logic;
SIGNAL \inst4|s_divCounter[5]~36_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[5]~37\ : std_logic;
SIGNAL \inst4|s_divCounter[6]~38_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[6]~39\ : std_logic;
SIGNAL \inst4|s_divCounter[7]~40_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[7]~41\ : std_logic;
SIGNAL \inst4|s_divCounter[8]~42_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[8]~43\ : std_logic;
SIGNAL \inst4|s_divCounter[9]~44_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[9]~45\ : std_logic;
SIGNAL \inst4|s_divCounter[10]~46_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[10]~47\ : std_logic;
SIGNAL \inst4|s_divCounter[11]~48_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[11]~49\ : std_logic;
SIGNAL \inst4|s_divCounter[12]~50_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[12]~51\ : std_logic;
SIGNAL \inst4|s_divCounter[13]~52_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[13]~53\ : std_logic;
SIGNAL \inst4|s_divCounter[14]~54_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[14]~55\ : std_logic;
SIGNAL \inst4|s_divCounter[15]~56_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[15]~57\ : std_logic;
SIGNAL \inst4|s_divCounter[16]~58_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[16]~59\ : std_logic;
SIGNAL \inst4|s_divCounter[17]~60_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[17]~61\ : std_logic;
SIGNAL \inst4|s_divCounter[18]~62_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[18]~63\ : std_logic;
SIGNAL \inst4|s_divCounter[19]~64_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[19]~65\ : std_logic;
SIGNAL \inst4|s_divCounter[20]~66_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[20]~67\ : std_logic;
SIGNAL \inst4|s_divCounter[21]~68_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[21]~69\ : std_logic;
SIGNAL \inst4|s_divCounter[22]~70_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[22]~71\ : std_logic;
SIGNAL \inst4|s_divCounter[23]~72_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[23]~73\ : std_logic;
SIGNAL \inst4|s_divCounter[24]~74_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[24]~75\ : std_logic;
SIGNAL \inst4|s_divCounter[25]~76_combout\ : std_logic;
SIGNAL \inst4|LessThan1~1_combout\ : std_logic;
SIGNAL \inst4|LessThan1~5_combout\ : std_logic;
SIGNAL \inst4|LessThan1~6_combout\ : std_logic;
SIGNAL \inst4|LessThan1~7_combout\ : std_logic;
SIGNAL \inst4|LessThan1~8_combout\ : std_logic;
SIGNAL \inst4|clkOut~q\ : std_logic;
SIGNAL \inst4|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst2|s_currentState.SUMI~0_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \inst2|s_currentState~12_combout\ : std_logic;
SIGNAL \inst2|s_currentState.SUMI~q\ : std_logic;
SIGNAL \inst2|s_currentState~17_combout\ : std_logic;
SIGNAL \inst2|s_currentState.SUM1~q\ : std_logic;
SIGNAL \inst2|s_currentState~11_combout\ : std_logic;
SIGNAL \inst2|s_currentState.SUM2~q\ : std_logic;
SIGNAL \inst2|s_currentState~13_combout\ : std_logic;
SIGNAL \inst2|s_currentState~14_combout\ : std_logic;
SIGNAL \inst2|s_currentState.SUM3~q\ : std_logic;
SIGNAL \inst2|s_currentState~15_combout\ : std_logic;
SIGNAL \inst2|s_currentState~16_combout\ : std_logic;
SIGNAL \inst2|s_currentState.SUM4~q\ : std_logic;
SIGNAL \inst2|s_currentState~9_combout\ : std_logic;
SIGNAL \inst2|s_currentState~8_combout\ : std_logic;
SIGNAL \inst2|s_currentState~10_combout\ : std_logic;
SIGNAL \inst2|s_currentState.SUMF~q\ : std_logic;
SIGNAL \inst4|s_divCounter\ : std_logic_vector(25 DOWNTO 0);

BEGIN

LEDG <= ww_LEDG;
ww_SW <= SW;
ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\inst4|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst4|clkOut~q\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_currentState.SUMF~q\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X49_Y8_N6
\inst4|s_divCounter[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[0]~26_combout\ = \inst4|s_divCounter\(0) $ (VCC)
-- \inst4|s_divCounter[0]~27\ = CARRY(\inst4|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_divCounter\(0),
	datad => VCC,
	combout => \inst4|s_divCounter[0]~26_combout\,
	cout => \inst4|s_divCounter[0]~27\);

-- Location: LCCOMB_X50_Y8_N12
\inst4|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~4_combout\ = (!\inst4|s_divCounter\(18) & (!\inst4|s_divCounter\(16) & !\inst4|s_divCounter\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_divCounter\(18),
	datac => \inst4|s_divCounter\(16),
	datad => \inst4|s_divCounter\(24),
	combout => \inst4|LessThan0~4_combout\);

-- Location: LCCOMB_X50_Y8_N14
\inst4|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~5_combout\ = (((!\inst4|s_divCounter\(14)) # (!\inst4|s_divCounter\(15))) # (!\inst4|s_divCounter\(12))) # (!\inst4|s_divCounter\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_divCounter\(13),
	datab => \inst4|s_divCounter\(12),
	datac => \inst4|s_divCounter\(15),
	datad => \inst4|s_divCounter\(14),
	combout => \inst4|LessThan0~5_combout\);

-- Location: LCCOMB_X49_Y7_N28
\inst4|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~2_combout\ = ((!\inst4|s_divCounter\(18) & !\inst4|s_divCounter\(17))) # (!\inst4|s_divCounter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_divCounter\(18),
	datac => \inst4|s_divCounter\(17),
	datad => \inst4|s_divCounter\(23),
	combout => \inst4|LessThan0~2_combout\);

-- Location: LCCOMB_X49_Y7_N26
\inst4|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~0_combout\ = (\inst4|s_divCounter\(19) & (\inst4|s_divCounter\(22) & (\inst4|s_divCounter\(20) & \inst4|s_divCounter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_divCounter\(19),
	datab => \inst4|s_divCounter\(22),
	datac => \inst4|s_divCounter\(20),
	datad => \inst4|s_divCounter\(21),
	combout => \inst4|LessThan1~0_combout\);

-- Location: LCCOMB_X50_Y8_N4
\inst4|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~3_combout\ = ((!\inst4|s_divCounter\(24) & ((\inst4|LessThan0~2_combout\) # (!\inst4|LessThan1~0_combout\)))) # (!\inst4|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_divCounter\(25),
	datab => \inst4|s_divCounter\(24),
	datac => \inst4|LessThan0~2_combout\,
	datad => \inst4|LessThan1~0_combout\,
	combout => \inst4|LessThan0~3_combout\);

-- Location: LCCOMB_X49_Y8_N4
\inst4|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~4_combout\ = (!\inst4|s_divCounter\(8) & (!\inst4|s_divCounter\(7) & (!\inst4|s_divCounter\(10) & !\inst4|s_divCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_divCounter\(8),
	datab => \inst4|s_divCounter\(7),
	datac => \inst4|s_divCounter\(10),
	datad => \inst4|s_divCounter\(9),
	combout => \inst4|LessThan1~4_combout\);

-- Location: LCCOMB_X50_Y8_N22
\inst4|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~0_combout\ = (!\inst4|s_divCounter\(18) & (!\inst4|s_divCounter\(11) & (!\inst4|s_divCounter\(16) & !\inst4|s_divCounter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_divCounter\(18),
	datab => \inst4|s_divCounter\(11),
	datac => \inst4|s_divCounter\(16),
	datad => \inst4|s_divCounter\(24),
	combout => \inst4|LessThan0~0_combout\);

-- Location: LCCOMB_X49_Y8_N0
\inst4|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~2_combout\ = (((!\inst4|s_divCounter\(3)) # (!\inst4|s_divCounter\(0))) # (!\inst4|s_divCounter\(1))) # (!\inst4|s_divCounter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_divCounter\(2),
	datab => \inst4|s_divCounter\(1),
	datac => \inst4|s_divCounter\(0),
	datad => \inst4|s_divCounter\(3),
	combout => \inst4|LessThan1~2_combout\);

-- Location: LCCOMB_X49_Y8_N2
\inst4|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~3_combout\ = ((\inst4|LessThan1~2_combout\) # (!\inst4|s_divCounter\(4))) # (!\inst4|s_divCounter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_divCounter\(5),
	datac => \inst4|s_divCounter\(4),
	datad => \inst4|LessThan1~2_combout\,
	combout => \inst4|LessThan1~3_combout\);

-- Location: LCCOMB_X50_Y8_N24
\inst4|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~1_combout\ = (\inst4|LessThan1~4_combout\ & (\inst4|LessThan0~0_combout\ & ((\inst4|LessThan1~3_combout\) # (!\inst4|s_divCounter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_divCounter\(6),
	datab => \inst4|LessThan1~4_combout\,
	datac => \inst4|LessThan0~0_combout\,
	datad => \inst4|LessThan1~3_combout\,
	combout => \inst4|LessThan0~1_combout\);

-- Location: LCCOMB_X50_Y8_N30
\inst4|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~6_combout\ = (!\inst4|LessThan0~3_combout\ & (!\inst4|LessThan0~1_combout\ & ((!\inst4|LessThan0~5_combout\) # (!\inst4|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LessThan0~4_combout\,
	datab => \inst4|LessThan0~5_combout\,
	datac => \inst4|LessThan0~3_combout\,
	datad => \inst4|LessThan0~1_combout\,
	combout => \inst4|LessThan0~6_combout\);

-- Location: FF_X49_Y8_N7
\inst4|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[0]~26_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(0));

-- Location: LCCOMB_X49_Y8_N8
\inst4|s_divCounter[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[1]~28_combout\ = (\inst4|s_divCounter\(1) & (!\inst4|s_divCounter[0]~27\)) # (!\inst4|s_divCounter\(1) & ((\inst4|s_divCounter[0]~27\) # (GND)))
-- \inst4|s_divCounter[1]~29\ = CARRY((!\inst4|s_divCounter[0]~27\) # (!\inst4|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_divCounter\(1),
	datad => VCC,
	cin => \inst4|s_divCounter[0]~27\,
	combout => \inst4|s_divCounter[1]~28_combout\,
	cout => \inst4|s_divCounter[1]~29\);

-- Location: FF_X49_Y8_N9
\inst4|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[1]~28_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(1));

-- Location: LCCOMB_X49_Y8_N10
\inst4|s_divCounter[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[2]~30_combout\ = (\inst4|s_divCounter\(2) & (\inst4|s_divCounter[1]~29\ $ (GND))) # (!\inst4|s_divCounter\(2) & (!\inst4|s_divCounter[1]~29\ & VCC))
-- \inst4|s_divCounter[2]~31\ = CARRY((\inst4|s_divCounter\(2) & !\inst4|s_divCounter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_divCounter\(2),
	datad => VCC,
	cin => \inst4|s_divCounter[1]~29\,
	combout => \inst4|s_divCounter[2]~30_combout\,
	cout => \inst4|s_divCounter[2]~31\);

-- Location: FF_X49_Y8_N11
\inst4|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[2]~30_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(2));

-- Location: LCCOMB_X49_Y8_N12
\inst4|s_divCounter[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[3]~32_combout\ = (\inst4|s_divCounter\(3) & (!\inst4|s_divCounter[2]~31\)) # (!\inst4|s_divCounter\(3) & ((\inst4|s_divCounter[2]~31\) # (GND)))
-- \inst4|s_divCounter[3]~33\ = CARRY((!\inst4|s_divCounter[2]~31\) # (!\inst4|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_divCounter\(3),
	datad => VCC,
	cin => \inst4|s_divCounter[2]~31\,
	combout => \inst4|s_divCounter[3]~32_combout\,
	cout => \inst4|s_divCounter[3]~33\);

-- Location: FF_X49_Y8_N13
\inst4|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[3]~32_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(3));

-- Location: LCCOMB_X49_Y8_N14
\inst4|s_divCounter[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[4]~34_combout\ = (\inst4|s_divCounter\(4) & (\inst4|s_divCounter[3]~33\ $ (GND))) # (!\inst4|s_divCounter\(4) & (!\inst4|s_divCounter[3]~33\ & VCC))
-- \inst4|s_divCounter[4]~35\ = CARRY((\inst4|s_divCounter\(4) & !\inst4|s_divCounter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_divCounter\(4),
	datad => VCC,
	cin => \inst4|s_divCounter[3]~33\,
	combout => \inst4|s_divCounter[4]~34_combout\,
	cout => \inst4|s_divCounter[4]~35\);

-- Location: FF_X49_Y8_N15
\inst4|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[4]~34_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(4));

-- Location: LCCOMB_X49_Y8_N16
\inst4|s_divCounter[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[5]~36_combout\ = (\inst4|s_divCounter\(5) & (!\inst4|s_divCounter[4]~35\)) # (!\inst4|s_divCounter\(5) & ((\inst4|s_divCounter[4]~35\) # (GND)))
-- \inst4|s_divCounter[5]~37\ = CARRY((!\inst4|s_divCounter[4]~35\) # (!\inst4|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_divCounter\(5),
	datad => VCC,
	cin => \inst4|s_divCounter[4]~35\,
	combout => \inst4|s_divCounter[5]~36_combout\,
	cout => \inst4|s_divCounter[5]~37\);

-- Location: FF_X49_Y8_N17
\inst4|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[5]~36_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(5));

-- Location: LCCOMB_X49_Y8_N18
\inst4|s_divCounter[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[6]~38_combout\ = (\inst4|s_divCounter\(6) & (\inst4|s_divCounter[5]~37\ $ (GND))) # (!\inst4|s_divCounter\(6) & (!\inst4|s_divCounter[5]~37\ & VCC))
-- \inst4|s_divCounter[6]~39\ = CARRY((\inst4|s_divCounter\(6) & !\inst4|s_divCounter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_divCounter\(6),
	datad => VCC,
	cin => \inst4|s_divCounter[5]~37\,
	combout => \inst4|s_divCounter[6]~38_combout\,
	cout => \inst4|s_divCounter[6]~39\);

-- Location: FF_X49_Y8_N19
\inst4|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[6]~38_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(6));

-- Location: LCCOMB_X49_Y8_N20
\inst4|s_divCounter[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[7]~40_combout\ = (\inst4|s_divCounter\(7) & (!\inst4|s_divCounter[6]~39\)) # (!\inst4|s_divCounter\(7) & ((\inst4|s_divCounter[6]~39\) # (GND)))
-- \inst4|s_divCounter[7]~41\ = CARRY((!\inst4|s_divCounter[6]~39\) # (!\inst4|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_divCounter\(7),
	datad => VCC,
	cin => \inst4|s_divCounter[6]~39\,
	combout => \inst4|s_divCounter[7]~40_combout\,
	cout => \inst4|s_divCounter[7]~41\);

-- Location: FF_X49_Y8_N21
\inst4|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[7]~40_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(7));

-- Location: LCCOMB_X49_Y8_N22
\inst4|s_divCounter[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[8]~42_combout\ = (\inst4|s_divCounter\(8) & (\inst4|s_divCounter[7]~41\ $ (GND))) # (!\inst4|s_divCounter\(8) & (!\inst4|s_divCounter[7]~41\ & VCC))
-- \inst4|s_divCounter[8]~43\ = CARRY((\inst4|s_divCounter\(8) & !\inst4|s_divCounter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_divCounter\(8),
	datad => VCC,
	cin => \inst4|s_divCounter[7]~41\,
	combout => \inst4|s_divCounter[8]~42_combout\,
	cout => \inst4|s_divCounter[8]~43\);

-- Location: FF_X49_Y8_N23
\inst4|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[8]~42_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(8));

-- Location: LCCOMB_X49_Y8_N24
\inst4|s_divCounter[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[9]~44_combout\ = (\inst4|s_divCounter\(9) & (!\inst4|s_divCounter[8]~43\)) # (!\inst4|s_divCounter\(9) & ((\inst4|s_divCounter[8]~43\) # (GND)))
-- \inst4|s_divCounter[9]~45\ = CARRY((!\inst4|s_divCounter[8]~43\) # (!\inst4|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_divCounter\(9),
	datad => VCC,
	cin => \inst4|s_divCounter[8]~43\,
	combout => \inst4|s_divCounter[9]~44_combout\,
	cout => \inst4|s_divCounter[9]~45\);

-- Location: FF_X49_Y8_N25
\inst4|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[9]~44_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(9));

-- Location: LCCOMB_X49_Y8_N26
\inst4|s_divCounter[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[10]~46_combout\ = (\inst4|s_divCounter\(10) & (\inst4|s_divCounter[9]~45\ $ (GND))) # (!\inst4|s_divCounter\(10) & (!\inst4|s_divCounter[9]~45\ & VCC))
-- \inst4|s_divCounter[10]~47\ = CARRY((\inst4|s_divCounter\(10) & !\inst4|s_divCounter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_divCounter\(10),
	datad => VCC,
	cin => \inst4|s_divCounter[9]~45\,
	combout => \inst4|s_divCounter[10]~46_combout\,
	cout => \inst4|s_divCounter[10]~47\);

-- Location: FF_X49_Y8_N27
\inst4|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[10]~46_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(10));

-- Location: LCCOMB_X49_Y8_N28
\inst4|s_divCounter[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[11]~48_combout\ = (\inst4|s_divCounter\(11) & (!\inst4|s_divCounter[10]~47\)) # (!\inst4|s_divCounter\(11) & ((\inst4|s_divCounter[10]~47\) # (GND)))
-- \inst4|s_divCounter[11]~49\ = CARRY((!\inst4|s_divCounter[10]~47\) # (!\inst4|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_divCounter\(11),
	datad => VCC,
	cin => \inst4|s_divCounter[10]~47\,
	combout => \inst4|s_divCounter[11]~48_combout\,
	cout => \inst4|s_divCounter[11]~49\);

-- Location: FF_X49_Y8_N29
\inst4|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[11]~48_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(11));

-- Location: LCCOMB_X49_Y8_N30
\inst4|s_divCounter[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[12]~50_combout\ = (\inst4|s_divCounter\(12) & (\inst4|s_divCounter[11]~49\ $ (GND))) # (!\inst4|s_divCounter\(12) & (!\inst4|s_divCounter[11]~49\ & VCC))
-- \inst4|s_divCounter[12]~51\ = CARRY((\inst4|s_divCounter\(12) & !\inst4|s_divCounter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_divCounter\(12),
	datad => VCC,
	cin => \inst4|s_divCounter[11]~49\,
	combout => \inst4|s_divCounter[12]~50_combout\,
	cout => \inst4|s_divCounter[12]~51\);

-- Location: FF_X49_Y8_N31
\inst4|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[12]~50_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(12));

-- Location: LCCOMB_X49_Y7_N0
\inst4|s_divCounter[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[13]~52_combout\ = (\inst4|s_divCounter\(13) & (!\inst4|s_divCounter[12]~51\)) # (!\inst4|s_divCounter\(13) & ((\inst4|s_divCounter[12]~51\) # (GND)))
-- \inst4|s_divCounter[13]~53\ = CARRY((!\inst4|s_divCounter[12]~51\) # (!\inst4|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_divCounter\(13),
	datad => VCC,
	cin => \inst4|s_divCounter[12]~51\,
	combout => \inst4|s_divCounter[13]~52_combout\,
	cout => \inst4|s_divCounter[13]~53\);

-- Location: FF_X50_Y8_N27
\inst4|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst4|s_divCounter[13]~52_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(13));

-- Location: LCCOMB_X49_Y7_N2
\inst4|s_divCounter[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[14]~54_combout\ = (\inst4|s_divCounter\(14) & (\inst4|s_divCounter[13]~53\ $ (GND))) # (!\inst4|s_divCounter\(14) & (!\inst4|s_divCounter[13]~53\ & VCC))
-- \inst4|s_divCounter[14]~55\ = CARRY((\inst4|s_divCounter\(14) & !\inst4|s_divCounter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_divCounter\(14),
	datad => VCC,
	cin => \inst4|s_divCounter[13]~53\,
	combout => \inst4|s_divCounter[14]~54_combout\,
	cout => \inst4|s_divCounter[14]~55\);

-- Location: FF_X49_Y7_N3
\inst4|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[14]~54_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(14));

-- Location: LCCOMB_X49_Y7_N4
\inst4|s_divCounter[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[15]~56_combout\ = (\inst4|s_divCounter\(15) & (!\inst4|s_divCounter[14]~55\)) # (!\inst4|s_divCounter\(15) & ((\inst4|s_divCounter[14]~55\) # (GND)))
-- \inst4|s_divCounter[15]~57\ = CARRY((!\inst4|s_divCounter[14]~55\) # (!\inst4|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_divCounter\(15),
	datad => VCC,
	cin => \inst4|s_divCounter[14]~55\,
	combout => \inst4|s_divCounter[15]~56_combout\,
	cout => \inst4|s_divCounter[15]~57\);

-- Location: FF_X49_Y7_N5
\inst4|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[15]~56_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(15));

-- Location: LCCOMB_X49_Y7_N6
\inst4|s_divCounter[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[16]~58_combout\ = (\inst4|s_divCounter\(16) & (\inst4|s_divCounter[15]~57\ $ (GND))) # (!\inst4|s_divCounter\(16) & (!\inst4|s_divCounter[15]~57\ & VCC))
-- \inst4|s_divCounter[16]~59\ = CARRY((\inst4|s_divCounter\(16) & !\inst4|s_divCounter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_divCounter\(16),
	datad => VCC,
	cin => \inst4|s_divCounter[15]~57\,
	combout => \inst4|s_divCounter[16]~58_combout\,
	cout => \inst4|s_divCounter[16]~59\);

-- Location: FF_X49_Y7_N7
\inst4|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[16]~58_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(16));

-- Location: LCCOMB_X49_Y7_N8
\inst4|s_divCounter[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[17]~60_combout\ = (\inst4|s_divCounter\(17) & (!\inst4|s_divCounter[16]~59\)) # (!\inst4|s_divCounter\(17) & ((\inst4|s_divCounter[16]~59\) # (GND)))
-- \inst4|s_divCounter[17]~61\ = CARRY((!\inst4|s_divCounter[16]~59\) # (!\inst4|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_divCounter\(17),
	datad => VCC,
	cin => \inst4|s_divCounter[16]~59\,
	combout => \inst4|s_divCounter[17]~60_combout\,
	cout => \inst4|s_divCounter[17]~61\);

-- Location: FF_X49_Y7_N9
\inst4|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[17]~60_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(17));

-- Location: LCCOMB_X49_Y7_N10
\inst4|s_divCounter[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[18]~62_combout\ = (\inst4|s_divCounter\(18) & (\inst4|s_divCounter[17]~61\ $ (GND))) # (!\inst4|s_divCounter\(18) & (!\inst4|s_divCounter[17]~61\ & VCC))
-- \inst4|s_divCounter[18]~63\ = CARRY((\inst4|s_divCounter\(18) & !\inst4|s_divCounter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_divCounter\(18),
	datad => VCC,
	cin => \inst4|s_divCounter[17]~61\,
	combout => \inst4|s_divCounter[18]~62_combout\,
	cout => \inst4|s_divCounter[18]~63\);

-- Location: FF_X49_Y7_N11
\inst4|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[18]~62_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(18));

-- Location: LCCOMB_X49_Y7_N12
\inst4|s_divCounter[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[19]~64_combout\ = (\inst4|s_divCounter\(19) & (!\inst4|s_divCounter[18]~63\)) # (!\inst4|s_divCounter\(19) & ((\inst4|s_divCounter[18]~63\) # (GND)))
-- \inst4|s_divCounter[19]~65\ = CARRY((!\inst4|s_divCounter[18]~63\) # (!\inst4|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_divCounter\(19),
	datad => VCC,
	cin => \inst4|s_divCounter[18]~63\,
	combout => \inst4|s_divCounter[19]~64_combout\,
	cout => \inst4|s_divCounter[19]~65\);

-- Location: FF_X49_Y7_N13
\inst4|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[19]~64_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(19));

-- Location: LCCOMB_X49_Y7_N14
\inst4|s_divCounter[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[20]~66_combout\ = (\inst4|s_divCounter\(20) & (\inst4|s_divCounter[19]~65\ $ (GND))) # (!\inst4|s_divCounter\(20) & (!\inst4|s_divCounter[19]~65\ & VCC))
-- \inst4|s_divCounter[20]~67\ = CARRY((\inst4|s_divCounter\(20) & !\inst4|s_divCounter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_divCounter\(20),
	datad => VCC,
	cin => \inst4|s_divCounter[19]~65\,
	combout => \inst4|s_divCounter[20]~66_combout\,
	cout => \inst4|s_divCounter[20]~67\);

-- Location: FF_X49_Y7_N15
\inst4|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[20]~66_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(20));

-- Location: LCCOMB_X49_Y7_N16
\inst4|s_divCounter[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[21]~68_combout\ = (\inst4|s_divCounter\(21) & (!\inst4|s_divCounter[20]~67\)) # (!\inst4|s_divCounter\(21) & ((\inst4|s_divCounter[20]~67\) # (GND)))
-- \inst4|s_divCounter[21]~69\ = CARRY((!\inst4|s_divCounter[20]~67\) # (!\inst4|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_divCounter\(21),
	datad => VCC,
	cin => \inst4|s_divCounter[20]~67\,
	combout => \inst4|s_divCounter[21]~68_combout\,
	cout => \inst4|s_divCounter[21]~69\);

-- Location: FF_X49_Y7_N17
\inst4|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[21]~68_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(21));

-- Location: LCCOMB_X49_Y7_N18
\inst4|s_divCounter[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[22]~70_combout\ = (\inst4|s_divCounter\(22) & (\inst4|s_divCounter[21]~69\ $ (GND))) # (!\inst4|s_divCounter\(22) & (!\inst4|s_divCounter[21]~69\ & VCC))
-- \inst4|s_divCounter[22]~71\ = CARRY((\inst4|s_divCounter\(22) & !\inst4|s_divCounter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_divCounter\(22),
	datad => VCC,
	cin => \inst4|s_divCounter[21]~69\,
	combout => \inst4|s_divCounter[22]~70_combout\,
	cout => \inst4|s_divCounter[22]~71\);

-- Location: FF_X49_Y7_N19
\inst4|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[22]~70_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(22));

-- Location: LCCOMB_X49_Y7_N20
\inst4|s_divCounter[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[23]~72_combout\ = (\inst4|s_divCounter\(23) & (!\inst4|s_divCounter[22]~71\)) # (!\inst4|s_divCounter\(23) & ((\inst4|s_divCounter[22]~71\) # (GND)))
-- \inst4|s_divCounter[23]~73\ = CARRY((!\inst4|s_divCounter[22]~71\) # (!\inst4|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_divCounter\(23),
	datad => VCC,
	cin => \inst4|s_divCounter[22]~71\,
	combout => \inst4|s_divCounter[23]~72_combout\,
	cout => \inst4|s_divCounter[23]~73\);

-- Location: FF_X49_Y7_N21
\inst4|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[23]~72_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(23));

-- Location: LCCOMB_X49_Y7_N22
\inst4|s_divCounter[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[24]~74_combout\ = (\inst4|s_divCounter\(24) & (\inst4|s_divCounter[23]~73\ $ (GND))) # (!\inst4|s_divCounter\(24) & (!\inst4|s_divCounter[23]~73\ & VCC))
-- \inst4|s_divCounter[24]~75\ = CARRY((\inst4|s_divCounter\(24) & !\inst4|s_divCounter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_divCounter\(24),
	datad => VCC,
	cin => \inst4|s_divCounter[23]~73\,
	combout => \inst4|s_divCounter[24]~74_combout\,
	cout => \inst4|s_divCounter[24]~75\);

-- Location: FF_X49_Y7_N23
\inst4|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[24]~74_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(24));

-- Location: LCCOMB_X49_Y7_N24
\inst4|s_divCounter[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[25]~76_combout\ = \inst4|s_divCounter[24]~75\ $ (\inst4|s_divCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst4|s_divCounter\(25),
	cin => \inst4|s_divCounter[24]~75\,
	combout => \inst4|s_divCounter[25]~76_combout\);

-- Location: FF_X49_Y7_N25
\inst4|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[25]~76_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(25));

-- Location: LCCOMB_X50_Y8_N16
\inst4|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~1_combout\ = (((!\inst4|s_divCounter\(11)) # (!\inst4|s_divCounter\(14))) # (!\inst4|s_divCounter\(12))) # (!\inst4|s_divCounter\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_divCounter\(13),
	datab => \inst4|s_divCounter\(12),
	datac => \inst4|s_divCounter\(14),
	datad => \inst4|s_divCounter\(11),
	combout => \inst4|LessThan1~1_combout\);

-- Location: LCCOMB_X50_Y8_N6
\inst4|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~5_combout\ = (\inst4|LessThan1~1_combout\) # ((\inst4|LessThan1~3_combout\ & (!\inst4|s_divCounter\(6) & \inst4|LessThan1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LessThan1~3_combout\,
	datab => \inst4|s_divCounter\(6),
	datac => \inst4|LessThan1~4_combout\,
	datad => \inst4|LessThan1~1_combout\,
	combout => \inst4|LessThan1~5_combout\);

-- Location: LCCOMB_X50_Y8_N2
\inst4|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~6_combout\ = (\inst4|s_divCounter\(16) & ((\inst4|s_divCounter\(15)) # (!\inst4|LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_divCounter\(15),
	datac => \inst4|s_divCounter\(16),
	datad => \inst4|LessThan1~5_combout\,
	combout => \inst4|LessThan1~6_combout\);

-- Location: LCCOMB_X50_Y8_N0
\inst4|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~7_combout\ = (\inst4|LessThan1~0_combout\ & (\inst4|s_divCounter\(18) & ((\inst4|s_divCounter\(17)) # (\inst4|LessThan1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LessThan1~0_combout\,
	datab => \inst4|s_divCounter\(18),
	datac => \inst4|s_divCounter\(17),
	datad => \inst4|LessThan1~6_combout\,
	combout => \inst4|LessThan1~7_combout\);

-- Location: LCCOMB_X50_Y8_N8
\inst4|LessThan1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~8_combout\ = (\inst4|s_divCounter\(25)) # ((\inst4|s_divCounter\(24) & ((\inst4|s_divCounter\(23)) # (\inst4|LessThan1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_divCounter\(25),
	datab => \inst4|s_divCounter\(24),
	datac => \inst4|s_divCounter\(23),
	datad => \inst4|LessThan1~7_combout\,
	combout => \inst4|LessThan1~8_combout\);

-- Location: FF_X50_Y8_N9
\inst4|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clkOut~q\);

-- Location: CLKCTRL_G16
\inst4|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst4|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst4|clkOut~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X114_Y37_N4
\inst2|s_currentState.SUMI~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_currentState.SUMI~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[0]~input_o\,
	combout => \inst2|s_currentState.SUMI~0_combout\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X114_Y37_N22
\inst2|s_currentState~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_currentState~12_combout\ = (\SW[0]~input_o\) # ((\SW[1]~input_o\) # (\KEY[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datad => \KEY[0]~input_o\,
	combout => \inst2|s_currentState~12_combout\);

-- Location: FF_X114_Y37_N5
\inst2|s_currentState.SUMI\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkOut~clkctrl_outclk\,
	d => \inst2|s_currentState.SUMI~0_combout\,
	ena => \inst2|s_currentState~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_currentState.SUMI~q\);

-- Location: LCCOMB_X114_Y37_N8
\inst2|s_currentState~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_currentState~17_combout\ = (!\KEY[0]~input_o\ & (!\inst2|s_currentState.SUMI~q\ & \SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \inst2|s_currentState.SUMI~q\,
	datac => \SW[0]~input_o\,
	combout => \inst2|s_currentState~17_combout\);

-- Location: FF_X114_Y37_N9
\inst2|s_currentState.SUM1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkOut~clkctrl_outclk\,
	d => \inst2|s_currentState~17_combout\,
	ena => \inst2|s_currentState~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_currentState.SUM1~q\);

-- Location: LCCOMB_X114_Y37_N26
\inst2|s_currentState~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_currentState~11_combout\ = (\SW[0]~input_o\ & (\inst2|s_currentState.SUM1~q\ & !\KEY[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \inst2|s_currentState.SUM1~q\,
	datad => \KEY[0]~input_o\,
	combout => \inst2|s_currentState~11_combout\);

-- Location: FF_X114_Y37_N27
\inst2|s_currentState.SUM2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkOut~clkctrl_outclk\,
	d => \inst2|s_currentState~11_combout\,
	ena => \inst2|s_currentState~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_currentState.SUM2~q\);

-- Location: LCCOMB_X114_Y37_N6
\inst2|s_currentState~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_currentState~13_combout\ = (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & (!\inst2|s_currentState.SUMI~q\)) # (!\SW[1]~input_o\ & ((\inst2|s_currentState.SUM3~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \inst2|s_currentState.SUMI~q\,
	datad => \inst2|s_currentState.SUM3~q\,
	combout => \inst2|s_currentState~13_combout\);

-- Location: LCCOMB_X114_Y37_N12
\inst2|s_currentState~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_currentState~14_combout\ = (!\KEY[0]~input_o\ & ((\inst2|s_currentState~13_combout\) # ((\SW[0]~input_o\ & \inst2|s_currentState.SUM2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \inst2|s_currentState.SUM2~q\,
	datad => \inst2|s_currentState~13_combout\,
	combout => \inst2|s_currentState~14_combout\);

-- Location: FF_X114_Y37_N13
\inst2|s_currentState.SUM3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkOut~clkctrl_outclk\,
	d => \inst2|s_currentState~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_currentState.SUM3~q\);

-- Location: LCCOMB_X114_Y37_N24
\inst2|s_currentState~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_currentState~15_combout\ = (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & (\inst2|s_currentState.SUM1~q\)) # (!\SW[1]~input_o\ & ((\inst2|s_currentState.SUM4~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \inst2|s_currentState.SUM1~q\,
	datad => \inst2|s_currentState.SUM4~q\,
	combout => \inst2|s_currentState~15_combout\);

-- Location: LCCOMB_X114_Y37_N0
\inst2|s_currentState~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_currentState~16_combout\ = (!\KEY[0]~input_o\ & ((\inst2|s_currentState~15_combout\) # ((\inst2|s_currentState.SUM3~q\ & \SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \inst2|s_currentState.SUM3~q\,
	datac => \SW[0]~input_o\,
	datad => \inst2|s_currentState~15_combout\,
	combout => \inst2|s_currentState~16_combout\);

-- Location: FF_X114_Y37_N1
\inst2|s_currentState.SUM4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkOut~clkctrl_outclk\,
	d => \inst2|s_currentState~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_currentState.SUM4~q\);

-- Location: LCCOMB_X114_Y37_N30
\inst2|s_currentState~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_currentState~9_combout\ = (\inst2|s_currentState.SUMF~q\) # ((\inst2|s_currentState.SUM4~q\ & ((\SW[0]~input_o\) # (\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \inst2|s_currentState.SUM4~q\,
	datac => \SW[1]~input_o\,
	datad => \inst2|s_currentState.SUMF~q\,
	combout => \inst2|s_currentState~9_combout\);

-- Location: LCCOMB_X114_Y37_N2
\inst2|s_currentState~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_currentState~8_combout\ = (!\SW[0]~input_o\ & (\SW[1]~input_o\ & ((\inst2|s_currentState.SUM2~q\) # (\inst2|s_currentState.SUM3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \inst2|s_currentState.SUM2~q\,
	datad => \inst2|s_currentState.SUM3~q\,
	combout => \inst2|s_currentState~8_combout\);

-- Location: LCCOMB_X114_Y37_N28
\inst2|s_currentState~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_currentState~10_combout\ = (!\KEY[0]~input_o\ & ((\inst2|s_currentState~9_combout\) # (\inst2|s_currentState~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \inst2|s_currentState~9_combout\,
	datad => \inst2|s_currentState~8_combout\,
	combout => \inst2|s_currentState~10_combout\);

-- Location: FF_X114_Y37_N29
\inst2|s_currentState.SUMF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|clkOut~clkctrl_outclk\,
	d => \inst2|s_currentState~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_currentState.SUMF~q\);

ww_LEDG(0) <= \LEDG[0]~output_o\;
END structure;


