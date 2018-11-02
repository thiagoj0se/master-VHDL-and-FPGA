-- Code from Earqee's repository
-- Design a XOR gate

library ieee;
use ieee.std_logic_1164.all;

entity XOR_Gate is
	port( A : in std_logic;
			B : in std_logic;
			X : out std_logic );
end XOR_Gate;

architecture Struct of XOR_Gate is 
begin
	process(A, B)
	begin
		if(A/=B) then X <= '1'; else X <= '0'; end if;
	end process;
end Struct;