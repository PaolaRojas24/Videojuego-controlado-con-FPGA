<h1>Videojuego controlado con FPGA</h1>
<h2>El videojuego</h2>
El videojuego presenta una emocionante aventura donde los jugadores controlan a tres adorables perros: un Pomerania, un terrier y un shitzu. Estos intrépidos caninos se enfrentan a una serie de desafíos mientras saltan de plataforma en plataforma, evitando que la lava, ácido o agua, dependiendo del nivel en el que se encuentren. El objetivo es ascender a través de diez pisos de plataforma en cada nivel, superando los obstáculos y llegando a la cima para avanzar al siguiente nivel. El juego finaliza cuando los jugadores logran superar los tres niveles, demostrando su destreza y habilidad para superar los peligros en este emocionante juego.
</br>
</br>
El diseño de este emocionante juego se llevó a cabo principalmente mediante el uso de Processing, un entorno de programación especializado en la creación de experiencias visuales interactivas. Además, para lograr una interacción fluida entre el juego y la tarjeta FPGA, se emplearon herramientas adicionales como Vivado, utilizando VHDL, y Picoblaze con lenguaje ensamblador. Estas herramientas permitieron establecer una comunicación efectiva entre la tarjeta FPGA, que actúa como el control del juego a través de cuatro botones, el puerto serial de la computadora y el propio juego implementado en Processing.
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
```
Esta estructura modular y organizada nos ha permitido desarrollar y mantener el juego de manera efectiva, facilitando la implementación de nuevas características y la solución de problemas
<h2>Código en ensamblador</h2>
<h2>Código VHDL</h2>
