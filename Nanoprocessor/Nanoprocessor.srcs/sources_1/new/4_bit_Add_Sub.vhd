----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.05.2023 13:26:34
-- Design Name: 
-- Module Name: 4_bit_Add_Sub - Behavioral
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

entity Add_Sub_4_bit is
    Port ( En : in STD_LOGIC;
           A : in STD_LOGIC_VECTOR (3 downto 0);
           S : out STD_LOGIC_VECTOR (3 downto 0);
           C : out STD_LOGIC;
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Zero : out STD_LOGIC);
end Add_Sub_4_bit;

architecture Behavioral of Add_Sub_4_bit is
    component RCA_4
        Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
            S : out STD_LOGIC_VECTOR (3 downto 0);
            C_in : in STD_LOGIC;
            B : in STD_LOGIC_VECTOR (3 downto 0);
            C_out : out STD_LOGIC);
    end component;
    
signal B_1,S_temp : std_logic_vector (3 downto 0);
Signal Z_1, EN_1 : std_logic;

begin

    RCA_4_0 : RCA_4
        port map (
            A => A,
            B => B_1,
            S => S_temp,
            C_in => En_1,
            C_out => C );
            
    EN_1 <= En;
            
    B_1(0) <= (B(0) xor En);
    B_1(1) <= (B(1) xor En); 
    B_1(2) <= (B(2) xor En); 
    B_1(3) <= (B(3) xor En);    
         
    Zero <= not (S_temp(0) or S_temp(1) or S_temp(2) or S_temp(3) );     
    
    S <= S_temp;  
    
    
            


end Behavioral;
