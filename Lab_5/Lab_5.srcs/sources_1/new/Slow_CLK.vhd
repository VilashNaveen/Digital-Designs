----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.04.2023 11:19:10
-- Design Name: 
-- Module Name: Slow_CLK - Behavioral
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

entity Slow_CLK is
    Port ( CLK_in : in STD_LOGIC;
           CLK_out : out STD_LOGIC);
end Slow_CLK;

architecture Behavioral of Slow_CLK is

signal count : integer := 1;
signal ClK_status : std_logic := '0';

begin
    process (CLK_in) begin
        if (rising_edge(CLK_in)) then
            count <= count +1;
            if(count = 5) then
                CLK_status <= not CLK_status;
                CLK_out <= CLK_status;
                count <= 1;
            end if;
        end if;
    end process;


end Behavioral;