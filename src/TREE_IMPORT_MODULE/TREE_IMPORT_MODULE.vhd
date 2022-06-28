LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

ENTITY TREE_IMPORT_MODULE IS 
    PORT
	(
		clk		: IN STD_LOGIC ;
		input_data		: IN  STD_LOGIC_VECTOR (3 DOWNTO 0) ;
		output_data		: OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE RTL OF TREE_IMPORT_MODULE IS

BEGIN
    output_data <= input_data;
END ARCHITECTURE;