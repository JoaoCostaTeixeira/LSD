library ieee;
use ieee.std_logic_1164.all;

entity Fase2 is
	port( KEY 		: in std_logic_vector(0 downto 0);
			LEDR		: out std_logic_vector(1 downto 0);
			LEDG		: out std_logic_vector(8 downto 8);
			CLOCK_50	: in std_logic);
end Fase2;


architecture Shell of Fase2 is
	signal s_clk_2hz,  s_clk_s : std_logic;
	signal s_count : integer :=0;
begin

Freq1s:	entity work.freqDivider(Behavioral)
			generic map(DIV_FACTOR => 50E6) -- divisor para 1s
			port map(clkIn		=> CLOCK_50,
						clkOut	=> s_clk_s);
						
t1:	entity work.CounterN (Behav)
			generic map(N => 10)	-- Time in seconds (10 s)
			port map(clk		=> s_clk_s, 
						reset 	=> '0',
						start		=> not KEY(0),
						count	=> s_count);
						
f1:	entity work.freqDivider(Behavioral)
			generic map(DIV_FACTOR => 25E6)	-- divisor para 2hz
			port map(clkIn		=> CLOCK_50,
						clkOut	=> s_clk_2hz);
						
engine : entity work.Engine(Behavioral)
			port map(inputClk		=> s_clk_2hz,
						start => not KEY(0),
						count	=> s_count,
						output(0) => LEDG(8),
						output(1) => LEDR(0),
						output(2) => LEDR(1));					

						
end Shell;
