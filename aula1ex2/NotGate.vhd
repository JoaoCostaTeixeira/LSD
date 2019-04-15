library IEEE;
use IEEE.STD_LOGIC_1164.all;


entity NotGate is 
	port( in1 : in std_logic;
			out1 : out std_logic);
end NotGate;

architecture Behavioral of NotGate is
begin
	out1 <= not in1;

end Behavioral;