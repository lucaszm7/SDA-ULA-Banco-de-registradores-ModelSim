LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY registrador_Nbits_Shift_direita IS
GENERIC (N : INTEGER := 16);
PORT (      D : IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
            enable, c4: IN STD_LOGIC;
            clock, reset : IN STD_LOGIC;
            Q : OUT STD_LOGIC_VECTOR (N-1 DOWNTO 0)
                );
END registrador_Nbits_Shift_direita;

ARCHITECTURE comportamento OF registrador_Nbits_Shift_direita IS
SIGNAL Q_TEMP: STD_LOGIC_VECTOR (N-1 DOWNTO 0);
BEGIN
    PROCESS (clock, reset, enable)
    BEGIN
        IF reset='1' THEN
            Q_TEMP <= (OTHERS => '0');
        ELSIF clock'EVENT AND clock = '1' THEN
                IF     enable = '1' THEN
                    Q_TEMP <= D;
                ELSE
                    SHF: FOR i IN 0 TO N-2 LOOP
                        Q_TEMP(i) <= D(i + 1);
								
                    END LOOP;
                        Q_TEMP(N-1) <= c4;
                END IF;
        END IF;
    END PROCESS;
	 Q <= Q_TEMP;
END comportamento;