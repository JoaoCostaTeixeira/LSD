library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SeqDetFSM is
		port( clk : in std_logic;
				xin : in std_logic;
				reset : in std_logic;
				xout : out std_logic);


end SeqDetFSM;
architecture MealyArch of SeqDetFSM is
	type TState is (First, sec, tree, four);
	signal output : std_logic;
	signal s_currentState, s_nextState : TState;
	begin
sync_proc : process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_currentState <= First;
			else
				s_currentState <= s_nextState;
			end if;
		end if;
	end process;

	
	comb_proc : process(s_currentState)
	begin
		case (s_currentState) is
		when first =>
			if(xin = '1') then
				s_nextState <= sec;
			else
				s_nextState <= first;
			end if;
				output <= '0';
		when sec =>
			if(xin = '0')then
				s_nextState <= tree;
			else 
				s_nextState <=first;
			end if;
				output <= '0';
			
		when tree =>
			if(xin = '0') then
				s_nextState <= four;
			else
				s_nextState <=first;
			end if;
				output <= '0';
		when four =>
			if(xin = '1')then
				output <= '1';
			else 
				output <= '0';
			end if;
			s_nextState <= first;
		end case;
		xout <= output;
	end process;
end MealyArch;
