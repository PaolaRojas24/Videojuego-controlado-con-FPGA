----------------------------------------------------------------------------------
-- Puerto de salida para conectarse con ocho LEDs
-- El puerto donde se debe escribir el dato es
-- ESCRIBE_DATO X"02"
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity puerto_salida is
    Port ( 
				         CLK : in STD_LOGIC;
				         RST : in STD_LOGIC;
				      SALIDA : out STD_LOGIC_VECTOR(7 downto 0);
			  --pines de comunicación con PicoBlaze
				WRITE_STROBE : 	in std_logic;
				     PORT_ID : 	in	std_logic_vector(7 downto 0);
				  INPUT_PORT : 	in std_logic_vector(7 downto 0)
				);
end puerto_salida;

architecture Behavioral of puerto_salida is
--declaración de la dirección de puerto
constant PuertoEscribeDatoTX : std_logic_vector(7 downto 0) := X"12";
--registro interno
signal reg_pres, reg_sig : std_logic_vector(7 downto 0);

begin
		--actualización de la salida del puerto
		SALIDA <= reg_pres;
		--acceso al puerto
		reg_sig <= INPUT_PORT when (PORT_ID = PuertoEscribeDatoTX and WRITE_STROBE = '1') else
				   reg_pres;
		--proceso secuencial
		secuencial : process(CLK, RST)
						 begin
								if(RST = '1') then 
														reg_pres <= (others => '0');
								elsif(CLK'event and CLK = '1') then 
														reg_pres <= reg_sig;
								end if;
					end process secuencial;
end Behavioral;