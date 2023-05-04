----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.05.2023 11:02:08
-- Design Name: 
-- Module Name: AU_7_Seg - Behavioral
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

entity AU_7_Seg is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           Clk : in STD_LOGIC;
           RegSel : in STD_LOGIC;
           S_LED : out STD_LOGIC_VECTOR (3 downto 0);
           S_7SEG : out STD_LOGIC_VECTOR (6 downto 0);
           Carry : out STD_LOGIC;
           Zero : out STD_LOGIC);
end AU_7_Seg;

architecture Behavioral of AU_7_Seg is
    component AU
        Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
               RegSel : in STD_LOGIC;
               Clk : in STD_LOGIC;
               S : out STD_LOGIC_VECTOR (3 downto 0);
               Zero : out STD_LOGIC;
               Carry : out STD_LOGIC);
   end component;
       
   component LUT_16_7
        Port ( address : in STD_LOGIC_VECTOR (3 downto 0);
              data : out STD_LOGIC_VECTOR (6 downto 0));
   end component;
   
   signal input, output : std_logic_vector (3 downto 0);
   signal lut_out : std_logic_vector (6 downto 0);
   signal regsel_in,clk_in,carry_out,zero_out : std_logic;

begin
    AU_1 : AU
        port map (
            A => input,
            Clk => clk_in,
            RegSel => regsel_in,
            S => output,
            Zero => zero_out,
            Carry => carry_out );
            
    LUT_16_7_1 : LUT_16_7
        port map (
            address => output,
            data => lut_out );
            
    regsel_in <= RegSel;
    input <= A;
    clk_in <= Clk;
    S_LED <= output;
    S_7SEG <= lut_out;
    Zero <= zero_out;
    Carry <= carry_out;
    


end Behavioral;
