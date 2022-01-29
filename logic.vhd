library ieee.std_lib_1164.all;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity logic is
    port ( a_in    : in  STD_LOGIC;
           b_in    : in  STD_LOGIC;
           and_out : out  STD_LOGIC;
           or_out  : out  STD_LOGIC;
           xor_out : out  STD_LOGIC;
           not_out : out  STD_LOGIC
	);
end logic;
		
architecture Behavioral of logic is

begin

	and_out <= a_in and b_in;
	or_out <= a_in or b_in;
	xor_out <= a_in xor b_in;
	not_out <= not a_in;

end Behavioral;

