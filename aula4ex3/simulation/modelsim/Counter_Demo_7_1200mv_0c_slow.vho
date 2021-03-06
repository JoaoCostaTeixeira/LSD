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

-- DATE "03/10/2017 15:17:02"

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

ENTITY 	Counter_Demo IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	KEY : IN std_logic_vector(0 DOWNTO 0);
	SW : IN std_logic_vector(1 DOWNTO 0);
	LEDG : OUT std_logic_vector(3 DOWNTO 0)
	);
END Counter_Demo;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Counter_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst|s_count~9_combout\ : std_logic;
SIGNAL \inst|s_count[1]~4_cout\ : std_logic;
SIGNAL \inst|s_count[1]~5_combout\ : std_logic;
SIGNAL \inst|s_count[1]~6\ : std_logic;
SIGNAL \inst|s_count[2]~7_combout\ : std_logic;
SIGNAL \inst|s_count[2]~8\ : std_logic;
SIGNAL \inst|s_count[3]~10_combout\ : std_logic;
SIGNAL \inst2|decOut_n[6]~0_combout\ : std_logic;
SIGNAL \inst2|decOut_n[5]~1_combout\ : std_logic;
SIGNAL \inst2|decOut_n[4]~2_combout\ : std_logic;
SIGNAL \inst2|decOut_n[3]~3_combout\ : std_logic;
SIGNAL \inst2|decOut_n[2]~4_combout\ : std_logic;
SIGNAL \inst2|decOut_n[1]~5_combout\ : std_logic;
SIGNAL \inst2|decOut_n[0]~6_combout\ : std_logic;
SIGNAL \inst|s_count\ : std_logic_vector(3 DOWNTO 0);

BEGIN

HEX0 <= ww_HEX0;
ww_KEY <= KEY;
ww_SW <= SW;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decOut_n[6]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decOut_n[5]~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decOut_n[4]~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decOut_n[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decOut_n[2]~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decOut_n[1]~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decOut_n[0]~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_count\(3),
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_count\(2),
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_count\(1),
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_count\(0),
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

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

-- Location: LCCOMB_X114_Y44_N12
\inst|s_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count~9_combout\ = (!\inst|s_count\(0) & !\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|s_count\(0),
	datad => \SW[0]~input_o\,
	combout => \inst|s_count~9_combout\);

-- Location: FF_X114_Y44_N13
\inst|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(0));

-- Location: LCCOMB_X114_Y44_N22
\inst|s_count[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[1]~4_cout\ = CARRY(\inst|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(0),
	datad => VCC,
	cout => \inst|s_count[1]~4_cout\);

-- Location: LCCOMB_X114_Y44_N24
\inst|s_count[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[1]~5_combout\ = (\SW[1]~input_o\ & ((\inst|s_count\(1) & (\inst|s_count[1]~4_cout\ & VCC)) # (!\inst|s_count\(1) & (!\inst|s_count[1]~4_cout\)))) # (!\SW[1]~input_o\ & ((\inst|s_count\(1) & (!\inst|s_count[1]~4_cout\)) # (!\inst|s_count\(1) 
-- & ((\inst|s_count[1]~4_cout\) # (GND)))))
-- \inst|s_count[1]~6\ = CARRY((\SW[1]~input_o\ & (!\inst|s_count\(1) & !\inst|s_count[1]~4_cout\)) # (!\SW[1]~input_o\ & ((!\inst|s_count[1]~4_cout\) # (!\inst|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst|s_count\(1),
	datad => VCC,
	cin => \inst|s_count[1]~4_cout\,
	combout => \inst|s_count[1]~5_combout\,
	cout => \inst|s_count[1]~6\);

-- Location: FF_X114_Y44_N25
\inst|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_count[1]~5_combout\,
	sclr => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(1));

-- Location: LCCOMB_X114_Y44_N26
\inst|s_count[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[2]~7_combout\ = ((\inst|s_count\(2) $ (\SW[1]~input_o\ $ (!\inst|s_count[1]~6\)))) # (GND)
-- \inst|s_count[2]~8\ = CARRY((\inst|s_count\(2) & ((\SW[1]~input_o\) # (!\inst|s_count[1]~6\))) # (!\inst|s_count\(2) & (\SW[1]~input_o\ & !\inst|s_count[1]~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(2),
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \inst|s_count[1]~6\,
	combout => \inst|s_count[2]~7_combout\,
	cout => \inst|s_count[2]~8\);

-- Location: FF_X114_Y44_N27
\inst|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_count[2]~7_combout\,
	sclr => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(2));

-- Location: LCCOMB_X114_Y44_N28
\inst|s_count[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[3]~10_combout\ = \SW[1]~input_o\ $ (\inst|s_count[2]~8\ $ (\inst|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datad => \inst|s_count\(3),
	cin => \inst|s_count[2]~8\,
	combout => \inst|s_count[3]~10_combout\);

-- Location: FF_X114_Y44_N29
\inst|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_count[3]~10_combout\,
	sclr => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(3));

-- Location: LCCOMB_X107_Y72_N28
\inst2|decOut_n[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n[6]~0_combout\ = (\inst|s_count\(0) & (!\inst|s_count\(3) & (\inst|s_count\(1) $ (!\inst|s_count\(2))))) # (!\inst|s_count\(0) & (!\inst|s_count\(1) & (\inst|s_count\(2) $ (!\inst|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(1),
	datab => \inst|s_count\(2),
	datac => \inst|s_count\(0),
	datad => \inst|s_count\(3),
	combout => \inst2|decOut_n[6]~0_combout\);

-- Location: LCCOMB_X107_Y72_N30
\inst2|decOut_n[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n[5]~1_combout\ = (\inst|s_count\(1) & (!\inst|s_count\(3) & ((\inst|s_count\(0)) # (!\inst|s_count\(2))))) # (!\inst|s_count\(1) & (\inst|s_count\(0) & (\inst|s_count\(2) $ (!\inst|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(1),
	datab => \inst|s_count\(2),
	datac => \inst|s_count\(0),
	datad => \inst|s_count\(3),
	combout => \inst2|decOut_n[5]~1_combout\);

-- Location: LCCOMB_X114_Y44_N18
\inst2|decOut_n[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n[4]~2_combout\ = (\inst|s_count\(1) & (\inst|s_count\(0) & ((!\inst|s_count\(3))))) # (!\inst|s_count\(1) & ((\inst|s_count\(2) & ((!\inst|s_count\(3)))) # (!\inst|s_count\(2) & (\inst|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(0),
	datab => \inst|s_count\(2),
	datac => \inst|s_count\(1),
	datad => \inst|s_count\(3),
	combout => \inst2|decOut_n[4]~2_combout\);

-- Location: LCCOMB_X114_Y44_N4
\inst2|decOut_n[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n[3]~3_combout\ = (\inst|s_count\(1) & ((\inst|s_count\(0) & (\inst|s_count\(2))) # (!\inst|s_count\(0) & (!\inst|s_count\(2) & \inst|s_count\(3))))) # (!\inst|s_count\(1) & (!\inst|s_count\(3) & (\inst|s_count\(0) $ (\inst|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(0),
	datab => \inst|s_count\(2),
	datac => \inst|s_count\(1),
	datad => \inst|s_count\(3),
	combout => \inst2|decOut_n[3]~3_combout\);

-- Location: LCCOMB_X107_Y72_N0
\inst2|decOut_n[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n[2]~4_combout\ = (\inst|s_count\(2) & (\inst|s_count\(3) & ((\inst|s_count\(1)) # (!\inst|s_count\(0))))) # (!\inst|s_count\(2) & (\inst|s_count\(1) & (!\inst|s_count\(0) & !\inst|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(1),
	datab => \inst|s_count\(2),
	datac => \inst|s_count\(0),
	datad => \inst|s_count\(3),
	combout => \inst2|decOut_n[2]~4_combout\);

-- Location: LCCOMB_X107_Y72_N2
\inst2|decOut_n[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n[1]~5_combout\ = (\inst|s_count\(1) & ((\inst|s_count\(0) & ((\inst|s_count\(3)))) # (!\inst|s_count\(0) & (\inst|s_count\(2))))) # (!\inst|s_count\(1) & (\inst|s_count\(2) & (\inst|s_count\(0) $ (\inst|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(1),
	datab => \inst|s_count\(2),
	datac => \inst|s_count\(0),
	datad => \inst|s_count\(3),
	combout => \inst2|decOut_n[1]~5_combout\);

-- Location: LCCOMB_X107_Y72_N12
\inst2|decOut_n[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decOut_n[0]~6_combout\ = (\inst|s_count\(2) & (!\inst|s_count\(1) & (\inst|s_count\(0) $ (!\inst|s_count\(3))))) # (!\inst|s_count\(2) & (\inst|s_count\(0) & (\inst|s_count\(1) $ (!\inst|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(1),
	datab => \inst|s_count\(2),
	datac => \inst|s_count\(0),
	datad => \inst|s_count\(3),
	combout => \inst2|decOut_n[0]~6_combout\);

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;
END structure;


