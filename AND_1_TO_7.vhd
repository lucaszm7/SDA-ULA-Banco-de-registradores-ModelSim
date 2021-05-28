LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY AND_1_TO_7 IS
	PORT (
		a : IN STD_LOGIC;
		b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		s : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END AND_1_TO_7;

ARCHITECTURE comportamente OF AND_1_TO_7 IS
BEGIN

	s(0) <= a AND b(0);
	s(1) <= a AND b(1);
	s(2) <= a AND b(2);
	s(3) <= a AND b(3);
	s(4) <= a AND b(4);
	s(5) <= a AND b(5);
	s(6) <= a AND b(6);
	s(7) <= a AND b(7);

END comportamente;