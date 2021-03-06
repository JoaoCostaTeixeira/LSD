library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ShiftRegisterN is
	generic (N : positive := 4 );
	port (clk : in std_logic;
			sin : in std_logic;
			dataOut : out std_logic_vector(N-1 downto 0));
end ShiftRegisterN;

architecture Beav of ShiftRegisterN is
	signal s_out : std_logic_vector(N-1 downto 0);
begin 
	process(clk)
		begin
		if(rising_edge(clk)) then 
			s_out <= s_out(N-2 downto 0) & sin ;
		end if;
	end process;
	dataOut <= s_out;
end Beav;