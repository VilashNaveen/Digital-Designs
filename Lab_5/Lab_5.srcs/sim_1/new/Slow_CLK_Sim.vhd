----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.04.2023 11:21:43
-- Design Name: 
-- Module Name: Slow_CLK_Sim - Behavioral
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

entity Slow_CLK_Sim is
--  Port ( );
end Slow_CLK_Sim;

architecture Behavioral of Slow_CLK_Sim is
    COMPONENT Slow_CLK
        PORT( CLK_in : IN STD_LOGIC;
             CLK_out : OUT STD_LOGIC);
    END COMPONENT;
    
    SIGNAL CLK_in : std_logic;
    SIGNAL CLK_out : std_logic;

begin
    UUT: Slow_CLK PORT MAP(
        CLK_in => CLK_in,
        CLK_out => CLK_out
    );

process
     begin
     for i in 1 to 100 loop
     CLK_in <= '0';
     WAIT FOR 10 ns;
     CLK_in <= '1';
     WAIT FOR 10 ns;
     end loop;
     WAIT; -- will wait forever
 
 end process;
 
end Behavioral;