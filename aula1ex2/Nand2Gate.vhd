library IEEE;
use IEEE.STD_LOGIC_1164.all;


entity Nand2Gate is 
	port( in1 : in std_logic;
			in2 : in std_logic;
			out1 : out std_logic);
end Nand2Gate;

architecture Behavioral of Nand2Gate is
begin
	out1 <= not(in1 and in2);


end Behavioral;