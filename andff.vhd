-- $ : Log
-- @ : Author
-- # : Section
-- % : Outer interface
-- ! : Caution!
-- ? : Question
-- & :
-- * :
-- + :
-- ^ :
-- | :
-- () :
-- [] :
-- {} :

library ieee.std_lib_1164.all;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity andff is
    port ( a_in : in  STD_LOGIC;
           b_in : in  STD_LOGIC;
           clk : in  STD_LOGIC;
		   xrst : in STD_LOGIC;
           c_out : out  STD_LOGIC);
end andff;
		
architecture Behavioral of andff is

begin

	process (xrst, clk)
	begin
		if (xrst = '0') then
			c_out <= '0';
		elsif (clk'event and clk = '0') then
			c_out <= a_in and b_in;
		end if;
	end process;

end Behavioral;

