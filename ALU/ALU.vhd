-- Code from Earqee's repository

library ieee;
use ieee.std_logic_1164.all;

entity ALU is
	-- :)
end ALU;

architecture Struct of  ALU is 
	signal opcode, first_in, second_in : std_logic_vector(3 downto 0);
	signal sum, sub, lshift, rshift, increment, decrement : std_logic_vector(3 downto 0);
    signal mult : std_logic_vector(7 downto 0);
	
begin          	
		i_sum: entity work.Byte_Adder port map(I0=>first_in, I1=>second_in, carry_in=>'0', S=>sum);
		i_sub: entity work.Byte_Subtractor port map(I0=>first_in, I1=>second_in, carry_in=>'0', S=>sub);
		i_increment: entity work.Byte_Adder port map(I0=>first_in, I1=>"0001", carry_in=>'0', S=>increment);
		i_decrement: entity work.Byte_Subtractor port map(I0=>first_in, I1=>"0001", carry_in=>'0', S=>decrement);
		i_lshift: entity work.Byte_LShift port map(I0=>first_in, I1=>second_in, X=>lshift);
		i_rshift: entity work.Byte_RShift port map(I0=>first_in, I1=>second_in, X=>rshift);	
		i_mult: entity work.Byte_Mult port map(I0=>first_in, I1=>second_in, S=>mult);
		seg_manager: entity work.Segments_Manager port map(
			first_in=>first_in, second_in=>second_in, result_in=>result,
			first_out=>first_segment, second_out=>second_segment, result_out=>result_segment);
		 
		process(S, clock_op, clock_fin, calculate) begin
			if(clock_op'event and clock_op='1') then 
				opcode <= S; 
			end if;
			
			if(clock_fin'event and clock_fin='1') then
				first_in <= S;
			end if;			
		
			if(clock_sin'event and clock_sin='1') then
				second_in <= S;
			end if;
		
			if(calculate'event and calculate='1') then
				case opcode is
					-- :)
				end case;			
			end if;
			
		end process;
end Struct;
