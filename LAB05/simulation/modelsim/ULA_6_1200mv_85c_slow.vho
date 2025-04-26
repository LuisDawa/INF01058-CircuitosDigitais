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

-- DATE "04/26/2025 10:31:05"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ULA IS
    PORT (
	flag_Z : OUT std_logic;
	S : OUT std_logic_vector(3 DOWNTO 0);
	op_sel : IN std_logic_vector(1 DOWNTO 0);
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	flag_N : OUT std_logic
	);
END ULA;

-- Design Ports Information
-- flag_Z	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flag_N	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_sel[1]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_sel[0]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ULA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_flag_Z : std_logic;
SIGNAL ww_S : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_op_sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_flag_N : std_logic;
SIGNAL \flag_Z~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \flag_N~output_o\ : std_logic;
SIGNAL \op_sel[1]~input_o\ : std_logic;
SIGNAL \op_sel[0]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \inst|inst2|inst2~0_combout\ : std_logic;
SIGNAL \inst7|$00000|auto_generated|result_node[3]~4_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \inst7|$00000|auto_generated|result_node[3]~5_combout\ : std_logic;
SIGNAL \inst7|$00000|auto_generated|result_node[3]~11_combout\ : std_logic;
SIGNAL \inst7|$00000|auto_generated|result_node[2]~6_combout\ : std_logic;
SIGNAL \inst7|$00000|auto_generated|result_node[2]~12_combout\ : std_logic;
SIGNAL \inst7|$00000|auto_generated|result_node[0]~10_combout\ : std_logic;
SIGNAL \inst7|$00000|auto_generated|result_node[1]~7_combout\ : std_logic;
SIGNAL \inst7|$00000|auto_generated|result_node[1]~8_combout\ : std_logic;
SIGNAL \inst7|$00000|auto_generated|result_node[1]~9_combout\ : std_logic;
SIGNAL \inst9~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst9~0_combout\ : std_logic;

BEGIN

flag_Z <= ww_flag_Z;
S <= ww_S;
ww_op_sel <= op_sel;
ww_A <= A;
ww_B <= B;
flag_N <= ww_flag_N;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_inst9~0_combout\ <= NOT \inst9~0_combout\;

-- Location: IOOBUF_X0_Y11_N16
\flag_Z~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst9~0_combout\,
	devoe => ww_devoe,
	o => \flag_Z~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\S[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|$00000|auto_generated|result_node[3]~11_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\S[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|$00000|auto_generated|result_node[2]~12_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\S[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|$00000|auto_generated|result_node[1]~9_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\S[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|$00000|auto_generated|result_node[0]~10_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\flag_N~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|$00000|auto_generated|result_node[3]~11_combout\,
	devoe => ww_devoe,
	o => \flag_N~output_o\);

-- Location: IOIBUF_X0_Y12_N15
\op_sel[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_sel(1),
	o => \op_sel[1]~input_o\);

-- Location: IOIBUF_X0_Y10_N1
\op_sel[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_sel(0),
	o => \op_sel[0]~input_o\);

-- Location: IOIBUF_X0_Y11_N8
\B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X0_Y20_N8
\A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X0_Y12_N8
\A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X0_Y12_N22
\B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X0_Y13_N1
\B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X9_Y0_N1
\A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X1_Y12_N0
\inst|inst2|inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst2|inst2~0_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\) # ((\A[0]~input_o\ & \B[0]~input_o\)))) # (!\B[1]~input_o\ & (\A[0]~input_o\ & (\B[0]~input_o\ & \A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \inst|inst2|inst2~0_combout\);

-- Location: LCCOMB_X1_Y12_N26
\inst7|$00000|auto_generated|result_node[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|$00000|auto_generated|result_node[3]~4_combout\ = (\B[2]~input_o\ & ((\A[2]~input_o\) # (\inst|inst2|inst2~0_combout\))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & \inst|inst2|inst2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datad => \inst|inst2|inst2~0_combout\,
	combout => \inst7|$00000|auto_generated|result_node[3]~4_combout\);

-- Location: IOIBUF_X0_Y10_N15
\B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X1_Y12_N12
\inst7|$00000|auto_generated|result_node[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|$00000|auto_generated|result_node[3]~5_combout\ = (\A[3]~input_o\ & (\op_sel[0]~input_o\ $ (((\op_sel[1]~input_o\) # (!\B[3]~input_o\))))) # (!\A[3]~input_o\ & ((\op_sel[0]~input_o\ & ((\op_sel[1]~input_o\))) # (!\op_sel[0]~input_o\ & 
-- (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \op_sel[0]~input_o\,
	datac => \A[3]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \inst7|$00000|auto_generated|result_node[3]~5_combout\);

-- Location: LCCOMB_X1_Y12_N2
\inst7|$00000|auto_generated|result_node[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|$00000|auto_generated|result_node[3]~11_combout\ = \inst7|$00000|auto_generated|result_node[3]~5_combout\ $ (((!\op_sel[1]~input_o\ & (!\op_sel[0]~input_o\ & \inst7|$00000|auto_generated|result_node[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[1]~input_o\,
	datab => \op_sel[0]~input_o\,
	datac => \inst7|$00000|auto_generated|result_node[3]~4_combout\,
	datad => \inst7|$00000|auto_generated|result_node[3]~5_combout\,
	combout => \inst7|$00000|auto_generated|result_node[3]~11_combout\);

-- Location: LCCOMB_X1_Y12_N22
\inst7|$00000|auto_generated|result_node[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|$00000|auto_generated|result_node[2]~6_combout\ = (\A[2]~input_o\ & (\op_sel[0]~input_o\ $ (((\op_sel[1]~input_o\) # (!\B[2]~input_o\))))) # (!\A[2]~input_o\ & ((\op_sel[0]~input_o\ & (\op_sel[1]~input_o\)) # (!\op_sel[0]~input_o\ & 
-- ((\B[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[1]~input_o\,
	datab => \A[2]~input_o\,
	datac => \op_sel[0]~input_o\,
	datad => \B[2]~input_o\,
	combout => \inst7|$00000|auto_generated|result_node[2]~6_combout\);

-- Location: LCCOMB_X1_Y12_N4
\inst7|$00000|auto_generated|result_node[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|$00000|auto_generated|result_node[2]~12_combout\ = \inst7|$00000|auto_generated|result_node[2]~6_combout\ $ (((!\op_sel[1]~input_o\ & (!\op_sel[0]~input_o\ & \inst|inst2|inst2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[1]~input_o\,
	datab => \op_sel[0]~input_o\,
	datac => \inst7|$00000|auto_generated|result_node[2]~6_combout\,
	datad => \inst|inst2|inst2~0_combout\,
	combout => \inst7|$00000|auto_generated|result_node[2]~12_combout\);

-- Location: LCCOMB_X1_Y12_N14
\inst7|$00000|auto_generated|result_node[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|$00000|auto_generated|result_node[0]~10_combout\ = (\A[0]~input_o\ & (\op_sel[0]~input_o\ $ (((\op_sel[1]~input_o\) # (!\B[0]~input_o\))))) # (!\A[0]~input_o\ & ((\op_sel[0]~input_o\ & ((\op_sel[1]~input_o\))) # (!\op_sel[0]~input_o\ & 
-- (\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \op_sel[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \inst7|$00000|auto_generated|result_node[0]~10_combout\);

-- Location: LCCOMB_X1_Y12_N24
\inst7|$00000|auto_generated|result_node[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|$00000|auto_generated|result_node[1]~7_combout\ = (\A[1]~input_o\ & (\op_sel[0]~input_o\ $ (((\op_sel[1]~input_o\) # (!\B[1]~input_o\))))) # (!\A[1]~input_o\ & ((\op_sel[0]~input_o\ & (\op_sel[1]~input_o\)) # (!\op_sel[0]~input_o\ & 
-- ((\B[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_sel[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \op_sel[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \inst7|$00000|auto_generated|result_node[1]~7_combout\);

-- Location: LCCOMB_X1_Y12_N10
\inst7|$00000|auto_generated|result_node[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|$00000|auto_generated|result_node[1]~8_combout\ = (\op_sel[0]~input_o\) # (\op_sel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op_sel[0]~input_o\,
	datad => \op_sel[1]~input_o\,
	combout => \inst7|$00000|auto_generated|result_node[1]~8_combout\);

-- Location: LCCOMB_X1_Y12_N20
\inst7|$00000|auto_generated|result_node[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|$00000|auto_generated|result_node[1]~9_combout\ = \inst7|$00000|auto_generated|result_node[1]~7_combout\ $ (((\A[0]~input_o\ & (\B[0]~input_o\ & !\inst7|$00000|auto_generated|result_node[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \inst7|$00000|auto_generated|result_node[1]~7_combout\,
	datac => \B[0]~input_o\,
	datad => \inst7|$00000|auto_generated|result_node[1]~8_combout\,
	combout => \inst7|$00000|auto_generated|result_node[1]~9_combout\);

-- Location: LCCOMB_X1_Y12_N8
\inst9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9~0_combout\ = (\inst7|$00000|auto_generated|result_node[3]~11_combout\) # ((\inst7|$00000|auto_generated|result_node[2]~12_combout\) # ((\inst7|$00000|auto_generated|result_node[0]~10_combout\) # 
-- (\inst7|$00000|auto_generated|result_node[1]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|$00000|auto_generated|result_node[3]~11_combout\,
	datab => \inst7|$00000|auto_generated|result_node[2]~12_combout\,
	datac => \inst7|$00000|auto_generated|result_node[0]~10_combout\,
	datad => \inst7|$00000|auto_generated|result_node[1]~9_combout\,
	combout => \inst9~0_combout\);

ww_flag_Z <= \flag_Z~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(0) <= \S[0]~output_o\;

ww_flag_N <= \flag_N~output_o\;
END structure;


