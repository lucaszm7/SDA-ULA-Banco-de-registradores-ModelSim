LIBRARY ieee;
USE ieee.std_logic_1164.all;


ENTITY multiplexador_matricial_8bits IS
	PORT (
		a, b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		s : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END multiplexador_matricial_8bits;

ARCHITECTURE comportamente OF multiplexador_matricial_8bits IS

SIGNAL overflow : STD_LOGIC;
SIGNAL cout : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL pp0, pp1, pp2, pp3, pp4, pp5, pp6, pp7 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL somap0, somap1, somap2, somap3, somap4, somap5, somap6, somap7 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL somap0d, somap1d, somap2d, somap3d, somap4d, somap5d, somap6d, somap7d : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL somaFinal : STD_LOGIC_VECTOR (7 DOWNTO 0);

COMPONENT somador_Nbits IS
		GENERIC (	N	  : INTEGER := 8);
			PORT (	a, b : IN STD_LOGIC_VECTOR (N - 1 DOWNTO 0);
						c0   : IN STD_LOGIC;
						s	  : OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
						c4   : OUT STD_LOGIC;
						overflow:OUT STD_LOGIC);
END COMPONENT;

COMPONENT AND_1_TO_7 IS
	PORT (
		a : IN STD_LOGIC;
		b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		s : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT desloca_1bit IS
	PORT (
		b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		cout : IN STD_LOGIC;
		s : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

BEGIN
	AND_PP0: AND_1_TO_7 PORT MAP(a(0), b, pp0);
	AND_PP1: AND_1_TO_7 PORT MAP(a(1), b, pp1);
	AND_PP2: AND_1_TO_7 PORT MAP(a(2), b, pp2);
	AND_PP3: AND_1_TO_7 PORT MAP(a(3), b, pp3);
	AND_PP4: AND_1_TO_7 PORT MAP(a(4), b, pp4);
	AND_PP5: AND_1_TO_7 PORT MAP(a(5), b, pp5);
	AND_PP6: AND_1_TO_7 PORT MAP(a(6), b, pp6);
	AND_PP7: AND_1_TO_7 PORT MAP(a(7), b, pp7);
	
	s(0) <= pp0(0);
	DESLOCA0: desloca_1bit PORT MAP(pp0, '0', somap0);
	SOMA1: somador_Nbits PORT MAP(somap0, pp1, '0', somap1, cout(1), overflow);
	
	s(1) <= somap1(0);
	DESLOCA1: desloca_1bit PORT MAP(somap1, cout(1), somap1d);
	SOMA2: somador_Nbits PORT MAP(somap1d, pp2, '0', somap2, cout(2), overflow);
	
	s(2) <= somap2(0);
	DESLOCA2: desloca_1bit PORT MAP(somap2, cout(2), somap2d);
	SOMA3: somador_Nbits PORT MAP(somap2d, pp3, '0', somap3, cout(3), overflow);
	-----------------------------------------------------------------------------
	s(3) <= somap3(0);
	DESLOCA3: desloca_1bit PORT MAP(somap3, cout(3), somap3d);
	SOMA4: somador_Nbits PORT MAP(somap3d, pp4, '0', somap4, cout(4), overflow);
	
	s(4) <= somap4(0);
	DESLOCA4: desloca_1bit PORT MAP(somap4, cout(4), somap4d);
	SOMA5: somador_Nbits PORT MAP(somap4d, pp5, '0', somap5, cout(5), overflow);
	
	s(5) <= somap5(0);
	DESLOCA5: desloca_1bit PORT MAP(somap5, cout(5), somap5d);
	SOMA6: somador_Nbits PORT MAP(somap5d, pp6, '0', somap6, cout(6), overflow);
	
	s(6) <= somap6(0);
	DESLOCA6: desloca_1bit PORT MAP(somap6, cout(6), somap6d);
	SOMA7: somador_Nbits PORT MAP(somap6d, pp7, '0', somaFinal, cout(7), overflow);
	
	s(15 DOWNTO 7) <= cout(7) & somaFinal;
END comportamente;