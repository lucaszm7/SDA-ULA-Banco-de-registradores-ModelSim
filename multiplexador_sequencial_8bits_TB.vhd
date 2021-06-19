LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

ENTITY multiplexador_sequencial_8bits_TB IS
END multiplexador_sequencial_8bits_TB;

ARCHITECTURE comportamento OF multiplexador_sequencial_8bits_TB IS

COMPONENT multiplexador_sequencial_8bits IS
	PORT (MD, MR : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			PR		 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			clk, reset 	 : IN STD_LOGIC
);
END COMPONENT;

SIGNAL MD : STD_LOGIC_VECTOR(7 DOWNTO 0) := (others=>'0');
SIGNAL MR : STD_LOGIC_VECTOR(7 DOWNTO 0) := (others=>'0');
SIGNAL PR		 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL clk  	 : STD_LOGIC := '0';
SIGNAL reset 	 : STD_LOGIC := '0';

BEGIN

uut : multiplexador_sequencial_8bits PORT MAP(
	
	MR => MR,
	
	MD => MD,
	PR => PR,
	clk => clk,
	reset => reset
);

p1 : PROCESS
BEGIN
clk <= '1', '0' AFTER 5 ns;
WAIT FOR 10 ns;
END PROCESS;


tb : PROCESS
VARIABLE i : INTEGER := 0;
VARIABLE j : INTEGER := 0;
BEGIN

	reset <= '1', '0' AFTER 10 ns;
		
	FOR i IN	0 TO 9 LOOP
	
	
		FOR j IN 0 TO 9 LOOP
		
			MD <= MD + '1';
			wait for 90 ns;
		
		END LOOP;
				
		MR <= MR + '1';
		
		reset <= '1', '0' AFTER 10 ns;
			
	END LOOP;
	
	wait;

END PROCESS;

END comportamento;