<h1>Videojuego controlado con FPGA</h1>
Alumnos: </br>
-Daniel Castillo López A01737357 </br>
-Ana Itzel Hernández García A01737526 </br>
-Paola Rojas Domínguez A01737136 </br>
<h2>El videojuego</h2>
El videojuego presenta una emocionante aventura donde los jugadores controlan a tres adorables perros: un Pomerania, un terrier y un shitzu. Estos intrépidos caninos se enfrentan a una serie de desafíos mientras saltan de plataforma en plataforma, evitando que la lava, ácido o agua, dependiendo del nivel en el que se encuentren. El objetivo es ascender a través de diez pisos de plataforma en cada nivel, superando los obstáculos y llegando a la cima para avanzar al siguiente nivel. El juego finaliza cuando los jugadores logran superar los tres niveles, demostrando su destreza y habilidad para superar los peligros en este emocionante juego.
</br>
</br>
El diseño de este emocionante juego se llevó a cabo principalmente mediante el uso de Processing, un entorno de programación especializado en la creación de experiencias visuales interactivas. Además, para lograr una interacción fluida entre el juego y la tarjeta FPGA, se emplearon herramientas adicionales como Vivado, utilizando VHDL, y Picoblaze con lenguaje ensamblador. Estas herramientas permitieron establecer una comunicación efectiva entre la tarjeta FPGA, que actúa como el control del juego a través de cuatro botones, el puerto serial de la computadora y el propio juego implementado en Processing. </br>
</br>
-Repositorio del juego: https://github.com/PaolaRojas24/Lava-Escape
-Video del juego: https://youtu.be/y9cTiVToyhw?feature=shared </br>
-Video de la presentación: https://youtu.be/6AHWeoIm6jo
<h2>Processing</h2>
El videojuego ha sido desarrollado utilizando Processing, un entorno de programación altamente versátil diseñado específicamente para la creación de aplicaciones visuales interactivas. En nuestro proyecto, hemos organizado el código en varias clases para una gestión eficiente y modular del juego. Contamos con tres clases de niveles, cada una representando un nivel diferente del juego: nivel1, nivel2 y nivel3. Además, hemos implementado tres clases de jugadores, que incluyen player, player2 y player3, cada una con características únicas para ofrecer una experiencia de juego diversa. Para gestionar la interacción con las paredes y otros objetos del juego, hemos creado una clase llamada Pared. 

Finalmente, el archivo principal, denominado 'main', actúa como el punto de entrada del juego, uniendo todas las clases y funcionalidades para proporcionar una experiencia de juego cohesiva y emocionante. 
``` processing
void draw() {
  if (0 < port.available()) {
    val = port.read();
  }
  if(start){
    n1.start();
    n1.restart();
    n2.restart();
    n3.restart();
  }
  else if (nivel1){
   background(bg1);
    y = p1.update1();
    p1.update1();
    p1.display();
    n1.level();
    n1.restart();
    n1.nextlevel();
    n1.sound();
  }
  else if (nivel2){
    background(bg2);
    y = p2.update1();
    p2.update1();
    p2.display();
    n2.level();
    n2.restart();
    n2.nextlevel();
    n2.sound();
  }
  else if (nivel3){
    background(bg3);
    y = p3.update1();
    p3.update1();
    p3.display();
    n3.level();
    n3.restart();
    n3.finish();
    n3.sound();
  }
 }
````
Esta estructura modular y organizada nos ha permitido desarrollar y mantener el juego de manera efectiva, facilitando la implementación de nuevas características y la solución de problemas
<h2>Código en ensamblador</h2>
El código ensamblador recibe un número binario de 4 digitos y regresa el ASCII de la letra correspondiente.

      CONSTANT PuertoBoton, 00
      CONSTANT PuertoLeeListoTX,    11
      CONSTANT PuertoEscribeDatoTX, 12
      NAMEREG s7, boton
      NAMEREG s5, DatoSerial
      NAMEREG s6, EstadoTX
      ADDRESS 000
````
loop:
      INPUT boton, PuertoBoton
      AND boton, 0F
      ;1 0 0 0
      COMPARE boton, 08
      JUMP Z, Izquierda
      ;0 0 0 1
      COMPARE boton, 01
      JUMP Z, Derecha
      ;0 1 0 0
      COMPARE boton, 04
      JUMP Z, Arriba
      ;0 0 1 0
      COMPARE boton, 02
      JUMP Z, Abajo
      ;0 1 0 1
      COMPARE boton, 05
      JUMP Z, DiagDer
      ;1 1 0 0
      COMPARE boton, 0C
      JUMP Z, DiagIzq
      JUMP salidaDefault
Izquierda:
      LOAD DatoSerial, "A"
      CALL tx_uart
      Jump loop
Derecha:
      LOAD DatoSerial, "D"
      CALL tx_uart
      Jump loop
Arriba:
      LOAD DatoSerial, "W"
      CALL tx_uart
      Jump loop
Abajo:
      LOAD DatoSerial, "S"
      CALL tx_uart
      Jump loop
DiagDer:
      LOAD DatoSerial, "E"
      CALL tx_uart
      Jump loop
DiagIzq:
      LOAD DatoSerial, "Q"
      CALL tx_uart
      Jump loop
salidaDefault:
      LOAD DatoSerial, "."
      CALL tx_uart
      Jump loop
tx_uart:
      INPUT EstadoTX, PuertoLeeListoTX
      COMPARE EstadoTX, 01
      JUMP Z, tx_uart
      OUTPUT DatoSerial, PuertoEscribeDatoTX
      CALL delay
      RETURN
delay: 
      LOAD s2, 17
      LOAD s1, D7
      LOAD s0, 84
delay_loop: 
      SUB s0, 1'd
      SUBCY s1, 0'd
      SUBCY s2, 0'd
      JUMP NZ, delay_loop
      RETURN
````
<h2>Código VHDL</h2>
El código que se presenta es el top-level, este código sirve como el alambre que conecta los distintos componentes entre si. Recibe como entrada el valor de los botones y da como salida el valor ASCII de la letra correspondiente.
   
    Begin
            mux: puerto_entrada
                     port map(
                                MUX_ENTRADA => BOTONES,
                                 MUX_SALIDA => reg_entrada_in, 
                                --pines de comunicaciÃ³n con Picoblaze  
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
