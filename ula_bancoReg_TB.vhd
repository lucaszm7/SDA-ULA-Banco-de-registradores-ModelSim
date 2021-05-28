LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

ENTITY ula_bancoReg_TB IS
END ula_bancoReg_TB;

ARCHITECTURE comportamento OF ula_bancoReg_TB IS

COMPONENT ula_bancoReg IS
	PORT (OPCODE : IN STD_LOGIC_VECTOR (5 DOWNTO 0);
			Rs, Rt : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
			Rd 	 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
			SHAMT  : IN STD_LOGIC_VECTOR (4 DOWNTO 0);
			FUNCT  : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
			
			clock, reset	 : IN STD_LOGIC;
			colocaValorAux : IN STD_LOGIC_VECTOR (31 DOWNTO 0));
END COMPONENT;

--INPUTS
SIGNAL OPCODE : STD_LOGIC_VECTOR (5 DOWNTO 0) := (others=>'0');
SIGNAL Rs, Rt : STD_LOGIC_VECTOR(4 DOWNTO 0) := (others=>'0');
SIGNAL Rd 	 : STD_LOGIC_VECTOR(4 DOWNTO 0) := (others=>'0');
SIGNAL SHAMT  : STD_LOGIC_VECTOR (4 DOWNTO 0) := (others=>'0');
SIGNAL FUNCT  : STD_LOGIC_VECTOR(5 DOWNTO 0) := (others=>'1');

SIGNAL clk, reset	 : STD_LOGIC := '0';
SIGNAL colocaValorAux : STD_LOGIC_VECTOR(31 DOWNTO 0) := (others=>'0');

--TESTE SIGNAL
SIGNAL aux : STD_LOGIC_VECTOR(31 DOWNTO 0);

BEGIN
	
	uut: ula_bancoReg PORT MAP(
		OPCODE => OPCODE,
		Rs => Rs,
		Rt => Rt,
		Rd => Rd,
		SHAMT => SHAMT,
		FUNCT => FUNCT,
		clock => clk,
		reset => reset,
		colocaValorAux => colocaValorAux
	);

	Clock :PROCESS 
	BEGIN
  		clk <= '1', '0' AFTER 5 ns;
  		WAIT FOR 10 ns;
	END PROCESS;
	
	tb : PROCESS
	VARIABLE i : INTEGER := 0;
	VARIABLE j : INTEGER := 0;
	BEGIN

		reset <= '1';
		wait for 10 ns;
		
		reset <= '0';
		colocaValorAux <= "00000000000000000000000000000001";
		
		--CARREGA UM VALOR PARA O REGISTRADOR DESTINO
		FUNCT <= "100001";
		wait for 10 ns;
		
		Rd <= Rd + '1';
		wait for 10 ns;
		
		Rt <= Rt + '1';
		Rd <= Rd + '1';
		
		--ADIÇÃO
		FUNCT <= "000001";
		wait for 10 ns;
		
		FOR i IN 0 to 14 LOOP
			
			Rs <= Rs + '1';
			Rt <= Rt + '1';
			Rd <= Rd + '1';
			wait for 10 ns;
		
		END LOOP;
		
		--SUBTRAÇÃO
		FUNCT <= "000010";
		
		FOR j in 0 to 13 LOOP
		
			Rs <= Rs + '1';
			Rt <= Rt + '1';
			Rd <= Rd + '1';
			wait for 10 ns;
		
		END LOOP;
		
		--RESET
		reset <= '1';
		wait for 10 ns;
		
		--A_AND_B_NOT_B
		reset <= '0';
		Rs <= "00000";
		Rt <= "00000";
		Rd <= "00000";
		FUNCT <= "000100";
		wait for 10 ns;
		
		--A_AND_B_NOT_B
		Rd <= "00001";
		wait for 10 ns;
		
		--A_AND_B
		Rt <= Rt + '1';
		Rd <= Rd + "10";
		FUNCT <= "001000";
		wait for 10 ns;
		
		--A_XOR_B
		Rd <= Rd + '1';
		FUNCT <= "010000";
		wait for 10 ns;
		
		--NOT_A
		FUNCT <= "100000";
		wait for 10 ns;
		
		--TESTA OVERFLOW
		reset <= '1';
		wait for 10 ns;
		
		reset <= '0';
		Rs <= "00000";
		Rt <= "00000";
		Rd <= "00000";
		colocaValorAux <= "00000000000000000000000000000001";
		
		FUNCT <= "100001";
		wait for 10 ns;
		--TESTA OVERFLOW
		FUNCT <= "000001";
		
		wait;
	END PROCESS;
	
END;