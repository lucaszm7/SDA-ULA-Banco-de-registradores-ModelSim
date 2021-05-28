LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY work;
USE work.componentes_ula.all;

ENTITY ula_bancoReg IS 
	PORT (OPCODE : IN STD_LOGIC_VECTOR (5 DOWNTO 0);
			Rs, Rt : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
			Rd 	 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
			SHAMT  : IN STD_LOGIC_VECTOR (4 DOWNTO 0);
			FUNCT  : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
			
			clock, reset	 : IN STD_LOGIC;
			colocaValorAux : IN STD_LOGIC_VECTOR (31 DOWNTO 0));
END ula_bancoReg;

ARCHITECTURE comportamento OF ula_bancoReg IS	
	
	SIGNAL a, b, d : STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL fSoma, fSubt : STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL fSomaOut, fSubtOut : STD_LOGIC;
	SIGNAL overflow : STD_LOGIC;
		
	
BEGIN
	
	SOMA_C32: 		somador_Nbits PORT MAP (a, b, '0', fSoma, fSomaOut, overflow);
	SUBT_C32: 		somador_Nbits PORT MAP (a, b, '1', fSubt, fSubtOut, overflow);
	
	REGISTRADORES: M_Registrador_Nbits PORT MAP(Rs, Rt, Rd, d, clock, reset, a, b);
	
	MUX_FINAL: mux9to1 PORT MAP(a, b, fSoma, fSubt, colocaValorAux, FUNCT, d);
	
END comportamento;
			