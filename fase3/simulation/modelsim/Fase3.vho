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

-- DATE "03/31/2017 13:55:53"

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

ENTITY 	Fase3 IS
    PORT (
	KEY : IN std_logic_vector(1 DOWNTO 0);
	LEDR : OUT std_logic_vector(1 DOWNTO 0);
	LEDG : OUT std_logic_vector(8 DOWNTO 8);
	CLOCK_50 : IN std_logic
	);
END Fase3;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[8]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Fase3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(8 DOWNTO 8);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDG[8]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \f1|Add0~0_combout\ : std_logic;
SIGNAL \f1|Add0~1\ : std_logic;
SIGNAL \f1|Add0~2_combout\ : std_logic;
SIGNAL \Freq1s|Add0~1_cout\ : std_logic;
SIGNAL \Freq1s|Add0~2_combout\ : std_logic;
SIGNAL \Freq1s|Add0~3\ : std_logic;
SIGNAL \Freq1s|Add0~4_combout\ : std_logic;
SIGNAL \Freq1s|Add0~5\ : std_logic;
SIGNAL \Freq1s|Add0~6_combout\ : std_logic;
SIGNAL \Freq1s|Add0~7\ : std_logic;
SIGNAL \Freq1s|Add0~8_combout\ : std_logic;
SIGNAL \Freq1s|Add0~9\ : std_logic;
SIGNAL \Freq1s|Add0~10_combout\ : std_logic;
SIGNAL \Freq1s|Add0~11\ : std_logic;
SIGNAL \Freq1s|Add0~12_combout\ : std_logic;
SIGNAL \Freq1s|Add0~13\ : std_logic;
SIGNAL \Freq1s|Add0~14_combout\ : std_logic;
SIGNAL \Freq1s|Add0~15\ : std_logic;
SIGNAL \Freq1s|Add0~16_combout\ : std_logic;
SIGNAL \Freq1s|Add0~17\ : std_logic;
SIGNAL \Freq1s|Add0~18_combout\ : std_logic;
SIGNAL \Freq1s|Add0~19\ : std_logic;
SIGNAL \Freq1s|Add0~20_combout\ : std_logic;
SIGNAL \Freq1s|Add0~21\ : std_logic;
SIGNAL \Freq1s|Add0~22_combout\ : std_logic;
SIGNAL \Freq1s|s_count~6_combout\ : std_logic;
SIGNAL \Freq1s|Add0~23\ : std_logic;
SIGNAL \Freq1s|Add0~24_combout\ : std_logic;
SIGNAL \Freq1s|s_count~5_combout\ : std_logic;
SIGNAL \Freq1s|Add0~25\ : std_logic;
SIGNAL \Freq1s|Add0~26_combout\ : std_logic;
SIGNAL \Freq1s|s_count~4_combout\ : std_logic;
SIGNAL \Freq1s|Add0~27\ : std_logic;
SIGNAL \Freq1s|Add0~28_combout\ : std_logic;
SIGNAL \Freq1s|s_count~11_combout\ : std_logic;
SIGNAL \Freq1s|Add0~29\ : std_logic;
SIGNAL \Freq1s|Add0~30_combout\ : std_logic;
SIGNAL \Freq1s|Add0~31\ : std_logic;
SIGNAL \Freq1s|Add0~32_combout\ : std_logic;
SIGNAL \Freq1s|s_count~10_combout\ : std_logic;
SIGNAL \Freq1s|Add0~33\ : std_logic;
SIGNAL \Freq1s|Add0~34_combout\ : std_logic;
SIGNAL \Freq1s|Add0~35\ : std_logic;
SIGNAL \Freq1s|Add0~36_combout\ : std_logic;
SIGNAL \Freq1s|s_count~3_combout\ : std_logic;
SIGNAL \Freq1s|Add0~37\ : std_logic;
SIGNAL \Freq1s|Add0~38_combout\ : std_logic;
SIGNAL \Freq1s|s_count~2_combout\ : std_logic;
SIGNAL \Freq1s|Add0~39\ : std_logic;
SIGNAL \Freq1s|Add0~40_combout\ : std_logic;
SIGNAL \Freq1s|s_count~1_combout\ : std_logic;
SIGNAL \Freq1s|Add0~41\ : std_logic;
SIGNAL \Freq1s|Add0~42_combout\ : std_logic;
SIGNAL \Freq1s|s_count~0_combout\ : std_logic;
SIGNAL \Freq1s|Add0~43\ : std_logic;
SIGNAL \Freq1s|Add0~44_combout\ : std_logic;
SIGNAL \Freq1s|s_count~9_combout\ : std_logic;
SIGNAL \Freq1s|Add0~45\ : std_logic;
SIGNAL \Freq1s|Add0~46_combout\ : std_logic;
SIGNAL \Freq1s|Add0~47\ : std_logic;
SIGNAL \Freq1s|Add0~48_combout\ : std_logic;
SIGNAL \Freq1s|s_count~8_combout\ : std_logic;
SIGNAL \Freq1s|Equal0~7_combout\ : std_logic;
SIGNAL \Freq1s|Equal0~8_combout\ : std_logic;
SIGNAL \Freq1s|Equal0~9_combout\ : std_logic;
SIGNAL \Freq1s|s_count~7_combout\ : std_logic;
SIGNAL \Freq1s|Equal0~5_combout\ : std_logic;
SIGNAL \Freq1s|Equal0~2_combout\ : std_logic;
SIGNAL \Freq1s|Equal0~3_combout\ : std_logic;
SIGNAL \Freq1s|Add0~49\ : std_logic;
SIGNAL \Freq1s|Add0~50_combout\ : std_logic;
SIGNAL \Freq1s|Add0~51\ : std_logic;
SIGNAL \Freq1s|Add0~52_combout\ : std_logic;
SIGNAL \Freq1s|Add0~53\ : std_logic;
SIGNAL \Freq1s|Add0~54_combout\ : std_logic;
SIGNAL \Freq1s|Equal0~1_combout\ : std_logic;
SIGNAL \Freq1s|Add0~55\ : std_logic;
SIGNAL \Freq1s|Add0~56_combout\ : std_logic;
SIGNAL \Freq1s|Add0~57\ : std_logic;
SIGNAL \Freq1s|Add0~58_combout\ : std_logic;
SIGNAL \Freq1s|Equal0~0_combout\ : std_logic;
SIGNAL \Freq1s|Equal0~4_combout\ : std_logic;
SIGNAL \Freq1s|Equal0~6_combout\ : std_logic;
SIGNAL \Freq1s|Equal1~0_combout\ : std_logic;
SIGNAL \Freq1s|Equal1~1_combout\ : std_logic;
SIGNAL \Freq1s|Equal1~2_combout\ : std_logic;
SIGNAL \Freq1s|clkOut~0_combout\ : std_logic;
SIGNAL \Freq1s|clkOut~feeder_combout\ : std_logic;
SIGNAL \Freq1s|clkOut~q\ : std_logic;
SIGNAL \engine|Equal0~9_combout\ : std_logic;
SIGNAL \engine|Equal0~1_combout\ : std_logic;
SIGNAL \engine|Equal0~0_combout\ : std_logic;
SIGNAL \engine|Equal0~2_combout\ : std_logic;
SIGNAL \engine|Equal0~3_combout\ : std_logic;
SIGNAL \engine|Equal0~4_combout\ : std_logic;
SIGNAL \engine|Equal0~10_combout\ : std_logic;
SIGNAL \t1|s_count[0]~30_combout\ : std_logic;
SIGNAL \t1|Add0~0_combout\ : std_logic;
SIGNAL \t1|s_count[0]~31_combout\ : std_logic;
SIGNAL \t1|Add0~1\ : std_logic;
SIGNAL \t1|Add0~2_combout\ : std_logic;
SIGNAL \t1|s_count[1]~27_combout\ : std_logic;
SIGNAL \t1|Add0~3\ : std_logic;
SIGNAL \t1|Add0~4_combout\ : std_logic;
SIGNAL \t1|s_count[2]~28_combout\ : std_logic;
SIGNAL \t1|Add0~5\ : std_logic;
SIGNAL \t1|Add0~6_combout\ : std_logic;
SIGNAL \t1|s_count[3]~29_combout\ : std_logic;
SIGNAL \t1|Add0~7\ : std_logic;
SIGNAL \t1|Add0~8_combout\ : std_logic;
SIGNAL \t1|s_count[4]~0_combout\ : std_logic;
SIGNAL \t1|Add0~9\ : std_logic;
SIGNAL \t1|Add0~10_combout\ : std_logic;
SIGNAL \t1|s_count[5]~1_combout\ : std_logic;
SIGNAL \t1|Add0~11\ : std_logic;
SIGNAL \t1|Add0~12_combout\ : std_logic;
SIGNAL \t1|s_count[6]~2_combout\ : std_logic;
SIGNAL \t1|Add0~13\ : std_logic;
SIGNAL \t1|Add0~14_combout\ : std_logic;
SIGNAL \t1|s_count[7]~3_combout\ : std_logic;
SIGNAL \t1|Add0~15\ : std_logic;
SIGNAL \t1|Add0~16_combout\ : std_logic;
SIGNAL \t1|s_count[8]~4_combout\ : std_logic;
SIGNAL \t1|Add0~17\ : std_logic;
SIGNAL \t1|Add0~18_combout\ : std_logic;
SIGNAL \t1|s_count[9]~5_combout\ : std_logic;
SIGNAL \t1|Add0~19\ : std_logic;
SIGNAL \t1|Add0~20_combout\ : std_logic;
SIGNAL \t1|s_count[10]~6_combout\ : std_logic;
SIGNAL \t1|Add0~21\ : std_logic;
SIGNAL \t1|Add0~22_combout\ : std_logic;
SIGNAL \t1|s_count[11]~7_combout\ : std_logic;
SIGNAL \t1|Add0~23\ : std_logic;
SIGNAL \t1|Add0~24_combout\ : std_logic;
SIGNAL \t1|s_count[12]~8_combout\ : std_logic;
SIGNAL \t1|Add0~25\ : std_logic;
SIGNAL \t1|Add0~26_combout\ : std_logic;
SIGNAL \t1|s_count[13]~9_combout\ : std_logic;
SIGNAL \t1|Add0~27\ : std_logic;
SIGNAL \t1|Add0~28_combout\ : std_logic;
SIGNAL \t1|s_count[14]~10_combout\ : std_logic;
SIGNAL \t1|Add0~29\ : std_logic;
SIGNAL \t1|Add0~30_combout\ : std_logic;
SIGNAL \t1|s_count[15]~11_combout\ : std_logic;
SIGNAL \t1|Add0~31\ : std_logic;
SIGNAL \t1|Add0~32_combout\ : std_logic;
SIGNAL \t1|s_count[16]~12_combout\ : std_logic;
SIGNAL \t1|Add0~33\ : std_logic;
SIGNAL \t1|Add0~34_combout\ : std_logic;
SIGNAL \t1|s_count[17]~13_combout\ : std_logic;
SIGNAL \t1|Add0~35\ : std_logic;
SIGNAL \t1|Add0~36_combout\ : std_logic;
SIGNAL \t1|s_count[18]~14_combout\ : std_logic;
SIGNAL \t1|Add0~37\ : std_logic;
SIGNAL \t1|Add0~38_combout\ : std_logic;
SIGNAL \t1|s_count[19]~15_combout\ : std_logic;
SIGNAL \t1|Add0~39\ : std_logic;
SIGNAL \t1|Add0~40_combout\ : std_logic;
SIGNAL \t1|s_count[20]~16_combout\ : std_logic;
SIGNAL \t1|Add0~41\ : std_logic;
SIGNAL \t1|Add0~42_combout\ : std_logic;
SIGNAL \t1|s_count[21]~17_combout\ : std_logic;
SIGNAL \t1|Add0~43\ : std_logic;
SIGNAL \t1|Add0~44_combout\ : std_logic;
SIGNAL \t1|s_count[22]~18_combout\ : std_logic;
SIGNAL \t1|Add0~45\ : std_logic;
SIGNAL \t1|Add0~46_combout\ : std_logic;
SIGNAL \t1|s_count[23]~19_combout\ : std_logic;
SIGNAL \engine|Equal0~5_combout\ : std_logic;
SIGNAL \t1|Add0~47\ : std_logic;
SIGNAL \t1|Add0~48_combout\ : std_logic;
SIGNAL \t1|s_count[24]~20_combout\ : std_logic;
SIGNAL \t1|Add0~49\ : std_logic;
SIGNAL \t1|Add0~50_combout\ : std_logic;
SIGNAL \t1|s_count[25]~21_combout\ : std_logic;
SIGNAL \t1|Add0~51\ : std_logic;
SIGNAL \t1|Add0~52_combout\ : std_logic;
SIGNAL \t1|s_count[26]~22_combout\ : std_logic;
SIGNAL \t1|Add0~53\ : std_logic;
SIGNAL \t1|Add0~54_combout\ : std_logic;
SIGNAL \t1|s_count[27]~23_combout\ : std_logic;
SIGNAL \engine|Equal0~6_combout\ : std_logic;
SIGNAL \t1|Add0~55\ : std_logic;
SIGNAL \t1|Add0~56_combout\ : std_logic;
SIGNAL \t1|s_count[28]~24_combout\ : std_logic;
SIGNAL \t1|Add0~57\ : std_logic;
SIGNAL \t1|Add0~58_combout\ : std_logic;
SIGNAL \t1|s_count[29]~25_combout\ : std_logic;
SIGNAL \t1|Add0~59\ : std_logic;
SIGNAL \t1|Add0~60_combout\ : std_logic;
SIGNAL \t1|s_count[30]~26_combout\ : std_logic;
SIGNAL \engine|Equal0~7_combout\ : std_logic;
SIGNAL \engine|Equal0~8_combout\ : std_logic;
SIGNAL \t1|Equal0~0_combout\ : std_logic;
SIGNAL \t1|Equal0~1_combout\ : std_logic;
SIGNAL \t1|Add0~61\ : std_logic;
SIGNAL \t1|Add0~62_combout\ : std_logic;
SIGNAL \t1|s_count[31]~32_combout\ : std_logic;
SIGNAL \engine|LessThan0~0_combout\ : std_logic;
SIGNAL \engine|output[1]~0_combout\ : std_logic;
SIGNAL \engine|LessThan2~0_combout\ : std_logic;
SIGNAL \engine|LessThan2~1_combout\ : std_logic;
SIGNAL \engine|output[1]~1_combout\ : std_logic;
SIGNAL \engine|output[1]~2_combout\ : std_logic;
SIGNAL \engine|output[2]~4_combout\ : std_logic;
SIGNAL \engine|output[2]~3_combout\ : std_logic;
SIGNAL \f1|Add0~3\ : std_logic;
SIGNAL \f1|Add0~4_combout\ : std_logic;
SIGNAL \f1|Add0~5\ : std_logic;
SIGNAL \f1|Add0~6_combout\ : std_logic;
SIGNAL \f1|Add0~7\ : std_logic;
SIGNAL \f1|Add0~8_combout\ : std_logic;
SIGNAL \f1|Add0~9\ : std_logic;
SIGNAL \f1|Add0~10_combout\ : std_logic;
SIGNAL \f1|Add0~11\ : std_logic;
SIGNAL \f1|Add0~13\ : std_logic;
SIGNAL \f1|Add0~14_combout\ : std_logic;
SIGNAL \f1|Add0~15\ : std_logic;
SIGNAL \f1|Add0~16_combout\ : std_logic;
SIGNAL \f1|Add0~17\ : std_logic;
SIGNAL \f1|Add0~18_combout\ : std_logic;
SIGNAL \f1|Add0~19\ : std_logic;
SIGNAL \f1|Add0~20_combout\ : std_logic;
SIGNAL \f1|Add0~21\ : std_logic;
SIGNAL \f1|Add0~22_combout\ : std_logic;
SIGNAL \f1|s_count~6_combout\ : std_logic;
SIGNAL \f1|Add0~23\ : std_logic;
SIGNAL \f1|Add0~24_combout\ : std_logic;
SIGNAL \f1|s_count~5_combout\ : std_logic;
SIGNAL \f1|Add0~25\ : std_logic;
SIGNAL \f1|Add0~26_combout\ : std_logic;
SIGNAL \f1|s_count~4_combout\ : std_logic;
SIGNAL \f1|Add0~27\ : std_logic;
SIGNAL \f1|Add0~28_combout\ : std_logic;
SIGNAL \f1|s_count~11_combout\ : std_logic;
SIGNAL \f1|Add0~29\ : std_logic;
SIGNAL \f1|Add0~30_combout\ : std_logic;
SIGNAL \f1|Add0~31\ : std_logic;
SIGNAL \f1|Add0~32_combout\ : std_logic;
SIGNAL \f1|s_count~10_combout\ : std_logic;
SIGNAL \f1|Add0~33\ : std_logic;
SIGNAL \f1|Add0~34_combout\ : std_logic;
SIGNAL \f1|Add0~35\ : std_logic;
SIGNAL \f1|Add0~36_combout\ : std_logic;
SIGNAL \f1|s_count~3_combout\ : std_logic;
SIGNAL \f1|Add0~37\ : std_logic;
SIGNAL \f1|Add0~38_combout\ : std_logic;
SIGNAL \f1|s_count~2_combout\ : std_logic;
SIGNAL \f1|Add0~39\ : std_logic;
SIGNAL \f1|Add0~40_combout\ : std_logic;
SIGNAL \f1|s_count~1_combout\ : std_logic;
SIGNAL \f1|Add0~41\ : std_logic;
SIGNAL \f1|Add0~42_combout\ : std_logic;
SIGNAL \f1|s_count~0_combout\ : std_logic;
SIGNAL \f1|Add0~43\ : std_logic;
SIGNAL \f1|Add0~44_combout\ : std_logic;
SIGNAL \f1|s_count~9_combout\ : std_logic;
SIGNAL \f1|Add0~45\ : std_logic;
SIGNAL \f1|Add0~46_combout\ : std_logic;
SIGNAL \f1|Add0~47\ : std_logic;
SIGNAL \f1|Add0~48_combout\ : std_logic;
SIGNAL \f1|s_count~8_combout\ : std_logic;
SIGNAL \f1|Equal0~7_combout\ : std_logic;
SIGNAL \f1|Equal0~8_combout\ : std_logic;
SIGNAL \f1|Equal0~9_combout\ : std_logic;
SIGNAL \f1|Add0~12_combout\ : std_logic;
SIGNAL \f1|s_count~7_combout\ : std_logic;
SIGNAL \f1|Equal0~5_combout\ : std_logic;
SIGNAL \f1|Add0~49\ : std_logic;
SIGNAL \f1|Add0~50_combout\ : std_logic;
SIGNAL \f1|Add0~51\ : std_logic;
SIGNAL \f1|Add0~52_combout\ : std_logic;
SIGNAL \f1|Add0~53\ : std_logic;
SIGNAL \f1|Add0~54_combout\ : std_logic;
SIGNAL \f1|Add0~55\ : std_logic;
SIGNAL \f1|Add0~56_combout\ : std_logic;
SIGNAL \f1|Equal0~1_combout\ : std_logic;
SIGNAL \f1|Equal0~2_combout\ : std_logic;
SIGNAL \f1|Equal0~3_combout\ : std_logic;
SIGNAL \f1|Add0~57\ : std_logic;
SIGNAL \f1|Add0~58_combout\ : std_logic;
SIGNAL \f1|Add0~59\ : std_logic;
SIGNAL \f1|Add0~60_combout\ : std_logic;
SIGNAL \f1|Equal0~0_combout\ : std_logic;
SIGNAL \f1|Equal0~4_combout\ : std_logic;
SIGNAL \f1|Equal0~6_combout\ : std_logic;
SIGNAL \f1|Equal1~1_combout\ : std_logic;
SIGNAL \f1|Equal1~0_combout\ : std_logic;
SIGNAL \f1|Equal1~2_combout\ : std_logic;
SIGNAL \f1|clkOut~0_combout\ : std_logic;
SIGNAL \f1|clkOut~q\ : std_logic;
SIGNAL \engine|output[0]~5_combout\ : std_logic;
SIGNAL \engine|output[0]~6_combout\ : std_logic;
SIGNAL \t1|s_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \f1|s_count\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \Freq1s|s_count\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \engine|output\ : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_KEY <= KEY;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
ww_CLOCK_50 <= CLOCK_50;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \engine|output\(1),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \engine|output\(2),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\LEDG[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \engine|output\(0),
	devoe => ww_devoe,
	o => \LEDG[8]~output_o\);

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

-- Location: LCCOMB_X106_Y45_N2
\f1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~0_combout\ = \f1|s_count\(0) $ (VCC)
-- \f1|Add0~1\ = CARRY(\f1|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(0),
	datad => VCC,
	combout => \f1|Add0~0_combout\,
	cout => \f1|Add0~1\);

-- Location: FF_X106_Y45_N3
\f1|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(0));

-- Location: LCCOMB_X106_Y45_N4
\f1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~2_combout\ = (\f1|s_count\(1) & (!\f1|Add0~1\)) # (!\f1|s_count\(1) & ((\f1|Add0~1\) # (GND)))
-- \f1|Add0~3\ = CARRY((!\f1|Add0~1\) # (!\f1|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(1),
	datad => VCC,
	cin => \f1|Add0~1\,
	combout => \f1|Add0~2_combout\,
	cout => \f1|Add0~3\);

-- Location: FF_X106_Y45_N5
\f1|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(1));

-- Location: LCCOMB_X102_Y45_N2
\Freq1s|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|Add0~1_cout\ = CARRY((\f1|s_count\(0) & \f1|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(0),
	datab => \f1|s_count\(1),
	datad => VCC,
	cout => \Freq1s|Add0~1_cout\);

-- Location: LCCOMB_X102_Y45_N4
\Freq1s|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|Add0~2_combout\ = (\Freq1s|s_count\(2) & (!\Freq1s|Add0~1_cout\)) # (!\Freq1s|s_count\(2) & ((\Freq1s|Add0~1_cout\) # (GND)))
-- \Freq1s|Add0~3\ = CARRY((!\Freq1s|Add0~1_cout\) # (!\Freq1s|s_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Freq1s|s_count\(2),
	datad => VCC,
	cin => \Freq1s|Add0~1_cout\,
	combout => \Freq1s|Add0~2_combout\,
	cout => \Freq1s|Add0~3\);

-- Location: FF_X102_Y45_N5
\Freq1s|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Freq1s|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Freq1s|s_count\(2));

-- Location: LCCOMB_X102_Y45_N6
\Freq1s|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|Add0~4_combout\ = (\Freq1s|s_count\(3) & (\Freq1s|Add0~3\ $ (GND))) # (!\Freq1s|s_count\(3) & (!\Freq1s|Add0~3\ & VCC))
-- \Freq1s|Add0~5\ = CARRY((\Freq1s|s_count\(3) & !\Freq1s|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Freq1s|s_count\(3),
	datad => VCC,
	cin => \Freq1s|Add0~3\,
	combout => \Freq1s|Add0~4_combout\,
	cout => \Freq1s|Add0~5\);

-- Location: FF_X102_Y45_N7
\Freq1s|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Freq1s|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Freq1s|s_count\(3));

-- Location: LCCOMB_X102_Y45_N8
\Freq1s|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|Add0~6_combout\ = (\Freq1s|s_count\(4) & (!\Freq1s|Add0~5\)) # (!\Freq1s|s_count\(4) & ((\Freq1s|Add0~5\) # (GND)))
-- \Freq1s|Add0~7\ = CARRY((!\Freq1s|Add0~5\) # (!\Freq1s|s_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Freq1s|s_count\(4),
	datad => VCC,
	cin => \Freq1s|Add0~5\,
	combout => \Freq1s|Add0~6_combout\,
	cout => \Freq1s|Add0~7\);

-- Location: FF_X102_Y45_N9
\Freq1s|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Freq1s|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Freq1s|s_count\(4));

-- Location: LCCOMB_X102_Y45_N10
\Freq1s|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|Add0~8_combout\ = (\Freq1s|s_count\(5) & (\Freq1s|Add0~7\ $ (GND))) # (!\Freq1s|s_count\(5) & (!\Freq1s|Add0~7\ & VCC))
-- \Freq1s|Add0~9\ = CARRY((\Freq1s|s_count\(5) & !\Freq1s|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Freq1s|s_count\(5),
	datad => VCC,
	cin => \Freq1s|Add0~7\,
	combout => \Freq1s|Add0~8_combout\,
	cout => \Freq1s|Add0~9\);

-- Location: FF_X102_Y45_N11
\Freq1s|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Freq1s|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Freq1s|s_count\(5));

-- Location: LCCOMB_X102_Y45_N12
\Freq1s|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|Add0~10_combout\ = (\Freq1s|s_count\(6) & (!\Freq1s|Add0~9\)) # (!\Freq1s|s_count\(6) & ((\Freq1s|Add0~9\) # (GND)))
-- \Freq1s|Add0~11\ = CARRY((!\Freq1s|Add0~9\) # (!\Freq1s|s_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Freq1s|s_count\(6),
	datad => VCC,
	cin => \Freq1s|Add0~9\,
	combout => \Freq1s|Add0~10_combout\,
	cout => \Freq1s|Add0~11\);

-- Location: FF_X102_Y45_N13
\Freq1s|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Freq1s|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Freq1s|s_count\(6));

-- Location: LCCOMB_X102_Y45_N14
\Freq1s|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|Add0~12_combout\ = (\Freq1s|s_count\(7) & (\Freq1s|Add0~11\ $ (GND))) # (!\Freq1s|s_count\(7) & (!\Freq1s|Add0~11\ & VCC))
-- \Freq1s|Add0~13\ = CARRY((\Freq1s|s_count\(7) & !\Freq1s|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Freq1s|s_count\(7),
	datad => VCC,
	cin => \Freq1s|Add0~11\,
	combout => \Freq1s|Add0~12_combout\,
	cout => \Freq1s|Add0~13\);

-- Location: LCCOMB_X102_Y45_N16
\Freq1s|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|Add0~14_combout\ = (\Freq1s|s_count\(8) & (!\Freq1s|Add0~13\)) # (!\Freq1s|s_count\(8) & ((\Freq1s|Add0~13\) # (GND)))
-- \Freq1s|Add0~15\ = CARRY((!\Freq1s|Add0~13\) # (!\Freq1s|s_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Freq1s|s_count\(8),
	datad => VCC,
	cin => \Freq1s|Add0~13\,
	combout => \Freq1s|Add0~14_combout\,
	cout => \Freq1s|Add0~15\);

-- Location: FF_X102_Y45_N17
\Freq1s|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Freq1s|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Freq1s|s_count\(8));

-- Location: LCCOMB_X102_Y45_N18
\Freq1s|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|Add0~16_combout\ = (\Freq1s|s_count\(9) & (\Freq1s|Add0~15\ $ (GND))) # (!\Freq1s|s_count\(9) & (!\Freq1s|Add0~15\ & VCC))
-- \Freq1s|Add0~17\ = CARRY((\Freq1s|s_count\(9) & !\Freq1s|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Freq1s|s_count\(9),
	datad => VCC,
	cin => \Freq1s|Add0~15\,
	combout => \Freq1s|Add0~16_combout\,
	cout => \Freq1s|Add0~17\);

-- Location: FF_X102_Y45_N19
\Freq1s|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Freq1s|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Freq1s|s_count\(9));

-- Location: LCCOMB_X102_Y45_N20
\Freq1s|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|Add0~18_combout\ = (\Freq1s|s_count\(10) & (!\Freq1s|Add0~17\)) # (!\Freq1s|s_count\(10) & ((\Freq1s|Add0~17\) # (GND)))
-- \Freq1s|Add0~19\ = CARRY((!\Freq1s|Add0~17\) # (!\Freq1s|s_count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Freq1s|s_count\(10),
	datad => VCC,
	cin => \Freq1s|Add0~17\,
	combout => \Freq1s|Add0~18_combout\,
	cout => \Freq1s|Add0~19\);

-- Location: FF_X102_Y45_N21
\Freq1s|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Freq1s|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Freq1s|s_count\(10));

-- Location: LCCOMB_X102_Y45_N22
\Freq1s|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|Add0~20_combout\ = (\Freq1s|s_count\(11) & (\Freq1s|Add0~19\ $ (GND))) # (!\Freq1s|s_count\(11) & (!\Freq1s|Add0~19\ & VCC))
-- \Freq1s|Add0~21\ = CARRY((\Freq1s|s_count\(11) & !\Freq1s|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Freq1s|s_count\(11),
	datad => VCC,
	cin => \Freq1s|Add0~19\,
	combout => \Freq1s|Add0~20_combout\,
	cout => \Freq1s|Add0~21\);

-- Location: FF_X102_Y45_N23
\Freq1s|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Freq1s|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Freq1s|s_count\(11));

-- Location: LCCOMB_X102_Y45_N24
\Freq1s|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|Add0~22_combout\ = (\Freq1s|s_count\(12) & (!\Freq1s|Add0~21\)) # (!\Freq1s|s_count\(12) & ((\Freq1s|Add0~21\) # (GND)))
-- \Freq1s|Add0~23\ = CARRY((!\Freq1s|Add0~21\) # (!\Freq1s|s_count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Freq1s|s_count\(12),
	datad => VCC,
	cin => \Freq1s|Add0~21\,
	combout => \Freq1s|Add0~22_combout\,
	cout => \Freq1s|Add0~23\);

-- Location: LCCOMB_X103_Y44_N8
\Freq1s|s_count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|s_count~6_combout\ = (!\Freq1s|Equal0~9_combout\ & \Freq1s|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Freq1s|Equal0~9_combout\,
	datac => \Freq1s|Add0~22_combout\,
	combout => \Freq1s|s_count~6_combout\);

-- Location: FF_X103_Y44_N9
\Freq1s|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Freq1s|s_count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Freq1s|s_count\(12));

-- Location: LCCOMB_X102_Y45_N26
\Freq1s|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|Add0~24_combout\ = (\Freq1s|s_count\(13) & (\Freq1s|Add0~23\ $ (GND))) # (!\Freq1s|s_count\(13) & (!\Freq1s|Add0~23\ & VCC))
-- \Freq1s|Add0~25\ = CARRY((\Freq1s|s_count\(13) & !\Freq1s|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Freq1s|s_count\(13),
	datad => VCC,
	cin => \Freq1s|Add0~23\,
	combout => \Freq1s|Add0~24_combout\,
	cout => \Freq1s|Add0~25\);

-- Location: LCCOMB_X103_Y44_N26
\Freq1s|s_count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|s_count~5_combout\ = (!\Freq1s|Equal0~9_combout\ & \Freq1s|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Freq1s|Equal0~9_combout\,
	datac => \Freq1s|Add0~24_combout\,
	combout => \Freq1s|s_count~5_combout\);

-- Location: FF_X103_Y44_N27
\Freq1s|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Freq1s|s_count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Freq1s|s_count\(13));

-- Location: LCCOMB_X102_Y45_N28
\Freq1s|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|Add0~26_combout\ = (\Freq1s|s_count\(14) & (!\Freq1s|Add0~25\)) # (!\Freq1s|s_count\(14) & ((\Freq1s|Add0~25\) # (GND)))
-- \Freq1s|Add0~27\ = CARRY((!\Freq1s|Add0~25\) # (!\Freq1s|s_count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Freq1s|s_count\(14),
	datad => VCC,
	cin => \Freq1s|Add0~25\,
	combout => \Freq1s|Add0~26_combout\,
	cout => \Freq1s|Add0~27\);

-- Location: LCCOMB_X101_Y44_N14
\Freq1s|s_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|s_count~4_combout\ = (\Freq1s|Add0~26_combout\ & !\Freq1s|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Freq1s|Add0~26_combout\,
	datad => \Freq1s|Equal0~9_combout\,
	combout => \Freq1s|s_count~4_combout\);

-- Location: FF_X101_Y44_N15
\Freq1s|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Freq1s|s_count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Freq1s|s_count\(14));

-- Location: LCCOMB_X102_Y45_N30
\Freq1s|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|Add0~28_combout\ = (\Freq1s|s_count\(15) & (\Freq1s|Add0~27\ $ (GND))) # (!\Freq1s|s_count\(15) & (!\Freq1s|Add0~27\ & VCC))
-- \Freq1s|Add0~29\ = CARRY((\Freq1s|s_count\(15) & !\Freq1s|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Freq1s|s_count\(15),
	datad => VCC,
	cin => \Freq1s|Add0~27\,
	combout => \Freq1s|Add0~28_combout\,
	cout => \Freq1s|Add0~29\);

-- Location: LCCOMB_X103_Y44_N16
\Freq1s|s_count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|s_count~11_combout\ = (!\Freq1s|Equal0~9_combout\ & \Freq1s|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Freq1s|Equal0~9_combout\,
	datad => \Freq1s|Add0~28_combout\,
	combout => \Freq1s|s_count~11_combout\);

-- Location: FF_X103_Y44_N17
\Freq1s|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Freq1s|s_count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Freq1s|s_count\(15));

-- Location: LCCOMB_X102_Y44_N0
\Freq1s|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|Add0~30_combout\ = (\Freq1s|s_count\(16) & (!\Freq1s|Add0~29\)) # (!\Freq1s|s_count\(16) & ((\Freq1s|Add0~29\) # (GND)))
-- \Freq1s|Add0~31\ = CARRY((!\Freq1s|Add0~29\) # (!\Freq1s|s_count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Freq1s|s_count\(16),
	datad => VCC,
	cin => \Freq1s|Add0~29\,
	combout => \Freq1s|Add0~30_combout\,
	cout => \Freq1s|Add0~31\);

-- Location: FF_X102_Y44_N1
\Freq1s|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Freq1s|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Freq1s|s_count\(16));

-- Location: LCCOMB_X102_Y44_N2
\Freq1s|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|Add0~32_combout\ = (\Freq1s|s_count\(17) & (\Freq1s|Add0~31\ $ (GND))) # (!\Freq1s|s_count\(17) & (!\Freq1s|Add0~31\ & VCC))
-- \Freq1s|Add0~33\ = CARRY((\Freq1s|s_count\(17) & !\Freq1s|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Freq1s|s_count\(17),
	datad => VCC,
	cin => \Freq1s|Add0~31\,
	combout => \Freq1s|Add0~32_combout\,
	cout => \Freq1s|Add0~33\);

-- Location: LCCOMB_X103_Y44_N4
\Freq1s|s_count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|s_count~10_combout\ = (!\Freq1s|Equal0~9_combout\ & \Freq1s|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Freq1s|Equal0~9_combout\,
	datad => \Freq1s|Add0~32_combout\,
	combout => \Freq1s|s_count~10_combout\);

-- Location: FF_X103_Y44_N5
\Freq1s|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Freq1s|s_count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Freq1s|s_count\(17));

-- Location: LCCOMB_X102_Y44_N4
\Freq1s|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|Add0~34_combout\ = (\Freq1s|s_count\(18) & (!\Freq1s|Add0~33\)) # (!\Freq1s|s_count\(18) & ((\Freq1s|Add0~33\) # (GND)))
-- \Freq1s|Add0~35\ = CARRY((!\Freq1s|Add0~33\) # (!\Freq1s|s_count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Freq1s|s_count\(18),
	datad => VCC,
	cin => \Freq1s|Add0~33\,
	combout => \Freq1s|Add0~34_combout\,
	cout => \Freq1s|Add0~35\);

-- Location: FF_X102_Y44_N5
\Freq1s|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Freq1s|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Freq1s|s_count\(18));

-- Location: LCCOMB_X102_Y44_N6
\Freq1s|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|Add0~36_combout\ = (\Freq1s|s_count\(19) & (\Freq1s|Add0~35\ $ (GND))) # (!\Freq1s|s_count\(19) & (!\Freq1s|Add0~35\ & VCC))
-- \Freq1s|Add0~37\ = CARRY((\Freq1s|s_count\(19) & !\Freq1s|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Freq1s|s_count\(19),
	datad => VCC,
	cin => \Freq1s|Add0~35\,
	combout => \Freq1s|Add0~36_combout\,
	cout => \Freq1s|Add0~37\);

-- Location: LCCOMB_X101_Y44_N16
\Freq1s|s_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|s_count~3_combout\ = (\Freq1s|Add0~36_combout\ & !\Freq1s|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Freq1s|Add0~36_combout\,
	datad => \Freq1s|Equal0~9_combout\,
	combout => \Freq1s|s_count~3_combout\);

-- Location: FF_X101_Y44_N17
\Freq1s|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Freq1s|s_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Freq1s|s_count\(19));

-- Location: LCCOMB_X102_Y44_N8
\Freq1s|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|Add0~38_combout\ = (\Freq1s|s_count\(20) & (!\Freq1s|Add0~37\)) # (!\Freq1s|s_count\(20) & ((\Freq1s|Add0~37\) # (GND)))
-- \Freq1s|Add0~39\ = CARRY((!\Freq1s|Add0~37\) # (!\Freq1s|s_count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Freq1s|s_count\(20),
	datad => VCC,
	cin => \Freq1s|Add0~37\,
	combout => \Freq1s|Add0~38_combout\,
	cout => \Freq1s|Add0~39\);

-- Location: LCCOMB_X101_Y44_N22
\Freq1s|s_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|s_count~2_combout\ = (\Freq1s|Add0~38_combout\ & !\Freq1s|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Freq1s|Add0~38_combout\,
	datad => \Freq1s|Equal0~9_combout\,
	combout => \Freq1s|s_count~2_combout\);

-- Location: FF_X101_Y44_N23
\Freq1s|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Freq1s|s_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Freq1s|s_count\(20));

-- Location: LCCOMB_X102_Y44_N10
\Freq1s|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|Add0~40_combout\ = (\Freq1s|s_count\(21) & (\Freq1s|Add0~39\ $ (GND))) # (!\Freq1s|s_count\(21) & (!\Freq1s|Add0~39\ & VCC))
-- \Freq1s|Add0~41\ = CARRY((\Freq1s|s_count\(21) & !\Freq1s|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Freq1s|s_count\(21),
	datad => VCC,
	cin => \Freq1s|Add0~39\,
	combout => \Freq1s|Add0~40_combout\,
	cout => \Freq1s|Add0~41\);

-- Location: LCCOMB_X101_Y44_N28
\Freq1s|s_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|s_count~1_combout\ = (\Freq1s|Add0~40_combout\ & !\Freq1s|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Freq1s|Add0~40_combout\,
	datad => \Freq1s|Equal0~9_combout\,
	combout => \Freq1s|s_count~1_combout\);

-- Location: FF_X101_Y44_N29
\Freq1s|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Freq1s|s_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Freq1s|s_count\(21));

-- Location: LCCOMB_X102_Y44_N12
\Freq1s|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|Add0~42_combout\ = (\Freq1s|s_count\(22) & (!\Freq1s|Add0~41\)) # (!\Freq1s|s_count\(22) & ((\Freq1s|Add0~41\) # (GND)))
-- \Freq1s|Add0~43\ = CARRY((!\Freq1s|Add0~41\) # (!\Freq1s|s_count\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Freq1s|s_count\(22),
	datad => VCC,
	cin => \Freq1s|Add0~41\,
	combout => \Freq1s|Add0~42_combout\,
	cout => \Freq1s|Add0~43\);

-- Location: LCCOMB_X102_Y44_N30
\Freq1s|s_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|s_count~0_combout\ = (!\Freq1s|Equal0~9_combout\ & \Freq1s|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Freq1s|Equal0~9_combout\,
	datad => \Freq1s|Add0~42_combout\,
	combout => \Freq1s|s_count~0_combout\);

-- Location: FF_X102_Y44_N31
\Freq1s|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Freq1s|s_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Freq1s|s_count\(22));

-- Location: LCCOMB_X102_Y44_N14
\Freq1s|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|Add0~44_combout\ = (\Freq1s|s_count\(23) & (\Freq1s|Add0~43\ $ (GND))) # (!\Freq1s|s_count\(23) & (!\Freq1s|Add0~43\ & VCC))
-- \Freq1s|Add0~45\ = CARRY((\Freq1s|s_count\(23) & !\Freq1s|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Freq1s|s_count\(23),
	datad => VCC,
	cin => \Freq1s|Add0~43\,
	combout => \Freq1s|Add0~44_combout\,
	cout => \Freq1s|Add0~45\);

-- Location: LCCOMB_X103_Y44_N6
\Freq1s|s_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|s_count~9_combout\ = (!\Freq1s|Equal0~9_combout\ & \Freq1s|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Freq1s|Equal0~9_combout\,
	datad => \Freq1s|Add0~44_combout\,
	combout => \Freq1s|s_count~9_combout\);

-- Location: FF_X103_Y44_N7
\Freq1s|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Freq1s|s_count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Freq1s|s_count\(23));

-- Location: LCCOMB_X102_Y44_N16
\Freq1s|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|Add0~46_combout\ = (\Freq1s|s_count\(24) & (!\Freq1s|Add0~45\)) # (!\Freq1s|s_count\(24) & ((\Freq1s|Add0~45\) # (GND)))
-- \Freq1s|Add0~47\ = CARRY((!\Freq1s|Add0~45\) # (!\Freq1s|s_count\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Freq1s|s_count\(24),
	datad => VCC,
	cin => \Freq1s|Add0~45\,
	combout => \Freq1s|Add0~46_combout\,
	cout => \Freq1s|Add0~47\);

-- Location: FF_X102_Y44_N17
\Freq1s|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Freq1s|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Freq1s|s_count\(24));

-- Location: LCCOMB_X102_Y44_N18
\Freq1s|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|Add0~48_combout\ = (\Freq1s|s_count\(25) & (\Freq1s|Add0~47\ $ (GND))) # (!\Freq1s|s_count\(25) & (!\Freq1s|Add0~47\ & VCC))
-- \Freq1s|Add0~49\ = CARRY((\Freq1s|s_count\(25) & !\Freq1s|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Freq1s|s_count\(25),
	datad => VCC,
	cin => \Freq1s|Add0~47\,
	combout => \Freq1s|Add0~48_combout\,
	cout => \Freq1s|Add0~49\);

-- Location: LCCOMB_X103_Y44_N20
\Freq1s|s_count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|s_count~8_combout\ = (!\Freq1s|Equal0~9_combout\ & \Freq1s|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Freq1s|Equal0~9_combout\,
	datad => \Freq1s|Add0~48_combout\,
	combout => \Freq1s|s_count~8_combout\);

-- Location: FF_X103_Y44_N21
\Freq1s|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Freq1s|s_count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Freq1s|s_count\(25));

-- Location: LCCOMB_X103_Y44_N22
\Freq1s|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|Equal0~7_combout\ = (\Freq1s|s_count\(25) & (!\Freq1s|s_count\(18) & (!\Freq1s|s_count\(24) & \Freq1s|s_count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Freq1s|s_count\(25),
	datab => \Freq1s|s_count\(18),
	datac => \Freq1s|s_count\(24),
	datad => \Freq1s|s_count\(23),
	combout => \Freq1s|Equal0~7_combout\);

-- Location: LCCOMB_X103_Y44_N24
\Freq1s|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|Equal0~8_combout\ = (!\Freq1s|s_count\(16) & (!\Freq1s|s_count\(11) & (\Freq1s|s_count\(17) & \Freq1s|s_count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Freq1s|s_count\(16),
	datab => \Freq1s|s_count\(11),
	datac => \Freq1s|s_count\(17),
	datad => \Freq1s|s_count\(15),
	combout => \Freq1s|Equal0~8_combout\);

-- Location: LCCOMB_X103_Y44_N10
\Freq1s|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|Equal0~9_combout\ = (\Freq1s|Equal0~7_combout\ & (\Freq1s|s_count\(6) & (\Freq1s|Equal0~8_combout\ & \Freq1s|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Freq1s|Equal0~7_combout\,
	datab => \Freq1s|s_count\(6),
	datac => \Freq1s|Equal0~8_combout\,
	datad => \Freq1s|Equal0~6_combout\,
	combout => \Freq1s|Equal0~9_combout\);

-- Location: LCCOMB_X103_Y45_N20
\Freq1s|s_count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|s_count~7_combout\ = (\Freq1s|Add0~12_combout\ & !\Freq1s|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Freq1s|Add0~12_combout\,
	datad => \Freq1s|Equal0~9_combout\,
	combout => \Freq1s|s_count~7_combout\);

-- Location: FF_X103_Y45_N21
\Freq1s|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Freq1s|s_count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Freq1s|s_count\(7));

-- Location: LCCOMB_X102_Y45_N0
\Freq1s|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|Equal0~5_combout\ = (\Freq1s|s_count\(5) & (\Freq1s|s_count\(4) & (!\Freq1s|s_count\(7) & !\Freq1s|s_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Freq1s|s_count\(5),
	datab => \Freq1s|s_count\(4),
	datac => \Freq1s|s_count\(7),
	datad => \Freq1s|s_count\(8),
	combout => \Freq1s|Equal0~5_combout\);

-- Location: LCCOMB_X101_Y44_N4
\Freq1s|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|Equal0~2_combout\ = (\Freq1s|s_count\(20) & (\Freq1s|s_count\(21) & (\Freq1s|s_count\(14) & \Freq1s|s_count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Freq1s|s_count\(20),
	datab => \Freq1s|s_count\(21),
	datac => \Freq1s|s_count\(14),
	datad => \Freq1s|s_count\(19),
	combout => \Freq1s|Equal0~2_combout\);

-- Location: LCCOMB_X101_Y44_N2
\Freq1s|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|Equal0~3_combout\ = (\Freq1s|s_count\(13) & (!\Freq1s|s_count\(9) & (\Freq1s|s_count\(12) & !\Freq1s|s_count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Freq1s|s_count\(13),
	datab => \Freq1s|s_count\(9),
	datac => \Freq1s|s_count\(12),
	datad => \Freq1s|s_count\(10),
	combout => \Freq1s|Equal0~3_combout\);

-- Location: LCCOMB_X102_Y44_N20
\Freq1s|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|Add0~50_combout\ = (\Freq1s|s_count\(26) & (!\Freq1s|Add0~49\)) # (!\Freq1s|s_count\(26) & ((\Freq1s|Add0~49\) # (GND)))
-- \Freq1s|Add0~51\ = CARRY((!\Freq1s|Add0~49\) # (!\Freq1s|s_count\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Freq1s|s_count\(26),
	datad => VCC,
	cin => \Freq1s|Add0~49\,
	combout => \Freq1s|Add0~50_combout\,
	cout => \Freq1s|Add0~51\);

-- Location: FF_X102_Y44_N21
\Freq1s|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Freq1s|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Freq1s|s_count\(26));

-- Location: LCCOMB_X102_Y44_N22
\Freq1s|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|Add0~52_combout\ = (\Freq1s|s_count\(27) & (\Freq1s|Add0~51\ $ (GND))) # (!\Freq1s|s_count\(27) & (!\Freq1s|Add0~51\ & VCC))
-- \Freq1s|Add0~53\ = CARRY((\Freq1s|s_count\(27) & !\Freq1s|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Freq1s|s_count\(27),
	datad => VCC,
	cin => \Freq1s|Add0~51\,
	combout => \Freq1s|Add0~52_combout\,
	cout => \Freq1s|Add0~53\);

-- Location: FF_X102_Y44_N23
\Freq1s|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Freq1s|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Freq1s|s_count\(27));

-- Location: LCCOMB_X102_Y44_N24
\Freq1s|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|Add0~54_combout\ = (\Freq1s|s_count\(28) & (!\Freq1s|Add0~53\)) # (!\Freq1s|s_count\(28) & ((\Freq1s|Add0~53\) # (GND)))
-- \Freq1s|Add0~55\ = CARRY((!\Freq1s|Add0~53\) # (!\Freq1s|s_count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Freq1s|s_count\(28),
	datad => VCC,
	cin => \Freq1s|Add0~53\,
	combout => \Freq1s|Add0~54_combout\,
	cout => \Freq1s|Add0~55\);

-- Location: FF_X102_Y44_N25
\Freq1s|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Freq1s|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Freq1s|s_count\(28));

-- Location: LCCOMB_X101_Y44_N26
\Freq1s|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|Equal0~1_combout\ = (\Freq1s|s_count\(22) & (!\Freq1s|s_count\(28) & (!\Freq1s|s_count\(26) & !\Freq1s|s_count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Freq1s|s_count\(22),
	datab => \Freq1s|s_count\(28),
	datac => \Freq1s|s_count\(26),
	datad => \Freq1s|s_count\(27),
	combout => \Freq1s|Equal0~1_combout\);

-- Location: LCCOMB_X102_Y44_N26
\Freq1s|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|Add0~56_combout\ = (\Freq1s|s_count\(29) & (\Freq1s|Add0~55\ $ (GND))) # (!\Freq1s|s_count\(29) & (!\Freq1s|Add0~55\ & VCC))
-- \Freq1s|Add0~57\ = CARRY((\Freq1s|s_count\(29) & !\Freq1s|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Freq1s|s_count\(29),
	datad => VCC,
	cin => \Freq1s|Add0~55\,
	combout => \Freq1s|Add0~56_combout\,
	cout => \Freq1s|Add0~57\);

-- Location: FF_X102_Y44_N27
\Freq1s|s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Freq1s|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Freq1s|s_count\(29));

-- Location: LCCOMB_X102_Y44_N28
\Freq1s|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|Add0~58_combout\ = \Freq1s|Add0~57\ $ (\Freq1s|s_count\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Freq1s|s_count\(30),
	cin => \Freq1s|Add0~57\,
	combout => \Freq1s|Add0~58_combout\);

-- Location: FF_X102_Y44_N29
\Freq1s|s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Freq1s|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Freq1s|s_count\(30));

-- Location: LCCOMB_X101_Y44_N24
\Freq1s|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|Equal0~0_combout\ = (!\Freq1s|s_count\(30) & (!\Freq1s|s_count\(29) & (\f1|s_count\(1) & \f1|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Freq1s|s_count\(30),
	datab => \Freq1s|s_count\(29),
	datac => \f1|s_count\(1),
	datad => \f1|s_count\(0),
	combout => \Freq1s|Equal0~0_combout\);

-- Location: LCCOMB_X101_Y44_N12
\Freq1s|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|Equal0~4_combout\ = (\Freq1s|Equal0~2_combout\ & (\Freq1s|Equal0~3_combout\ & (\Freq1s|Equal0~1_combout\ & \Freq1s|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Freq1s|Equal0~2_combout\,
	datab => \Freq1s|Equal0~3_combout\,
	datac => \Freq1s|Equal0~1_combout\,
	datad => \Freq1s|Equal0~0_combout\,
	combout => \Freq1s|Equal0~4_combout\);

-- Location: LCCOMB_X101_Y44_N6
\Freq1s|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|Equal0~6_combout\ = (\Freq1s|s_count\(2) & (\Freq1s|s_count\(3) & (\Freq1s|Equal0~5_combout\ & \Freq1s|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Freq1s|s_count\(2),
	datab => \Freq1s|s_count\(3),
	datac => \Freq1s|Equal0~5_combout\,
	datad => \Freq1s|Equal0~4_combout\,
	combout => \Freq1s|Equal0~6_combout\);

-- Location: LCCOMB_X103_Y44_N12
\Freq1s|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|Equal1~0_combout\ = (\Freq1s|s_count\(24) & (\Freq1s|s_count\(18) & (!\Freq1s|s_count\(25) & !\Freq1s|s_count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Freq1s|s_count\(24),
	datab => \Freq1s|s_count\(18),
	datac => \Freq1s|s_count\(25),
	datad => \Freq1s|s_count\(23),
	combout => \Freq1s|Equal1~0_combout\);

-- Location: LCCOMB_X103_Y44_N14
\Freq1s|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|Equal1~1_combout\ = (\Freq1s|s_count\(16) & (\Freq1s|s_count\(11) & (!\Freq1s|s_count\(17) & !\Freq1s|s_count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Freq1s|s_count\(16),
	datab => \Freq1s|s_count\(11),
	datac => \Freq1s|s_count\(17),
	datad => \Freq1s|s_count\(15),
	combout => \Freq1s|Equal1~1_combout\);

-- Location: LCCOMB_X103_Y44_N28
\Freq1s|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|Equal1~2_combout\ = (\Freq1s|Equal1~0_combout\ & (\Freq1s|Equal1~1_combout\ & !\Freq1s|s_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Freq1s|Equal1~0_combout\,
	datac => \Freq1s|Equal1~1_combout\,
	datad => \Freq1s|s_count\(6),
	combout => \Freq1s|Equal1~2_combout\);

-- Location: LCCOMB_X103_Y44_N30
\Freq1s|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|clkOut~0_combout\ = (\Freq1s|Equal0~9_combout\) # ((\Freq1s|clkOut~q\ & ((!\Freq1s|Equal1~2_combout\) # (!\Freq1s|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Freq1s|Equal0~6_combout\,
	datab => \Freq1s|Equal1~2_combout\,
	datac => \Freq1s|clkOut~q\,
	datad => \Freq1s|Equal0~9_combout\,
	combout => \Freq1s|clkOut~0_combout\);

-- Location: LCCOMB_X103_Y44_N18
\Freq1s|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Freq1s|clkOut~feeder_combout\ = \Freq1s|clkOut~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Freq1s|clkOut~0_combout\,
	combout => \Freq1s|clkOut~feeder_combout\);

-- Location: FF_X103_Y44_N19
\Freq1s|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Freq1s|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Freq1s|clkOut~q\);

-- Location: LCCOMB_X109_Y42_N16
\engine|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \engine|Equal0~9_combout\ = (!\t1|s_count\(2) & (!\t1|s_count\(3) & !\t1|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(2),
	datac => \t1|s_count\(3),
	datad => \t1|s_count\(1),
	combout => \engine|Equal0~9_combout\);

-- Location: LCCOMB_X105_Y42_N16
\engine|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \engine|Equal0~1_combout\ = (!\t1|s_count\(9) & (!\t1|s_count\(10) & (!\t1|s_count\(8) & !\t1|s_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(9),
	datab => \t1|s_count\(10),
	datac => \t1|s_count\(8),
	datad => \t1|s_count\(11),
	combout => \engine|Equal0~1_combout\);

-- Location: LCCOMB_X107_Y42_N10
\engine|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \engine|Equal0~0_combout\ = (!\t1|s_count\(4) & (!\t1|s_count\(7) & (!\t1|s_count\(6) & !\t1|s_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(4),
	datab => \t1|s_count\(7),
	datac => \t1|s_count\(6),
	datad => \t1|s_count\(5),
	combout => \engine|Equal0~0_combout\);

-- Location: LCCOMB_X105_Y42_N6
\engine|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \engine|Equal0~2_combout\ = (!\t1|s_count\(15) & (!\t1|s_count\(12) & (!\t1|s_count\(14) & !\t1|s_count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(15),
	datab => \t1|s_count\(12),
	datac => \t1|s_count\(14),
	datad => \t1|s_count\(13),
	combout => \engine|Equal0~2_combout\);

-- Location: LCCOMB_X106_Y42_N20
\engine|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \engine|Equal0~3_combout\ = (!\t1|s_count\(19) & (!\t1|s_count\(16) & (!\t1|s_count\(18) & !\t1|s_count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(19),
	datab => \t1|s_count\(16),
	datac => \t1|s_count\(18),
	datad => \t1|s_count\(17),
	combout => \engine|Equal0~3_combout\);

-- Location: LCCOMB_X106_Y42_N24
\engine|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \engine|Equal0~4_combout\ = (\engine|Equal0~1_combout\ & (\engine|Equal0~0_combout\ & (\engine|Equal0~2_combout\ & \engine|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \engine|Equal0~1_combout\,
	datab => \engine|Equal0~0_combout\,
	datac => \engine|Equal0~2_combout\,
	datad => \engine|Equal0~3_combout\,
	combout => \engine|Equal0~4_combout\);

-- Location: LCCOMB_X106_Y42_N6
\engine|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \engine|Equal0~10_combout\ = (\engine|Equal0~9_combout\ & (\engine|Equal0~8_combout\ & \engine|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \engine|Equal0~9_combout\,
	datac => \engine|Equal0~8_combout\,
	datad => \engine|Equal0~4_combout\,
	combout => \engine|Equal0~10_combout\);

-- Location: LCCOMB_X109_Y42_N28
\t1|s_count[0]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[0]~30_combout\ = (\t1|s_count\(0)) # ((\t1|s_count\(31)) # (!\engine|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(0),
	datab => \t1|s_count\(31),
	datac => \engine|Equal0~10_combout\,
	combout => \t1|s_count[0]~30_combout\);

-- Location: LCCOMB_X108_Y42_N0
\t1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~0_combout\ = \t1|s_count\(0) $ (VCC)
-- \t1|Add0~1\ = CARRY(\t1|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(0),
	datad => VCC,
	combout => \t1|Add0~0_combout\,
	cout => \t1|Add0~1\);

-- Location: LCCOMB_X109_Y42_N24
\t1|s_count[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[0]~31_combout\ = (!\t1|Equal0~1_combout\ & (\t1|Add0~0_combout\ & ((\t1|s_count[0]~30_combout\) # (!\KEY[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~1_combout\,
	datab => \t1|s_count[0]~30_combout\,
	datac => \t1|Add0~0_combout\,
	datad => \KEY[0]~input_o\,
	combout => \t1|s_count[0]~31_combout\);

-- Location: FF_X109_Y42_N25
\t1|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Freq1s|clkOut~q\,
	d => \t1|s_count[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(0));

-- Location: LCCOMB_X108_Y42_N2
\t1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~2_combout\ = (\t1|s_count\(1) & (!\t1|Add0~1\)) # (!\t1|s_count\(1) & ((\t1|Add0~1\) # (GND)))
-- \t1|Add0~3\ = CARRY((!\t1|Add0~1\) # (!\t1|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(1),
	datad => VCC,
	cin => \t1|Add0~1\,
	combout => \t1|Add0~2_combout\,
	cout => \t1|Add0~3\);

-- Location: LCCOMB_X109_Y42_N6
\t1|s_count[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[1]~27_combout\ = (!\t1|Equal0~1_combout\ & \t1|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|Equal0~1_combout\,
	datad => \t1|Add0~2_combout\,
	combout => \t1|s_count[1]~27_combout\);

-- Location: FF_X109_Y42_N7
\t1|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Freq1s|clkOut~q\,
	d => \t1|s_count[1]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(1));

-- Location: LCCOMB_X108_Y42_N4
\t1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~4_combout\ = (\t1|s_count\(2) & (\t1|Add0~3\ $ (GND))) # (!\t1|s_count\(2) & (!\t1|Add0~3\ & VCC))
-- \t1|Add0~5\ = CARRY((\t1|s_count\(2) & !\t1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(2),
	datad => VCC,
	cin => \t1|Add0~3\,
	combout => \t1|Add0~4_combout\,
	cout => \t1|Add0~5\);

-- Location: LCCOMB_X109_Y42_N14
\t1|s_count[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[2]~28_combout\ = (!\t1|Equal0~1_combout\ & \t1|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~1_combout\,
	datac => \t1|Add0~4_combout\,
	combout => \t1|s_count[2]~28_combout\);

-- Location: FF_X109_Y42_N15
\t1|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Freq1s|clkOut~q\,
	d => \t1|s_count[2]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(2));

-- Location: LCCOMB_X108_Y42_N6
\t1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~6_combout\ = (\t1|s_count\(3) & (!\t1|Add0~5\)) # (!\t1|s_count\(3) & ((\t1|Add0~5\) # (GND)))
-- \t1|Add0~7\ = CARRY((!\t1|Add0~5\) # (!\t1|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(3),
	datad => VCC,
	cin => \t1|Add0~5\,
	combout => \t1|Add0~6_combout\,
	cout => \t1|Add0~7\);

-- Location: LCCOMB_X109_Y42_N4
\t1|s_count[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[3]~29_combout\ = (!\t1|Equal0~1_combout\ & \t1|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|Equal0~1_combout\,
	datad => \t1|Add0~6_combout\,
	combout => \t1|s_count[3]~29_combout\);

-- Location: FF_X109_Y42_N5
\t1|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Freq1s|clkOut~q\,
	d => \t1|s_count[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(3));

-- Location: LCCOMB_X108_Y42_N8
\t1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~8_combout\ = (\t1|s_count\(4) & (\t1|Add0~7\ $ (GND))) # (!\t1|s_count\(4) & (!\t1|Add0~7\ & VCC))
-- \t1|Add0~9\ = CARRY((\t1|s_count\(4) & !\t1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(4),
	datad => VCC,
	cin => \t1|Add0~7\,
	combout => \t1|Add0~8_combout\,
	cout => \t1|Add0~9\);

-- Location: LCCOMB_X107_Y42_N30
\t1|s_count[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[4]~0_combout\ = (\t1|Add0~8_combout\ & !\t1|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|Add0~8_combout\,
	datad => \t1|Equal0~1_combout\,
	combout => \t1|s_count[4]~0_combout\);

-- Location: FF_X107_Y42_N31
\t1|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Freq1s|clkOut~q\,
	d => \t1|s_count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(4));

-- Location: LCCOMB_X108_Y42_N10
\t1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~10_combout\ = (\t1|s_count\(5) & (!\t1|Add0~9\)) # (!\t1|s_count\(5) & ((\t1|Add0~9\) # (GND)))
-- \t1|Add0~11\ = CARRY((!\t1|Add0~9\) # (!\t1|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(5),
	datad => VCC,
	cin => \t1|Add0~9\,
	combout => \t1|Add0~10_combout\,
	cout => \t1|Add0~11\);

-- Location: LCCOMB_X107_Y42_N28
\t1|s_count[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[5]~1_combout\ = (\t1|Add0~10_combout\ & !\t1|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|Add0~10_combout\,
	datad => \t1|Equal0~1_combout\,
	combout => \t1|s_count[5]~1_combout\);

-- Location: FF_X107_Y42_N29
\t1|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Freq1s|clkOut~q\,
	d => \t1|s_count[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(5));

-- Location: LCCOMB_X108_Y42_N12
\t1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~12_combout\ = (\t1|s_count\(6) & (\t1|Add0~11\ $ (GND))) # (!\t1|s_count\(6) & (!\t1|Add0~11\ & VCC))
-- \t1|Add0~13\ = CARRY((\t1|s_count\(6) & !\t1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(6),
	datad => VCC,
	cin => \t1|Add0~11\,
	combout => \t1|Add0~12_combout\,
	cout => \t1|Add0~13\);

-- Location: LCCOMB_X107_Y42_N26
\t1|s_count[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[6]~2_combout\ = (\t1|Add0~12_combout\ & !\t1|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|Add0~12_combout\,
	datad => \t1|Equal0~1_combout\,
	combout => \t1|s_count[6]~2_combout\);

-- Location: FF_X107_Y42_N27
\t1|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Freq1s|clkOut~q\,
	d => \t1|s_count[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(6));

-- Location: LCCOMB_X108_Y42_N14
\t1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~14_combout\ = (\t1|s_count\(7) & (!\t1|Add0~13\)) # (!\t1|s_count\(7) & ((\t1|Add0~13\) # (GND)))
-- \t1|Add0~15\ = CARRY((!\t1|Add0~13\) # (!\t1|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(7),
	datad => VCC,
	cin => \t1|Add0~13\,
	combout => \t1|Add0~14_combout\,
	cout => \t1|Add0~15\);

-- Location: LCCOMB_X107_Y42_N8
\t1|s_count[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[7]~3_combout\ = (\t1|Add0~14_combout\ & !\t1|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|Add0~14_combout\,
	datad => \t1|Equal0~1_combout\,
	combout => \t1|s_count[7]~3_combout\);

-- Location: FF_X107_Y42_N9
\t1|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Freq1s|clkOut~q\,
	d => \t1|s_count[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(7));

-- Location: LCCOMB_X108_Y42_N16
\t1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~16_combout\ = (\t1|s_count\(8) & (\t1|Add0~15\ $ (GND))) # (!\t1|s_count\(8) & (!\t1|Add0~15\ & VCC))
-- \t1|Add0~17\ = CARRY((\t1|s_count\(8) & !\t1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(8),
	datad => VCC,
	cin => \t1|Add0~15\,
	combout => \t1|Add0~16_combout\,
	cout => \t1|Add0~17\);

-- Location: LCCOMB_X105_Y42_N26
\t1|s_count[8]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[8]~4_combout\ = (!\t1|Equal0~1_combout\ & \t1|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|Equal0~1_combout\,
	datad => \t1|Add0~16_combout\,
	combout => \t1|s_count[8]~4_combout\);

-- Location: FF_X105_Y42_N27
\t1|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Freq1s|clkOut~q\,
	d => \t1|s_count[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(8));

-- Location: LCCOMB_X108_Y42_N18
\t1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~18_combout\ = (\t1|s_count\(9) & (!\t1|Add0~17\)) # (!\t1|s_count\(9) & ((\t1|Add0~17\) # (GND)))
-- \t1|Add0~19\ = CARRY((!\t1|Add0~17\) # (!\t1|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(9),
	datad => VCC,
	cin => \t1|Add0~17\,
	combout => \t1|Add0~18_combout\,
	cout => \t1|Add0~19\);

-- Location: LCCOMB_X105_Y42_N20
\t1|s_count[9]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[9]~5_combout\ = (!\t1|Equal0~1_combout\ & \t1|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|Equal0~1_combout\,
	datad => \t1|Add0~18_combout\,
	combout => \t1|s_count[9]~5_combout\);

-- Location: FF_X105_Y42_N21
\t1|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Freq1s|clkOut~q\,
	d => \t1|s_count[9]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(9));

-- Location: LCCOMB_X108_Y42_N20
\t1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~20_combout\ = (\t1|s_count\(10) & (\t1|Add0~19\ $ (GND))) # (!\t1|s_count\(10) & (!\t1|Add0~19\ & VCC))
-- \t1|Add0~21\ = CARRY((\t1|s_count\(10) & !\t1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(10),
	datad => VCC,
	cin => \t1|Add0~19\,
	combout => \t1|Add0~20_combout\,
	cout => \t1|Add0~21\);

-- Location: LCCOMB_X105_Y42_N8
\t1|s_count[10]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[10]~6_combout\ = (!\t1|Equal0~1_combout\ & \t1|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|Equal0~1_combout\,
	datad => \t1|Add0~20_combout\,
	combout => \t1|s_count[10]~6_combout\);

-- Location: FF_X105_Y42_N9
\t1|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Freq1s|clkOut~q\,
	d => \t1|s_count[10]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(10));

-- Location: LCCOMB_X108_Y42_N22
\t1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~22_combout\ = (\t1|s_count\(11) & (!\t1|Add0~21\)) # (!\t1|s_count\(11) & ((\t1|Add0~21\) # (GND)))
-- \t1|Add0~23\ = CARRY((!\t1|Add0~21\) # (!\t1|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(11),
	datad => VCC,
	cin => \t1|Add0~21\,
	combout => \t1|Add0~22_combout\,
	cout => \t1|Add0~23\);

-- Location: LCCOMB_X105_Y42_N12
\t1|s_count[11]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[11]~7_combout\ = (!\t1|Equal0~1_combout\ & \t1|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|Equal0~1_combout\,
	datad => \t1|Add0~22_combout\,
	combout => \t1|s_count[11]~7_combout\);

-- Location: FF_X105_Y42_N13
\t1|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Freq1s|clkOut~q\,
	d => \t1|s_count[11]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(11));

-- Location: LCCOMB_X108_Y42_N24
\t1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~24_combout\ = (\t1|s_count\(12) & (\t1|Add0~23\ $ (GND))) # (!\t1|s_count\(12) & (!\t1|Add0~23\ & VCC))
-- \t1|Add0~25\ = CARRY((\t1|s_count\(12) & !\t1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(12),
	datad => VCC,
	cin => \t1|Add0~23\,
	combout => \t1|Add0~24_combout\,
	cout => \t1|Add0~25\);

-- Location: LCCOMB_X105_Y42_N24
\t1|s_count[12]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[12]~8_combout\ = (\t1|Add0~24_combout\ & !\t1|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Add0~24_combout\,
	datad => \t1|Equal0~1_combout\,
	combout => \t1|s_count[12]~8_combout\);

-- Location: FF_X105_Y42_N25
\t1|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Freq1s|clkOut~q\,
	d => \t1|s_count[12]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(12));

-- Location: LCCOMB_X108_Y42_N26
\t1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~26_combout\ = (\t1|s_count\(13) & (!\t1|Add0~25\)) # (!\t1|s_count\(13) & ((\t1|Add0~25\) # (GND)))
-- \t1|Add0~27\ = CARRY((!\t1|Add0~25\) # (!\t1|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(13),
	datad => VCC,
	cin => \t1|Add0~25\,
	combout => \t1|Add0~26_combout\,
	cout => \t1|Add0~27\);

-- Location: LCCOMB_X105_Y42_N0
\t1|s_count[13]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[13]~9_combout\ = (!\t1|Equal0~1_combout\ & \t1|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|Equal0~1_combout\,
	datad => \t1|Add0~26_combout\,
	combout => \t1|s_count[13]~9_combout\);

-- Location: FF_X105_Y42_N1
\t1|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Freq1s|clkOut~q\,
	d => \t1|s_count[13]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(13));

-- Location: LCCOMB_X108_Y42_N28
\t1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~28_combout\ = (\t1|s_count\(14) & (\t1|Add0~27\ $ (GND))) # (!\t1|s_count\(14) & (!\t1|Add0~27\ & VCC))
-- \t1|Add0~29\ = CARRY((\t1|s_count\(14) & !\t1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(14),
	datad => VCC,
	cin => \t1|Add0~27\,
	combout => \t1|Add0~28_combout\,
	cout => \t1|Add0~29\);

-- Location: LCCOMB_X105_Y42_N4
\t1|s_count[14]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[14]~10_combout\ = (\t1|Add0~28_combout\ & !\t1|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|Add0~28_combout\,
	datad => \t1|Equal0~1_combout\,
	combout => \t1|s_count[14]~10_combout\);

-- Location: FF_X105_Y42_N5
\t1|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Freq1s|clkOut~q\,
	d => \t1|s_count[14]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(14));

-- Location: LCCOMB_X108_Y42_N30
\t1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~30_combout\ = (\t1|s_count\(15) & (!\t1|Add0~29\)) # (!\t1|s_count\(15) & ((\t1|Add0~29\) # (GND)))
-- \t1|Add0~31\ = CARRY((!\t1|Add0~29\) # (!\t1|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(15),
	datad => VCC,
	cin => \t1|Add0~29\,
	combout => \t1|Add0~30_combout\,
	cout => \t1|Add0~31\);

-- Location: LCCOMB_X105_Y42_N14
\t1|s_count[15]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[15]~11_combout\ = (!\t1|Equal0~1_combout\ & \t1|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|Equal0~1_combout\,
	datad => \t1|Add0~30_combout\,
	combout => \t1|s_count[15]~11_combout\);

-- Location: FF_X105_Y42_N15
\t1|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Freq1s|clkOut~q\,
	d => \t1|s_count[15]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(15));

-- Location: LCCOMB_X108_Y41_N0
\t1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~32_combout\ = (\t1|s_count\(16) & (\t1|Add0~31\ $ (GND))) # (!\t1|s_count\(16) & (!\t1|Add0~31\ & VCC))
-- \t1|Add0~33\ = CARRY((\t1|s_count\(16) & !\t1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(16),
	datad => VCC,
	cin => \t1|Add0~31\,
	combout => \t1|Add0~32_combout\,
	cout => \t1|Add0~33\);

-- Location: LCCOMB_X106_Y42_N16
\t1|s_count[16]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[16]~12_combout\ = (!\t1|Equal0~1_combout\ & \t1|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|Equal0~1_combout\,
	datad => \t1|Add0~32_combout\,
	combout => \t1|s_count[16]~12_combout\);

-- Location: FF_X106_Y42_N17
\t1|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Freq1s|clkOut~q\,
	d => \t1|s_count[16]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(16));

-- Location: LCCOMB_X108_Y41_N2
\t1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~34_combout\ = (\t1|s_count\(17) & (!\t1|Add0~33\)) # (!\t1|s_count\(17) & ((\t1|Add0~33\) # (GND)))
-- \t1|Add0~35\ = CARRY((!\t1|Add0~33\) # (!\t1|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(17),
	datad => VCC,
	cin => \t1|Add0~33\,
	combout => \t1|Add0~34_combout\,
	cout => \t1|Add0~35\);

-- Location: LCCOMB_X106_Y42_N10
\t1|s_count[17]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[17]~13_combout\ = (!\t1|Equal0~1_combout\ & \t1|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|Equal0~1_combout\,
	datad => \t1|Add0~34_combout\,
	combout => \t1|s_count[17]~13_combout\);

-- Location: FF_X106_Y42_N11
\t1|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Freq1s|clkOut~q\,
	d => \t1|s_count[17]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(17));

-- Location: LCCOMB_X108_Y41_N4
\t1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~36_combout\ = (\t1|s_count\(18) & (\t1|Add0~35\ $ (GND))) # (!\t1|s_count\(18) & (!\t1|Add0~35\ & VCC))
-- \t1|Add0~37\ = CARRY((\t1|s_count\(18) & !\t1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(18),
	datad => VCC,
	cin => \t1|Add0~35\,
	combout => \t1|Add0~36_combout\,
	cout => \t1|Add0~37\);

-- Location: LCCOMB_X106_Y42_N30
\t1|s_count[18]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[18]~14_combout\ = (!\t1|Equal0~1_combout\ & \t1|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|Equal0~1_combout\,
	datad => \t1|Add0~36_combout\,
	combout => \t1|s_count[18]~14_combout\);

-- Location: FF_X106_Y42_N31
\t1|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Freq1s|clkOut~q\,
	d => \t1|s_count[18]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(18));

-- Location: LCCOMB_X108_Y41_N6
\t1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~38_combout\ = (\t1|s_count\(19) & (!\t1|Add0~37\)) # (!\t1|s_count\(19) & ((\t1|Add0~37\) # (GND)))
-- \t1|Add0~39\ = CARRY((!\t1|Add0~37\) # (!\t1|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(19),
	datad => VCC,
	cin => \t1|Add0~37\,
	combout => \t1|Add0~38_combout\,
	cout => \t1|Add0~39\);

-- Location: LCCOMB_X107_Y42_N6
\t1|s_count[19]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[19]~15_combout\ = (!\t1|Equal0~1_combout\ & \t1|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|Equal0~1_combout\,
	datad => \t1|Add0~38_combout\,
	combout => \t1|s_count[19]~15_combout\);

-- Location: FF_X107_Y42_N7
\t1|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Freq1s|clkOut~q\,
	d => \t1|s_count[19]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(19));

-- Location: LCCOMB_X108_Y41_N8
\t1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~40_combout\ = (\t1|s_count\(20) & (\t1|Add0~39\ $ (GND))) # (!\t1|s_count\(20) & (!\t1|Add0~39\ & VCC))
-- \t1|Add0~41\ = CARRY((\t1|s_count\(20) & !\t1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(20),
	datad => VCC,
	cin => \t1|Add0~39\,
	combout => \t1|Add0~40_combout\,
	cout => \t1|Add0~41\);

-- Location: LCCOMB_X105_Y42_N2
\t1|s_count[20]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[20]~16_combout\ = (!\t1|Equal0~1_combout\ & \t1|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|Equal0~1_combout\,
	datad => \t1|Add0~40_combout\,
	combout => \t1|s_count[20]~16_combout\);

-- Location: FF_X105_Y42_N3
\t1|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Freq1s|clkOut~q\,
	d => \t1|s_count[20]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(20));

-- Location: LCCOMB_X108_Y41_N10
\t1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~42_combout\ = (\t1|s_count\(21) & (!\t1|Add0~41\)) # (!\t1|s_count\(21) & ((\t1|Add0~41\) # (GND)))
-- \t1|Add0~43\ = CARRY((!\t1|Add0~41\) # (!\t1|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(21),
	datad => VCC,
	cin => \t1|Add0~41\,
	combout => \t1|Add0~42_combout\,
	cout => \t1|Add0~43\);

-- Location: LCCOMB_X105_Y42_N28
\t1|s_count[21]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[21]~17_combout\ = (!\t1|Equal0~1_combout\ & \t1|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|Equal0~1_combout\,
	datad => \t1|Add0~42_combout\,
	combout => \t1|s_count[21]~17_combout\);

-- Location: FF_X105_Y42_N29
\t1|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Freq1s|clkOut~q\,
	d => \t1|s_count[21]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(21));

-- Location: LCCOMB_X108_Y41_N12
\t1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~44_combout\ = (\t1|s_count\(22) & (\t1|Add0~43\ $ (GND))) # (!\t1|s_count\(22) & (!\t1|Add0~43\ & VCC))
-- \t1|Add0~45\ = CARRY((\t1|s_count\(22) & !\t1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(22),
	datad => VCC,
	cin => \t1|Add0~43\,
	combout => \t1|Add0~44_combout\,
	cout => \t1|Add0~45\);

-- Location: LCCOMB_X105_Y42_N30
\t1|s_count[22]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[22]~18_combout\ = (!\t1|Equal0~1_combout\ & \t1|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|Equal0~1_combout\,
	datad => \t1|Add0~44_combout\,
	combout => \t1|s_count[22]~18_combout\);

-- Location: FF_X105_Y42_N31
\t1|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Freq1s|clkOut~q\,
	d => \t1|s_count[22]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(22));

-- Location: LCCOMB_X108_Y41_N14
\t1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~46_combout\ = (\t1|s_count\(23) & (!\t1|Add0~45\)) # (!\t1|s_count\(23) & ((\t1|Add0~45\) # (GND)))
-- \t1|Add0~47\ = CARRY((!\t1|Add0~45\) # (!\t1|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(23),
	datad => VCC,
	cin => \t1|Add0~45\,
	combout => \t1|Add0~46_combout\,
	cout => \t1|Add0~47\);

-- Location: LCCOMB_X105_Y42_N22
\t1|s_count[23]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[23]~19_combout\ = (!\t1|Equal0~1_combout\ & \t1|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|Equal0~1_combout\,
	datad => \t1|Add0~46_combout\,
	combout => \t1|s_count[23]~19_combout\);

-- Location: FF_X105_Y42_N23
\t1|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Freq1s|clkOut~q\,
	d => \t1|s_count[23]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(23));

-- Location: LCCOMB_X105_Y42_N10
\engine|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \engine|Equal0~5_combout\ = (!\t1|s_count\(22) & (!\t1|s_count\(21) & (!\t1|s_count\(23) & !\t1|s_count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(22),
	datab => \t1|s_count\(21),
	datac => \t1|s_count\(23),
	datad => \t1|s_count\(20),
	combout => \engine|Equal0~5_combout\);

-- Location: LCCOMB_X108_Y41_N16
\t1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~48_combout\ = (\t1|s_count\(24) & (\t1|Add0~47\ $ (GND))) # (!\t1|s_count\(24) & (!\t1|Add0~47\ & VCC))
-- \t1|Add0~49\ = CARRY((\t1|s_count\(24) & !\t1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(24),
	datad => VCC,
	cin => \t1|Add0~47\,
	combout => \t1|Add0~48_combout\,
	cout => \t1|Add0~49\);

-- Location: LCCOMB_X107_Y42_N24
\t1|s_count[24]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[24]~20_combout\ = (!\t1|Equal0~1_combout\ & \t1|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|Equal0~1_combout\,
	datad => \t1|Add0~48_combout\,
	combout => \t1|s_count[24]~20_combout\);

-- Location: FF_X107_Y42_N25
\t1|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Freq1s|clkOut~q\,
	d => \t1|s_count[24]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(24));

-- Location: LCCOMB_X108_Y41_N18
\t1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~50_combout\ = (\t1|s_count\(25) & (!\t1|Add0~49\)) # (!\t1|s_count\(25) & ((\t1|Add0~49\) # (GND)))
-- \t1|Add0~51\ = CARRY((!\t1|Add0~49\) # (!\t1|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(25),
	datad => VCC,
	cin => \t1|Add0~49\,
	combout => \t1|Add0~50_combout\,
	cout => \t1|Add0~51\);

-- Location: LCCOMB_X107_Y42_N22
\t1|s_count[25]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[25]~21_combout\ = (!\t1|Equal0~1_combout\ & \t1|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|Equal0~1_combout\,
	datad => \t1|Add0~50_combout\,
	combout => \t1|s_count[25]~21_combout\);

-- Location: FF_X107_Y42_N23
\t1|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Freq1s|clkOut~q\,
	d => \t1|s_count[25]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(25));

-- Location: LCCOMB_X108_Y41_N20
\t1|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~52_combout\ = (\t1|s_count\(26) & (\t1|Add0~51\ $ (GND))) # (!\t1|s_count\(26) & (!\t1|Add0~51\ & VCC))
-- \t1|Add0~53\ = CARRY((\t1|s_count\(26) & !\t1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(26),
	datad => VCC,
	cin => \t1|Add0~51\,
	combout => \t1|Add0~52_combout\,
	cout => \t1|Add0~53\);

-- Location: LCCOMB_X107_Y42_N20
\t1|s_count[26]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[26]~22_combout\ = (\t1|Add0~52_combout\ & !\t1|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|Add0~52_combout\,
	datad => \t1|Equal0~1_combout\,
	combout => \t1|s_count[26]~22_combout\);

-- Location: FF_X107_Y42_N21
\t1|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Freq1s|clkOut~q\,
	d => \t1|s_count[26]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(26));

-- Location: LCCOMB_X108_Y41_N22
\t1|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~54_combout\ = (\t1|s_count\(27) & (!\t1|Add0~53\)) # (!\t1|s_count\(27) & ((\t1|Add0~53\) # (GND)))
-- \t1|Add0~55\ = CARRY((!\t1|Add0~53\) # (!\t1|s_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(27),
	datad => VCC,
	cin => \t1|Add0~53\,
	combout => \t1|Add0~54_combout\,
	cout => \t1|Add0~55\);

-- Location: LCCOMB_X107_Y42_N14
\t1|s_count[27]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[27]~23_combout\ = (\t1|Add0~54_combout\ & !\t1|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|Add0~54_combout\,
	datad => \t1|Equal0~1_combout\,
	combout => \t1|s_count[27]~23_combout\);

-- Location: FF_X107_Y42_N15
\t1|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Freq1s|clkOut~q\,
	d => \t1|s_count[27]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(27));

-- Location: LCCOMB_X107_Y42_N12
\engine|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \engine|Equal0~6_combout\ = (!\t1|s_count\(25) & (!\t1|s_count\(26) & (!\t1|s_count\(27) & !\t1|s_count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(25),
	datab => \t1|s_count\(26),
	datac => \t1|s_count\(27),
	datad => \t1|s_count\(24),
	combout => \engine|Equal0~6_combout\);

-- Location: LCCOMB_X108_Y41_N24
\t1|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~56_combout\ = (\t1|s_count\(28) & (\t1|Add0~55\ $ (GND))) # (!\t1|s_count\(28) & (!\t1|Add0~55\ & VCC))
-- \t1|Add0~57\ = CARRY((\t1|s_count\(28) & !\t1|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(28),
	datad => VCC,
	cin => \t1|Add0~55\,
	combout => \t1|Add0~56_combout\,
	cout => \t1|Add0~57\);

-- Location: LCCOMB_X107_Y42_N2
\t1|s_count[28]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[28]~24_combout\ = (\t1|Add0~56_combout\ & !\t1|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|Add0~56_combout\,
	datad => \t1|Equal0~1_combout\,
	combout => \t1|s_count[28]~24_combout\);

-- Location: FF_X107_Y42_N3
\t1|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Freq1s|clkOut~q\,
	d => \t1|s_count[28]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(28));

-- Location: LCCOMB_X108_Y41_N26
\t1|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~58_combout\ = (\t1|s_count\(29) & (!\t1|Add0~57\)) # (!\t1|s_count\(29) & ((\t1|Add0~57\) # (GND)))
-- \t1|Add0~59\ = CARRY((!\t1|Add0~57\) # (!\t1|s_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(29),
	datad => VCC,
	cin => \t1|Add0~57\,
	combout => \t1|Add0~58_combout\,
	cout => \t1|Add0~59\);

-- Location: LCCOMB_X107_Y42_N4
\t1|s_count[29]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[29]~25_combout\ = (!\t1|Equal0~1_combout\ & \t1|Add0~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|Equal0~1_combout\,
	datad => \t1|Add0~58_combout\,
	combout => \t1|s_count[29]~25_combout\);

-- Location: FF_X107_Y42_N5
\t1|s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Freq1s|clkOut~q\,
	d => \t1|s_count[29]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(29));

-- Location: LCCOMB_X108_Y41_N28
\t1|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~60_combout\ = (\t1|s_count\(30) & (\t1|Add0~59\ $ (GND))) # (!\t1|s_count\(30) & (!\t1|Add0~59\ & VCC))
-- \t1|Add0~61\ = CARRY((\t1|s_count\(30) & !\t1|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(30),
	datad => VCC,
	cin => \t1|Add0~59\,
	combout => \t1|Add0~60_combout\,
	cout => \t1|Add0~61\);

-- Location: LCCOMB_X107_Y42_N18
\t1|s_count[30]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[30]~26_combout\ = (\t1|Add0~60_combout\ & !\t1|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|Add0~60_combout\,
	datad => \t1|Equal0~1_combout\,
	combout => \t1|s_count[30]~26_combout\);

-- Location: FF_X107_Y42_N19
\t1|s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Freq1s|clkOut~q\,
	d => \t1|s_count[30]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(30));

-- Location: LCCOMB_X107_Y42_N16
\engine|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \engine|Equal0~7_combout\ = (!\t1|s_count\(30) & (!\t1|s_count\(29) & !\t1|s_count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t1|s_count\(30),
	datac => \t1|s_count\(29),
	datad => \t1|s_count\(28),
	combout => \engine|Equal0~7_combout\);

-- Location: LCCOMB_X106_Y42_N22
\engine|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \engine|Equal0~8_combout\ = (\engine|Equal0~5_combout\ & (\engine|Equal0~6_combout\ & \engine|Equal0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \engine|Equal0~5_combout\,
	datac => \engine|Equal0~6_combout\,
	datad => \engine|Equal0~7_combout\,
	combout => \engine|Equal0~8_combout\);

-- Location: LCCOMB_X109_Y42_N26
\t1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~0_combout\ = (!\t1|s_count\(0) & (\t1|s_count\(3) & (\t1|s_count\(1) & !\t1|s_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(0),
	datab => \t1|s_count\(3),
	datac => \t1|s_count\(1),
	datad => \t1|s_count\(2),
	combout => \t1|Equal0~0_combout\);

-- Location: LCCOMB_X109_Y42_N20
\t1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Equal0~1_combout\ = (\engine|Equal0~8_combout\ & (!\t1|s_count\(31) & (\t1|Equal0~0_combout\ & \engine|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \engine|Equal0~8_combout\,
	datab => \t1|s_count\(31),
	datac => \t1|Equal0~0_combout\,
	datad => \engine|Equal0~4_combout\,
	combout => \t1|Equal0~1_combout\);

-- Location: LCCOMB_X108_Y41_N30
\t1|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|Add0~62_combout\ = \t1|Add0~61\ $ (\t1|s_count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \t1|s_count\(31),
	cin => \t1|Add0~61\,
	combout => \t1|Add0~62_combout\);

-- Location: LCCOMB_X109_Y42_N8
\t1|s_count[31]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \t1|s_count[31]~32_combout\ = (!\t1|Equal0~1_combout\ & \t1|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|Equal0~1_combout\,
	datac => \t1|Add0~62_combout\,
	combout => \t1|s_count[31]~32_combout\);

-- Location: FF_X109_Y42_N9
\t1|s_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Freq1s|clkOut~q\,
	d => \t1|s_count[31]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1|s_count\(31));

-- Location: LCCOMB_X106_Y42_N14
\engine|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \engine|LessThan0~0_combout\ = (\engine|Equal0~9_combout\ & (!\t1|s_count\(0) & (\engine|Equal0~8_combout\ & \engine|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \engine|Equal0~9_combout\,
	datab => \t1|s_count\(0),
	datac => \engine|Equal0~8_combout\,
	datad => \engine|Equal0~4_combout\,
	combout => \engine|LessThan0~0_combout\);

-- Location: LCCOMB_X106_Y42_N2
\engine|output[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \engine|output[1]~0_combout\ = (\t1|s_count\(31) & (\KEY[0]~input_o\)) # (!\t1|s_count\(31) & (((\KEY[0]~input_o\ & \engine|LessThan0~0_combout\)) # (!\engine|Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \t1|s_count\(31),
	datac => \engine|LessThan0~0_combout\,
	datad => \engine|Equal0~10_combout\,
	combout => \engine|output[1]~0_combout\);

-- Location: LCCOMB_X109_Y42_N22
\engine|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \engine|LessThan2~0_combout\ = (\t1|s_count\(3) & ((\t1|s_count\(0)) # ((\t1|s_count\(2)) # (\t1|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t1|s_count\(3),
	datab => \t1|s_count\(0),
	datac => \t1|s_count\(2),
	datad => \t1|s_count\(1),
	combout => \engine|LessThan2~0_combout\);

-- Location: LCCOMB_X106_Y42_N28
\engine|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \engine|LessThan2~1_combout\ = (\engine|LessThan2~0_combout\) # ((!\engine|Equal0~4_combout\) # (!\engine|Equal0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \engine|LessThan2~0_combout\,
	datac => \engine|Equal0~8_combout\,
	datad => \engine|Equal0~4_combout\,
	combout => \engine|LessThan2~1_combout\);

-- Location: LCCOMB_X105_Y42_N18
\engine|output[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \engine|output[1]~1_combout\ = ((\t1|s_count\(31)) # (\engine|Equal0~10_combout\)) # (!\engine|LessThan2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \engine|LessThan2~1_combout\,
	datac => \t1|s_count\(31),
	datad => \engine|Equal0~10_combout\,
	combout => \engine|output[1]~1_combout\);

-- Location: LCCOMB_X106_Y42_N18
\engine|output[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \engine|output[1]~2_combout\ = (\KEY[0]~input_o\ & (!\t1|s_count\(31) & ((\engine|output[1]~1_combout\) # (\engine|LessThan0~0_combout\)))) # (!\KEY[0]~input_o\ & (\engine|output[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \engine|output[1]~1_combout\,
	datac => \engine|LessThan0~0_combout\,
	datad => \t1|s_count\(31),
	combout => \engine|output[1]~2_combout\);

-- Location: LCCOMB_X106_Y42_N12
\engine|output[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \engine|output\(1) = (\engine|output[1]~2_combout\ & ((!\engine|output[1]~0_combout\))) # (!\engine|output[1]~2_combout\ & (\engine|output\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \engine|output\(1),
	datab => \engine|output[1]~0_combout\,
	datad => \engine|output[1]~2_combout\,
	combout => \engine|output\(1));

-- Location: LCCOMB_X107_Y42_N0
\engine|output[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \engine|output[2]~4_combout\ = (!\t1|s_count\(31) & (((\KEY[0]~input_o\ & \engine|LessThan0~0_combout\)) # (!\engine|Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \engine|Equal0~10_combout\,
	datac => \t1|s_count\(31),
	datad => \engine|LessThan0~0_combout\,
	combout => \engine|output[2]~4_combout\);

-- Location: LCCOMB_X106_Y42_N4
\engine|output[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \engine|output[2]~3_combout\ = (!\t1|s_count\(31) & (\engine|LessThan2~1_combout\ & ((!\engine|LessThan0~0_combout\) # (!\KEY[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \t1|s_count\(31),
	datac => \engine|LessThan0~0_combout\,
	datad => \engine|LessThan2~1_combout\,
	combout => \engine|output[2]~3_combout\);

-- Location: LCCOMB_X106_Y42_N0
\engine|output[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \engine|output\(2) = (\engine|output[2]~4_combout\ & (\engine|output[2]~3_combout\)) # (!\engine|output[2]~4_combout\ & ((\engine|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \engine|output[2]~4_combout\,
	datac => \engine|output[2]~3_combout\,
	datad => \engine|output\(2),
	combout => \engine|output\(2));

-- Location: LCCOMB_X106_Y45_N6
\f1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~4_combout\ = (\f1|s_count\(2) & (\f1|Add0~3\ $ (GND))) # (!\f1|s_count\(2) & (!\f1|Add0~3\ & VCC))
-- \f1|Add0~5\ = CARRY((\f1|s_count\(2) & !\f1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(2),
	datad => VCC,
	cin => \f1|Add0~3\,
	combout => \f1|Add0~4_combout\,
	cout => \f1|Add0~5\);

-- Location: FF_X106_Y45_N7
\f1|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(2));

-- Location: LCCOMB_X106_Y45_N8
\f1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~6_combout\ = (\f1|s_count\(3) & (!\f1|Add0~5\)) # (!\f1|s_count\(3) & ((\f1|Add0~5\) # (GND)))
-- \f1|Add0~7\ = CARRY((!\f1|Add0~5\) # (!\f1|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(3),
	datad => VCC,
	cin => \f1|Add0~5\,
	combout => \f1|Add0~6_combout\,
	cout => \f1|Add0~7\);

-- Location: FF_X106_Y45_N9
\f1|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(3));

-- Location: LCCOMB_X106_Y45_N10
\f1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~8_combout\ = (\f1|s_count\(4) & (\f1|Add0~7\ $ (GND))) # (!\f1|s_count\(4) & (!\f1|Add0~7\ & VCC))
-- \f1|Add0~9\ = CARRY((\f1|s_count\(4) & !\f1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(4),
	datad => VCC,
	cin => \f1|Add0~7\,
	combout => \f1|Add0~8_combout\,
	cout => \f1|Add0~9\);

-- Location: FF_X106_Y45_N11
\f1|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(4));

-- Location: LCCOMB_X106_Y45_N12
\f1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~10_combout\ = (\f1|s_count\(5) & (!\f1|Add0~9\)) # (!\f1|s_count\(5) & ((\f1|Add0~9\) # (GND)))
-- \f1|Add0~11\ = CARRY((!\f1|Add0~9\) # (!\f1|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(5),
	datad => VCC,
	cin => \f1|Add0~9\,
	combout => \f1|Add0~10_combout\,
	cout => \f1|Add0~11\);

-- Location: FF_X106_Y45_N13
\f1|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(5));

-- Location: LCCOMB_X106_Y45_N14
\f1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~12_combout\ = (\f1|s_count\(6) & (\f1|Add0~11\ $ (GND))) # (!\f1|s_count\(6) & (!\f1|Add0~11\ & VCC))
-- \f1|Add0~13\ = CARRY((\f1|s_count\(6) & !\f1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(6),
	datad => VCC,
	cin => \f1|Add0~11\,
	combout => \f1|Add0~12_combout\,
	cout => \f1|Add0~13\);

-- Location: LCCOMB_X106_Y45_N16
\f1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~14_combout\ = (\f1|s_count\(7) & (!\f1|Add0~13\)) # (!\f1|s_count\(7) & ((\f1|Add0~13\) # (GND)))
-- \f1|Add0~15\ = CARRY((!\f1|Add0~13\) # (!\f1|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(7),
	datad => VCC,
	cin => \f1|Add0~13\,
	combout => \f1|Add0~14_combout\,
	cout => \f1|Add0~15\);

-- Location: FF_X106_Y45_N17
\f1|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(7));

-- Location: LCCOMB_X106_Y45_N18
\f1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~16_combout\ = (\f1|s_count\(8) & (\f1|Add0~15\ $ (GND))) # (!\f1|s_count\(8) & (!\f1|Add0~15\ & VCC))
-- \f1|Add0~17\ = CARRY((\f1|s_count\(8) & !\f1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(8),
	datad => VCC,
	cin => \f1|Add0~15\,
	combout => \f1|Add0~16_combout\,
	cout => \f1|Add0~17\);

-- Location: FF_X106_Y45_N19
\f1|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(8));

-- Location: LCCOMB_X106_Y45_N20
\f1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~18_combout\ = (\f1|s_count\(9) & (!\f1|Add0~17\)) # (!\f1|s_count\(9) & ((\f1|Add0~17\) # (GND)))
-- \f1|Add0~19\ = CARRY((!\f1|Add0~17\) # (!\f1|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(9),
	datad => VCC,
	cin => \f1|Add0~17\,
	combout => \f1|Add0~18_combout\,
	cout => \f1|Add0~19\);

-- Location: FF_X106_Y45_N21
\f1|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(9));

-- Location: LCCOMB_X106_Y45_N22
\f1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~20_combout\ = (\f1|s_count\(10) & (\f1|Add0~19\ $ (GND))) # (!\f1|s_count\(10) & (!\f1|Add0~19\ & VCC))
-- \f1|Add0~21\ = CARRY((\f1|s_count\(10) & !\f1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(10),
	datad => VCC,
	cin => \f1|Add0~19\,
	combout => \f1|Add0~20_combout\,
	cout => \f1|Add0~21\);

-- Location: FF_X106_Y45_N23
\f1|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(10));

-- Location: LCCOMB_X106_Y45_N24
\f1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~22_combout\ = (\f1|s_count\(11) & (!\f1|Add0~21\)) # (!\f1|s_count\(11) & ((\f1|Add0~21\) # (GND)))
-- \f1|Add0~23\ = CARRY((!\f1|Add0~21\) # (!\f1|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(11),
	datad => VCC,
	cin => \f1|Add0~21\,
	combout => \f1|Add0~22_combout\,
	cout => \f1|Add0~23\);

-- Location: LCCOMB_X105_Y44_N18
\f1|s_count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~6_combout\ = (!\f1|Equal0~9_combout\ & \f1|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|Equal0~9_combout\,
	datad => \f1|Add0~22_combout\,
	combout => \f1|s_count~6_combout\);

-- Location: FF_X105_Y44_N19
\f1|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|s_count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(11));

-- Location: LCCOMB_X106_Y45_N26
\f1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~24_combout\ = (\f1|s_count\(12) & (\f1|Add0~23\ $ (GND))) # (!\f1|s_count\(12) & (!\f1|Add0~23\ & VCC))
-- \f1|Add0~25\ = CARRY((\f1|s_count\(12) & !\f1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(12),
	datad => VCC,
	cin => \f1|Add0~23\,
	combout => \f1|Add0~24_combout\,
	cout => \f1|Add0~25\);

-- Location: LCCOMB_X105_Y44_N4
\f1|s_count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~5_combout\ = (\f1|Add0~24_combout\ & !\f1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|Add0~24_combout\,
	datac => \f1|Equal0~9_combout\,
	combout => \f1|s_count~5_combout\);

-- Location: FF_X105_Y44_N5
\f1|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|s_count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(12));

-- Location: LCCOMB_X106_Y45_N28
\f1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~26_combout\ = (\f1|s_count\(13) & (!\f1|Add0~25\)) # (!\f1|s_count\(13) & ((\f1|Add0~25\) # (GND)))
-- \f1|Add0~27\ = CARRY((!\f1|Add0~25\) # (!\f1|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(13),
	datad => VCC,
	cin => \f1|Add0~25\,
	combout => \f1|Add0~26_combout\,
	cout => \f1|Add0~27\);

-- Location: LCCOMB_X105_Y44_N26
\f1|s_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~4_combout\ = (!\f1|Equal0~9_combout\ & \f1|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|Equal0~9_combout\,
	datad => \f1|Add0~26_combout\,
	combout => \f1|s_count~4_combout\);

-- Location: FF_X105_Y44_N27
\f1|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|s_count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(13));

-- Location: LCCOMB_X106_Y45_N30
\f1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~28_combout\ = (\f1|s_count\(14) & (\f1|Add0~27\ $ (GND))) # (!\f1|s_count\(14) & (!\f1|Add0~27\ & VCC))
-- \f1|Add0~29\ = CARRY((\f1|s_count\(14) & !\f1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(14),
	datad => VCC,
	cin => \f1|Add0~27\,
	combout => \f1|Add0~28_combout\,
	cout => \f1|Add0~29\);

-- Location: LCCOMB_X107_Y44_N10
\f1|s_count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~11_combout\ = (\f1|Add0~28_combout\ & !\f1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|Add0~28_combout\,
	datad => \f1|Equal0~9_combout\,
	combout => \f1|s_count~11_combout\);

-- Location: FF_X107_Y44_N11
\f1|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|s_count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(14));

-- Location: LCCOMB_X106_Y44_N0
\f1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~30_combout\ = (\f1|s_count\(15) & (!\f1|Add0~29\)) # (!\f1|s_count\(15) & ((\f1|Add0~29\) # (GND)))
-- \f1|Add0~31\ = CARRY((!\f1|Add0~29\) # (!\f1|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(15),
	datad => VCC,
	cin => \f1|Add0~29\,
	combout => \f1|Add0~30_combout\,
	cout => \f1|Add0~31\);

-- Location: FF_X106_Y44_N1
\f1|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(15));

-- Location: LCCOMB_X106_Y44_N2
\f1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~32_combout\ = (\f1|s_count\(16) & (\f1|Add0~31\ $ (GND))) # (!\f1|s_count\(16) & (!\f1|Add0~31\ & VCC))
-- \f1|Add0~33\ = CARRY((\f1|s_count\(16) & !\f1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(16),
	datad => VCC,
	cin => \f1|Add0~31\,
	combout => \f1|Add0~32_combout\,
	cout => \f1|Add0~33\);

-- Location: LCCOMB_X107_Y44_N28
\f1|s_count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~10_combout\ = (\f1|Add0~32_combout\ & !\f1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|Add0~32_combout\,
	datad => \f1|Equal0~9_combout\,
	combout => \f1|s_count~10_combout\);

-- Location: FF_X107_Y44_N29
\f1|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|s_count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(16));

-- Location: LCCOMB_X106_Y44_N4
\f1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~34_combout\ = (\f1|s_count\(17) & (!\f1|Add0~33\)) # (!\f1|s_count\(17) & ((\f1|Add0~33\) # (GND)))
-- \f1|Add0~35\ = CARRY((!\f1|Add0~33\) # (!\f1|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(17),
	datad => VCC,
	cin => \f1|Add0~33\,
	combout => \f1|Add0~34_combout\,
	cout => \f1|Add0~35\);

-- Location: FF_X106_Y44_N5
\f1|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(17));

-- Location: LCCOMB_X106_Y44_N6
\f1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~36_combout\ = (\f1|s_count\(18) & (\f1|Add0~35\ $ (GND))) # (!\f1|s_count\(18) & (!\f1|Add0~35\ & VCC))
-- \f1|Add0~37\ = CARRY((\f1|s_count\(18) & !\f1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(18),
	datad => VCC,
	cin => \f1|Add0~35\,
	combout => \f1|Add0~36_combout\,
	cout => \f1|Add0~37\);

-- Location: LCCOMB_X105_Y44_N30
\f1|s_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~3_combout\ = (!\f1|Equal0~9_combout\ & \f1|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|Equal0~9_combout\,
	datad => \f1|Add0~36_combout\,
	combout => \f1|s_count~3_combout\);

-- Location: FF_X105_Y44_N31
\f1|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|s_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(18));

-- Location: LCCOMB_X106_Y44_N8
\f1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~38_combout\ = (\f1|s_count\(19) & (!\f1|Add0~37\)) # (!\f1|s_count\(19) & ((\f1|Add0~37\) # (GND)))
-- \f1|Add0~39\ = CARRY((!\f1|Add0~37\) # (!\f1|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(19),
	datad => VCC,
	cin => \f1|Add0~37\,
	combout => \f1|Add0~38_combout\,
	cout => \f1|Add0~39\);

-- Location: LCCOMB_X105_Y44_N20
\f1|s_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~2_combout\ = (!\f1|Equal0~9_combout\ & \f1|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|Equal0~9_combout\,
	datac => \f1|Add0~38_combout\,
	combout => \f1|s_count~2_combout\);

-- Location: FF_X105_Y44_N21
\f1|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|s_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(19));

-- Location: LCCOMB_X106_Y44_N10
\f1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~40_combout\ = (\f1|s_count\(20) & (\f1|Add0~39\ $ (GND))) # (!\f1|s_count\(20) & (!\f1|Add0~39\ & VCC))
-- \f1|Add0~41\ = CARRY((\f1|s_count\(20) & !\f1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(20),
	datad => VCC,
	cin => \f1|Add0~39\,
	combout => \f1|Add0~40_combout\,
	cout => \f1|Add0~41\);

-- Location: LCCOMB_X105_Y44_N10
\f1|s_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~1_combout\ = (!\f1|Equal0~9_combout\ & \f1|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|Equal0~9_combout\,
	datac => \f1|Add0~40_combout\,
	combout => \f1|s_count~1_combout\);

-- Location: FF_X105_Y44_N11
\f1|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|s_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(20));

-- Location: LCCOMB_X106_Y44_N12
\f1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~42_combout\ = (\f1|s_count\(21) & (!\f1|Add0~41\)) # (!\f1|s_count\(21) & ((\f1|Add0~41\) # (GND)))
-- \f1|Add0~43\ = CARRY((!\f1|Add0~41\) # (!\f1|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(21),
	datad => VCC,
	cin => \f1|Add0~41\,
	combout => \f1|Add0~42_combout\,
	cout => \f1|Add0~43\);

-- Location: LCCOMB_X105_Y44_N16
\f1|s_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~0_combout\ = (!\f1|Equal0~9_combout\ & \f1|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|Equal0~9_combout\,
	datac => \f1|Add0~42_combout\,
	combout => \f1|s_count~0_combout\);

-- Location: FF_X105_Y44_N17
\f1|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|s_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(21));

-- Location: LCCOMB_X106_Y44_N14
\f1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~44_combout\ = (\f1|s_count\(22) & (\f1|Add0~43\ $ (GND))) # (!\f1|s_count\(22) & (!\f1|Add0~43\ & VCC))
-- \f1|Add0~45\ = CARRY((\f1|s_count\(22) & !\f1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(22),
	datad => VCC,
	cin => \f1|Add0~43\,
	combout => \f1|Add0~44_combout\,
	cout => \f1|Add0~45\);

-- Location: LCCOMB_X107_Y44_N12
\f1|s_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~9_combout\ = (!\f1|Equal0~9_combout\ & \f1|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|Equal0~9_combout\,
	datad => \f1|Add0~44_combout\,
	combout => \f1|s_count~9_combout\);

-- Location: FF_X107_Y44_N13
\f1|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|s_count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(22));

-- Location: LCCOMB_X106_Y44_N16
\f1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~46_combout\ = (\f1|s_count\(23) & (!\f1|Add0~45\)) # (!\f1|s_count\(23) & ((\f1|Add0~45\) # (GND)))
-- \f1|Add0~47\ = CARRY((!\f1|Add0~45\) # (!\f1|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(23),
	datad => VCC,
	cin => \f1|Add0~45\,
	combout => \f1|Add0~46_combout\,
	cout => \f1|Add0~47\);

-- Location: FF_X106_Y44_N17
\f1|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(23));

-- Location: LCCOMB_X106_Y44_N18
\f1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~48_combout\ = (\f1|s_count\(24) & (\f1|Add0~47\ $ (GND))) # (!\f1|s_count\(24) & (!\f1|Add0~47\ & VCC))
-- \f1|Add0~49\ = CARRY((\f1|s_count\(24) & !\f1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(24),
	datad => VCC,
	cin => \f1|Add0~47\,
	combout => \f1|Add0~48_combout\,
	cout => \f1|Add0~49\);

-- Location: LCCOMB_X107_Y44_N14
\f1|s_count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~8_combout\ = (!\f1|Equal0~9_combout\ & \f1|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|Equal0~9_combout\,
	datad => \f1|Add0~48_combout\,
	combout => \f1|s_count~8_combout\);

-- Location: FF_X107_Y44_N15
\f1|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|s_count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(24));

-- Location: LCCOMB_X107_Y44_N30
\f1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~7_combout\ = (!\f1|s_count\(23) & (\f1|s_count\(24) & (!\f1|s_count\(17) & \f1|s_count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(23),
	datab => \f1|s_count\(24),
	datac => \f1|s_count\(17),
	datad => \f1|s_count\(22),
	combout => \f1|Equal0~7_combout\);

-- Location: LCCOMB_X107_Y44_N8
\f1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~8_combout\ = (!\f1|s_count\(15) & (\f1|s_count\(16) & (\f1|s_count\(14) & !\f1|s_count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(15),
	datab => \f1|s_count\(16),
	datac => \f1|s_count\(14),
	datad => \f1|s_count\(10),
	combout => \f1|Equal0~8_combout\);

-- Location: LCCOMB_X107_Y44_N2
\f1|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~9_combout\ = (\f1|Equal0~7_combout\ & (\f1|s_count\(5) & (\f1|Equal0~8_combout\ & \f1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|Equal0~7_combout\,
	datab => \f1|s_count\(5),
	datac => \f1|Equal0~8_combout\,
	datad => \f1|Equal0~6_combout\,
	combout => \f1|Equal0~9_combout\);

-- Location: LCCOMB_X107_Y44_N4
\f1|s_count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|s_count~7_combout\ = (!\f1|Equal0~9_combout\ & \f1|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|Equal0~9_combout\,
	datad => \f1|Add0~12_combout\,
	combout => \f1|s_count~7_combout\);

-- Location: FF_X107_Y44_N5
\f1|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|s_count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(6));

-- Location: LCCOMB_X107_Y44_N26
\f1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~5_combout\ = (\f1|s_count\(4) & (!\f1|s_count\(6) & (!\f1|s_count\(7) & !\f1|s_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(4),
	datab => \f1|s_count\(6),
	datac => \f1|s_count\(7),
	datad => \f1|s_count\(8),
	combout => \f1|Equal0~5_combout\);

-- Location: LCCOMB_X106_Y44_N20
\f1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~50_combout\ = (\f1|s_count\(25) & (!\f1|Add0~49\)) # (!\f1|s_count\(25) & ((\f1|Add0~49\) # (GND)))
-- \f1|Add0~51\ = CARRY((!\f1|Add0~49\) # (!\f1|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(25),
	datad => VCC,
	cin => \f1|Add0~49\,
	combout => \f1|Add0~50_combout\,
	cout => \f1|Add0~51\);

-- Location: FF_X106_Y44_N21
\f1|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(25));

-- Location: LCCOMB_X106_Y44_N22
\f1|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~52_combout\ = (\f1|s_count\(26) & (\f1|Add0~51\ $ (GND))) # (!\f1|s_count\(26) & (!\f1|Add0~51\ & VCC))
-- \f1|Add0~53\ = CARRY((\f1|s_count\(26) & !\f1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(26),
	datad => VCC,
	cin => \f1|Add0~51\,
	combout => \f1|Add0~52_combout\,
	cout => \f1|Add0~53\);

-- Location: FF_X106_Y44_N23
\f1|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(26));

-- Location: LCCOMB_X106_Y44_N24
\f1|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~54_combout\ = (\f1|s_count\(27) & (!\f1|Add0~53\)) # (!\f1|s_count\(27) & ((\f1|Add0~53\) # (GND)))
-- \f1|Add0~55\ = CARRY((!\f1|Add0~53\) # (!\f1|s_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(27),
	datad => VCC,
	cin => \f1|Add0~53\,
	combout => \f1|Add0~54_combout\,
	cout => \f1|Add0~55\);

-- Location: FF_X106_Y44_N25
\f1|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(27));

-- Location: LCCOMB_X106_Y44_N26
\f1|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~56_combout\ = (\f1|s_count\(28) & (\f1|Add0~55\ $ (GND))) # (!\f1|s_count\(28) & (!\f1|Add0~55\ & VCC))
-- \f1|Add0~57\ = CARRY((\f1|s_count\(28) & !\f1|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(28),
	datad => VCC,
	cin => \f1|Add0~55\,
	combout => \f1|Add0~56_combout\,
	cout => \f1|Add0~57\);

-- Location: FF_X106_Y44_N27
\f1|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(28));

-- Location: LCCOMB_X105_Y44_N22
\f1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~1_combout\ = (!\f1|s_count\(25) & (!\f1|s_count\(27) & (!\f1|s_count\(28) & !\f1|s_count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(25),
	datab => \f1|s_count\(27),
	datac => \f1|s_count\(28),
	datad => \f1|s_count\(26),
	combout => \f1|Equal0~1_combout\);

-- Location: LCCOMB_X105_Y44_N28
\f1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~2_combout\ = (\f1|s_count\(20) & (\f1|s_count\(21) & (\f1|s_count\(18) & \f1|s_count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(20),
	datab => \f1|s_count\(21),
	datac => \f1|s_count\(18),
	datad => \f1|s_count\(19),
	combout => \f1|Equal0~2_combout\);

-- Location: LCCOMB_X105_Y44_N8
\f1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~3_combout\ = (\f1|s_count\(13) & (\f1|s_count\(11) & (\f1|s_count\(12) & !\f1|s_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(13),
	datab => \f1|s_count\(11),
	datac => \f1|s_count\(12),
	datad => \f1|s_count\(9),
	combout => \f1|Equal0~3_combout\);

-- Location: LCCOMB_X106_Y44_N28
\f1|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~58_combout\ = (\f1|s_count\(29) & (!\f1|Add0~57\)) # (!\f1|s_count\(29) & ((\f1|Add0~57\) # (GND)))
-- \f1|Add0~59\ = CARRY((!\f1|Add0~57\) # (!\f1|s_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(29),
	datad => VCC,
	cin => \f1|Add0~57\,
	combout => \f1|Add0~58_combout\,
	cout => \f1|Add0~59\);

-- Location: FF_X106_Y44_N29
\f1|s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(29));

-- Location: LCCOMB_X106_Y44_N30
\f1|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~60_combout\ = \f1|s_count\(30) $ (!\f1|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(30),
	cin => \f1|Add0~59\,
	combout => \f1|Add0~60_combout\);

-- Location: FF_X106_Y44_N31
\f1|s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \f1|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|s_count\(30));

-- Location: LCCOMB_X105_Y44_N24
\f1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~0_combout\ = (!\f1|s_count\(29) & (!\f1|s_count\(30) & (\f1|s_count\(0) & \f1|s_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(29),
	datab => \f1|s_count\(30),
	datac => \f1|s_count\(0),
	datad => \f1|s_count\(1),
	combout => \f1|Equal0~0_combout\);

-- Location: LCCOMB_X105_Y44_N14
\f1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~4_combout\ = (\f1|Equal0~1_combout\ & (\f1|Equal0~2_combout\ & (\f1|Equal0~3_combout\ & \f1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|Equal0~1_combout\,
	datab => \f1|Equal0~2_combout\,
	datac => \f1|Equal0~3_combout\,
	datad => \f1|Equal0~0_combout\,
	combout => \f1|Equal0~4_combout\);

-- Location: LCCOMB_X107_Y44_N16
\f1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal0~6_combout\ = (\f1|s_count\(2) & (\f1|s_count\(3) & (\f1|Equal0~5_combout\ & \f1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(2),
	datab => \f1|s_count\(3),
	datac => \f1|Equal0~5_combout\,
	datad => \f1|Equal0~4_combout\,
	combout => \f1|Equal0~6_combout\);

-- Location: LCCOMB_X107_Y44_N22
\f1|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal1~1_combout\ = (\f1|s_count\(15) & (!\f1|s_count\(16) & (!\f1|s_count\(14) & \f1|s_count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(15),
	datab => \f1|s_count\(16),
	datac => \f1|s_count\(14),
	datad => \f1|s_count\(10),
	combout => \f1|Equal1~1_combout\);

-- Location: LCCOMB_X107_Y44_N20
\f1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal1~0_combout\ = (\f1|s_count\(23) & (!\f1|s_count\(24) & (\f1|s_count\(17) & !\f1|s_count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|s_count\(23),
	datab => \f1|s_count\(24),
	datac => \f1|s_count\(17),
	datad => \f1|s_count\(22),
	combout => \f1|Equal1~0_combout\);

-- Location: LCCOMB_X107_Y44_N24
\f1|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Equal1~2_combout\ = (!\f1|s_count\(5) & (\f1|Equal1~1_combout\ & \f1|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|s_count\(5),
	datac => \f1|Equal1~1_combout\,
	datad => \f1|Equal1~0_combout\,
	combout => \f1|Equal1~2_combout\);

-- Location: LCCOMB_X107_Y44_N18
\f1|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|clkOut~0_combout\ = (\f1|Equal0~9_combout\) # ((\f1|clkOut~q\ & ((!\f1|Equal1~2_combout\) # (!\f1|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|clkOut~q\,
	datab => \f1|Equal0~6_combout\,
	datac => \f1|Equal1~2_combout\,
	datad => \f1|Equal0~9_combout\,
	combout => \f1|clkOut~0_combout\);

-- Location: FF_X106_Y42_N13
\f1|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \f1|clkOut~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|clkOut~q\);

-- Location: LCCOMB_X106_Y42_N26
\engine|output[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \engine|output[0]~5_combout\ = (\f1|clkOut~q\ & (((!\t1|s_count\(31) & !\engine|LessThan0~0_combout\)) # (!\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \t1|s_count\(31),
	datac => \engine|LessThan0~0_combout\,
	datad => \f1|clkOut~q\,
	combout => \engine|output[0]~5_combout\);

-- Location: LCCOMB_X109_Y42_N30
\engine|output[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \engine|output[0]~6_combout\ = (!\KEY[0]~input_o\) # (!\t1|s_count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t1|s_count\(31),
	datad => \KEY[0]~input_o\,
	combout => \engine|output[0]~6_combout\);

-- Location: LCCOMB_X106_Y42_N8
\engine|output[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \engine|output\(0) = (\engine|output[0]~6_combout\ & (\engine|output[0]~5_combout\)) # (!\engine|output[0]~6_combout\ & ((\engine|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \engine|output[0]~5_combout\,
	datac => \engine|output\(0),
	datad => \engine|output[0]~6_combout\,
	combout => \engine|output\(0));

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDG(8) <= \LEDG[8]~output_o\;
END structure;


