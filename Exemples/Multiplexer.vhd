-- Code from Earqee's repository
-- Redirect 4 data inputs (I0[0..2], I1[0..2], I2[0..2], I3[0..2]) 
-- to a given output X[0..2], using a data selector S[0..1];

library ieee;
use ieee.std_logic_1164.all;

entity Multiplexer is
	
	port( I0 : in std_logic_vector(2 downto 0);
			I1 : in std_logic_vector(2 downto 0);
			I2 : in std_logic_vector(2 downto 0);
			I3 : in std_logic_vector(2 downto 0);
			S : in std_logic_vector(1 downto 0);
			X : out std_logic_vector(2 downto 0) );
end Multiplexer;	

architecture Struct of Multiplexer is
begin
	process(I0, I1, I2, I3, S)
	begin
		case S is
			when "00" => X <= I0;
			when "01" => X <= I1;
			when "10" => X <= I2;  
			when "11" => X <= I3;
			when others => X <= "ZZZ";
		end case;
	end process;

end Struct;