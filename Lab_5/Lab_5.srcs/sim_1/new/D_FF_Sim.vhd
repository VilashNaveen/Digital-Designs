----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.04.2023 11:16:47
-- Design Name: 
-- Module Name: D_FF_Sim - Behavioral
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

entity D_FF_Sim is
--  Port ( );
end D_FF_Sim;

architecture Behavioral of D_FF_Sim is
    COMPONENT D_FF
        PORT( D, Res, CLK : IN STD_LOGIC;
            Q,Qbar : OUT STD_LOGIC);
    END COMPONENT;
    
    SIGNAL D,Res,CLK : std_logic;
    SIGNAL Q,Qbar : std_logic;

begin
    UUT: D_FF PORT MAP(
        D => D,
        Res => Res,
        CLK => CLK,
        Q => Q,
        Qbar => Qbar
    );
process
     begin
     CLK <= '0'; -- set initial values
     Res <= '0';
     D <= '1';
     WAIT FOR 10 ns; -- after 100 ns change inputs
     CLK <= '1';
     D <= '1';
     Res <= '0';
     WAIT FOR 100 ns; --change again
     CLK <= '0';
     Res <= '0';
     WAIT FOR 10 ns; --change again
     CLK <= '1';
     D <= '0';
     Res <= '0';
     WAIT FOR 100 ns; --change again
     CLK <= '0';
     Res <= '0';
     WAIT FOR 10 ns; --change again
     CLK <= '1';
     Res <= '1';
     D <= '1';
     WAIT FOR 100 ns; --change again
     CLK <= '0';
     Res <= '0';
     WAIT FOR 10 ns; --change again
     CLK <= '1';
     Res <= '0';
     D <= '1';
     WAIT; -- will wait forever
 
 end process;


end Behavioral;