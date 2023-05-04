----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.05.2023 10:25:10
-- Design Name: 
-- Module Name: LUT_16_7_Sim - Behavioral
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

entity LUT_16_7_Sim is
--  Port ( );
end LUT_16_7_Sim;

architecture Behavioral of LUT_16_7_Sim is

component LUT_16_7
    port ( address : in std_logic_vector (3 downto 0);
            data : out std_logic_vector (6 downto 0));
end component;

    signal address : std_logic_vector (3 downto 0);
    signal data : std_logic_vector (6 downto 0);

begin
    uut: LUT_16_7 port map (
        address => address,
        data => data
    );
    
    process
    begin
        address <= "0000";
        wait for 100ns;
        address <= "0001";
        wait for 100ns;
        address <= "1000";
        wait for 100ns;
        address <= "1100";
        wait;
    end process;


end Behavioral;
