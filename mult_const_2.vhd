LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mult_const_2 IS
	PORT (
		b : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		s : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END mult_const_2;

ARCHITECTURE comportamente OF mult_const_2 IS
BEGIN
	s(0) <= '0';
	s(1) <= b(0);
	s(2) <= b(1);
	s(3) <= b(2);
	s(4) <= b(3);
	s(5) <= b(4);
	s(6) <= b(5);
	s(7) <= b(6);
	s(8) <= b(7);
	s(9) <= b(8);
	s(10) <= b(9);
	s(11) <= b(10);
	s(12) <= b(11);
	s(13) <= b(12);
	s(14) <= b(13);
	s(15) <= b(14);

END comportamente;