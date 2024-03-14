----------------------------------------------------------------------------------
-- Multiplexor que selecciona el puerto de lectura que accede el PicoBlaze
-- Este mux muestra un dato al leerse el puerto X"01"
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity puerto_entrada is
    Port ( 
                MUX_ENTRADA : in  STD_LOGIC_VECTOR (3 downto 0);
                 MUX_SALIDA : out STD_LOGIC_VECTOR (7 downto 0);
                --pines de comunicaciÃ³n con Picoblaze
                    PORT_ID : in  STD_LOGIC_VECTOR (7 downto 0)
           );
end puerto_entrada;

architecture Behavioral of puerto_entrada is

--direcciones de los puertos del puerto de entrada
--solo se incluyen los que implican leer del modulo
constant PuertoDatoBotton 		: std_logic_vector(7 downto 0) := X"00";

begin
		process(MUX_ENTRADA, PORT_ID)
		begin
				--salida por omisión
				MUX_SALIDA <= (others =>'0');
				--
				case(PORT_ID) is
						when PuertoDatoBotton =>
						                  case(MUX_ENTRADA)is
						                      when "0000" => MUX_SALIDA <= "00000000";
						                      when "0001" => MUX_SALIDA <= "00000001";
						                      when "0010" => MUX_SALIDA <= "00000010";
						                      when "0011" => MUX_SALIDA <= "00000011";
						                      when "0100" => MUX_SALIDA <= "00000100";
						                      when "0101" => MUX_SALIDA <= "00000101";
						                      when "0110" => MUX_SALIDA <= "00000110";
						                      when "0111" => MUX_SALIDA <= "00000111";
						                      when "1000" => MUX_SALIDA <= "00001000";
						                      when "1001" => MUX_SALIDA <= "00001001";
						                      when "1010" => MUX_SALIDA <= "00001010";
						                      when "1011" => MUX_SALIDA <= "00001011";
						                      when "1100" => MUX_SALIDA <= "00001100";
						                      when "1101" => MUX_SALIDA <= "00001101";
						                      when "1110" => MUX_SALIDA <= "00001110";
						                      when "1111" => MUX_SALIDA <= "00001111";
						                      when others => MUX_SALIDA <= "00000000";
						                      end case;					                      
				        when others     =>    NULL;
				end case;
		end process;
end Behavioral;
