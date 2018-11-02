-- Code from Earqee's repository
-- Design a NOR gate

library ieee;
use ieee.std_logic_1164.all;

entity NOR_Gate is 
	port( A : in std_logic;
			B : in std_logic;
			X : out std_logic );
end NOR_Gate;

architecture Struct of NOR_Gate is
begin
	process(A, B)
	begin
		if(A='0' and B='0') then X <= '1'; else X <= '0'; end if;
	end process;
end Struct;
