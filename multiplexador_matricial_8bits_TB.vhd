LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

ENTITY multiplexador_matricial_8bits_TB IS
END multiplexador_matricial_8bits_TB;

ARCHITECTURE comportamento OF multiplexador_matricial_8bits_TB IS

COMPONENT multiplexador_matricial_8bits IS
	PORT (
		a, b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		s : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

--INPUTS
SIGNAL a, b : STD_LOGIC_VECTOR(7 DOWNTO 0) := (others=>'0');

BEGIN

	uut: multiplexador_matricial_8bits PORT MAP(
		a => a,
		b => b
	);

	tb : PROCESS
	VARIABLE i : INTEGER := 0;
	VARIABLE j : INTEGER := 0;
	BEGIN
		
		FOR i IN 0 TO 30 LOOP
		
			a <= a + '1';
			wait for 10 ns;
			
			FOR j IN 0 TO 30 LOOP
			b <= b + '1';
			wait for 10 ns;
			END LOOP;
		b <= "00000000";
		
		END LOOP;
		
	wait;
	END PROCESS;
	
END;