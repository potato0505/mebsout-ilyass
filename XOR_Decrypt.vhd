library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity XOR_Decrypt is
    Port ( ciphertext : in  STD_LOGIC_VECTOR (7 downto 0);
           key        : in  STD_LOGIC_VECTOR (7 downto 0);
           plaintext  : out STD_LOGIC_VECTOR (7 downto 0));
end XOR_Decrypt;

architecture Behavioral of XOR_Decrypt is
begin
    process(ciphertext, key)
    begin
        plaintext <= ciphertext xor key;
    end process;
end Behavioral;