library ieee;
use ieee.std_logic_1164.all;
 
entity BIN_TO_SEG is
  port (
    i_Clk        : in  std_logic;
    i_Binary_Num : in  std_logic_vector(3 downto 0);
    o_Segment    : OUT STD_LOGIC_VECTOR(6 downto 0)
    );
end entity BIN_TO_SEG;
 
architecture RTL of BIN_TO_SEG is
 
begin
  PROCESS (i_Binary_Num)
    BEGIN
			CASE i_Binary_Num IS
				 --WHEN "0000" => o_Segment <= "0000001";
				 --WHEN "0001" => o_Segment <= "1001111";
				 --WHEN "0010" => o_Segment <= "0010010";
				 --WHEN "0011" => o_Segment <= "0000110";
				 --WHEN "0100" => o_Segment <= "1001100";
				 --WHEN "0101" => o_Segment <= "0100100";
				 --WHEN "0110" => o_Segment <= "0100000";
				 --WHEN "0111" => o_Segment <= "0001111";
				 --WHEN "1000" => o_Segment <= "0000000";
				 --WHEN "1001" => o_Segment <= "0000100";
				 --WHEN "1010" => o_Segment <= "0000010";
				 --WHEN "1011" => o_Segment <= "1100000";
				 --WHEN "1100" => o_Segment <= "0110001";
				 --WHEN "1101" => o_Segment <= "1000010";
				 --WHEN "1110" => o_Segment <= "0110000";
				 --WHEN "1111" => o_Segment <= "0111000";
				 
				 WHEN "0000" => o_Segment <= "1000000";
				 WHEN "0001" => o_Segment <= "1111001";
				 WHEN "0010" => o_Segment <= "0100100";
				 WHEN "0011" => o_Segment <= "0110000";
				 WHEN "0100" => o_Segment <= "0011001";
				 WHEN "0101" => o_Segment <= "0010010";
				 WHEN "0110" => o_Segment <= "0000010";
				 WHEN "0111" => o_Segment <= "1111000";
				 WHEN "1000" => o_Segment <= "0000000";
				 WHEN "1001" => o_Segment <= "0010000";
				 WHEN "1010" => o_Segment <= "0100000";
				 WHEN "1011" => o_Segment <= "0000011";
				 WHEN "1100" => o_Segment <= "1000110";
				 WHEN "1101" => o_Segment <= "0100001";
				 WHEN "1110" => o_Segment <= "0000110";
				 WHEN "1111" => o_Segment <= "0001110";
			END CASE;
    END PROCESS;
 
end architecture RTL;