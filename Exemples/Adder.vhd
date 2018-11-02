-- Code from Earqee's repository
-- Create a complete adder of N bits
-- using language features

library ieee;
use ieee.std_logic_1164.all;

entity Adder is
	generic(n : positive);
	port( I0 : in std_logic_vector(n-1 downto 0);
			I1 : in std_logic_vector(n-1 downto 0);
			sum : out std_logic_vector(n downto 0) );
end Adder;

architecture Struct of Adder is

begin
	result <= ('0' & A) + ('0' & B);
	sum <= result;
end Struct;