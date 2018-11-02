library ieee;
use ieee.std_logic_1164.all;

entity Byte_Multiplier is
	port(I0, I1 : in std_logic_vector(3 downto 0);
			X : out std_logic_vector(7 downto 0) );
end Byte_Multiplier;

architecture Struct of Byte_Multiplier is
	signal A0, B0, S0, A1, B1, S1, A2, B2, S2, carry : std_logic_vector(3 downto 0) := "0000";
begin
	
	X(0) <= I0(0) and I1(0);
	
	A0(0) <= I0(0) and I1(1);
	A0(1) <= I0(0) and I1(2);
	A0(2) <= I0(0) and I1(3);
	A0(3) <= carry(0);
	
	B0(0) <= I0(1) and I1(0);
	B0(1) <= I0(1) and I1(1);
	B0(2) <= I0(1) and I1(2);
	B0(3) <= I0(1) and I1(3);
	
	frt_adder: entity work.Byte_Adder port map(I0=>A0, I1=>B0, carry_in=>'0', carry_out=>carry(1), S=>S0);
	
	X(1) <= S0(0);
	
	A1(0) <= S0(1);
	A1(1) <= S0(2);
	A1(2) <= S0(3);
	A1(3) <= carry(1);
	
	B1(0) <= I0(2) and I1(0);
	B1(1) <= I0(2) and I1(1);
	B1(2) <= I0(2) and I1(2);
	B1(3) <= I0(2) and I1(3);
	
	scd_adder: entity work.Byte_Adder port map(I0=>A1, I1=>B1, carry_in=>'0', carry_out=>carry(2), S=>S1);
	
	X(2) <= S1(0);
	
	A2(0) <= S1(1);
	A2(1) <= S1(2);
	A2(2) <= S0(3);
	A2(3) <= carry(2);
	
	B2(0) <= I0(3) and I1(0);
	B2(1) <= I0(3) and I1(1);
	B2(2) <= I0(3) and I1(2);
	B2(3) <= I0(3) and I1(3);
	
	trd_adder: entity work.Byte_Adder port map(I0=>A2, I1=>B2, carry_in=>'0', carry_out=>carry(3), S=>S2);
	
	X(3) <= S2(0);
	X(4) <= S2(1);
	X(5) <= S2(2);
	X(6) <= S2(3);
	X(7) <= carry(3);
	
end Struct;