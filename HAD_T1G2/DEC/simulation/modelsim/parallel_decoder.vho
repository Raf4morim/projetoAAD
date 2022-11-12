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

-- DATE "11/12/2022 18:19:53"

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

ENTITY 	popCounter_8bitParallelOpt IS
    PORT (
	d : IN std_logic_vector(7 DOWNTO 0);
	c : OUT std_logic_vector(3 DOWNTO 0)
	);
END popCounter_8bitParallelOpt;

-- Design Ports Information
-- c[0]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[1]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[3]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[0]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[1]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[2]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[3]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[4]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[5]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[6]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[7]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF popCounter_8bitParallelOpt IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_d : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_c : std_logic_vector(3 DOWNTO 0);
SIGNAL \c[0]~output_o\ : std_logic;
SIGNAL \c[1]~output_o\ : std_logic;
SIGNAL \c[2]~output_o\ : std_logic;
SIGNAL \c[3]~output_o\ : std_logic;
SIGNAL \d[0]~input_o\ : std_logic;
SIGNAL \d[3]~input_o\ : std_logic;
SIGNAL \d[2]~input_o\ : std_logic;
SIGNAL \d[1]~input_o\ : std_logic;
SIGNAL \fA10|hA0|xor20|y~combout\ : std_logic;
SIGNAL \d[6]~input_o\ : std_logic;
SIGNAL \d[5]~input_o\ : std_logic;
SIGNAL \d[7]~input_o\ : std_logic;
SIGNAL \d[4]~input_o\ : std_logic;
SIGNAL \fA11|hA0|xor20|y~combout\ : std_logic;
SIGNAL \fA20|hA0|xor20|y~combout\ : std_logic;
SIGNAL \fA11|hA0|and20|y~combout\ : std_logic;
SIGNAL \fA10|fA0|xor21|y~0_combout\ : std_logic;
SIGNAL \fA20|hA0|and20|y~combout\ : std_logic;
SIGNAL \fA11|fA0|xor20|y~combout\ : std_logic;
SIGNAL \fA20|fA10|xor21|y~0_combout\ : std_logic;
SIGNAL \fA10|fA0|and20|y~combout\ : std_logic;
SIGNAL \fA11|fA0|and20|y~combout\ : std_logic;
SIGNAL \fA20|fA10|or20|y~0_combout\ : std_logic;
SIGNAL \fA20|fA11|xor21|y~0_combout\ : std_logic;
SIGNAL \fA20|fA11|and20|y~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_d <= d;
c <= ww_c;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X33_Y11_N2
\c[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fA20|hA0|xor20|y~combout\,
	devoe => ww_devoe,
	o => \c[0]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\c[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fA20|fA10|xor21|y~0_combout\,
	devoe => ww_devoe,
	o => \c[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\c[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fA20|fA11|xor21|y~0_combout\,
	devoe => ww_devoe,
	o => \c[2]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\c[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fA20|fA11|and20|y~combout\,
	devoe => ww_devoe,
	o => \c[3]~output_o\);

-- Location: IOIBUF_X22_Y0_N1
\d[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(0),
	o => \d[0]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\d[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(3),
	o => \d[3]~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\d[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(2),
	o => \d[2]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\d[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(1),
	o => \d[1]~input_o\);

-- Location: LCCOMB_X26_Y4_N8
\fA10|hA0|xor20|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fA10|hA0|xor20|y~combout\ = \d[0]~input_o\ $ (\d[3]~input_o\ $ (\d[2]~input_o\ $ (\d[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d[0]~input_o\,
	datab => \d[3]~input_o\,
	datac => \d[2]~input_o\,
	datad => \d[1]~input_o\,
	combout => \fA10|hA0|xor20|y~combout\);

-- Location: IOIBUF_X24_Y0_N1
\d[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(6),
	o => \d[6]~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\d[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(5),
	o => \d[5]~input_o\);

-- Location: IOIBUF_X33_Y10_N1
\d[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(7),
	o => \d[7]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\d[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(4),
	o => \d[4]~input_o\);

-- Location: LCCOMB_X26_Y4_N10
\fA11|hA0|xor20|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fA11|hA0|xor20|y~combout\ = \d[6]~input_o\ $ (\d[5]~input_o\ $ (\d[7]~input_o\ $ (\d[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d[6]~input_o\,
	datab => \d[5]~input_o\,
	datac => \d[7]~input_o\,
	datad => \d[4]~input_o\,
	combout => \fA11|hA0|xor20|y~combout\);

-- Location: LCCOMB_X26_Y4_N4
\fA20|hA0|xor20|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fA20|hA0|xor20|y~combout\ = \fA10|hA0|xor20|y~combout\ $ (\fA11|hA0|xor20|y~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fA10|hA0|xor20|y~combout\,
	datad => \fA11|hA0|xor20|y~combout\,
	combout => \fA20|hA0|xor20|y~combout\);

-- Location: LCCOMB_X26_Y4_N18
\fA11|hA0|and20|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fA11|hA0|and20|y~combout\ = (\d[6]~input_o\ & (!\d[7]~input_o\ & (\d[5]~input_o\ $ (\d[4]~input_o\)))) # (!\d[6]~input_o\ & (\d[7]~input_o\ & (\d[5]~input_o\ $ (\d[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d[6]~input_o\,
	datab => \d[5]~input_o\,
	datac => \d[7]~input_o\,
	datad => \d[4]~input_o\,
	combout => \fA11|hA0|and20|y~combout\);

-- Location: LCCOMB_X26_Y4_N24
\fA10|fA0|xor21|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fA10|fA0|xor21|y~0_combout\ = (\d[0]~input_o\ & ((\d[3]~input_o\ & ((!\d[1]~input_o\) # (!\d[2]~input_o\))) # (!\d[3]~input_o\ & ((\d[2]~input_o\) # (\d[1]~input_o\))))) # (!\d[0]~input_o\ & ((\d[3]~input_o\ & ((\d[2]~input_o\) # (\d[1]~input_o\))) # 
-- (!\d[3]~input_o\ & (\d[2]~input_o\ & \d[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d[0]~input_o\,
	datab => \d[3]~input_o\,
	datac => \d[2]~input_o\,
	datad => \d[1]~input_o\,
	combout => \fA10|fA0|xor21|y~0_combout\);

-- Location: LCCOMB_X26_Y4_N22
\fA20|hA0|and20|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fA20|hA0|and20|y~combout\ = (\fA10|hA0|xor20|y~combout\ & \fA11|hA0|xor20|y~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fA10|hA0|xor20|y~combout\,
	datad => \fA11|hA0|xor20|y~combout\,
	combout => \fA20|hA0|and20|y~combout\);

-- Location: LCCOMB_X26_Y4_N28
\fA11|fA0|xor20|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fA11|fA0|xor20|y~combout\ = (\d[6]~input_o\ & (\d[7]~input_o\ $ (((\d[5]~input_o\ & \d[4]~input_o\))))) # (!\d[6]~input_o\ & (\d[5]~input_o\ & ((\d[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d[6]~input_o\,
	datab => \d[5]~input_o\,
	datac => \d[7]~input_o\,
	datad => \d[4]~input_o\,
	combout => \fA11|fA0|xor20|y~combout\);

-- Location: LCCOMB_X26_Y4_N30
\fA20|fA10|xor21|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fA20|fA10|xor21|y~0_combout\ = \fA11|hA0|and20|y~combout\ $ (\fA10|fA0|xor21|y~0_combout\ $ (\fA20|hA0|and20|y~combout\ $ (\fA11|fA0|xor20|y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fA11|hA0|and20|y~combout\,
	datab => \fA10|fA0|xor21|y~0_combout\,
	datac => \fA20|hA0|and20|y~combout\,
	datad => \fA11|fA0|xor20|y~combout\,
	combout => \fA20|fA10|xor21|y~0_combout\);

-- Location: LCCOMB_X26_Y4_N0
\fA10|fA0|and20|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fA10|fA0|and20|y~combout\ = (\d[0]~input_o\ & (\d[3]~input_o\ & (\d[2]~input_o\ & \d[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d[0]~input_o\,
	datab => \d[3]~input_o\,
	datac => \d[2]~input_o\,
	datad => \d[1]~input_o\,
	combout => \fA10|fA0|and20|y~combout\);

-- Location: LCCOMB_X26_Y4_N26
\fA11|fA0|and20|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fA11|fA0|and20|y~combout\ = (\d[6]~input_o\ & (\d[5]~input_o\ & (\d[7]~input_o\ & \d[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d[6]~input_o\,
	datab => \d[5]~input_o\,
	datac => \d[7]~input_o\,
	datad => \d[4]~input_o\,
	combout => \fA11|fA0|and20|y~combout\);

-- Location: LCCOMB_X26_Y4_N12
\fA20|fA10|or20|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fA20|fA10|or20|y~0_combout\ = (\fA10|fA0|xor21|y~0_combout\ & ((\fA20|hA0|and20|y~combout\) # (\fA11|hA0|and20|y~combout\ $ (\fA11|fA0|xor20|y~combout\)))) # (!\fA10|fA0|xor21|y~0_combout\ & (\fA20|hA0|and20|y~combout\ & (\fA11|hA0|and20|y~combout\ $ 
-- (\fA11|fA0|xor20|y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fA11|hA0|and20|y~combout\,
	datab => \fA10|fA0|xor21|y~0_combout\,
	datac => \fA20|hA0|and20|y~combout\,
	datad => \fA11|fA0|xor20|y~combout\,
	combout => \fA20|fA10|or20|y~0_combout\);

-- Location: LCCOMB_X26_Y4_N6
\fA20|fA11|xor21|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fA20|fA11|xor21|y~0_combout\ = \fA10|fA0|and20|y~combout\ $ (\fA11|fA0|and20|y~combout\ $ (\fA20|fA10|or20|y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fA10|fA0|and20|y~combout\,
	datac => \fA11|fA0|and20|y~combout\,
	datad => \fA20|fA10|or20|y~0_combout\,
	combout => \fA20|fA11|xor21|y~0_combout\);

-- Location: LCCOMB_X26_Y4_N16
\fA20|fA11|and20|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fA20|fA11|and20|y~combout\ = (\fA10|fA0|and20|y~combout\ & \fA11|fA0|and20|y~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fA10|fA0|and20|y~combout\,
	datac => \fA11|fA0|and20|y~combout\,
	combout => \fA20|fA11|and20|y~combout\);

ww_c(0) <= \c[0]~output_o\;

ww_c(1) <= \c[1]~output_o\;

ww_c(2) <= \c[2]~output_o\;

ww_c(3) <= \c[3]~output_o\;
END structure;


