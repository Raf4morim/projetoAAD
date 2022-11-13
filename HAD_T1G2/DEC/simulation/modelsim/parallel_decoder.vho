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

-- DATE "11/13/2022 13:39:51"

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

ENTITY 	full_parallel_decoder IS
    PORT (
	valid : OUT std_logic;
	y : IN std_logic_vector(7 DOWNTO 0);
	m : OUT std_logic_vector(3 DOWNTO 0)
	);
END full_parallel_decoder;

-- Design Ports Information
-- valid	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[3]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[0]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF full_parallel_decoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_valid : std_logic;
SIGNAL ww_y : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_m : std_logic_vector(3 DOWNTO 0);
SIGNAL \valid~output_o\ : std_logic;
SIGNAL \m[3]~output_o\ : std_logic;
SIGNAL \m[2]~output_o\ : std_logic;
SIGNAL \m[1]~output_o\ : std_logic;
SIGNAL \m[0]~output_o\ : std_logic;
SIGNAL \y[4]~input_o\ : std_logic;
SIGNAL \y[7]~input_o\ : std_logic;
SIGNAL \y[6]~input_o\ : std_logic;
SIGNAL \y[5]~input_o\ : std_logic;
SIGNAL \inst19|inst2~0_combout\ : std_logic;
SIGNAL \inst19|inst26~1_combout\ : std_logic;
SIGNAL \y[0]~input_o\ : std_logic;
SIGNAL \y[1]~input_o\ : std_logic;
SIGNAL \y[2]~input_o\ : std_logic;
SIGNAL \y[3]~input_o\ : std_logic;
SIGNAL \inst19|inst2~1_combout\ : std_logic;
SIGNAL \inst19|inst26~0_combout\ : std_logic;
SIGNAL \inst19|inst26~2_combout\ : std_logic;
SIGNAL \inst20|inst2~0_combout\ : std_logic;
SIGNAL \inst20|inst2~1_combout\ : std_logic;
SIGNAL \inst20|inst26~1_combout\ : std_logic;
SIGNAL \inst20|inst26~0_combout\ : std_logic;
SIGNAL \inst20|inst26~2_combout\ : std_logic;
SIGNAL \inst21|inst2~0_combout\ : std_logic;
SIGNAL \inst21|inst26~0_combout\ : std_logic;
SIGNAL \inst21|inst26~1_combout\ : std_logic;
SIGNAL \inst21|inst2~1_combout\ : std_logic;
SIGNAL \inst21|inst26~2_combout\ : std_logic;
SIGNAL \inst4~0_combout\ : std_logic;
SIGNAL \inst19|inst2~2_combout\ : std_logic;
SIGNAL \m_1~combout\ : std_logic;
SIGNAL \inst20|inst2~2_combout\ : std_logic;
SIGNAL \m_2~combout\ : std_logic;
SIGNAL \inst21|inst2~2_combout\ : std_logic;
SIGNAL \m_3~combout\ : std_logic;
SIGNAL \inst15|fA11|hA0|and20|y~0_combout\ : std_logic;
SIGNAL \inst15|fA20|hA0|and20|y~1_combout\ : std_logic;
SIGNAL \inst15|fA20|hA0|and20|y~0_combout\ : std_logic;
SIGNAL \inst15|fA20|hA0|and20|y~2_combout\ : std_logic;
SIGNAL \inst15|fA20|fA10|or20|y~0_combout\ : std_logic;
SIGNAL \inst13~combout\ : std_logic;
SIGNAL \inst12~combout\ : std_logic;
SIGNAL \inst15|fA10|fA0|xor21|y~0_combout\ : std_logic;
SIGNAL \inst15|hA02|and20|y~combout\ : std_logic;
SIGNAL \inst15|fA20|fA10|or20|y~1_combout\ : std_logic;
SIGNAL \inst15|fA10|fA0|and20|y~0_combout\ : std_logic;
SIGNAL \inst15|fA10|fA0|and20|y~1_combout\ : std_logic;
SIGNAL \inst15|fA11|fA0|and20|y~combout\ : std_logic;
SIGNAL \inst16~combout\ : std_logic;
SIGNAL \ALT_INV_inst4~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

valid <= ww_valid;
ww_y <= y;
m <= ww_m;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_inst4~0_combout\ <= NOT \inst4~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X33_Y22_N2
\valid~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst4~0_combout\,
	devoe => ww_devoe,
	o => \valid~output_o\);

-- Location: IOOBUF_X33_Y24_N2
\m[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_1~combout\,
	devoe => ww_devoe,
	o => \m[3]~output_o\);

-- Location: IOOBUF_X33_Y27_N9
\m[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_2~combout\,
	devoe => ww_devoe,
	o => \m[2]~output_o\);

-- Location: IOOBUF_X33_Y28_N9
\m[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_3~combout\,
	devoe => ww_devoe,
	o => \m[1]~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\m[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16~combout\,
	devoe => ww_devoe,
	o => \m[0]~output_o\);

-- Location: IOIBUF_X33_Y14_N8
\y[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(4),
	o => \y[4]~input_o\);

-- Location: IOIBUF_X33_Y15_N8
\y[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(7),
	o => \y[7]~input_o\);

-- Location: IOIBUF_X33_Y12_N1
\y[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(6),
	o => \y[6]~input_o\);

-- Location: IOIBUF_X33_Y15_N1
\y[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(5),
	o => \y[5]~input_o\);

-- Location: LCCOMB_X29_Y18_N16
\inst19|inst2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst19|inst2~0_combout\ = (\y[4]~input_o\ & (!\y[5]~input_o\ & (\y[7]~input_o\ $ (\y[6]~input_o\)))) # (!\y[4]~input_o\ & (\y[5]~input_o\ & (\y[7]~input_o\ $ (\y[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[4]~input_o\,
	datab => \y[7]~input_o\,
	datac => \y[6]~input_o\,
	datad => \y[5]~input_o\,
	combout => \inst19|inst2~0_combout\);

-- Location: LCCOMB_X29_Y18_N26
\inst19|inst26~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst19|inst26~1_combout\ = (\y[4]~input_o\ & (\y[5]~input_o\ & (\y[7]~input_o\ $ (!\y[6]~input_o\)))) # (!\y[4]~input_o\ & (!\y[5]~input_o\ & (\y[7]~input_o\ $ (!\y[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[4]~input_o\,
	datab => \y[7]~input_o\,
	datac => \y[6]~input_o\,
	datad => \y[5]~input_o\,
	combout => \inst19|inst26~1_combout\);

-- Location: IOIBUF_X33_Y24_N8
\y[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(0),
	o => \y[0]~input_o\);

-- Location: IOIBUF_X33_Y22_N8
\y[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(1),
	o => \y[1]~input_o\);

-- Location: IOIBUF_X33_Y14_N1
\y[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(2),
	o => \y[2]~input_o\);

-- Location: IOIBUF_X33_Y25_N1
\y[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(3),
	o => \y[3]~input_o\);

-- Location: LCCOMB_X31_Y18_N2
\inst19|inst2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst19|inst2~1_combout\ = (\y[0]~input_o\ & (!\y[1]~input_o\ & (\y[2]~input_o\ $ (\y[3]~input_o\)))) # (!\y[0]~input_o\ & (\y[1]~input_o\ & (\y[2]~input_o\ $ (\y[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[0]~input_o\,
	datab => \y[1]~input_o\,
	datac => \y[2]~input_o\,
	datad => \y[3]~input_o\,
	combout => \inst19|inst2~1_combout\);

-- Location: LCCOMB_X31_Y18_N24
\inst19|inst26~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst19|inst26~0_combout\ = (\y[0]~input_o\ & (\y[1]~input_o\ & (\y[2]~input_o\ $ (!\y[3]~input_o\)))) # (!\y[0]~input_o\ & (!\y[1]~input_o\ & (\y[2]~input_o\ $ (!\y[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[0]~input_o\,
	datab => \y[1]~input_o\,
	datac => \y[2]~input_o\,
	datad => \y[3]~input_o\,
	combout => \inst19|inst26~0_combout\);

-- Location: LCCOMB_X27_Y18_N24
\inst19|inst26~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst19|inst26~2_combout\ = (\inst19|inst2~0_combout\ & ((\inst19|inst26~1_combout\ $ (\inst19|inst2~1_combout\)) # (!\inst19|inst26~0_combout\))) # (!\inst19|inst2~0_combout\ & ((\inst19|inst26~0_combout\) # (\inst19|inst26~1_combout\ $ 
-- (\inst19|inst2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|inst2~0_combout\,
	datab => \inst19|inst26~1_combout\,
	datac => \inst19|inst2~1_combout\,
	datad => \inst19|inst26~0_combout\,
	combout => \inst19|inst26~2_combout\);

-- Location: LCCOMB_X29_Y18_N12
\inst20|inst2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst20|inst2~0_combout\ = (\y[4]~input_o\ & (!\y[6]~input_o\ & (\y[7]~input_o\ $ (\y[5]~input_o\)))) # (!\y[4]~input_o\ & (\y[6]~input_o\ & (\y[7]~input_o\ $ (\y[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[4]~input_o\,
	datab => \y[7]~input_o\,
	datac => \y[6]~input_o\,
	datad => \y[5]~input_o\,
	combout => \inst20|inst2~0_combout\);

-- Location: LCCOMB_X31_Y18_N22
\inst20|inst2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst20|inst2~1_combout\ = (\y[0]~input_o\ & (!\y[2]~input_o\ & (\y[1]~input_o\ $ (\y[3]~input_o\)))) # (!\y[0]~input_o\ & (\y[2]~input_o\ & (\y[1]~input_o\ $ (\y[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[0]~input_o\,
	datab => \y[1]~input_o\,
	datac => \y[2]~input_o\,
	datad => \y[3]~input_o\,
	combout => \inst20|inst2~1_combout\);

-- Location: LCCOMB_X29_Y18_N14
\inst20|inst26~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst20|inst26~1_combout\ = (\y[4]~input_o\ & (\y[6]~input_o\ & (\y[7]~input_o\ $ (!\y[5]~input_o\)))) # (!\y[4]~input_o\ & (!\y[6]~input_o\ & (\y[7]~input_o\ $ (!\y[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[4]~input_o\,
	datab => \y[7]~input_o\,
	datac => \y[6]~input_o\,
	datad => \y[5]~input_o\,
	combout => \inst20|inst26~1_combout\);

-- Location: LCCOMB_X31_Y18_N4
\inst20|inst26~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst20|inst26~0_combout\ = (\y[0]~input_o\ & (\y[2]~input_o\ & (\y[1]~input_o\ $ (!\y[3]~input_o\)))) # (!\y[0]~input_o\ & (!\y[2]~input_o\ & (\y[1]~input_o\ $ (!\y[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[0]~input_o\,
	datab => \y[1]~input_o\,
	datac => \y[2]~input_o\,
	datad => \y[3]~input_o\,
	combout => \inst20|inst26~0_combout\);

-- Location: LCCOMB_X30_Y18_N16
\inst20|inst26~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst20|inst26~2_combout\ = (\inst20|inst2~0_combout\ & ((\inst20|inst2~1_combout\ $ (\inst20|inst26~1_combout\)) # (!\inst20|inst26~0_combout\))) # (!\inst20|inst2~0_combout\ & ((\inst20|inst26~0_combout\) # (\inst20|inst2~1_combout\ $ 
-- (\inst20|inst26~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|inst2~0_combout\,
	datab => \inst20|inst2~1_combout\,
	datac => \inst20|inst26~1_combout\,
	datad => \inst20|inst26~0_combout\,
	combout => \inst20|inst26~2_combout\);

-- Location: LCCOMB_X31_Y18_N10
\inst21|inst2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst21|inst2~0_combout\ = (\y[6]~input_o\ & (!\y[2]~input_o\ & (\y[7]~input_o\ $ (\y[3]~input_o\)))) # (!\y[6]~input_o\ & (\y[2]~input_o\ & (\y[7]~input_o\ $ (\y[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[6]~input_o\,
	datab => \y[2]~input_o\,
	datac => \y[7]~input_o\,
	datad => \y[3]~input_o\,
	combout => \inst21|inst2~0_combout\);

-- Location: LCCOMB_X31_Y18_N16
\inst21|inst26~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst21|inst26~0_combout\ = (\y[4]~input_o\ & (\y[0]~input_o\ & (\y[1]~input_o\ $ (!\y[5]~input_o\)))) # (!\y[4]~input_o\ & (!\y[0]~input_o\ & (\y[1]~input_o\ $ (!\y[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[4]~input_o\,
	datab => \y[1]~input_o\,
	datac => \y[0]~input_o\,
	datad => \y[5]~input_o\,
	combout => \inst21|inst26~0_combout\);

-- Location: LCCOMB_X31_Y18_N30
\inst21|inst26~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst21|inst26~1_combout\ = (\y[6]~input_o\ & (\y[2]~input_o\ & (\y[7]~input_o\ $ (!\y[3]~input_o\)))) # (!\y[6]~input_o\ & (!\y[2]~input_o\ & (\y[7]~input_o\ $ (!\y[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[6]~input_o\,
	datab => \y[2]~input_o\,
	datac => \y[7]~input_o\,
	datad => \y[3]~input_o\,
	combout => \inst21|inst26~1_combout\);

-- Location: LCCOMB_X31_Y18_N20
\inst21|inst2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst21|inst2~1_combout\ = (\y[4]~input_o\ & (!\y[0]~input_o\ & (\y[1]~input_o\ $ (\y[5]~input_o\)))) # (!\y[4]~input_o\ & (\y[0]~input_o\ & (\y[1]~input_o\ $ (\y[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[4]~input_o\,
	datab => \y[1]~input_o\,
	datac => \y[0]~input_o\,
	datad => \y[5]~input_o\,
	combout => \inst21|inst2~1_combout\);

-- Location: LCCOMB_X31_Y18_N0
\inst21|inst26~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst21|inst26~2_combout\ = (\inst21|inst2~0_combout\ & ((\inst21|inst26~1_combout\ $ (\inst21|inst2~1_combout\)) # (!\inst21|inst26~0_combout\))) # (!\inst21|inst2~0_combout\ & ((\inst21|inst26~0_combout\) # (\inst21|inst26~1_combout\ $ 
-- (\inst21|inst2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|inst2~0_combout\,
	datab => \inst21|inst26~0_combout\,
	datac => \inst21|inst26~1_combout\,
	datad => \inst21|inst2~1_combout\,
	combout => \inst21|inst26~2_combout\);

-- Location: LCCOMB_X31_Y18_N26
\inst4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4~0_combout\ = ((!\inst21|inst26~2_combout\) # (!\inst20|inst26~2_combout\)) # (!\inst19|inst26~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|inst26~2_combout\,
	datac => \inst20|inst26~2_combout\,
	datad => \inst21|inst26~2_combout\,
	combout => \inst4~0_combout\);

-- Location: LCCOMB_X27_Y18_N10
\inst19|inst2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst19|inst2~2_combout\ = (\inst19|inst2~0_combout\ & (((!\inst19|inst26~1_combout\ & \inst19|inst2~1_combout\)) # (!\inst19|inst26~0_combout\))) # (!\inst19|inst2~0_combout\ & (!\inst19|inst26~1_combout\ & (\inst19|inst2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|inst2~0_combout\,
	datab => \inst19|inst26~1_combout\,
	datac => \inst19|inst2~1_combout\,
	datad => \inst19|inst26~0_combout\,
	combout => \inst19|inst2~2_combout\);

-- Location: LCCOMB_X31_Y18_N28
m_1 : cycloneiv_lcell_comb
-- Equation(s):
-- \m_1~combout\ = (\inst19|inst2~2_combout\ & (\inst19|inst26~2_combout\ & (\inst20|inst26~2_combout\ & \inst21|inst26~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|inst2~2_combout\,
	datab => \inst19|inst26~2_combout\,
	datac => \inst20|inst26~2_combout\,
	datad => \inst21|inst26~2_combout\,
	combout => \m_1~combout\);

-- Location: LCCOMB_X30_Y18_N10
\inst20|inst2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst20|inst2~2_combout\ = (\inst20|inst2~0_combout\ & (((\inst20|inst2~1_combout\ & !\inst20|inst26~1_combout\)) # (!\inst20|inst26~0_combout\))) # (!\inst20|inst2~0_combout\ & (\inst20|inst2~1_combout\ & (!\inst20|inst26~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|inst2~0_combout\,
	datab => \inst20|inst2~1_combout\,
	datac => \inst20|inst26~1_combout\,
	datad => \inst20|inst26~0_combout\,
	combout => \inst20|inst2~2_combout\);

-- Location: LCCOMB_X31_Y18_N14
m_2 : cycloneiv_lcell_comb
-- Equation(s):
-- \m_2~combout\ = (\inst20|inst2~2_combout\ & (\inst19|inst26~2_combout\ & (\inst20|inst26~2_combout\ & \inst21|inst26~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|inst2~2_combout\,
	datab => \inst19|inst26~2_combout\,
	datac => \inst20|inst26~2_combout\,
	datad => \inst21|inst26~2_combout\,
	combout => \m_2~combout\);

-- Location: LCCOMB_X31_Y18_N8
\inst21|inst2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst21|inst2~2_combout\ = (\inst21|inst2~0_combout\ & (((!\inst21|inst26~1_combout\ & \inst21|inst2~1_combout\)) # (!\inst21|inst26~0_combout\))) # (!\inst21|inst2~0_combout\ & (((!\inst21|inst26~1_combout\ & \inst21|inst2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|inst2~0_combout\,
	datab => \inst21|inst26~0_combout\,
	datac => \inst21|inst26~1_combout\,
	datad => \inst21|inst2~1_combout\,
	combout => \inst21|inst2~2_combout\);

-- Location: LCCOMB_X31_Y18_N18
m_3 : cycloneiv_lcell_comb
-- Equation(s):
-- \m_3~combout\ = (\inst20|inst26~2_combout\ & (\inst19|inst26~2_combout\ & (\inst21|inst2~2_combout\ & \inst21|inst26~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|inst26~2_combout\,
	datab => \inst19|inst26~2_combout\,
	datac => \inst21|inst2~2_combout\,
	datad => \inst21|inst26~2_combout\,
	combout => \m_3~combout\);

-- Location: LCCOMB_X31_Y18_N6
\inst15|fA11|hA0|and20|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst15|fA11|hA0|and20|y~0_combout\ = \y[3]~input_o\ $ (\m_3~combout\ $ (\y[2]~input_o\ $ (\m_1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[3]~input_o\,
	datab => \m_3~combout\,
	datac => \y[2]~input_o\,
	datad => \m_1~combout\,
	combout => \inst15|fA11|hA0|and20|y~0_combout\);

-- Location: LCCOMB_X29_Y18_N0
\inst15|fA20|hA0|and20|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst15|fA20|hA0|and20|y~1_combout\ = \y[1]~input_o\ $ (\inst15|fA11|hA0|and20|y~0_combout\ $ (\y[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[1]~input_o\,
	datac => \inst15|fA11|hA0|and20|y~0_combout\,
	datad => \y[0]~input_o\,
	combout => \inst15|fA20|hA0|and20|y~1_combout\);

-- Location: LCCOMB_X29_Y18_N30
\inst15|fA20|hA0|and20|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst15|fA20|hA0|and20|y~0_combout\ = \y[4]~input_o\ $ (\y[7]~input_o\ $ (\y[6]~input_o\ $ (\y[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[4]~input_o\,
	datab => \y[7]~input_o\,
	datac => \y[6]~input_o\,
	datad => \y[5]~input_o\,
	combout => \inst15|fA20|hA0|and20|y~0_combout\);

-- Location: LCCOMB_X29_Y18_N10
\inst15|fA20|hA0|and20|y~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst15|fA20|hA0|and20|y~2_combout\ = (\m_2~combout\ & (!\inst15|fA20|hA0|and20|y~1_combout\ & (\inst15|fA20|hA0|and20|y~0_combout\ $ (\m_1~combout\)))) # (!\m_2~combout\ & (\inst15|fA20|hA0|and20|y~1_combout\ & (\inst15|fA20|hA0|and20|y~0_combout\ $ 
-- (!\m_1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2~combout\,
	datab => \inst15|fA20|hA0|and20|y~1_combout\,
	datac => \inst15|fA20|hA0|and20|y~0_combout\,
	datad => \m_1~combout\,
	combout => \inst15|fA20|hA0|and20|y~2_combout\);

-- Location: LCCOMB_X29_Y18_N28
\inst15|fA20|fA10|or20|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst15|fA20|fA10|or20|y~0_combout\ = (\inst15|fA11|hA0|and20|y~0_combout\ & ((\y[0]~input_o\) # (\m_2~combout\ $ (\y[1]~input_o\)))) # (!\inst15|fA11|hA0|and20|y~0_combout\ & (\y[0]~input_o\ & (\m_2~combout\ $ (\y[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2~combout\,
	datab => \y[1]~input_o\,
	datac => \inst15|fA11|hA0|and20|y~0_combout\,
	datad => \y[0]~input_o\,
	combout => \inst15|fA20|fA10|or20|y~0_combout\);

-- Location: LCCOMB_X29_Y18_N4
inst13 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst13~combout\ = \m_1~combout\ $ (\y[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_1~combout\,
	datac => \y[6]~input_o\,
	combout => \inst13~combout\);

-- Location: LCCOMB_X29_Y18_N22
inst12 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst12~combout\ = \m_2~combout\ $ (\y[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2~combout\,
	datad => \y[5]~input_o\,
	combout => \inst12~combout\);

-- Location: LCCOMB_X29_Y18_N8
\inst15|fA10|fA0|xor21|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst15|fA10|fA0|xor21|y~0_combout\ = (\y[4]~input_o\ & ((\inst13~combout\ & ((\y[7]~input_o\) # (!\inst12~combout\))) # (!\inst13~combout\ & ((\inst12~combout\) # (!\y[7]~input_o\))))) # (!\y[4]~input_o\ & ((\inst13~combout\ & ((\inst12~combout\) # 
-- (!\y[7]~input_o\))) # (!\inst13~combout\ & (!\y[7]~input_o\ & \inst12~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[4]~input_o\,
	datab => \inst13~combout\,
	datac => \y[7]~input_o\,
	datad => \inst12~combout\,
	combout => \inst15|fA10|fA0|xor21|y~0_combout\);

-- Location: LCCOMB_X31_Y18_N12
\inst15|hA02|and20|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst15|hA02|and20|y~combout\ = (\y[3]~input_o\ & (!\m_3~combout\ & (\y[2]~input_o\ $ (\m_1~combout\)))) # (!\y[3]~input_o\ & (\m_3~combout\ & (\y[2]~input_o\ $ (\m_1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[3]~input_o\,
	datab => \m_3~combout\,
	datac => \y[2]~input_o\,
	datad => \m_1~combout\,
	combout => \inst15|hA02|and20|y~combout\);

-- Location: LCCOMB_X29_Y18_N6
\inst15|fA20|fA10|or20|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst15|fA20|fA10|or20|y~1_combout\ = (\inst15|fA20|hA0|and20|y~2_combout\ & ((\inst15|fA10|fA0|xor21|y~0_combout\) # (\inst15|fA20|fA10|or20|y~0_combout\ $ (\inst15|hA02|and20|y~combout\)))) # (!\inst15|fA20|hA0|and20|y~2_combout\ & 
-- (\inst15|fA10|fA0|xor21|y~0_combout\ & (\inst15|fA20|fA10|or20|y~0_combout\ $ (\inst15|hA02|and20|y~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|fA20|hA0|and20|y~2_combout\,
	datab => \inst15|fA20|fA10|or20|y~0_combout\,
	datac => \inst15|fA10|fA0|xor21|y~0_combout\,
	datad => \inst15|hA02|and20|y~combout\,
	combout => \inst15|fA20|fA10|or20|y~1_combout\);

-- Location: LCCOMB_X29_Y18_N24
\inst15|fA10|fA0|and20|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst15|fA10|fA0|and20|y~0_combout\ = (\y[4]~input_o\ & (\m_2~combout\ $ (\y[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2~combout\,
	datac => \y[4]~input_o\,
	datad => \y[5]~input_o\,
	combout => \inst15|fA10|fA0|and20|y~0_combout\);

-- Location: LCCOMB_X29_Y18_N18
\inst15|fA10|fA0|and20|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst15|fA10|fA0|and20|y~1_combout\ = (!\y[7]~input_o\ & (\inst15|fA10|fA0|and20|y~0_combout\ & (\y[6]~input_o\ $ (\m_1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[6]~input_o\,
	datab => \m_1~combout\,
	datac => \y[7]~input_o\,
	datad => \inst15|fA10|fA0|and20|y~0_combout\,
	combout => \inst15|fA10|fA0|and20|y~1_combout\);

-- Location: LCCOMB_X29_Y18_N20
\inst15|fA11|fA0|and20|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst15|fA11|fA0|and20|y~combout\ = (\y[0]~input_o\ & (\inst15|hA02|and20|y~combout\ & (\m_2~combout\ $ (\y[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_2~combout\,
	datab => \y[0]~input_o\,
	datac => \y[1]~input_o\,
	datad => \inst15|hA02|and20|y~combout\,
	combout => \inst15|fA11|fA0|and20|y~combout\);

-- Location: LCCOMB_X29_Y18_N2
inst16 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst16~combout\ = \inst15|fA20|fA10|or20|y~1_combout\ $ (((\inst15|fA10|fA0|and20|y~1_combout\) # (\inst15|fA11|fA0|and20|y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|fA20|fA10|or20|y~1_combout\,
	datab => \inst15|fA10|fA0|and20|y~1_combout\,
	datad => \inst15|fA11|fA0|and20|y~combout\,
	combout => \inst16~combout\);

ww_valid <= \valid~output_o\;

ww_m(3) <= \m[3]~output_o\;

ww_m(2) <= \m[2]~output_o\;

ww_m(1) <= \m[1]~output_o\;

ww_m(0) <= \m[0]~output_o\;
END structure;


