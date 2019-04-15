library IEEE;
use IEEE.STD_LOGIC_1164.all;


entity Nand2Gate2 is 
	port( in1 : in std_logic;
			in2 : in std_logic;
			out1 : out std_logic);
end Nand2Gate2;

architecture Behavioral of Nand2Gate2 is
	signal s_andout : std_logic;
begin
		
		and_gate : entity work.And2Gate(Behavioral)
							port map(in1 => in1,
										in2 => in2,
										out1 => s_andout );
										
		not_gate : entity work.NotGate(Behavioral)
							port map(in1 => s_andout ,
										out1 => out1);
										
										

end Behavioral;