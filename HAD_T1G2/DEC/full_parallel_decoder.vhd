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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"
-- CREATED		"Sun Nov 13 10:37:43 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY full_parallel_decoder IS 
	PORT
	(
		y :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		m :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END full_parallel_decoder;

ARCHITECTURE bdf_type OF full_parallel_decoder IS 

COMPONENT m_bit_decoder
	PORT(y0 : IN STD_LOGIC;
		 y1 : IN STD_LOGIC;
		 y2 : IN STD_LOGIC;
		 y3 : IN STD_LOGIC;
		 y4 : IN STD_LOGIC;
		 y5 : IN STD_LOGIC;
		 y6 : IN STD_LOGIC;
		 y7 : IN STD_LOGIC;
		 m_is_one : OUT STD_LOGIC;
		 m_is_valid : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT popcounter_8bitparallelopt
	PORT(d : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 c : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT partial_encoder
	PORT(m_1 : IN STD_LOGIC;
		 m_2 : IN STD_LOGIC;
		 m_3 : IN STD_LOGIC;
		 z0 : OUT STD_LOGIC;
		 z1 : OUT STD_LOGIC;
		 z2 : OUT STD_LOGIC;
		 z3 : OUT STD_LOGIC;
		 z4 : OUT STD_LOGIC;
		 z5 : OUT STD_LOGIC;
		 z6 : OUT STD_LOGIC;
		 z7 : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	c :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	d :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	m_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;


BEGIN 



b2v_inst : m_bit_decoder
PORT MAP(y0 => y(7),
		 y1 => y(6),
		 y2 => y(5),
		 y3 => y(4),
		 y4 => y(3),
		 y5 => y(2),
		 y6 => y(1),
		 y7 => y(0),
		 m_is_one => SYNTHESIZED_WIRE_11,
		 m_is_valid => SYNTHESIZED_WIRE_5);


b2v_inst1 : m_bit_decoder
PORT MAP(y0 => y(7),
		 y1 => y(5),
		 y2 => y(6),
		 y3 => y(4),
		 y4 => y(3),
		 y5 => y(1),
		 y6 => y(2),
		 y7 => y(0),
		 m_is_one => SYNTHESIZED_WIRE_13,
		 m_is_valid => SYNTHESIZED_WIRE_6);


d(4) <= SYNTHESIZED_WIRE_0 XOR y(3);


d(3) <= SYNTHESIZED_WIRE_1 XOR y(4);


d(2) <= SYNTHESIZED_WIRE_2 XOR y(5);


d(1) <= SYNTHESIZED_WIRE_3 XOR y(6);


d(0) <= SYNTHESIZED_WIRE_4 XOR y(7);


b2v_inst15 : popcounter_8bitparallelopt
PORT MAP(d => d,
		 c => c);


m_ALTERA_SYNTHESIZED(0) <= c(2) XOR c(3);


b2v_inst2 : m_bit_decoder
PORT MAP(y0 => y(7),
		 y1 => y(3),
		 y2 => y(6),
		 y3 => y(2),
		 y4 => y(5),
		 y5 => y(1),
		 y6 => y(4),
		 y7 => y(0),
		 m_is_one => SYNTHESIZED_WIRE_16,
		 m_is_valid => SYNTHESIZED_WIRE_7);


SYNTHESIZED_WIRE_17 <= SYNTHESIZED_WIRE_5 AND SYNTHESIZED_WIRE_6 AND SYNTHESIZED_WIRE_7;


b2v_inst6 : partial_encoder
PORT MAP(m_1 => m_ALTERA_SYNTHESIZED(3),
		 m_2 => m_ALTERA_SYNTHESIZED(2),
		 m_3 => m_ALTERA_SYNTHESIZED(1),
		 z0 => SYNTHESIZED_WIRE_8,
		 z1 => SYNTHESIZED_WIRE_9,
		 z2 => SYNTHESIZED_WIRE_10,
		 z3 => SYNTHESIZED_WIRE_0,
		 z4 => SYNTHESIZED_WIRE_1,
		 z5 => SYNTHESIZED_WIRE_2,
		 z6 => SYNTHESIZED_WIRE_3,
		 z7 => SYNTHESIZED_WIRE_4);


d(7) <= SYNTHESIZED_WIRE_8 XOR y(0);


d(6) <= SYNTHESIZED_WIRE_9 XOR y(1);


d(5) <= SYNTHESIZED_WIRE_10 XOR y(2);


m_ALTERA_SYNTHESIZED(3) <= SYNTHESIZED_WIRE_11 AND SYNTHESIZED_WIRE_17;


m_ALTERA_SYNTHESIZED(2) <= SYNTHESIZED_WIRE_13 AND SYNTHESIZED_WIRE_17;


m_ALTERA_SYNTHESIZED(1) <= SYNTHESIZED_WIRE_17 AND SYNTHESIZED_WIRE_16;

m <= m_ALTERA_SYNTHESIZED;

END bdf_type;