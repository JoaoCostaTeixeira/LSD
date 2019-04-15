library IEEE;
use IEEE.STD_LOGIC_1164.all;


entity SeqDetFSM_Tb is

end SeqDetFSM_Tb	;

architecture Stimulus of SeqDetFSM_Tb is
	signal s_clk, s_xin, s_xout, s_reset : std_logic;
	begin
		uut : entity work.SeqDetFSM(MealyArch)
				port map (clk => s_clk,
							  xin => s_xin,
							  xout => s_xout,
							  reset => s_reset);
							  
		--process clock--
		
		stim_clk : process
		begin 
			s_clk <= '0';
			wait for 400 ns;
			s_clk <= '1';
			wait for 400 ns;
		end process;
		
		
		--process stim -- 
		stim : process
		begin 
			s_reset <= '0';
			s_xin <= '0';
			wait for 500 ns;
			s_reset <= '0';
			s_xin <='1';
			wait for 400 ns;
			s_xin <= '0';
			wait for 400 ns ;
			s_xin <= '0';
			wait for 400 ns;
			s_xin <= '1';
			wait for 400 ns;
		end process;	
end Stimulus;