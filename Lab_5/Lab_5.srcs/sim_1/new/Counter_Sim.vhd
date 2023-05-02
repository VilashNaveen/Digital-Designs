----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.04.2023 12:07:10
-- Design Name: 
-- Module Name: Counter_Sim - Behavioral
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

entity Counter_Sim is
-- Port ( );
end Counter_Sim;

architecture Behavioral of Counter_Sim is
    COMPONENT Counter
        PORT( 
            Dir, Res, CLK : IN STD_LOGIC;
            Q : OUT STD_LOGIC_VECTOR (2 DOWNTO 0)
        );
    END COMPONENT;

    SIGNAL Dir, Res, CLK : STD_LOGIC;
    SIGNAL Q : STD_LOGIC_VECTOR(2 DOWNTO 0);
    
begin
    UUT: Counter PORT MAP (
        Dir => Dir,
        Res => Res,
        CLK => CLK,
        Q => Q
    );
    
    process
         begin
         Dir <= '0';
         Res <= '1';
         for i in 1 to 20 loop
         CLK <= '0';
         WAIT FOR 2 ns;
         CLK <= '1';
         WAIT FOR 2 ns;
         end loop;
         WAIT FOR 50 ns;
         
         Res <= '0';
         for i in 1 to 200 loop
          CLK <= '0';
          WAIT FOR 2 ns;
          CLK <= '1';
          WAIT FOR 2 ns;
          end loop;
          Dir <= '1';
          WAIT FOR 50 ns;
          for i in 1 to 200 loop
            CLK <= '0';
            WAIT FOR 2 ns;
            CLK <= '1';
            WAIT FOR 2 ns;
            end loop;
         WAIT; -- will wait forever
     
     end process;
    
    
end behavioral;