-- Code from Earqee's repository

library ieee;
use ieee.std_logic_1164.all;

entity Bit_Adder is
	port( A, B, carry_in : in std_logic;
			carry_out, S: out std_logic );
end Bit_Adder;

architecture Struct of Bit_Adder is 
begin
	process(A, B, carry_in) begin
		S <= A xor B xor carry_in;
		carry_out <= (A and carry_in) or (B and carry_in) or (A and B);
	end process;
end Struct;