-- Code from Earqee's repository
-- Construct a byte (8 bits) adder

library ieee;
use ieee.std_logic_1164.all; 

entity Byte_Adder is
	port( I0, I1 : in std_logic_vector(7 downto 0);
			carry_in : in std_logic;
			carry_on : out std_logic;
			S : out std_logic_vector(7 downto 0) );	
end Byte_Adder;

architecture Struct of Byte_Adder is
	signal carry : std_logic_vector(8 downto 0);
begin
	carry(0) <= carry_in;
	-- Congractulations internet, you just learned to use a for loop
	f: for i in 0 to 7 generate
		e: entity work.Bit_Adder port map(I0(i), I1(i), carry(i), carry(i+1), S(i));
	end generate;
end Struct;