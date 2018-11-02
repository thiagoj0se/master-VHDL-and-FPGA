-- Code from Earqee's repository

library ieee;
use ieee.std_logic_1164.all;

entity Segments_Manager is
	port(first_in, second_in, result_in : in std_logic_vector(3 downto 0);
			first_out, second_out, result_out : out std_logic_vector(6 downto 0) );
end Segments_Manager;

architecture Struct of Segments_Manager  is 
begin
	frt: entity work.Seven_Segment_Display port map(I=>first_in, X=>first_out);
	scd: entity work.Seven_Segment_Display port map(I=>second_in, X=>second_out);
	res: entity work.Seven_Segment_Display port map(I=>result_in, X=>result_out);

end Struct;