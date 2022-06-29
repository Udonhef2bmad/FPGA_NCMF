LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY manhattan IS
    GENERIC (
        N : INTEGER := 8; --default precision : 8 bits per feature
        M : INTEGER := 5 --default nb of features : 5
    );
    PORT (
        rst : IN STD_LOGIC;
        A : IN STD_LOGIC_VECTOR((N * M) - 1 DOWNTO 0);
        B : IN STD_LOGIC_VECTOR((N * M) - 1 DOWNTO 0);

        Distance : OUT STD_LOGIC_VECTOR((N * M) - 1 DOWNTO 0); --should be able to fit the maximum sum of all vectors
        done : OUT STD_LOGIC
    );
END ENTITY;

ARCHITECTURE rtl OF manhattan IS

BEGIN

END ARCHITECTURE;