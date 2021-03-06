library IEEE;
use IEEE.STD_LOGIC_1164.all;


entity And2Gate is 
	port( in1 : in std_logic;
			in2 : in std_logic;
			out1 : out std_logic);
end And2Gate;

architecture Behavioral of And2Gate is
begin
	out1 <= in1 and in2;


end Behavioral;