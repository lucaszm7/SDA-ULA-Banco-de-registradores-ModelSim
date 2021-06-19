LIBRARY ieee;
USE ieee.std_logic_1164.all;


ENTITY multiplexador_sequencial_8bits IS
	PORT (MD, MR : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			PR		 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			clk, reset 	 : IN STD_LOGIC
);
END multiplexador_sequencial_8bits;


ARCHITECTURE comportamento OF multiplexador_sequencial_8bits IS
SIGNAL PP : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL MUX: STD_LOGIC;
SIGNAL RESULT: STD_LOGIC_VECTOR(7 DOWNTO 0);

SIGNAL PR_SAIDA: STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL PR_ENTRADA: STD_LOGIC_VECTOR(15 DOWNTO 0);

SIGNAL enable: STD_LOGIC;
SIGNAL c4, overflow : STD_LOGIC;

TYPE STATE IS (S0, S1, S2, S3, S4, S5, S6, S7, s8);
SIGNAL ESTATO_ATUAL, ESTADO_PROXIMO: STATE;

COMPONENT somador_Nbits IS
		GENERIC (	N	  : INTEGER := 8);
			PORT (	a, b : IN STD_LOGIC_VECTOR (N - 1 DOWNTO 0);
						c0   : IN STD_LOGIC;
						s	  : OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
						c4   : OUT STD_LOGIC;
						overflow:OUT STD_LOGIC);
END COMPONENT;

COMPONENT registrador_Nbits_Shift_direita IS
GENERIC (N : INTEGER := 16);
PORT (      D : IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
            enable, c4: IN STD_LOGIC;
            clock, reset : IN STD_LOGIC;
            Q : OUT STD_LOGIC_VECTOR (N-1 DOWNTO 0)
                );
END COMPONENT;

BEGIN

	
	MUX <= PR_SAIDA(0);
	
	REG_SHIFT: registrador_Nbits_Shift_direita GENERIC MAP (N=>16) PORT MAP(PR_ENTRADA, enable, c4, clk, reset, PR_SAIDA);
	
	SOMADOR: somador_Nbits PORT MAP(PP, PR_SAIDA(15 DOWNTO 8), '0', RESULT, c4, overflow);
	
	PP <= "00000000" WHEN MUX = '0' ELSE MD;
	 
	PR_ENTRADA <= RESULT & PR_SAIDA(7 DOWNTO 0) WHEN enable = '0' ELSE "00000000" & MR;
	
	PROCESS(clk, reset)
	BEGIN
		
		IF reset = '1' THEN
			ESTATO_ATUAL <= s0;
			
		ELSIF clk'EVENT AND clk = '1' THEN
			ESTATO_ATUAL <= ESTADO_PROXIMO;
		END IF;
		
	END PROCESS;

	PROCESS(ESTATO_ATUAL)
	BEGIN
		
		CASE ESTATO_ATUAL IS
		
			WHEN s0 => enable <= '1';
						  ESTADO_PROXIMO <= s1;
			
			WHEN s1 => enable <= '0';
						  ESTADO_PROXIMO <= s2;
						  
			WHEN s2 => ESTADO_PROXIMO <= s3;
				
			WHEN s3 => ESTADO_PROXIMO <= s4;
				
			WHEN s4 => ESTADO_PROXIMO <= s5;
				
			WHEN s5 => ESTADO_PROXIMO <= s6;
				
			WHEN s6 => ESTADO_PROXIMO <= s7;
				
			WHEN s7 => ESTADO_PROXIMO <= s8;
								
			WHEN s8 => ESTADO_PROXIMO <= s0;
				
		END CASE;
	END PROCESS;
		
	PR <= PR_SAIDA;	
END comportamento;