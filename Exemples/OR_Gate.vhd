-- Code from Earqee's repository
-- Design a OR gate

library ieee;
use ieee.std_logic_1164.all;

entity OR_Gate is
	port( A : in std_logic;
			B : in std_logic;
			X : out std_logic );
end OR_Gate;

architecture Struct of OR_Gate is
begin
	process(A, B)
	begin
		if(A='0'and B='0') then X <= '0'; else X <= '1'; end if;
	end process;
end Struct;
		