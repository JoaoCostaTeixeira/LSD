library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;


entity CombShiftUnit is
  port( clk : in std_logic;
		  dataIn : in std_logic_vector(7 downto 0);
		  loadEn : in std_logic;
		  rotate : in std_logic;
		  dirLeft : in std_logic;
		  shArith : in std_logic;
		  dataOut : out std_logic_vector(7 downto 0));
end CombShiftUnit;

architecture Beav of CombShiftUnit is
begin
	process(clk)
		begin
			if (falling_edge(clk)) then
			if (loadEn = '1') then
				s_shiftReg <= dataIn;
			elsif (rotate = '1') then
				if (dirLeft = '1') then
					s_shiftReg <=std_logic_vector( ROTATE_RIGHT(unsigned(dataIn), 1));
				else
					s_shiftReg <= std_logic_vector( ROTATE_LEFT(unsigned(dataIn), 1));
				end if;
			elsif (shArith = '1') then
				if (dirLeft = '1' ) then
					s_shiftReg <=std_logic_vector( SHIFT_LEFT(signed(dataIn), 1));
				else 
					s_shiftReg <= std_logic_vector( SHIFT_Right(signed(dataIn), 1));
				end if;
			else 
				if(dirLeft = '1') then
					s_shiftReg <= std_logic_vector( SHIFT_LEFT(unsigned(dataIn), 1)); 
				else 
					s_shiftReg <= std_logic_vector( SHIFT_RIGHT(unsigned(dataIn), 1));
				end if;
			end if;
	

			dataOut<= s_shiftReg;


end Beav;