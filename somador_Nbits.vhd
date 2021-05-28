LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

ENTITY somador_Nbits IS 
	GENERIC (N	: INTEGER := 4);
	PORT (	a, b : IN STD_LOGIC_VECTOR (N - 1 DOWNTO 0);
				c0  : IN STD_LOGIC;
				s	  : OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
				c4 : OUT STD_LOGIC;
				overflow : OUT STD_LOGIC);
END somador_Nbits;
	
ARCHITECTURE comportamento OF somador_Nbits IS
	
	SIGNAL c : STD_LOGIC_VECTOR (N DOWNTO 0);
	SIGNAL sOver: STD_LOGIC_VECTOR (N-1 DOWNTO 0);
	
	COMPONENT somador IS 
		PORT (cin, a, b : IN STD_LOGIC;
				s, cout : OUT STD_LOGIC);
	END COMPONENT;
	
	BEGIN
	
	G1: FOR i in 0 to N-1 GENERATE
		SCs: somador PORT MAP (
			c(i), a(i), (c0 xor b(i)), sOver(i), c(i+1));
	END GENERATE;
	s <= sOver;
	c(0) <= c0;
	c4 <= c(N);
	
	overflow <= NOT(a(N-1) XOR b(N-1)) AND (sOver(N-1) XOR a(N-1));
END comportamento;
	