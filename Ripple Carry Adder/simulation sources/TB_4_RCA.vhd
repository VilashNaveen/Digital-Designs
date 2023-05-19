----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/14/2023 04:52:10 PM
-- Design Name: 
-- Module Name: TB_4_RCA - Behavioral
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

entity TB_4_RCA is
--  Port ( );
end TB_4_RCA;

architecture Behavioral of TB_4_RCA is

  COMPONENT RCA_4
      Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
          S : out STD_LOGIC_VECTOR (3 downto 0);
       C_in : in STD_LOGIC;
       B : in STD_LOGIC_VECTOR (3 downto 0);
       C_out : out STD_LOGIC);
  end component;

  SIGNAL  : std_logic;
  SIGNAL S0,S1,S2,S3,C_out : std_logic;

begin
  UUT: RCA_4 PORT MAP(
    
    
    end process;

end Behavioral;
