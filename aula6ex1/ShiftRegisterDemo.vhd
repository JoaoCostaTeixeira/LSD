library IEEE;
use IEEE.STD_LOGIC_1164.all;


entity ShiftRegisterDemo is 
	port(CLOCK_50 : in std_logic;
		  Sw : in std_logic_vector(0 downto 0);
		  LEDR : out std_logic_vector(7 downto 0));
end ShiftRegisterDemo;


architecture Shell of ShiftRegisterDemo is
	signal clk_1hz : std_logic;
	begin
		 freqDiv : entity work.ClkDividerN(Behavioral)
						generic map(divFactor => 50_000_000)
					   port map(clkIn => CLOCK_50,
									clkout => clk_1hz);
									
									
		shif : entity work.ShiftRegisterN(Beav)
					generic map (N => 8)
					port map (clk => clk_1hz,
								 sin => SW(0),
								 dataOut => LEDR(7 downto 0));

end Shell;