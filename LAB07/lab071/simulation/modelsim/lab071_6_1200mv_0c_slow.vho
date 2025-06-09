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

-- DATE "05/29/2025 11:07:29"

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

ENTITY 	lab071 IS
    PORT (
	Q : OUT std_logic;
	clk : IN std_logic
	);
END lab071;

-- Design Ports Information
-- Q	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab071 IS
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
SIGNAL ww_clk : std_logic;
SIGNAL \Q~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \inst|inst~0_combout\ : std_logic;
SIGNAL \inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst|inst~q\ : std_logic;
SIGNAL \inst|inst3~0_combout\ : std_logic;
SIGNAL \inst|inst3~q\ : std_logic;
SIGNAL \inst|inst5~0_combout\ : std_logic;
SIGNAL \inst|inst5~feeder_combout\ : std_logic;
SIGNAL \inst|inst5~q\ : std_logic;
SIGNAL \inst|inst7~0_combout\ : std_logic;
SIGNAL \inst|inst7~q\ : std_logic;
SIGNAL \inst|inst9~0_combout\ : std_logic;
SIGNAL \inst|inst9~feeder_combout\ : std_logic;
SIGNAL \inst|inst9~q\ : std_logic;
SIGNAL \inst|inst11~0_combout\ : std_logic;
SIGNAL \inst|inst11~q\ : std_logic;
SIGNAL \inst|inst13~0_combout\ : std_logic;
SIGNAL \inst|inst13~feeder_combout\ : std_logic;
SIGNAL \inst|inst13~q\ : std_logic;
SIGNAL \inst|inst15~0_combout\ : std_logic;
SIGNAL \inst|inst15~q\ : std_logic;
SIGNAL \inst1|inst~0_combout\ : std_logic;
SIGNAL \inst1|inst~feeder_combout\ : std_logic;
SIGNAL \inst1|inst~q\ : std_logic;
SIGNAL \inst1|inst3~0_combout\ : std_logic;
SIGNAL \inst1|inst3~q\ : std_logic;
SIGNAL \inst1|inst5~0_combout\ : std_logic;
SIGNAL \inst1|inst5~feeder_combout\ : std_logic;
SIGNAL \inst1|inst5~q\ : std_logic;
SIGNAL \inst1|inst7~0_combout\ : std_logic;
SIGNAL \inst1|inst7~feeder_combout\ : std_logic;
SIGNAL \inst1|inst7~q\ : std_logic;
SIGNAL \inst1|inst9~0_combout\ : std_logic;
SIGNAL \inst1|inst9~q\ : std_logic;
SIGNAL \inst1|inst11~0_combout\ : std_logic;
SIGNAL \inst1|inst11~feeder_combout\ : std_logic;
SIGNAL \inst1|inst11~q\ : std_logic;
SIGNAL \inst1|inst13~0_combout\ : std_logic;
SIGNAL \inst1|inst13~feeder_combout\ : std_logic;
SIGNAL \inst1|inst13~q\ : std_logic;
SIGNAL \inst1|inst15~0_combout\ : std_logic;
SIGNAL \inst1|inst15~q\ : std_logic;
SIGNAL \inst2|inst~0_combout\ : std_logic;
SIGNAL \inst2|inst~feeder_combout\ : std_logic;
SIGNAL \inst2|inst~q\ : std_logic;
SIGNAL \inst2|inst3~0_combout\ : std_logic;
SIGNAL \inst2|inst3~q\ : std_logic;
SIGNAL \inst2|inst5~0_combout\ : std_logic;
SIGNAL \inst2|inst5~feeder_combout\ : std_logic;
SIGNAL \inst2|inst5~q\ : std_logic;
SIGNAL \inst2|inst7~0_combout\ : std_logic;
SIGNAL \inst2|inst7~feeder_combout\ : std_logic;
SIGNAL \inst2|inst7~q\ : std_logic;
SIGNAL \inst2|inst9~0_combout\ : std_logic;
SIGNAL \inst2|inst9~feeder_combout\ : std_logic;
SIGNAL \inst2|inst9~q\ : std_logic;
SIGNAL \inst2|inst11~0_combout\ : std_logic;
SIGNAL \inst2|inst11~q\ : std_logic;
SIGNAL \inst2|inst13~0_combout\ : std_logic;
SIGNAL \inst2|inst13~feeder_combout\ : std_logic;
SIGNAL \inst2|inst13~q\ : std_logic;
SIGNAL \inst2|inst15~0_combout\ : std_logic;
SIGNAL \inst2|inst15~q\ : std_logic;

BEGIN

Q <= ww_Q;
ww_clk <= clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X18_Y24_N16
\Q~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst15~q\,
	devoe => ww_devoe,
	o => \Q~output_o\);

-- Location: IOIBUF_X21_Y24_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LCCOMB_X22_Y23_N30
\inst|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst~0_combout\ = !\inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst~q\,
	combout => \inst|inst~0_combout\);

-- Location: LCCOMB_X22_Y23_N24
\inst|inst~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst~feeder_combout\ = \inst|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst~0_combout\,
	combout => \inst|inst~feeder_combout\);

-- Location: FF_X22_Y23_N25
\inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst~q\);

-- Location: LCCOMB_X22_Y23_N26
\inst|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst3~0_combout\ = !\inst|inst3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3~q\,
	combout => \inst|inst3~0_combout\);

-- Location: FF_X22_Y23_N7
\inst|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst~q\,
	asdata => \inst|inst3~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3~q\);

-- Location: LCCOMB_X23_Y23_N28
\inst|inst5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst5~0_combout\ = !\inst|inst5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst5~q\,
	combout => \inst|inst5~0_combout\);

-- Location: LCCOMB_X23_Y23_N30
\inst|inst5~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst5~feeder_combout\ = \inst|inst5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst5~0_combout\,
	combout => \inst|inst5~feeder_combout\);

-- Location: FF_X23_Y23_N31
\inst|inst5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst3~q\,
	d => \inst|inst5~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5~q\);

-- Location: LCCOMB_X23_Y23_N26
\inst|inst7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst7~0_combout\ = !\inst|inst7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7~q\,
	combout => \inst|inst7~0_combout\);

-- Location: FF_X23_Y23_N7
\inst|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst5~q\,
	asdata => \inst|inst7~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst7~q\);

-- Location: LCCOMB_X24_Y23_N28
\inst|inst9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst9~0_combout\ = !\inst|inst9~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst9~q\,
	combout => \inst|inst9~0_combout\);

-- Location: LCCOMB_X24_Y23_N30
\inst|inst9~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst9~feeder_combout\ = \inst|inst9~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst9~0_combout\,
	combout => \inst|inst9~feeder_combout\);

-- Location: FF_X24_Y23_N31
\inst|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst7~q\,
	d => \inst|inst9~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst9~q\);

-- Location: LCCOMB_X24_Y23_N26
\inst|inst11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst11~0_combout\ = !\inst|inst11~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst11~q\,
	combout => \inst|inst11~0_combout\);

-- Location: FF_X24_Y23_N7
\inst|inst11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst9~q\,
	asdata => \inst|inst11~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst11~q\);

-- Location: LCCOMB_X25_Y23_N12
\inst|inst13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst13~0_combout\ = !\inst|inst13~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst13~q\,
	combout => \inst|inst13~0_combout\);

-- Location: LCCOMB_X25_Y23_N10
\inst|inst13~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst13~feeder_combout\ = \inst|inst13~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst13~0_combout\,
	combout => \inst|inst13~feeder_combout\);

-- Location: FF_X25_Y23_N11
\inst|inst13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst11~q\,
	d => \inst|inst13~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst13~q\);

-- Location: LCCOMB_X25_Y23_N26
\inst|inst15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst15~0_combout\ = !\inst|inst15~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst15~q\,
	combout => \inst|inst15~0_combout\);

-- Location: FF_X25_Y23_N5
\inst|inst15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst13~q\,
	asdata => \inst|inst15~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst15~q\);

-- Location: LCCOMB_X25_Y21_N24
\inst1|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst~0_combout\ = !\inst1|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst~q\,
	combout => \inst1|inst~0_combout\);

-- Location: LCCOMB_X25_Y21_N10
\inst1|inst~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst~feeder_combout\ = \inst1|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst~0_combout\,
	combout => \inst1|inst~feeder_combout\);

-- Location: FF_X25_Y21_N11
\inst1|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst15~q\,
	d => \inst1|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst~q\);

-- Location: LCCOMB_X25_Y21_N26
\inst1|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst3~0_combout\ = !\inst1|inst3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst3~q\,
	combout => \inst1|inst3~0_combout\);

-- Location: FF_X25_Y21_N31
\inst1|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst~q\,
	asdata => \inst1|inst3~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst3~q\);

-- Location: LCCOMB_X24_Y21_N6
\inst1|inst5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5~0_combout\ = !\inst1|inst5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst5~q\,
	combout => \inst1|inst5~0_combout\);

-- Location: LCCOMB_X24_Y21_N4
\inst1|inst5~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5~feeder_combout\ = \inst1|inst5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5~0_combout\,
	combout => \inst1|inst5~feeder_combout\);

-- Location: FF_X24_Y21_N5
\inst1|inst5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst3~q\,
	d => \inst1|inst5~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5~q\);

-- Location: LCCOMB_X23_Y21_N30
\inst1|inst7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst7~0_combout\ = !\inst1|inst7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst7~q\,
	combout => \inst1|inst7~0_combout\);

-- Location: LCCOMB_X23_Y21_N28
\inst1|inst7~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst7~feeder_combout\ = \inst1|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst7~0_combout\,
	combout => \inst1|inst7~feeder_combout\);

-- Location: FF_X23_Y21_N29
\inst1|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst5~q\,
	d => \inst1|inst7~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst7~q\);

-- Location: LCCOMB_X23_Y21_N26
\inst1|inst9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst9~0_combout\ = !\inst1|inst9~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst9~q\,
	combout => \inst1|inst9~0_combout\);

-- Location: FF_X23_Y21_N7
\inst1|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst7~q\,
	asdata => \inst1|inst9~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst9~q\);

-- Location: LCCOMB_X24_Y21_N10
\inst1|inst11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst11~0_combout\ = !\inst1|inst11~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst11~q\,
	combout => \inst1|inst11~0_combout\);

-- Location: LCCOMB_X24_Y21_N0
\inst1|inst11~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst11~feeder_combout\ = \inst1|inst11~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst11~0_combout\,
	combout => \inst1|inst11~feeder_combout\);

-- Location: FF_X24_Y21_N1
\inst1|inst11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst9~q\,
	d => \inst1|inst11~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst11~q\);

-- Location: LCCOMB_X23_Y22_N0
\inst1|inst13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst13~0_combout\ = !\inst1|inst13~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst13~q\,
	combout => \inst1|inst13~0_combout\);

-- Location: LCCOMB_X23_Y22_N4
\inst1|inst13~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst13~feeder_combout\ = \inst1|inst13~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst13~0_combout\,
	combout => \inst1|inst13~feeder_combout\);

-- Location: FF_X23_Y22_N5
\inst1|inst13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst11~q\,
	d => \inst1|inst13~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst13~q\);

-- Location: LCCOMB_X23_Y22_N26
\inst1|inst15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst15~0_combout\ = !\inst1|inst15~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst15~q\,
	combout => \inst1|inst15~0_combout\);

-- Location: FF_X23_Y22_N29
\inst1|inst15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst13~q\,
	asdata => \inst1|inst15~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst15~q\);

-- Location: LCCOMB_X18_Y22_N30
\inst2|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst~0_combout\ = !\inst2|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst~q\,
	combout => \inst2|inst~0_combout\);

-- Location: LCCOMB_X18_Y22_N28
\inst2|inst~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst~feeder_combout\ = \inst2|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst~0_combout\,
	combout => \inst2|inst~feeder_combout\);

-- Location: FF_X18_Y22_N29
\inst2|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst15~q\,
	d => \inst2|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst~q\);

-- Location: LCCOMB_X18_Y22_N26
\inst2|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst3~0_combout\ = !\inst2|inst3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3~q\,
	combout => \inst2|inst3~0_combout\);

-- Location: FF_X18_Y22_N11
\inst2|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst~q\,
	asdata => \inst2|inst3~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst3~q\);

-- Location: LCCOMB_X17_Y22_N18
\inst2|inst5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst5~0_combout\ = !\inst2|inst5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5~q\,
	combout => \inst2|inst5~0_combout\);

-- Location: LCCOMB_X17_Y22_N26
\inst2|inst5~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst5~feeder_combout\ = \inst2|inst5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst5~0_combout\,
	combout => \inst2|inst5~feeder_combout\);

-- Location: FF_X17_Y22_N27
\inst2|inst5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst3~q\,
	d => \inst2|inst5~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst5~q\);

-- Location: LCCOMB_X17_Y22_N10
\inst2|inst7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst7~0_combout\ = !\inst2|inst7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst7~q\,
	combout => \inst2|inst7~0_combout\);

-- Location: LCCOMB_X17_Y22_N12
\inst2|inst7~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst7~feeder_combout\ = \inst2|inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst7~0_combout\,
	combout => \inst2|inst7~feeder_combout\);

-- Location: FF_X17_Y22_N13
\inst2|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst5~q\,
	d => \inst2|inst7~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst7~q\);

-- Location: LCCOMB_X16_Y22_N22
\inst2|inst9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst9~0_combout\ = !\inst2|inst9~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst9~q\,
	combout => \inst2|inst9~0_combout\);

-- Location: LCCOMB_X16_Y22_N30
\inst2|inst9~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst9~feeder_combout\ = \inst2|inst9~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst9~0_combout\,
	combout => \inst2|inst9~feeder_combout\);

-- Location: FF_X16_Y22_N31
\inst2|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst7~q\,
	d => \inst2|inst9~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst9~q\);

-- Location: LCCOMB_X16_Y22_N26
\inst2|inst11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst11~0_combout\ = !\inst2|inst11~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst11~q\,
	combout => \inst2|inst11~0_combout\);

-- Location: FF_X16_Y22_N25
\inst2|inst11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst9~q\,
	asdata => \inst2|inst11~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst11~q\);

-- Location: LCCOMB_X19_Y22_N0
\inst2|inst13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst13~0_combout\ = !\inst2|inst13~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst13~q\,
	combout => \inst2|inst13~0_combout\);

-- Location: LCCOMB_X19_Y22_N10
\inst2|inst13~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst13~feeder_combout\ = \inst2|inst13~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst13~0_combout\,
	combout => \inst2|inst13~feeder_combout\);

-- Location: FF_X19_Y22_N11
\inst2|inst13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst11~q\,
	d => \inst2|inst13~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst13~q\);

-- Location: LCCOMB_X19_Y22_N2
\inst2|inst15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst15~0_combout\ = !\inst2|inst15~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst15~q\,
	combout => \inst2|inst15~0_combout\);

-- Location: FF_X19_Y22_N3
\inst2|inst15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst13~q\,
	d => \inst2|inst15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst15~q\);

ww_Q <= \Q~output_o\;
END structure;


