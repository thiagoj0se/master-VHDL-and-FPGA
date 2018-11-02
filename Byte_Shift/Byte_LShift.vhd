-- Code from Earqee's repository

library ieee;
use ieee.std_logic_1164.all;

entity Byte_LShift is
	port( I0, I1 : in std_logic_vector(3 downto 0);
			X : out std_logic_vector(3 downto 0) );
end Byte_LShift;

architecture Struct of Byte_LShift is 
begin	
	process(I0, I1) begin
		X(0) <= '0';
		for k in 0 to X'length-2 loop
			X(k+1) <= I0(k);		
		end loop;
	end process;
end Struct;