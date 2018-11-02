-- Code from Earqee's repository

library ieee;
use ieee.std_logic_1164.all;

entity Bit_Subtractor is
	port( A, B, carry_in : in std_logic;
			carry_out, S: out std_logic );
end Bit_Subtractor;

architecture Struct of Bit_Subtractor is 
begin
	process(A, B, carry_in) begin
		S <= A xor B xor carry_in;
		carry_out <= (not A and carry_in) or (B and carry_in) or (not A and B);
	end process;
end Struct;