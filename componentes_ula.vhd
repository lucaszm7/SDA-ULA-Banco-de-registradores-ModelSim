LIBRARY ieee;
USE ieee.std_logic_1164.all;
PACKAGE componentes_ula IS

	
	COMPONENT M_registrador_Nbits IS
	GENERIC (N 				 : INTEGER := 32;
				M				 : INTEGER := 32);
	PORT 	  (Rs, Rt, Rd 	 : IN STD_LOGIC_VECTOR (4 DOWNTO 0);
				D 				 : IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
				clock, reset : IN STD_LOGIC;
				Qrs 			 : OUT STD_LOGIC_VECTOR (N-1 DOWNTO 0);
			   Qrt 			 : OUT STD_LOGIC_VECTOR (N-1 DOWNTO 0));
	END COMPONENT;
	
	
	
	COMPONENT somador_Nbits IS
		GENERIC (	N	  : INTEGER := 32);
			PORT (	a, b : IN STD_LOGIC_VECTOR (N - 1 DOWNTO 0);
						c0   : IN STD_LOGIC;
						s	  : OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
						c4   : OUT STD_LOGIC;
						overflow:OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT mux9to1 IS
		PORT(		a, b, fSoma, fSubt, colocaValorAux : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
					FUNCT : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
					d : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT;

END PACKAGE componentes_ula;