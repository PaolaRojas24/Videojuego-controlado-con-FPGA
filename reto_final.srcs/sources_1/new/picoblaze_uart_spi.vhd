----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/11/2022 11:30:21 PM
-- Design Name: 
-- Module Name: picoblaze_uart_spi - Behavioral
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
--library UNISIM;7
--use UNISIM.VComponents.all;

entity picoblaze_uart_spi is
    Port ( CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           TX : out STD_LOGIC;
           RX : in STD_LOGIC;                     
           DISPLAY: out STD_LOGIC_VECTOR (7 DOWNTO 0));
end picoblaze_uart_spi;

architecture Behavioral of picoblaze_uart_spi is

component registro_puerto_entrada is
	 generic(
				n : integer := 8			--ancho del registro
	 );
    Port ( 
		   CLK  : in  STD_LOGIC;
           RST  : in  STD_LOGIC;
           D    : in  STD_LOGIC_VECTOR(n-1 downto 0);
           Q    : out STD_LOGIC_VECTOR(n-1 downto 0));
end component;

component embedded_kcpsm6 is
  port (                   
                             in_port : in std_logic_vector(7 downto 0);
                            out_port : out std_logic_vector(7 downto 0);
                             port_id : out std_logic_vector(7 downto 0);
                        write_strobe : out std_logic;
                                 clk : in std_logic;
                                 rst : in std_logic);
end component;

component modulo_uart is
    Port ( 
                     CLK : in STD_LOGIC;
                     RST : in STD_LOGIC;
                     --pines de comunicación con PicoBlaze
                 PORT_ID : in STD_LOGIC_VECTOR (7 downto 0);
              INPUT_PORT : in STD_LOGIC_VECTOR (7 downto 0);
             OUTPUT_PORT : out STD_LOGIC_VECTOR (7 downto 0);
            WRITE_STROBE : in STD_LOGIC;
                      --pines de comunicación serial
                      TX : out STD_LOGIC;
                      RX : in STD_LOGIC
                      );
                      
end component;
component puerto_salida is
    Port ( 
				         CLK : in STD_LOGIC;
				         RST : in STD_LOGIC;
				      SALIDA : out STD_LOGIC_VECTOR(7 downto 0);
			  --pines de comunicación con PicoBlaze
				WRITE_STROBE : 	in std_logic;
				     PORT_ID : 	in	std_logic_vector(7 downto 0);
				  INPUT_PORT : 	in std_logic_vector(7 downto 0)
				);
end component;

--declaración de señales
signal port_id_s, out_port_s : std_logic_vector(7 downto 0);
signal write_strobe_s : std_logic;
signal registro_entrada, registro_salida : std_logic_vector(7 downto 0);
signal output_port_uart, output_port_spi : std_logic_vector(7 downto 0);

begin
        --multiplexor para controlar lecturas en el puerto IN_PORT de PicoBlaze
        registro_entrada <= output_port_spi  when (port_id_s(6) = '1') else   --direcciones 0x4X
                            output_port_uart when (port_id_s(4) = '1') else   --direcciones 0x1X
                            (others => '0');
                                
        registro_entrada_0 : registro_puerto_entrada
                             port map(
                                        CLK => CLK,
                                        RST => RST,
                                          D => registro_entrada,
                                          Q => registro_salida
                                      );
                                      
        kcpsm6_0 :  embedded_kcpsm6
                    port map(
                                     in_port => registro_salida,
                                    out_port => out_port_s,
                                     port_id => port_id_s,
                                write_strobe => write_strobe_s,
                                         clk => CLK,
                                         rst => RST
                             );
                             
        modulo_uart_0 : modulo_uart
                        port map(
                                             CLK => CLK,
                                             RST => RST,
                                         PORT_ID => port_id_s,
                                      INPUT_PORT => out_port_s,
                                     OUTPUT_PORT => output_port_uart,
                                    WRITE_STROBE => write_strobe_s,
                                              TX => TX,
                                              RX => RX
                                 );
        salida_display : puerto_salida Port map( 
                             CLK => CLK,
                             RST => RST,
                          SALIDA => DISPLAY,
                  --pines de comunicación con PicoBlaze
                    WRITE_STROBE => write_strobe_s,
                         PORT_ID => port_id_s,
                      INPUT_PORT  => out_port_s
				  );

end Behavioral;
