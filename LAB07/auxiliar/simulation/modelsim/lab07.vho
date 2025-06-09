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

-- DATE "05/29/2025 11:01:05"

-- 
-- Device: Altera EP3C5F256C6 Package FBGA256
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

ENTITY 	lab07 IS
    PORT (
	Q : OUT std_logic;
	rst : IN std_logic;
	clk : IN std_logic
	);
END lab07;

-- Design Ports Information
-- Q	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab07 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Q : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Q~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \inst~0_combout\ : std_logic;
SIGNAL \inst~feeder_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst~q\ : std_logic;
SIGNAL \inst3~0_combout\ : std_logic;
SIGNAL \inst3~q\ : std_logic;
SIGNAL \inst5~0_combout\ : std_logic;
SIGNAL \inst5~feeder_combout\ : std_logic;
SIGNAL \inst5~q\ : std_logic;
SIGNAL \inst7~0_combout\ : std_logic;
SIGNAL \inst7~q\ : std_logic;
SIGNAL \inst9~0_combout\ : std_logic;
SIGNAL \inst9~feeder_combout\ : std_logic;
SIGNAL \inst9~q\ : std_logic;
SIGNAL \inst11~0_combout\ : std_logic;
SIGNAL \inst11~q\ : std_logic;
SIGNAL \inst13~0_combout\ : std_logic;
SIGNAL \inst13~feeder_combout\ : std_logic;
SIGNAL \inst13~q\ : std_logic;
SIGNAL \inst15~0_combout\ : std_logic;
SIGNAL \inst15~q\ : std_logic;

BEGIN

Q <= ww_Q;
ww_rst <= rst;
ww_clk <= clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

-- Location: IOOBUF_X32_Y24_N23
\Q~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15~q\,
	devoe => ww_devoe,
	o => \Q~output_o\);

-- Location: IOIBUF_X28_Y24_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LCCOMB_X29_Y22_N22
\inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst~0_combout\ = !\inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst~q\,
	combout => \inst~0_combout\);

-- Location: LCCOMB_X29_Y22_N30
\inst~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst~feeder_combout\ = \inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst~0_combout\,
	combout => \inst~feeder_combout\);

-- Location: IOIBUF_X0_Y11_N1
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G4
\rst~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X29_Y22_N31
inst : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst~q\);

-- Location: LCCOMB_X29_Y22_N26
\inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3~0_combout\ = !\inst3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~q\,
	combout => \inst3~0_combout\);

-- Location: FF_X29_Y22_N7
inst3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst~q\,
	asdata => \inst3~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3~q\);

-- Location: LCCOMB_X30_Y22_N28
\inst5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5~0_combout\ = !\inst5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5~q\,
	combout => \inst5~0_combout\);

-- Location: LCCOMB_X30_Y22_N30
\inst5~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5~feeder_combout\ = \inst5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5~0_combout\,
	combout => \inst5~feeder_combout\);

-- Location: FF_X30_Y22_N31
inst5 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~q\,
	d => \inst5~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5~q\);

-- Location: LCCOMB_X30_Y22_N26
\inst7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7~0_combout\ = !\inst7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7~q\,
	combout => \inst7~0_combout\);

-- Location: FF_X30_Y22_N7
inst7 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5~q\,
	asdata => \inst7~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7~q\);

-- Location: LCCOMB_X31_Y22_N28
\inst9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9~0_combout\ = !\inst9~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst9~q\,
	combout => \inst9~0_combout\);

-- Location: LCCOMB_X31_Y22_N30
\inst9~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9~feeder_combout\ = \inst9~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9~0_combout\,
	combout => \inst9~feeder_combout\);

-- Location: FF_X31_Y22_N31
inst9 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~q\,
	d => \inst9~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9~q\);

-- Location: LCCOMB_X31_Y22_N26
\inst11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11~0_combout\ = !\inst11~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11~q\,
	combout => \inst11~0_combout\);

-- Location: FF_X31_Y22_N7
inst11 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst9~q\,
	asdata => \inst11~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11~q\);

-- Location: LCCOMB_X32_Y22_N0
\inst13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13~0_combout\ = !\inst13~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13~q\,
	combout => \inst13~0_combout\);

-- Location: LCCOMB_X32_Y22_N4
\inst13~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13~feeder_combout\ = \inst13~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13~0_combout\,
	combout => \inst13~feeder_combout\);

-- Location: FF_X32_Y22_N5
inst13 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst11~q\,
	d => \inst13~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13~q\);

-- Location: LCCOMB_X32_Y22_N8
\inst15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15~0_combout\ = !\inst15~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15~q\,
	combout => \inst15~0_combout\);

-- Location: FF_X32_Y22_N9
inst15 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13~q\,
	d => \inst15~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15~q\);

ww_Q <= \Q~output_o\;
END structure;


