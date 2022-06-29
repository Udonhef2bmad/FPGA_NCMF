LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY node_loader IS
    PORT (
        clk : IN STD_LOGIC;
        input_data : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
        output_data : OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE rtl OF node_loader IS

BEGIN
    output_data <= input_data;
END ARCHITECTURE;