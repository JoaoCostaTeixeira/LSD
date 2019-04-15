library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity FullAdder is
	port(a, b, cin : in std_logic;
			s, cout : out std_logic);
end FullAdder;
architecture Behavioral of FullAdder is
	signal op1, op2, res : unsigned(1 downto 0);
begin

	op1 <= '0' & a;
	op2 <= '0' & b;
	res <= op1 + op2;
	s <= std_logic(res(0));
	cout <= std_logic(res(1));
	
end Behavioral;