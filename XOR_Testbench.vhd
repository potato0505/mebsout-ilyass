library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity XOR_Testbench is
end XOR_Testbench;

architecture Behavioral of XOR_Testbench is
    signal plaintext  : STD_LOGIC_VECTOR (7 downto 0) := "10101010";
    signal key        : STD_LOGIC_VECTOR (7 downto 0) := "11001100";
    signal ciphertext : STD_LOGIC_VECTOR (7 downto 0);
    signal decrypted  : STD_LOGIC_VECTOR (7 downto 0);
begin
    -- Instantiate the encryption module
    UUT_Encrypt: entity work.XOR_Encrypt
        port map (
            plaintext => plaintext,
            key       => key,
            ciphertext=> ciphertext
        );

    -- Instantiate the decryption module
    UUT_Decrypt: entity work.XOR_Decrypt
        port map (
            ciphertext => ciphertext,
            key        => key,
            plaintext  => decrypted
        );

    -- Test process
    process
    begin
        -- Wait for the encryption and decryption to complete
        wait for 10 ns;

        -- Display results
        assert (decrypted = plaintext) report "Decryption failed" severity error;

        -- End simulation
        wait;
    end process;
end Behavioral;