library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity XOR_Encrypt is
    Port ( plaintext : in  STD_LOGIC_VECTOR (7 downto 0);
           key       : in  STD_LOGIC_VECTOR (7 downto 0);
           ciphertext: out STD_LOGIC_VECTOR (7 downto 0));
end XOR_Encrypt;

architecture Behavioral of XOR_Encrypt is
begin
    process(plaintext, key)
    begin
        ciphertext <= plaintext xor key;
    end process;
end Behavioral;