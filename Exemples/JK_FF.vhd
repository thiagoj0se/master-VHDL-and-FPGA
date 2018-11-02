-- Code from Earqee's repository
-- Construct a complete JK flip flip
-- Triggered in a falling edge event

library ieee;
use ieee.std_logic_1164.all;

entity JK_FF is
	port( J : in std_logic;
			K : in std_logic;
			clock : in std_logic;
			reset: in std_logic;
			set : in std_logic;
			Q : inout std_logic;
			notQ : inout std_logic);
end JK_FF;

architecture Struct of JK_FF is
	-- Signal input will store the concatenated value of
	-- the FF's J and K current states
	-- Doing this because will become easier to work it
	signal input : std_logic_vector(1 downto 0);
	-- Let's work with curQ rather than Q and notQ
	signal curQ : std_logic;
	
	begin
	-- Assigning input as previously said
	input <= J & K;
	-- curQ is just a copy of Q, you'll see why I like that next
	curQ <= Q;	
	
	process(J, K, clock)
	begin
	
		if(reset='1') then curQ <= '0';
		elsif(set='1') then curQ <= '1';
		-- Below means, "are we allowed to change the state and
		-- is there a rising or falling edge event?"
		elsif(clock='1' and clock'event) then 
			-- Notice that, as the clock is 1 and there's a event
			-- then it must be a falling edge event
			case input is
				when "00" => null;
				when "01" => curQ <= '0';
				when "10" => curQ <= '1';
				when "11" => curQ <= not curQ;	
			end case;	
		end if;
		
		--Now we change Q and notQ only one time! :)
		Q <= curQ;
		notQ <= not curQ;
	end process;
end Struct;