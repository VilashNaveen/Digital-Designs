----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.04.2023 14:50:08
-- Design Name: 
-- Module Name: AU_Sim - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity AU_Sim is
--  Port ( );
end AU_Sim;

architecture Behavioral of AU_Sim is 
    component AU is
        port ( A : in std_logic_vector (3 downto 0);
        RegSel, Clk : in std_logic;
        S : out std_logic_vector (3 downto 0);
        Zero, Carry : out std_logic );
    end component;
    signal A ,S : std_logic_vector (3 downto 0);
    signal RegSel : std_logic;
    signal Zero, Carry : std_logic;
    signal Clk : std_logic := '0';

begin
    UUT : AU port map(
        A => A,
        RegSel => RegSel,
        Clk => Clk,
        S => S,
        Zero => Zero,
        Carry => Carry );
    
    Clk <= not clk after 1ns;
    
    process
        begin
            RegSel <= '1';
            A <= "0001";
            
           wait for 200ns;
            
            RegSel <= '0';
            A <= "0010";
            
            wait for 200ns;
            
            RegSel <= '0';
            A <= "0110";
            
            wait for 200ns;
            
            RegSel <= '0';
            A <= "0100";
            
            wait for 200ns;
            
            A <= "0000";
            wait for 200ns;
            
            RegSel <= '1';
            A <= "0000";
            
            wait;
            
        end process;
            


end Behavioral;
