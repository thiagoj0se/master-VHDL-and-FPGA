-- Code from Earqee's repository
-- Desig a XNOR gate

library ieee;
use ieee.std_logic_1164.all;

entity XNOR_Gate is
	port( A : in std_logic;
			B : in std_logic;
			X : out std_logic );
end XNOR_Gate;

architecture Struct of XNOR_Gate is
begin
	process(A, B)
	begin
		if(A/=B) then X <= '0'; else X <= '1'; end if;
	end process;
end Struct;