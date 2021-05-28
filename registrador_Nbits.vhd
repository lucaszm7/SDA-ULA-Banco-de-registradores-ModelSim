LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY registrador_Nbits IS
GENERIC (N : INTEGER := 1);
PORT (	D : IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
			Wenable : IN STD_LOGIC;
			clock, reset : IN STD_LOGIC;
			Q : OUT STD_LOGIC_VECTOR (N-1 DOWNTO 0));
END registrador_Nbits;

ARCHITECTURE comportamento OF registrador_Nbits IS
BEGIN
	PROCESS (clock, reset, Wenable)
	BEGIN
		IF reset='1' THEN
			Q <= (OTHERS => '0');
		ELSIF clock'EVENT AND clock = '1' AND Wenable = '1' THEN
			Q <= D;
		END IF;
	END PROCESS;
END comportamento;