library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity GateDemo is 
	port(SW : in std_logic_Vector(1 downto 0);
			LEDR : out std_logic_vector(0 downto 0));
			
end GateDemo;

architecture Shell of GateDemo is
begin
		systemCore : entity work.Nand2Gate2(Behavioral)
							port map(in1 => SW(0),
										in2 => SW(1),
										out1 => LEDR(0));


end Shell;