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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "04/22/2025 20:20:02"

-- 
-- Device: Altera EP3C5F256C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CLA IS
    PORT (
	C4 : OUT std_logic;
	P : IN std_logic_vector(3 DOWNTO 0);
	C0 : IN std_logic;
	G : IN std_logic_vector(3 DOWNTO 0);
	C3 : OUT std_logic;
	C2 : OUT std_logic;
	C1 : OUT std_logic
	);
END CLA;

-- Design Ports Information
-- C4	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C3	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C2	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C1	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[3]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[3]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[2]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[1]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[1]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[0]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[0]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C0	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CLA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_C4 : std_logic;
SIGNAL ww_P : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_C0 : std_logic;
SIGNAL ww_G : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_C3 : std_logic;
SIGNAL ww_C2 : std_logic;
SIGNAL ww_C1 : std_logic;
SIGNAL \C4~output_o\ : std_logic;
SIGNAL \C3~output_o\ : std_logic;
SIGNAL \C2~output_o\ : std_logic;
SIGNAL \C1~output_o\ : std_logic;
SIGNAL \P[3]~input_o\ : std_logic;
SIGNAL \G[1]~input_o\ : std_logic;
SIGNAL \P[2]~input_o\ : std_logic;
SIGNAL \inst12~0_combout\ : std_logic;
SIGNAL \G[3]~input_o\ : std_logic;
SIGNAL \P[1]~input_o\ : std_logic;
SIGNAL \inst12~1_combout\ : std_logic;
SIGNAL \inst12~2_combout\ : std_logic;
SIGNAL \G[2]~input_o\ : std_logic;
SIGNAL \inst13~0_combout\ : std_logic;
SIGNAL \P[0]~input_o\ : std_logic;
SIGNAL \C0~input_o\ : std_logic;
SIGNAL \G[0]~input_o\ : std_logic;
SIGNAL \inst14~0_combout\ : std_logic;
SIGNAL \inst14~combout\ : std_logic;
SIGNAL \inst15~combout\ : std_logic;

BEGIN

C4 <= ww_C4;
ww_P <= P;
ww_C0 <= C0;
ww_G <= G;
C3 <= ww_C3;
C2 <= ww_C2;
C1 <= ww_C1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X11_Y0_N23
\C4~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12~2_combout\,
	devoe => ww_devoe,
	o => \C4~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\C3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13~0_combout\,
	devoe => ww_devoe,
	o => \C3~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\C2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14~combout\,
	devoe => ww_devoe,
	o => \C2~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\C1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15~combout\,
	devoe => ww_devoe,
	o => \C1~output_o\);

-- Location: IOIBUF_X0_Y7_N22
\P[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P(3),
	o => \P[3]~input_o\);

-- Location: IOIBUF_X0_Y4_N15
\G[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_G(1),
	o => \G[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\P[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P(2),
	o => \P[2]~input_o\);

-- Location: LCCOMB_X1_Y6_N0
\inst12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12~0_combout\ = (\P[3]~input_o\ & ((\G[2]~input_o\) # ((\G[1]~input_o\ & \P[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G[2]~input_o\,
	datab => \G[1]~input_o\,
	datac => \P[2]~input_o\,
	datad => \P[3]~input_o\,
	combout => \inst12~0_combout\);

-- Location: IOIBUF_X0_Y8_N22
\G[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_G(3),
	o => \G[3]~input_o\);

-- Location: IOIBUF_X0_Y7_N15
\P[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P(1),
	o => \P[1]~input_o\);

-- Location: LCCOMB_X1_Y6_N12
\inst12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12~1_combout\ = (\inst15~combout\ & (\P[2]~input_o\ & \P[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15~combout\,
	datab => \P[2]~input_o\,
	datac => \P[1]~input_o\,
	combout => \inst12~1_combout\);

-- Location: LCCOMB_X1_Y6_N22
\inst12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12~2_combout\ = (\inst12~0_combout\) # ((\G[3]~input_o\) # ((\P[3]~input_o\ & \inst12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P[3]~input_o\,
	datab => \inst12~0_combout\,
	datac => \G[3]~input_o\,
	datad => \inst12~1_combout\,
	combout => \inst12~2_combout\);

-- Location: IOIBUF_X0_Y6_N22
\G[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_G(2),
	o => \G[2]~input_o\);

-- Location: LCCOMB_X1_Y6_N8
\inst13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13~0_combout\ = (\G[2]~input_o\) # ((\inst12~1_combout\) # ((\G[1]~input_o\ & \P[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G[2]~input_o\,
	datab => \G[1]~input_o\,
	datac => \P[2]~input_o\,
	datad => \inst12~1_combout\,
	combout => \inst13~0_combout\);

-- Location: IOIBUF_X7_Y0_N1
\P[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P(0),
	o => \P[0]~input_o\);

-- Location: IOIBUF_X7_Y24_N8
\C0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C0,
	o => \C0~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\G[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_G(0),
	o => \G[0]~input_o\);

-- Location: LCCOMB_X1_Y6_N2
\inst14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14~0_combout\ = (\P[1]~input_o\ & ((\G[0]~input_o\) # ((\P[0]~input_o\ & \C0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P[1]~input_o\,
	datab => \P[0]~input_o\,
	datac => \C0~input_o\,
	datad => \G[0]~input_o\,
	combout => \inst14~0_combout\);

-- Location: LCCOMB_X1_Y6_N4
inst14 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14~combout\ = (\G[1]~input_o\) # (\inst14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G[1]~input_o\,
	datad => \inst14~0_combout\,
	combout => \inst14~combout\);

-- Location: LCCOMB_X1_Y6_N10
inst15 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15~combout\ = (\G[0]~input_o\) # ((\P[0]~input_o\ & \C0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P[0]~input_o\,
	datac => \C0~input_o\,
	datad => \G[0]~input_o\,
	combout => \inst15~combout\);

ww_C4 <= \C4~output_o\;

ww_C3 <= \C3~output_o\;

ww_C2 <= \C2~output_o\;

ww_C1 <= \C1~output_o\;
END structure;


