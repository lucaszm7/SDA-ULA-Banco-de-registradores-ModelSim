LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY desloca_1bit IS
	PORT (
		b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		cout : IN STD_LOGIC;
		s : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END desloca_1bit;

ARCHITECTURE comportamente OF desloca_1bit IS
BEGIN

	s(0) <= b(1);
	s(1) <= b(2);
	s(2) <= b(3);
	s(3) <= b(4);
	s(4) <= b(5);
	s(5) <= b(6);
	s(6) <= b(7);
	s(7) <= cout;

END comportamente;