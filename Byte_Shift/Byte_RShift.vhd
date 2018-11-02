-- Code from Earqee's repository

library ieee;
use ieee.std_logic_1164.all;

entity Byte_RShift is
	port( I0, I1 : in std_logic_vector(3 downto 0);
			X : out std_logic_vector(3 downto 0) );
end Byte_RShift;

architecture Struct of Byte_RShift is 
begin
	process(I0) begin			
		for k in 1 to X'length-1 loop
			X(k-1) <= I0(k);		
		end loop;		
		X(X'length-1) <= '0';	
	end process;
end Struct;