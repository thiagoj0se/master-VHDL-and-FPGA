-- Code from Earqee's repository

library ieee;
use ieee.std_logic_1164.all;

entity Seven_Segment_Display is
	port(I : in std_logic_vector(3 downto 0);
			X : out std_logic_vector(6 downto 0) );
end Seven_Segment_Display;

architecture Struct of Seven_Segment_Display is 
begin
	process(I) begin
	 case I is
		when "0000" => X <= "1000000";
		when "0001" => X <= "1111001";
		when "0010" => X <= "0100100";
		when "0011" => X <= "0110000";
		when "0100" => X <= "0011001";
		when "0101" => X <= "0010010";
		when "0110" => X <= "0000010";
		when "0111" => X <= "1111000";
		when "1000" => X <= "0000000";
		when "1001" => X <= "0010000";
		when "1010" => X <= "0001000";
		when "1011" => X <= "0000011";
		when "1100" => X <= "1000110";
		when "1101" => X <= "0100001";
		when "1110" => X <= "0000110";
		when "1111" => X <= "0001110";
	 end case;
	end process;
end Struct;