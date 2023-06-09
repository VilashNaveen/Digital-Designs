----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.06.2023 10:59:11
-- Design Name: 
-- Module Name: Slow_Clk_2 - Behavioral
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

entity Slow_Clk_2 is
    Port ( Clk_in : in STD_LOGIC;
           Clk_out : out STD_LOGIC);
end Slow_Clk_2;

architecture Behavioral of Slow_Clk_2 is
signal count : integer := 1;
signal clk_status : std_logic := '0';
begin
    
    process (Clk_in) begin
        Clk_out <= clk_status;
        if (rising_edge(Clk_in)) then
            count <= count + 1;
            if(count = 5) then
                clk_status <= not clk_status;
                Clk_out <= clk_status;
                count <= 1;
            end if;
         end if;
    end process;
    
end Behavioral;
