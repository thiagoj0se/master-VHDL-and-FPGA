-- Code from Earqee's repository
-- Convert a number in range [0,3] from binary to decimal
-- F: [00, 01, 10, 11] -> [0000, 0001, 0010, 1000]

library ieee;
use ieee.std_logic_1164.all;

entity Decoder is
	port ( I : in std_logic_vector(1 downto 0);
			 X : out std_logic_vector(3 downto 0) );
end Decoder;

architecture Struct of Decoder is
begin
	process(I) 
	begin
		case I is
			when "00" => X <= "0001"; 
			when "01" => X <= "0010";
			when "10" => X <= "0100";
			when "11" => X <= "1000";
		end case;
	end process;

end Struct;