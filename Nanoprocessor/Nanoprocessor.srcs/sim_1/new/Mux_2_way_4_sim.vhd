----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.06.2023 23:58:26
-- Design Name: 
-- Module Name: Mux_2_way_4_sim - Behavioral
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

entity Mux_2_way_4_sim is
--  Port ( );
end Mux_2_way_4_sim;

architecture Behavioral of Mux_2_way_4_Sim is
component Mux_2_Way_4_bit is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           S : out STD_LOGIC_VECTOR (3 downto 0);
           En : in STD_LOGIC);
end component;
signal A,B,S : std_logic_vector(3 downto 0);
signal EN : std_logic;
begin
UUT: Mux_2_Way_4_bit PORT MAP(
    A => A,
    B => B,
    S => S,
    EN => EN    
);
process
begin

    A <= "0111";
    B <= "1110";
   
    
    EN <= '0';
    wait for 100 ns;
    EN <= '1';
    wait for 100 ns;
    
     A <= "0101";
     B <= "0011";
     
    EN <= '0';
    wait for 100 ns;
    EN <= '1';
    
    wait;
    
    
end process;


end Behavioral;