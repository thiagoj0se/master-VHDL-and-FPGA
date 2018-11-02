-- Code from Earqee's repository
-- Design a NAND gate

library ieee;
use ieee.std_logic_1164.all;

entity NAND_Gate is
	port( A : in std_logic;
			B : in std_logic;
			X : out std_logic );
end NAND_Gate;

architecture Struct of NAND_Gate is
begin
	process(A, B)
	begin
		if(A='1' and B='1') then X <= '0'; else X <= '1'; end if;
	end process;
end Struct;