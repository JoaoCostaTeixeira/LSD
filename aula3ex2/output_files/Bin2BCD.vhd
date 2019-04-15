library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Bin2BCD is
	port(input : in std_logic_vector(3 downto 0);
			input2: in std_logic_vector(3 downto 0);
			output1 : out std_logic_vector(3 downto 0);
			output2 : out std_logic_vector(3 downto 0);
			output3 : out std_logic_vector(3 downto 0));

end Bin2BCD;

architecture beav of Bin2BCD is 
	signal inp : std_logic_vector(7 downto 0);
begin
	inp(7 downto 4) <= input2;
	inp(3 downto 0) <= input;
	
	output1 <= std_logic_vector(unsigned(inp) rem 10)(3 downto 0);
	output2 <= std_logic_vector((unsigned(inp) /10) rem 10)(3 downto 0);
	output3 <= std_logic_vector(unsigned(inp) /100)(3 downto 0);


end beav;