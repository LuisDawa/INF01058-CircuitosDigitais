-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "06/05/2025 14:33:33"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LAB08 IS
    PORT (
	Q : OUT std_logic_vector(7 DOWNTO 0);
	D : IN std_logic_vector(7 DOWNTO 0);
	clk : IN std_logic;
	Sel : IN std_logic_vector(1 DOWNTO 0)
	);
END LAB08;

-- Design Ports Information
-- Q[7]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[6]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[5]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[4]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[0]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[7]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sel[1]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sel[0]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[6]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[5]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[4]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LAB08 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Q : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_D : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_Sel : std_logic_vector(1 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \D[7]~input_o\ : std_logic;
SIGNAL \D[1]~input_o\ : std_logic;
SIGNAL \Q[7]~output_o\ : std_logic;
SIGNAL \Q[6]~output_o\ : std_logic;
SIGNAL \Q[5]~output_o\ : std_logic;
SIGNAL \Q[4]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Sel[1]~input_o\ : std_logic;
SIGNAL \Sel[0]~input_o\ : std_logic;
SIGNAL \D[5]~input_o\ : std_logic;
SIGNAL \D[2]~input_o\ : std_logic;
SIGNAL \D[0]~input_o\ : std_logic;
SIGNAL \inst4~0_combout\ : std_logic;
SIGNAL \inst4~_wirecell_combout\ : std_logic;
SIGNAL \inst4~q\ : std_logic;
SIGNAL \inst|inst~0_combout\ : std_logic;
SIGNAL \inst|inst~1_combout\ : std_logic;
SIGNAL \inst|inst~q\ : std_logic;
SIGNAL \inst12|inst13~combout\ : std_logic;
SIGNAL \inst12|inst~0_combout\ : std_logic;
SIGNAL \D[3]~input_o\ : std_logic;
SIGNAL \inst15|inst~1_combout\ : std_logic;
SIGNAL \inst12|inst~q\ : std_logic;
SIGNAL \inst13|inst11~combout\ : std_logic;
SIGNAL \inst13|inst13~combout\ : std_logic;
SIGNAL \inst13|inst~0_combout\ : std_logic;
SIGNAL \D[4]~input_o\ : std_logic;
SIGNAL \inst13|inst~q\ : std_logic;
SIGNAL \inst13|inst12|inst3~0_combout\ : std_logic;
SIGNAL \inst14|inst7|inst3~0_combout\ : std_logic;
SIGNAL \inst14|inst7|inst3~1_combout\ : std_logic;
SIGNAL \inst14|inst~q\ : std_logic;
SIGNAL \inst15|inst11~0_combout\ : std_logic;
SIGNAL \inst15|inst13~combout\ : std_logic;
SIGNAL \inst15|inst~0_combout\ : std_logic;
SIGNAL \D[6]~input_o\ : std_logic;
SIGNAL \inst15|inst~q\ : std_logic;
SIGNAL \inst16|inst7|inst3~0_combout\ : std_logic;
SIGNAL \inst16|inst7|inst3~1_combout\ : std_logic;
SIGNAL \inst16|inst7|inst3~2_combout\ : std_logic;
SIGNAL \inst16|inst~q\ : std_logic;
SIGNAL \ALT_INV_Sel[1]~input_o\ : std_logic;

BEGIN

Q <= ww_Q;
ww_D <= D;
ww_clk <= clk;
ww_Sel <= Sel;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_Sel[1]~input_o\ <= NOT \Sel[1]~input_o\;

-- Location: IOOBUF_X1_Y29_N2
\Q[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst~q\,
	devoe => ww_devoe,
	o => \Q[7]~output_o\);

-- Location: IOOBUF_X3_Y29_N9
\Q[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|inst~q\,
	devoe => ww_devoe,
	o => \Q[6]~output_o\);

-- Location: IOOBUF_X1_Y29_N16
\Q[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst~q\,
	devoe => ww_devoe,
	o => \Q[5]~output_o\);

-- Location: IOOBUF_X1_Y29_N30
\Q[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|inst~q\,
	devoe => ww_devoe,
	o => \Q[4]~output_o\);

-- Location: IOOBUF_X3_Y29_N2
\Q[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|inst~q\,
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

-- Location: IOOBUF_X3_Y29_N16
\Q[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst~q\,
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOOBUF_X41_Y8_N9
\Q[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X1_Y29_N9
\Q[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4~q\,
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
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

-- Location: IOIBUF_X5_Y29_N22
\Sel[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel(1),
	o => \Sel[1]~input_o\);

-- Location: IOIBUF_X5_Y29_N29
\Sel[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel(0),
	o => \Sel[0]~input_o\);

-- Location: IOIBUF_X5_Y29_N1
\D[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(5),
	o => \D[5]~input_o\);

-- Location: IOIBUF_X3_Y29_N29
\D[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(2),
	o => \D[2]~input_o\);

-- Location: IOIBUF_X5_Y29_N15
\D[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(0),
	o => \D[0]~input_o\);

-- Location: LCCOMB_X5_Y28_N28
\inst4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4~0_combout\ = (\Sel[0]~input_o\ & ((\inst4~q\))) # (!\Sel[0]~input_o\ & (\D[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[0]~input_o\,
	datac => \inst4~q\,
	datad => \Sel[0]~input_o\,
	combout => \inst4~0_combout\);

-- Location: LCCOMB_X5_Y28_N4
\inst4~_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4~_wirecell_combout\ = !\inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4~q\,
	combout => \inst4~_wirecell_combout\);

-- Location: FF_X5_Y28_N29
inst4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4~0_combout\,
	asdata => \inst4~_wirecell_combout\,
	sload => \Sel[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4~q\);

-- Location: LCCOMB_X4_Y28_N2
\inst|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst~0_combout\ = (\Sel[1]~input_o\ & ((\inst|inst~q\ $ (!\inst4~q\)))) # (!\Sel[1]~input_o\ & (\D[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[2]~input_o\,
	datab => \Sel[1]~input_o\,
	datac => \inst|inst~q\,
	datad => \inst4~q\,
	combout => \inst|inst~0_combout\);

-- Location: LCCOMB_X4_Y28_N14
\inst|inst~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst~1_combout\ = (\Sel[0]~input_o\ & ((\Sel[1]~input_o\ & ((\inst|inst~0_combout\))) # (!\Sel[1]~input_o\ & (\inst|inst~q\)))) # (!\Sel[0]~input_o\ & ((\Sel[1]~input_o\ & (\inst|inst~q\)) # (!\Sel[1]~input_o\ & ((\inst|inst~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[0]~input_o\,
	datab => \Sel[1]~input_o\,
	datac => \inst|inst~q\,
	datad => \inst|inst~0_combout\,
	combout => \inst|inst~1_combout\);

-- Location: FF_X4_Y28_N15
\inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst~q\);

-- Location: LCCOMB_X4_Y28_N28
\inst12|inst13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst13~combout\ = \inst12|inst~q\ $ (((\inst|inst~q\) # ((\Sel[0]~input_o\ & \inst4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[0]~input_o\,
	datab => \inst12|inst~q\,
	datac => \inst|inst~q\,
	datad => \inst4~q\,
	combout => \inst12|inst13~combout\);

-- Location: LCCOMB_X4_Y28_N16
\inst12|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|inst~0_combout\ = (\Sel[0]~input_o\ & ((!\inst12|inst13~combout\))) # (!\Sel[0]~input_o\ & (\inst12|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[0]~input_o\,
	datac => \inst12|inst~q\,
	datad => \inst12|inst13~combout\,
	combout => \inst12|inst~0_combout\);

-- Location: IOIBUF_X5_Y29_N8
\D[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(3),
	o => \D[3]~input_o\);

-- Location: LCCOMB_X5_Y28_N6
\inst15|inst~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|inst~1_combout\ = (\Sel[1]~input_o\) # (!\Sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Sel[1]~input_o\,
	datad => \Sel[0]~input_o\,
	combout => \inst15|inst~1_combout\);

-- Location: FF_X4_Y28_N17
\inst12|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst12|inst~0_combout\,
	asdata => \D[3]~input_o\,
	sload => \ALT_INV_Sel[1]~input_o\,
	ena => \inst15|inst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst~q\);

-- Location: LCCOMB_X4_Y28_N0
\inst13|inst11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|inst11~combout\ = (\inst12|inst~q\) # ((\inst|inst~q\) # ((\Sel[0]~input_o\ & \inst4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[0]~input_o\,
	datab => \inst12|inst~q\,
	datac => \inst|inst~q\,
	datad => \inst4~q\,
	combout => \inst13|inst11~combout\);

-- Location: LCCOMB_X4_Y28_N18
\inst13|inst13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|inst13~combout\ = \inst13|inst~q\ $ (\inst13|inst11~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst~q\,
	datad => \inst13|inst11~combout\,
	combout => \inst13|inst13~combout\);

-- Location: LCCOMB_X4_Y28_N26
\inst13|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|inst~0_combout\ = (\Sel[0]~input_o\ & ((!\inst13|inst13~combout\))) # (!\Sel[0]~input_o\ & (\inst13|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[0]~input_o\,
	datac => \inst13|inst~q\,
	datad => \inst13|inst13~combout\,
	combout => \inst13|inst~0_combout\);

-- Location: IOIBUF_X1_Y29_N22
\D[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(4),
	o => \D[4]~input_o\);

-- Location: FF_X4_Y28_N27
\inst13|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst13|inst~0_combout\,
	asdata => \D[4]~input_o\,
	sload => \ALT_INV_Sel[1]~input_o\,
	ena => \inst15|inst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst~q\);

-- Location: LCCOMB_X4_Y28_N6
\inst13|inst12|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13|inst12|inst3~0_combout\ = (\Sel[0]~input_o\ & ((\inst12|inst~q\) # ((\inst|inst~q\) # (\inst4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[0]~input_o\,
	datab => \inst12|inst~q\,
	datac => \inst|inst~q\,
	datad => \inst4~q\,
	combout => \inst13|inst12|inst3~0_combout\);

-- Location: LCCOMB_X4_Y28_N10
\inst14|inst7|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|inst7|inst3~0_combout\ = (\Sel[0]~input_o\ & (!\inst13|inst~q\ & !\inst13|inst12|inst3~0_combout\)) # (!\Sel[0]~input_o\ & (\inst13|inst~q\ & \inst13|inst12|inst3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[0]~input_o\,
	datac => \inst13|inst~q\,
	datad => \inst13|inst12|inst3~0_combout\,
	combout => \inst14|inst7|inst3~0_combout\);

-- Location: LCCOMB_X4_Y28_N12
\inst14|inst7|inst3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14|inst7|inst3~1_combout\ = (\Sel[1]~input_o\ & ((\inst14|inst~q\ $ (\inst14|inst7|inst3~0_combout\)))) # (!\Sel[1]~input_o\ & (\D[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[5]~input_o\,
	datab => \Sel[1]~input_o\,
	datac => \inst14|inst~q\,
	datad => \inst14|inst7|inst3~0_combout\,
	combout => \inst14|inst7|inst3~1_combout\);

-- Location: FF_X4_Y28_N13
\inst14|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|inst7|inst3~1_combout\,
	ena => \inst15|inst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|inst~q\);

-- Location: LCCOMB_X4_Y28_N22
\inst15|inst11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|inst11~0_combout\ = (\inst14|inst~q\) # ((\inst|inst~q\) # ((\inst13|inst~q\) # (\inst12|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst~q\,
	datab => \inst|inst~q\,
	datac => \inst13|inst~q\,
	datad => \inst12|inst~q\,
	combout => \inst15|inst11~0_combout\);

-- Location: LCCOMB_X4_Y28_N20
\inst15|inst13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|inst13~combout\ = \inst15|inst~q\ $ (((\inst15|inst11~0_combout\) # (\inst4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|inst~q\,
	datac => \inst15|inst11~0_combout\,
	datad => \inst4~q\,
	combout => \inst15|inst13~combout\);

-- Location: LCCOMB_X4_Y28_N8
\inst15|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15|inst~0_combout\ = (\Sel[0]~input_o\ & ((!\inst15|inst13~combout\))) # (!\Sel[0]~input_o\ & (\inst15|inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[0]~input_o\,
	datac => \inst15|inst~q\,
	datad => \inst15|inst13~combout\,
	combout => \inst15|inst~0_combout\);

-- Location: IOIBUF_X3_Y29_N22
\D[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(6),
	o => \D[6]~input_o\);

-- Location: FF_X4_Y28_N9
\inst15|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst15|inst~0_combout\,
	asdata => \D[6]~input_o\,
	sload => \ALT_INV_Sel[1]~input_o\,
	ena => \inst15|inst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|inst~q\);

-- Location: LCCOMB_X4_Y28_N4
\inst16|inst7|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|inst7|inst3~0_combout\ = (\Sel[0]~input_o\ & (\Sel[1]~input_o\ & (!\inst15|inst~q\ & !\inst14|inst~q\))) # (!\Sel[0]~input_o\ & (((\inst15|inst~q\ & \inst14|inst~q\)) # (!\Sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[0]~input_o\,
	datab => \Sel[1]~input_o\,
	datac => \inst15|inst~q\,
	datad => \inst14|inst~q\,
	combout => \inst16|inst7|inst3~0_combout\);

-- Location: LCCOMB_X4_Y28_N24
\inst16|inst7|inst3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|inst7|inst3~1_combout\ = (\inst14|inst~q\ & (\inst13|inst~q\ & \inst13|inst12|inst3~0_combout\)) # (!\inst14|inst~q\ & (!\inst13|inst~q\ & !\inst13|inst12|inst3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst~q\,
	datac => \inst13|inst~q\,
	datad => \inst13|inst12|inst3~0_combout\,
	combout => \inst16|inst7|inst3~1_combout\);

-- Location: LCCOMB_X4_Y28_N30
\inst16|inst7|inst3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst16|inst7|inst3~2_combout\ = (\inst16|inst7|inst3~0_combout\ & ((\inst16|inst~q\ $ (\inst16|inst7|inst3~1_combout\)) # (!\Sel[1]~input_o\))) # (!\inst16|inst7|inst3~0_combout\ & (((\inst16|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel[1]~input_o\,
	datab => \inst16|inst7|inst3~0_combout\,
	datac => \inst16|inst~q\,
	datad => \inst16|inst7|inst3~1_combout\,
	combout => \inst16|inst7|inst3~2_combout\);

-- Location: FF_X4_Y28_N31
\inst16|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst16|inst7|inst3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst~q\);

-- Location: IOIBUF_X0_Y27_N15
\D[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(7),
	o => \D[7]~input_o\);

-- Location: IOIBUF_X32_Y0_N8
\D[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(1),
	o => \D[1]~input_o\);

ww_Q(7) <= \Q[7]~output_o\;

ww_Q(6) <= \Q[6]~output_o\;

ww_Q(5) <= \Q[5]~output_o\;

ww_Q(4) <= \Q[4]~output_o\;

ww_Q(3) <= \Q[3]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(0) <= \Q[0]~output_o\;
END structure;


