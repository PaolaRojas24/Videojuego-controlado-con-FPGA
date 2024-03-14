----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/02/2022 03:43:01 PM
-- Design Name: 
-- Module Name: multipuertos - Behavioral
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

entity reto_alamb is
    Port (      CLK : in STD_LOGIC;
                RST : in STD_LOGIC;
            BOTONES : in STD_LOGIC_VECTOR (3 downto 0);
               --LEDS : out STD_LOGIC_VECTOR (7 downto 0);
                 TX : out STD_LOGIC;
                 RX : in STD_LOGIC);
end reto_alamb;

architecture Behavioral of reto_alamb is

--declaración de componentes
component embedded_kcpsm6 is
  port (                   
                             in_port : in std_logic_vector(7 downto 0);
                            out_port : out std_logic_vector(7 downto 0);
                             port_id : out std_logic_vector(7 downto 0);
                        write_strobe : out std_logic;
                                 clk : in std_logic;
                                 rst : in std_logic);
end component;

component puerto_entrada is
    Port ( 
                MUX_ENTRADA : in  STD_LOGIC_VECTOR (3 downto 0);
                 MUX_SALIDA : out STD_LOGIC_VECTOR (7 downto 0);
                --pines de comunicación con Picoblaze 
                    PORT_ID : in  STD_LOGIC_VECTOR (7 downto 0)
           );
end component;

component registro_puerto_entrada is
	 generic(
				n : integer := 8			--ancho del registro
			);
    Port ( 
			  CLK  : in  STD_LOGIC;
              RST  : in  STD_LOGIC;
                D  : in  STD_LOGIC_VECTOR(n-1 downto 0);
                Q  : out STD_LOGIC_VECTOR(n-1 downto 0)
          );
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
 


--declaración de señales
signal in_port_s, out_port_s, port_id_s : std_logic_vector(7 downto 0);
--signal write_strobe_s, read_strobe_s, k_write_strobe_s : std_logic;
signal write_strobe_s : std_logic;
signal reg_entrada_in, reg_entrada_out : std_logic_vector(7 downto 0);

begin

     mux: puerto_entrada
                     port map(
                                MUX_ENTRADA => BOTONES,
                                 MUX_SALIDA => reg_entrada_in, 
                                --pines de comunicación con Picoblaze  
                                    PORT_ID => port_id_s
                                );  
                                
     registro_entrada : registro_puerto_entrada
                        port map(
                                    CLK  => CLK,
                                    RST  => RST,
                                    D  => reg_entrada_in,
                                    Q  => reg_entrada_out
                                    );
     
     kcpsm6 : embedded_kcpsm6
                port map (                   
                             in_port => reg_entrada_out,
                            out_port => out_port_s,
                             port_id => port_id_s,
                        write_strobe => write_strobe_s,
                                 clk => CLK,
                                 rst => RST);
                                 

        uart : modulo_uart
                 port map( 
                     CLK => CLK,
                     RST => RST,
                 PORT_ID => port_id_s,
              INPUT_PORT => out_port_s,
             --OUTPUT_PORT : out STD_LOGIC_VECTOR (7 downto 0);
            WRITE_STROBE => write_strobe_s,
                      TX => TX,
                      RX =>RX
                      );

end Behavioral;
