library 	IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity CounterN is	
	generic (N : positive := 10);
	port (clk : in std_logic;
			count : out integer;
			reset : in std_logic;
			start : in std_logic;
			break : in std_logic);
			
end CounterN;

architecture Behav of CounterN is
signal s_count : integer :=0;
	
begin
	process(clk, start)
	begin
		if (rising_edge(clk)) then
			if(reset = '1') then
				s_count <= 0;
			elsif (s_count  = N) then
				s_count <= 0;
			elsif(start = '1' or s_count/=0) then
				s_count <= s_count + 1;
			elsif(s_count = 5) then
				if(break = '1' )then
					s_count <= s_count;
				end if;
			else
				s_count <= 0;
			end if;
		end if;
	end process;
	count <= s_count;
end Behav;