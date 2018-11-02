-- Code from Earqee's repository

library ieee;
use ieee.std_logic_1164.all;

entity Byte_Record is
	port( I : in std_logic_vector(3 downto 0);
			X: out std_logic_vector(3 downto 0) );
end Byte_Record;

architecture Struct of Byte_Record is 
begin
	process(I) begin
		X <= I;
	end process;
end Struct;