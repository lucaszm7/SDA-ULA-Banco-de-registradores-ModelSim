LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY M_registrador_Nbits IS
GENERIC (N 				 : INTEGER := 32;
			M				 : INTEGER := 32);

PORT (	Rs, Rt, Rd 	 : IN STD_LOGIC_VECTOR (4 DOWNTO 0);
			D 				 : IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
			clock, reset : IN STD_LOGIC;
			Qrs 			 : OUT STD_LOGIC_VECTOR (N-1 DOWNTO 0);
			Qrt 			 : OUT STD_LOGIC_VECTOR (N-1 DOWNTO 0));
END M_registrador_Nbits;

ARCHITECTURE comportamento OF M_registrador_Nbits IS

COMPONENT registrador_Nbits IS
GENERIC (N : INTEGER := 32);
PORT (	D : IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
		   Wenable : IN STD_LOGIC;
			clock, reset : IN STD_LOGIC;
			Q : OUT STD_LOGIC_VECTOR (N-1 DOWNTO 0));
END COMPONENT;

COMPONENT deco5to32 IS
PORT (Rd : IN STD_LOGIC_VECTOR (4 DOWNTO 0);
		Writable : OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
END COMPONENT;

SIGNAL Wenable : STD_LOGIC_VECTOR(M-1 DOWNTO 0);

SIGNAL Qsigna0 : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
SIGNAL Qsigna1 : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
SIGNAL Qsigna2 : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
SIGNAL Qsigna3 : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
SIGNAL Qsigna4 : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
SIGNAL Qsigna5 : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
SIGNAL Qsigna6 : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
SIGNAL Qsigna7 : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
SIGNAL Qsigna8 : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
SIGNAL Qsigna9 : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
SIGNAL Qsigna10 : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
SIGNAL Qsigna11 : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
SIGNAL Qsigna12 : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
SIGNAL Qsigna13 : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
SIGNAL Qsigna14 : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
SIGNAL Qsigna15 : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
SIGNAL Qsigna16 : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
SIGNAL Qsigna17 : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
SIGNAL Qsigna18 : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
SIGNAL Qsigna19 : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
SIGNAL Qsigna20 : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
SIGNAL Qsigna21 : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
SIGNAL Qsigna22 : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
SIGNAL Qsigna23 : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
SIGNAL Qsigna24 : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
SIGNAL Qsigna25 : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
SIGNAL Qsigna26 : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
SIGNAL Qsigna27 : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
SIGNAL Qsigna28 : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
SIGNAL Qsigna29 : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
SIGNAL Qsigna30 : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
SIGNAL Qsigna31 : STD_LOGIC_VECTOR(N-1 DOWNTO 0);


BEGIN

	DECO: deco5to32 PORT MAP (Rd, Wenable);

	REG0: registrador_Nbits PORT MAP (D, Wenable(0), clock, reset, Qsigna0);
	REG1: registrador_Nbits PORT MAP (D, Wenable(1), clock, reset, Qsigna1);
	REG2: registrador_Nbits PORT MAP (D, Wenable(2), clock, reset, Qsigna2);
	REG3: registrador_Nbits PORT MAP (D, Wenable(3), clock, reset, Qsigna3);
	REG4: registrador_Nbits PORT MAP (D, Wenable(4), clock, reset, Qsigna4);
	REG5: registrador_Nbits PORT MAP (D, Wenable(5), clock, reset, Qsigna5);
	REG6: registrador_Nbits PORT MAP (D, Wenable(6), clock, reset, Qsigna6);
	REG7: registrador_Nbits PORT MAP (D, Wenable(7), clock, reset, Qsigna7);
	REG8: registrador_Nbits PORT MAP (D, Wenable(8), clock, reset, Qsigna8);
	REG9: registrador_Nbits PORT MAP (D, Wenable(9), clock, reset, Qsigna9);
	REG10: registrador_Nbits PORT MAP (D, Wenable(10), clock, reset, Qsigna10);
	REG11: registrador_Nbits PORT MAP (D, Wenable(11), clock, reset, Qsigna11);
	REG12: registrador_Nbits PORT MAP (D, Wenable(12), clock, reset, Qsigna12);
	REG13: registrador_Nbits PORT MAP (D, Wenable(13), clock, reset, Qsigna13);
	REG14: registrador_Nbits PORT MAP (D, Wenable(14), clock, reset, Qsigna14);
	REG15: registrador_Nbits PORT MAP (D, Wenable(15), clock, reset, Qsigna15);
	REG16: registrador_Nbits PORT MAP (D, Wenable(16), clock, reset, Qsigna16);
	REG17: registrador_Nbits PORT MAP (D, Wenable(17), clock, reset, Qsigna17);
	REG18: registrador_Nbits PORT MAP (D, Wenable(18), clock, reset, Qsigna18);
	REG19: registrador_Nbits PORT MAP (D, Wenable(19), clock, reset, Qsigna19);
	REG20: registrador_Nbits PORT MAP (D, Wenable(20), clock, reset, Qsigna20);
	REG21: registrador_Nbits PORT MAP (D, Wenable(21), clock, reset, Qsigna21);
	REG22: registrador_Nbits PORT MAP (D, Wenable(22), clock, reset, Qsigna22);
	REG23: registrador_Nbits PORT MAP (D, Wenable(23), clock, reset, Qsigna23);
	REG24: registrador_Nbits PORT MAP (D, Wenable(24), clock, reset, Qsigna24);
	REG25: registrador_Nbits PORT MAP (D, Wenable(25), clock, reset, Qsigna25);
	REG26: registrador_Nbits PORT MAP (D, Wenable(26), clock, reset, Qsigna26);
	REG27: registrador_Nbits PORT MAP (D, Wenable(27), clock, reset, Qsigna27);
	REG28: registrador_Nbits PORT MAP (D, Wenable(28), clock, reset, Qsigna28);
	REG29: registrador_Nbits PORT MAP (D, Wenable(29), clock, reset, Qsigna29);
	REG30: registrador_Nbits PORT MAP (D, Wenable(30), clock, reset, Qsigna30);
	REG31: registrador_Nbits PORT MAP (D, Wenable(31), clock, reset, Qsigna31);
	
	WITH Rs SELECT
		Qrs <=  Qsigna0 WHEN "00000",
				Qsigna1 WHEN "00001",
				Qsigna2 WHEN "00010",
				Qsigna3 WHEN "00011",
				Qsigna4 WHEN "00100",
				Qsigna5 WHEN "00101",
				Qsigna6 WHEN "00110",
				Qsigna7 WHEN "00111",
				Qsigna8 WHEN "01000",
				Qsigna9 WHEN "01001",
				Qsigna10 WHEN "01010",
				Qsigna11 WHEN "01011",
				Qsigna12 WHEN "01100",
				Qsigna13 WHEN "01101",
				Qsigna14 WHEN "01110",
				Qsigna15 WHEN "01111",
				Qsigna16 WHEN "10000",
				Qsigna17 WHEN "10001",
				Qsigna18 WHEN "10010",
				Qsigna19 WHEN "10011",
				Qsigna20 WHEN "10100",
				Qsigna21 WHEN "10101",
				Qsigna22 WHEN "10110",
				Qsigna23 WHEN "10111",
				Qsigna24 WHEN "11000",
				Qsigna25 WHEN "11001",
				Qsigna26 WHEN "11010",
				Qsigna27 WHEN "11011",
				Qsigna28 WHEN "11100",
				Qsigna29 WHEN "11101",
				Qsigna30 WHEN "11110",
				Qsigna31 WHEN "11111",
		      "00000000000000000000000000000000" WHEN OTHERS;
		
		WITH Rt SELECT
		Qrt <=  Qsigna0 WHEN "00000",
				Qsigna1 WHEN "00001",
				Qsigna2 WHEN "00010",
				Qsigna3 WHEN "00011",
				Qsigna4 WHEN "00100",
				Qsigna5 WHEN "00101",
				Qsigna6 WHEN "00110",
				Qsigna7 WHEN "00111",
				Qsigna8 WHEN "01000",
				Qsigna9 WHEN "01001",
				Qsigna10 WHEN "01010",
				Qsigna11 WHEN "01011",
				Qsigna12 WHEN "01100",
				Qsigna13 WHEN "01101",
				Qsigna14 WHEN "01110",
				Qsigna15 WHEN "01111",
				Qsigna16 WHEN "10000",
				Qsigna17 WHEN "10001",
				Qsigna18 WHEN "10010",
				Qsigna19 WHEN "10011",
				Qsigna20 WHEN "10100",
				Qsigna21 WHEN "10101",
				Qsigna22 WHEN "10110",
				Qsigna23 WHEN "10111",
				Qsigna24 WHEN "11000",
				Qsigna25 WHEN "11001",
				Qsigna26 WHEN "11010",
				Qsigna27 WHEN "11011",
				Qsigna28 WHEN "11100",
				Qsigna29 WHEN "11101",
				Qsigna30 WHEN "11110",
				Qsigna31 WHEN "11111",
		      "00000000000000000000000000000000" WHEN OTHERS;
		
END comportamento;