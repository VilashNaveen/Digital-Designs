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
    Port ( Mode : in STD_LOGIC;
           A : in STD_LOGIC_VECTOR (2 downto 0);
           B : in STD_LOGIC_VECTOR (2 downto 0);
           S : out STD_LOGIC_VECTOR (2 downto 0);
           C_out : out STD_LOGIC);
end Add_Sub_4_bit;

architecture Behavioral of Add_Sub_4_bit is
    component FA
        port (
        A: in std_logic;
        B: in std_logic;
        C_in: in std_logic;
        S: out std_logic;
        C_out: out std_logic);
    end component;

    SIGNAL FA0_S, FA0_C, FA1_S, FA1_C, FA2_S, FA2_C, OP_1,OP_2,OP_3,OP_0 : std_logic;

begin
    FA_0 : FA
        port map (
            A => A(0),
            B => OP_0,
            C_in => Mode,
            S => S(0),
            C_Out => FA0_C);
    FA_1 : FA
        port map (
            A => A(1),
            B => OP_1,
            C_in => FA0_C,
            S => S(1),
            C_Out => FA1_C); 
    FA_2 : FA
        port map (
            A => A(2),
            B => OP_2,
            C_in => FA1_C,
            S => S(2),
            C_Out => C_out);
    FA_3 : FA
        port map (
            A => A(2),
            B => OP_3,
            C_in => FA1_C,
            S => S(2),
            C_Out => C_out);
            
    OP_0 <= B(0) xor Mode;
    OP_1 <= B(1) xor Mode;
    OP_2 <= B(2) xor Mode;
    OP_3 <= B(3) xor Mode;
    
end Behavioral;
