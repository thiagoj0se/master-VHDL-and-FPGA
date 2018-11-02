-- Code from Earqee's repository
-- Design a AND gate

library ieee;
use ieee.std_logic_1164.all;

entity AND_Gate is
	port( A : in std_logic;
			B : in std_logic;
			X : out std_logic );
end AND_Gate;

architecture Struct of AND_Gate is
begin
	process(A, B)
	begin
		if(A='1' and B='1') then X <= '1'; else X <= '0'; end if;
	end process;
end Struct;