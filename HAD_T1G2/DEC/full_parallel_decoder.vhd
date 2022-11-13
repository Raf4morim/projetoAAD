LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY full_parallel_decoder IS 
	PORT
	(
		y :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		valid :  OUT  STD_LOGIC;
		m :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END full_parallel_decoder;

ARCHITECTURE bdf_type OF full_parallel_decoder IS 

COMPONENT partial_encoder
	PORT(m1 : IN STD_LOGIC;
		 m2 : IN STD_LOGIC;
		 m3 : IN STD_LOGIC;
		 z : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT popcounter_8bitparallelopt
	PORT(d : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 c : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

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
		 m_is_error : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	c :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	d :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	m1_is_error :  STD_LOGIC;
SIGNAL	m1_is_one :  STD_LOGIC;
SIGNAL	m2_is_error :  STD_LOGIC;
SIGNAL	m2_is_one :  STD_LOGIC;
SIGNAL	m3_is_error :  STD_LOGIC;
SIGNAL	m3_is_one :  STD_LOGIC;
SIGNAL	m_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	valid_ALTERA_SYNTHESIZED :  STD_LOGIC;
SIGNAL	z :  STD_LOGIC_VECTOR(7 DOWNTO 0);


BEGIN 

b2v_inst : partial_encoder
PORT MAP(m1 => m_ALTERA_SYNTHESIZED(3),
		 m2 => m_ALTERA_SYNTHESIZED(2),
		 m3 => m_ALTERA_SYNTHESIZED(1),
		 z => z);

d(4) <= z(3) XOR y(3);
d(3) <= z(4) XOR y(4);
d(2) <= z(5) XOR y(5);
d(1) <= z(6) XOR y(6);
d(0) <= z(7) XOR y(7);

b2v_inst15 : popcounter_8bitparallelopt
PORT MAP(d => d,
		 c => c);

m_ALTERA_SYNTHESIZED(0) <= c(2) XOR c(3);

b2v_inst18 : m_bit_decoder
PORT MAP(y0 => y(7),
		 y1 => y(3),
		 y2 => y(6),
		 y3 => y(2),
		 y4 => y(5),
		 y5 => y(1),
		 y6 => y(4),
		 y7 => y(0),
		 m_is_one => m3_is_one,
		 m_is_error => m3_is_error);

valid_ALTERA_SYNTHESIZED <= NOT(m1_is_error OR m2_is_error OR m3_is_error);

b2v_inst5 : m_bit_decoder
PORT MAP(y0 => y(7),
		 y1 => y(6),
		 y2 => y(5),
		 y3 => y(4),
		 y4 => y(3),
		 y5 => y(2),
		 y6 => y(1),
		 y7 => y(0),
		 m_is_one => m1_is_one,
		 m_is_error => m1_is_error);


b2v_inst6 : m_bit_decoder
PORT MAP(y0 => y(7),
		 y1 => y(5),
		 y2 => y(6),
		 y3 => y(4),
		 y4 => y(3),
		 y5 => y(1),
		 y6 => y(2),
		 y7 => y(0),
		 m_is_one => m2_is_one,
		 m_is_error => m2_is_error);

d(7) <= z(0) XOR y(0);
d(6) <= z(1) XOR y(1);
d(5) <= z(2) XOR y(2);

m_ALTERA_SYNTHESIZED(3) <= m1_is_one AND valid_ALTERA_SYNTHESIZED;
m_ALTERA_SYNTHESIZED(2) <= m2_is_one AND valid_ALTERA_SYNTHESIZED;
m_ALTERA_SYNTHESIZED(1) <= valid_ALTERA_SYNTHESIZED AND m3_is_one;

valid <= valid_ALTERA_SYNTHESIZED;
m <= m_ALTERA_SYNTHESIZED;

END bdf_type;