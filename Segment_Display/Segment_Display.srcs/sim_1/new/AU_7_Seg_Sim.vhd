----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.05.2023 11:32:19
-- Design Name: 
-- Module Name: AU_7_Seg_Sim - Behavioral
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

entity AU_7_Seg_Sim is
--  Port ( );
end AU_7_Seg_Sim;

architecture Behavioral of AU_7_Seg_Sim is

component AU_7_Seg
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           Clk : in STD_LOGIC;
           RegSel : in STD_LOGIC;
           S_LED : out STD_LOGIC_VECTOR (3 downto 0);
           S_7SEG : out STD_LOGIC_VECTOR (6 downto 0);
           Carry : out STD_LOGIC;
           Zero : out STD_LOGIC);
end component;

signal A,S_LED : std_logic_vector (3 downto 0);
signal S_7SEG : std_logic_vector (6 downto 0);
signal RegSel,Carry,Zero : std_logic;
signal Clk : std_logic := '0';

begin
UUT : AU_7_seg port map (
    A => A,
    Clk => Clk,
    RegSel => RegSel,
    S_LED => S_LED,
    S_7SEG => S_7SEG,
    Carry => Carry,
    Zero => Zero
);
Clk <= not Clk after 1ns;

process
begin

            RegSel <= '1';
            A <= "0000";
            
           wait for 200ns;
            
            RegSel <= '0';
            A <= "0000";
            
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
            
            wait for 200ns;
                        
            A <= "0001";
            wait for 200ns;
                        
            RegSel <= '1';
            A <= "0000";
            
            wait;
            
        end process;
    
    


end Behavioral;
