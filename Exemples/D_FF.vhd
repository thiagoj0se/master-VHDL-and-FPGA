-- Code from Earqee's repository
-- Construct a complete D flip flip
-- Triggered in a falling edge event

library ieee;
use ieee.std_logic_1164.all;

entity D_FF is
	port( D : in std_logic;
			clock : in std_logic;
			reset : in std_logic;
			set : in std_logic;
			Q : inout std_logic;
			notQ : inout std_logic);
end D_FF;

architecture Struct of D_FF is
	-- curQ is just a copy of Q, you'll see why I like that 
	signal curQ : std_logic;
begin
	curQ <= Q;
	
	process(D, clock)
	begin
		if(reset='1') then curQ <= '0'; 
		elsif(set='1') then curQ <= '1';
		-- Below means, "are we allowed to change the state and
		-- is there a rising or falling edge event?"
		elsif(clock='1' and clock'event) then curQ <= D; end if;
		-- Notice that, as the clock is 1 and there's a event
		-- then it must be a falling edge event
		
		--Now we change Q and notQ only one time! :)
		Q <= curQ;
		notQ <= not curQ;
		
		end process;
end Struct;