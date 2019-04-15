library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu is
	generic(n : positive := 8);
	port (input1 : in std_logic_vector(n-1 downto 0);
			input2 : in std_logic_vector(n-1 downto 0);
			op : in std_logic_vector(1 downto 0);
			ovf : out std_logic;
			output : out std_logic_vector(n-1 downto 0));
end alu;

architecture behavioral of alu is
	signal s_in1, s_in2, s_out : unsigned(n downto 0);
begin
	s_in1 <= '0' & unsigned(input1);
	s_in2 <= '0' & unsigned(input2);
	process(op)
	begin
		if(op = "00") then
			s_out <= s_in1 - s_in2;
		elsif(op = "01") then
			s_out <= s_in1 + s_in2;
		--elsif(op = "10") then
			--s_out <= s_in1 * s_in2;
		else
			s_out <= s_in1 / s_in2;
		end if;
	end process;
	output <= std_logic_vector(s_out(n-1 downto 0));
	ovf <= s_out(n);
end behavioral;

