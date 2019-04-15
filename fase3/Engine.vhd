library ieee;
use ieee.std_logic_1164.all;

entity Engine is
	port( inputClk : in std_logic;
			count 	: in integer;
			output	: out std_logic_vector(2 downto 0);
			start : in std_logic);
end Engine;		
architecture Behavioral of Engine is	
	begin
	process(count)
		begin
		if(count > 0 or start = '1')then
			output(0) <= inputClk;		
			if(count < 2) then
				output(1) <= '1';
			elsif(count>8)then
				output(2)<='1';
			else
				output(1)<='0';
				output(2)<='0';
			end if;
		elsif(count = 0) then 
			output(0) <= '0';
			output(1)<='0';
			output(2)<='0';
		end if;
	end process;
end Behavioral;