-- format_leaf.vhd
-- vhdl IEEE 1076-2008, and IEEE1164 VHDL Multivalue Logic packages.

library ieee.std_lib_1164.all;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity format_leaf is
    port (
        a_in : in STD_LOGIC;
        b_in : in STD_LOGIC;
        clk : in STD_LOGIC;
        xrst : in STD_LOGIC;
        c_out : out STD_LOGIC);
end format_leaf;
		
architecture rtl of format_leaf is
-- signal sig_a : std_logic;
-- signal sig_vec : std_logic_vector(7 downto 0);
begin

	-- process model
	process (xrst, clk)
	begin
		if (xrst = '0') then
			c_out <= '0';
		elsif (clk'event and clk = '0') then
			c_out <= a_in and b_in;
		end if;
	end process;

end rtl;

