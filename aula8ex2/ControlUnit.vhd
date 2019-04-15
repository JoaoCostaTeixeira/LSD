library IEEE;
use IEEE.STD_LOGIC_1164.all;


entity ControlUnit is
	port(twenty : in  std_logic;
		  clk		: in  std_logic;
		  reset  : in std_logic;
		  fifty	: in  std_logic;
		  sell	: out std_logic);
end ControlUnit;


architecture Behavioral of ControlUnit is

	type TState is (SUMI, SUM1, SUM2, SUM3, SUM4, SUMF);
	signal s_currentState, s_nextState : TState;
begin
	sync_proc : process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_currentState <= SUMI;
			else
				s_currentState <= s_nextState;
			end if;
		end if;
	end process;

	comb_proc : process(s_currentState)
	begin
		case (s_currentState) is
		when SUMI =>
			sell <= '0';
			if(twenty= '1') then
				s_nextState <= SUM1;
			elsif(fifty= '1') then
				s_nextState <= SUM3;
			else 
				s_nextState <= SUMI;
			end if;
			
		when SUM1 =>
			sell <= '0';
			if(twenty = '1') then
				s_nextState <= SUM2;
			elsif(fifty= '1') then
				s_nextState <= SUM4;
			else 
				s_nextState <= SUM1;
			end if;

		when SUM2 =>
			sell <= '0';
			if(twenty = '1') then
				s_nextState <= SUM3;
			elsif(fifty= '1') then
				s_nextState <= SUMF;
			else 
				s_nextState <= SUM2;
			end if;

		when SUM3 =>
			sell <= '0';
			if(twenty = '1') then
				s_nextState <= SUM4;
			elsif(fifty= '1') then
				s_nextState <= SUMF;
			else 
				s_nextState <= SUM3;
			end if;
			
		when SUM4 =>
			sell <= '0';
			if(twenty = '1') then
				s_nextState <= SUMF;
			elsif(fifty= '1') then
				s_nextState <= SUMF;
			else 
				s_nextState <= SUM4;
			end if;
		when SUMF =>
			sell <= '1';
			s_nextState <= SUMF;
		end case;
	end process;
end Behavioral;
