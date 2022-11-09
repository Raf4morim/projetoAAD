-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "11/07/2022 15:17:30"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_NCEO~	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- ~ALTERA_DATA0~	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO~	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_NCSO~	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO~~padout\ : std_logic;
SIGNAL \~ALTERA_NCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_NCSO~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	parallel_decoder IS
    PORT (
	x : IN std_logic_vector(7 DOWNTO 0);
	m : BUFFER std_logic_vector(3 DOWNTO 0);
	v : BUFFER std_logic
	);
END parallel_decoder;

-- Design Ports Information
-- m[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[3]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[5]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[4]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[6]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[7]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF parallel_decoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_m : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_v : std_logic;
SIGNAL \m[0]~output_o\ : std_logic;
SIGNAL \m[1]~output_o\ : std_logic;
SIGNAL \m[2]~output_o\ : std_logic;
SIGNAL \m[3]~output_o\ : std_logic;
SIGNAL \v~output_o\ : std_logic;
SIGNAL \x[6]~input_o\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \m3|mc1|y~combout\ : std_logic;
SIGNAL \x[7]~input_o\ : std_logic;
SIGNAL \m3|mc3|y~combout\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \m3|mc0|y~combout\ : std_logic;
SIGNAL \x[4]~input_o\ : std_logic;
SIGNAL \x[5]~input_o\ : std_logic;
SIGNAL \m3|mc2|y~combout\ : std_logic;
SIGNAL \m3|m1|y~0_combout\ : std_logic;
SIGNAL \m0|mc0|y~combout\ : std_logic;
SIGNAL \m1|mc0|y~combout\ : std_logic;
SIGNAL \m1|mc2|y~combout\ : std_logic;
SIGNAL \m1|mc1|y~combout\ : std_logic;
SIGNAL \m1|mc3|y~combout\ : std_logic;
SIGNAL \m1|m1|y~0_combout\ : std_logic;
SIGNAL \m2|mc3|y~combout\ : std_logic;
SIGNAL \m2|mc0|y~combout\ : std_logic;
SIGNAL \m2|mc1|y~combout\ : std_logic;
SIGNAL \m2|mc2|y~combout\ : std_logic;
SIGNAL \m2|m1|y~0_combout\ : std_logic;
SIGNAL \m0|m0|y~0_combout\ : std_logic;
SIGNAL \m0|m1|y~0_combout\ : std_logic;
SIGNAL \m0|m1|y~1_combout\ : std_logic;
SIGNAL \m1|mvalid|y~combout\ : std_logic;
SIGNAL \m3|mvalid|y~combout\ : std_logic;
SIGNAL \m0|mvalid|y~combout\ : std_logic;
SIGNAL \m2|mvalid|y~combout\ : std_logic;
SIGNAL \valid|y~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_x <= x;
m <= ww_m;
v <= ww_v;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X26_Y31_N2
\m[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m0|m1|y~1_combout\,
	devoe => ww_devoe,
	o => \m[0]~output_o\);

-- Location: IOOBUF_X33_Y24_N9
\m[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m1|m1|y~0_combout\,
	devoe => ww_devoe,
	o => \m[1]~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\m[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m2|m1|y~0_combout\,
	devoe => ww_devoe,
	o => \m[2]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\m[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m3|m1|y~0_combout\,
	devoe => ww_devoe,
	o => \m[3]~output_o\);

-- Location: IOOBUF_X26_Y31_N9
\v~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \valid|y~combout\,
	devoe => ww_devoe,
	o => \v~output_o\);

-- Location: IOIBUF_X33_Y28_N1
\x[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(6),
	o => \x[6]~input_o\);

-- Location: IOIBUF_X33_Y25_N8
\x[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

-- Location: IOIBUF_X33_Y27_N1
\x[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(3),
	o => \x[3]~input_o\);

-- Location: LCCOMB_X27_Y26_N6
\m3|mc1|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m3|mc1|y~combout\ = \x[2]~input_o\ $ (\x[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[2]~input_o\,
	datac => \x[3]~input_o\,
	combout => \m3|mc1|y~combout\);

-- Location: IOIBUF_X33_Y28_N8
\x[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(7),
	o => \x[7]~input_o\);

-- Location: LCCOMB_X27_Y26_N20
\m3|mc3|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m3|mc3|y~combout\ = \x[6]~input_o\ $ (\x[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[6]~input_o\,
	datac => \x[7]~input_o\,
	combout => \m3|mc3|y~combout\);

-- Location: IOIBUF_X24_Y31_N1
\x[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

-- Location: IOIBUF_X33_Y24_N1
\x[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

-- Location: LCCOMB_X27_Y24_N12
\m3|mc0|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m3|mc0|y~combout\ = \x[1]~input_o\ $ (\x[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[1]~input_o\,
	datac => \x[0]~input_o\,
	combout => \m3|mc0|y~combout\);

-- Location: IOIBUF_X33_Y25_N1
\x[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(4),
	o => \x[4]~input_o\);

-- Location: IOIBUF_X33_Y27_N8
\x[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(5),
	o => \x[5]~input_o\);

-- Location: LCCOMB_X27_Y26_N10
\m3|mc2|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m3|mc2|y~combout\ = \x[4]~input_o\ $ (\x[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[4]~input_o\,
	datad => \x[5]~input_o\,
	combout => \m3|mc2|y~combout\);

-- Location: LCCOMB_X27_Y26_N24
\m3|m1|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m3|m1|y~0_combout\ = (\m3|mc1|y~combout\ & ((\m3|mc3|y~combout\ & ((\m3|mc0|y~combout\) # (\m3|mc2|y~combout\))) # (!\m3|mc3|y~combout\ & (\m3|mc0|y~combout\ & \m3|mc2|y~combout\)))) # (!\m3|mc1|y~combout\ & (\m3|mc3|y~combout\ & (\m3|mc0|y~combout\ & 
-- \m3|mc2|y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|mc1|y~combout\,
	datab => \m3|mc3|y~combout\,
	datac => \m3|mc0|y~combout\,
	datad => \m3|mc2|y~combout\,
	combout => \m3|m1|y~0_combout\);

-- Location: LCCOMB_X27_Y26_N26
\m0|mc0|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m0|mc0|y~combout\ = \x[6]~input_o\ $ (\m3|m1|y~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x[6]~input_o\,
	datad => \m3|m1|y~0_combout\,
	combout => \m0|mc0|y~combout\);

-- Location: LCCOMB_X27_Y24_N30
\m1|mc0|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m1|mc0|y~combout\ = \x[0]~input_o\ $ (\x[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x[0]~input_o\,
	datad => \x[4]~input_o\,
	combout => \m1|mc0|y~combout\);

-- Location: LCCOMB_X27_Y24_N18
\m1|mc2|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m1|mc2|y~combout\ = \x[2]~input_o\ $ (\x[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[2]~input_o\,
	datad => \x[6]~input_o\,
	combout => \m1|mc2|y~combout\);

-- Location: LCCOMB_X27_Y24_N8
\m1|mc1|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m1|mc1|y~combout\ = \x[1]~input_o\ $ (\x[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[1]~input_o\,
	datac => \x[5]~input_o\,
	combout => \m1|mc1|y~combout\);

-- Location: LCCOMB_X27_Y24_N28
\m1|mc3|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m1|mc3|y~combout\ = \x[3]~input_o\ $ (\x[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x[3]~input_o\,
	datad => \x[7]~input_o\,
	combout => \m1|mc3|y~combout\);

-- Location: LCCOMB_X27_Y24_N10
\m1|m1|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m1|m1|y~0_combout\ = (\m1|mc0|y~combout\ & ((\m1|mc2|y~combout\ & ((\m1|mc1|y~combout\) # (\m1|mc3|y~combout\))) # (!\m1|mc2|y~combout\ & (\m1|mc1|y~combout\ & \m1|mc3|y~combout\)))) # (!\m1|mc0|y~combout\ & (\m1|mc2|y~combout\ & (\m1|mc1|y~combout\ & 
-- \m1|mc3|y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1|mc0|y~combout\,
	datab => \m1|mc2|y~combout\,
	datac => \m1|mc1|y~combout\,
	datad => \m1|mc3|y~combout\,
	combout => \m1|m1|y~0_combout\);

-- Location: LCCOMB_X27_Y24_N26
\m2|mc3|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m2|mc3|y~combout\ = \x[5]~input_o\ $ (\x[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x[5]~input_o\,
	datad => \x[7]~input_o\,
	combout => \m2|mc3|y~combout\);

-- Location: LCCOMB_X27_Y24_N20
\m2|mc0|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m2|mc0|y~combout\ = \x[0]~input_o\ $ (\x[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x[0]~input_o\,
	datad => \x[2]~input_o\,
	combout => \m2|mc0|y~combout\);

-- Location: LCCOMB_X27_Y24_N22
\m2|mc1|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m2|mc1|y~combout\ = \x[1]~input_o\ $ (\x[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[1]~input_o\,
	datac => \x[3]~input_o\,
	combout => \m2|mc1|y~combout\);

-- Location: LCCOMB_X27_Y24_N0
\m2|mc2|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m2|mc2|y~combout\ = \x[4]~input_o\ $ (\x[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[4]~input_o\,
	datad => \x[6]~input_o\,
	combout => \m2|mc2|y~combout\);

-- Location: LCCOMB_X27_Y24_N24
\m2|m1|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m2|m1|y~0_combout\ = (\m2|mc3|y~combout\ & ((\m2|mc0|y~combout\ & ((\m2|mc1|y~combout\) # (\m2|mc2|y~combout\))) # (!\m2|mc0|y~combout\ & (\m2|mc1|y~combout\ & \m2|mc2|y~combout\)))) # (!\m2|mc3|y~combout\ & (\m2|mc0|y~combout\ & (\m2|mc1|y~combout\ & 
-- \m2|mc2|y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|mc3|y~combout\,
	datab => \m2|mc0|y~combout\,
	datac => \m2|mc1|y~combout\,
	datad => \m2|mc2|y~combout\,
	combout => \m2|m1|y~0_combout\);

-- Location: LCCOMB_X27_Y26_N4
\m0|m0|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m0|m0|y~0_combout\ = (\m1|m1|y~0_combout\ & (\x[3]~input_o\ & (\m2|m1|y~0_combout\ $ (!\x[5]~input_o\)))) # (!\m1|m1|y~0_combout\ & (!\x[3]~input_o\ & (\m2|m1|y~0_combout\ $ (!\x[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1|m1|y~0_combout\,
	datab => \m2|m1|y~0_combout\,
	datac => \x[3]~input_o\,
	datad => \x[5]~input_o\,
	combout => \m0|m0|y~0_combout\);

-- Location: LCCOMB_X27_Y26_N16
\m0|m1|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m0|m1|y~0_combout\ = (\m1|m1|y~0_combout\ & (!\x[3]~input_o\ & (\m2|m1|y~0_combout\ $ (\x[5]~input_o\)))) # (!\m1|m1|y~0_combout\ & (\x[3]~input_o\ & (\m2|m1|y~0_combout\ $ (\x[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1|m1|y~0_combout\,
	datab => \m2|m1|y~0_combout\,
	datac => \x[3]~input_o\,
	datad => \x[5]~input_o\,
	combout => \m0|m1|y~0_combout\);

-- Location: LCCOMB_X27_Y26_N22
\m0|m1|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m0|m1|y~1_combout\ = (\m0|mc0|y~combout\ & ((\m0|m1|y~0_combout\) # ((!\m0|m0|y~0_combout\ & \x[7]~input_o\)))) # (!\m0|mc0|y~combout\ & (((\x[7]~input_o\ & \m0|m1|y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m0|mc0|y~combout\,
	datab => \m0|m0|y~0_combout\,
	datac => \x[7]~input_o\,
	datad => \m0|m1|y~0_combout\,
	combout => \m0|m1|y~1_combout\);

-- Location: LCCOMB_X27_Y24_N16
\m1|mvalid|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m1|mvalid|y~combout\ = (\m1|mc0|y~combout\ & ((\m1|mc2|y~combout\ & ((\m1|mc1|y~combout\) # (\m1|mc3|y~combout\))) # (!\m1|mc2|y~combout\ & (\m1|mc1|y~combout\ $ (!\m1|mc3|y~combout\))))) # (!\m1|mc0|y~combout\ & ((\m1|mc2|y~combout\ & 
-- (\m1|mc1|y~combout\ $ (!\m1|mc3|y~combout\))) # (!\m1|mc2|y~combout\ & ((!\m1|mc3|y~combout\) # (!\m1|mc1|y~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1|mc0|y~combout\,
	datab => \m1|mc2|y~combout\,
	datac => \m1|mc1|y~combout\,
	datad => \m1|mc3|y~combout\,
	combout => \m1|mvalid|y~combout\);

-- Location: LCCOMB_X27_Y26_N18
\m3|mvalid|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m3|mvalid|y~combout\ = (\m3|mc1|y~combout\ & ((\m3|mc3|y~combout\ & ((\m3|mc0|y~combout\) # (\m3|mc2|y~combout\))) # (!\m3|mc3|y~combout\ & (\m3|mc0|y~combout\ $ (!\m3|mc2|y~combout\))))) # (!\m3|mc1|y~combout\ & ((\m3|mc3|y~combout\ & 
-- (\m3|mc0|y~combout\ $ (!\m3|mc2|y~combout\))) # (!\m3|mc3|y~combout\ & ((!\m3|mc2|y~combout\) # (!\m3|mc0|y~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m3|mc1|y~combout\,
	datab => \m3|mc3|y~combout\,
	datac => \m3|mc0|y~combout\,
	datad => \m3|mc2|y~combout\,
	combout => \m3|mvalid|y~combout\);

-- Location: LCCOMB_X27_Y26_N8
\m0|mvalid|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m0|mvalid|y~combout\ = (\m0|mc0|y~combout\ & ((\m0|m0|y~0_combout\ & (\x[7]~input_o\ $ (!\m0|m1|y~0_combout\))) # (!\m0|m0|y~0_combout\ & ((\x[7]~input_o\) # (\m0|m1|y~0_combout\))))) # (!\m0|mc0|y~combout\ & ((\m0|m0|y~0_combout\ & 
-- ((!\m0|m1|y~0_combout\) # (!\x[7]~input_o\))) # (!\m0|m0|y~0_combout\ & (\x[7]~input_o\ $ (!\m0|m1|y~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011001101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m0|mc0|y~combout\,
	datab => \m0|m0|y~0_combout\,
	datac => \x[7]~input_o\,
	datad => \m0|m1|y~0_combout\,
	combout => \m0|mvalid|y~combout\);

-- Location: LCCOMB_X27_Y24_N6
\m2|mvalid|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m2|mvalid|y~combout\ = (\m2|mc3|y~combout\ & ((\m2|mc0|y~combout\ & ((\m2|mc1|y~combout\) # (\m2|mc2|y~combout\))) # (!\m2|mc0|y~combout\ & (\m2|mc1|y~combout\ $ (!\m2|mc2|y~combout\))))) # (!\m2|mc3|y~combout\ & ((\m2|mc0|y~combout\ & 
-- (\m2|mc1|y~combout\ $ (!\m2|mc2|y~combout\))) # (!\m2|mc0|y~combout\ & ((!\m2|mc2|y~combout\) # (!\m2|mc1|y~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m2|mc3|y~combout\,
	datab => \m2|mc0|y~combout\,
	datac => \m2|mc1|y~combout\,
	datad => \m2|mc2|y~combout\,
	combout => \m2|mvalid|y~combout\);

-- Location: LCCOMB_X27_Y26_N12
\valid|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \valid|y~combout\ = (\m1|mvalid|y~combout\ & (\m3|mvalid|y~combout\ & (\m0|mvalid|y~combout\ & \m2|mvalid|y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1|mvalid|y~combout\,
	datab => \m3|mvalid|y~combout\,
	datac => \m0|mvalid|y~combout\,
	datad => \m2|mvalid|y~combout\,
	combout => \valid|y~combout\);

ww_m(0) <= \m[0]~output_o\;

ww_m(1) <= \m[1]~output_o\;

ww_m(2) <= \m[2]~output_o\;

ww_m(3) <= \m[3]~output_o\;

ww_v <= \v~output_o\;
END structure;


