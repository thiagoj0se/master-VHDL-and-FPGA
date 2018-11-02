-- Code from Earqee's repository
-- Create a comparator of two (I0 and I1) n-bit numbers
-- output the answer in one of these wires: 
-- 'less', 'equal' or 'greater'

library ieee;
use ieee.std_logic_1164.all;

entity Comparator is
	generic(n : positive);
	
	port( I0 : in std_logic_vector(n-1 downto 0);
			I1: in std_logic_vector(n-1 downto 0);
			less : out std_logic;
			equal : out std_logic;
			greater: out std_logic);
end Comparator;

architecture Struct of Comparator is
begin
	process(I0, I1)
	begin
		if(I0<I1) then
			less <= '1';
			equal <= '0';
			greater <= '0';
		elsif(I0=I1) then
			less <= '0'; 
			equal <= '1';
			greater <= '0';
		else
			less <= '0';
			equal <= '0';
			greater <= '1';
		end if;
	end process;
end Struct;