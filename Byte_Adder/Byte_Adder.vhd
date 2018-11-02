-- Code from Earqee's repository

library ieee;
use ieee.std_logic_1164.all; 

entity Byte_Adder is
	port( I0, I1 : in std_logic_vector(3 downto 0);
			carry_in : in std_logic;
			S : out std_logic_vector(3 downto 0) );	
end Byte_Adder;

architecture Struct of Byte_Adder is
	signal carry : std_logic_vector(4 downto 0);
	
begin
	carry(0) <= carry_in;
	gen: for k in 0 to S'length-1 generate
		sum: entity work.Bit_Adder port map(A=>I0(k), B=>I1(k), carry_in=>carry(k), 
					carry_out=>carry(k+1), S=>S(k));
	end generate;
end Struct;