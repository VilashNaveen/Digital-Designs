----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.05.2023 16:03:42
-- Design Name: 
-- Module Name: Mux_8_Way_4_bit - Behavioral
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mux_8_Way_4_bit is
    Port (
        I_0 : in STD_LOGIC_VECTOR(3 downto 0);
        I_1 : in STD_LOGIC_VECTOR(3 downto 0);
        I_2 : in STD_LOGIC_VECTOR(3 downto 0);
        I_3 : in STD_LOGIC_VECTOR(3 downto 0);
        I_4 : in STD_LOGIC_VECTOR(3 downto 0);
        I_5 : in STD_LOGIC_VECTOR(3 downto 0);
        I_6 : in STD_LOGIC_VECTOR(3 downto 0);
        I_7 : in STD_LOGIC_VECTOR(3 downto 0);
        S   : in STD_LOGIC_VECTOR(2 downto 0);
        Y   : out STD_LOGIC_VECTOR(3 downto 0)
    );
end Mux_8_Way_4_bit;

architecture Behavioral of Mux_8_Way_4_bit is
    type rom_type is array (natural range <>) of std_logic_vector(3 downto 0);
    
    signal Mux_ROM : rom_type(0 to 7);
begin
    Mux_ROM(0) <= I_0;
    Mux_ROM(1) <= I_1;
    Mux_ROM(2) <= I_2;
    Mux_ROM(3) <= I_3;
    Mux_ROM(4) <= I_4;
    Mux_ROM(5) <= I_5;
    Mux_ROM(6) <= I_6;
    Mux_ROM(7) <= I_7;

    Y <= Mux_ROM(to_integer(unsigned(S)));
end Behavioral;