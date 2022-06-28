LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

ENTITY COMPARATOR IS 
    GENERIC(
        N : INTEGER := 8; --default precision : 8 bits per feature
        M : INTEGER := 5 --default nb of features : 5
    );
    PORT(
        A : IN STD_LOGIC_VECTOR((N*M)-1 DOWNTO 0); --size depends on manhattan module output
        B : IN STD_LOGIC_VECTOR((N*M)-1 DOWNTO 0); --size depends on manhattan module output

        IS_GREATER : OUT STD_LOGIC --high if A is bigger than B, else low
    );
END ENTITY;

ARCHITECTURE RTL OF COMPARATOR IS

BEGIN
    PROCESS (A,B)
    begin
        IF A > B THEN
            IS_GREATER <= '1';
        ELSE 
            IS_GREATER <= '0';
        END IF;
    END PROCESS;
END ARCHITECTURE;