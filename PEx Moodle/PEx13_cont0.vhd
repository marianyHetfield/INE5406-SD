-- Make a circuit that counts how many consecutive zeros are in the left entered (INPT) of 4 bits.
-- The output (outp) must have 3 bits and show the number of zeros to the left of the entrance.
library ieee;
use ieee.std_logic_1164.all;


entity cont_zeros_esq is
	port(
    	inpt: in std_logic_vector(3 downto 0);
    	outp: out std_logic_vector(2 downto 0)
    );
end entity;

architecture arch of cont_zeros_esq is

begin

	outp <= "000" when inpt(3) = '1' else
            "001" when inpt(3 downto 2) = "01" else
            "010" when inpt(3 downto 1) = "001" else
            "011" when inpt(3 downto 0) = "0001" else
            "100";

end arch;


