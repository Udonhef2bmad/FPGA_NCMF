LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY bin_to_seg IS
    PORT (
        i_Binary_Num : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        o_Segment : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
    );
END ENTITY bin_to_seg;

ARCHITECTURE rtl OF bin_to_seg IS

BEGIN
    PROCESS (i_Binary_Num)
    BEGIN
        CASE i_Binary_Num IS
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

END ARCHITECTURE rtl;