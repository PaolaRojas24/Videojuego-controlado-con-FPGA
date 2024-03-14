import processing.serial.*; 
import ddf.minim.*;
 
Serial port;
int val;

Minim minim;
AudioPlayer salto1, salto2, tema1, tema2, tema3, gameover, nextlevel;
boolean start = true, nivel1 = false, nivel2 = false, nivel3 = false;
PImage bg1, bg2, bg3, lav, water, acid, suelo1, suelo11, suelo2, suelo21, suelo3, suelo31;
final int WIDTH = 34;
final int HEIGHT = 32;
int[][] level = new int[HEIGHT][WIDTH];
int y = 0;
boolean d = false, a = false, s = false, w = false;
Nivel1 n1;
Nivel2 n2;
Nivel3 n3;
Player p1;
Player2 p2;
Player3 p3;
//Level 1
Pared b1, b2, b3, b4, b5, b6, b7, b8, b9, s0;
Pared b12, b13, b14, b15, b16, b17, s1;
Pared b21, b22, b23, b24, b25, b26, b27, b28, b29, s2;
Pared b31, b32, b33, b34, b35, b36, b37, b38, b39, s3;
Pared b41, b42, b43, b44, b45, b46, b47, b48, b49, s4;
Pared b51, b52, b53, b54, b55, b56, b57, b58, b59, s5;
Pared b61, b62, b63, b64, b65, b66, b67, b68, b69, s6;
Pared b71, b72, b73, b74, b75, b76, b77, b78, b79, s7;
Pared b81, b82, b83, b84, b85, b86, b87, b88, b89, s8;
Pared b91, b92, b93, b94, b95, b96, b97, b98, b99, s9;
//Level 2
Pared c1, c2, c3, c4, c5, c6, c7, c8, c9, sc0;
Pared c11, c12, c13, c14, c15, c16, c17, c18, c19, sc1;
Pared c21, c22, c23, c24, c25, c26, c27, c28, c29, sc2;
Pared c31, c32, c33, c34, c35, c36, c37, c38, c39, sc3;
Pared c41, c42, c43, c44, c45, c46, c47, c48, c49, sc4;
Pared c51, c52, c53, c54, c55, c56, c57, c58, c59, sc5;
Pared c61, c62, c63, c64, c65, c66, c67, c68, c69, sc6;
Pared c71, c72, c73, c74, c75, c76, c77, c78, c79, sc7;
Pared c81, c82, c83, c84, c85, c86, c87, c88, c89, sc8;
Pared c91, c92, c93, c94, c95, c96, c97, c98, c99, sc9;
//Level 3
Pared d1, d2, d3, d4, d5, d6, d7, d8, d9, sd0;
Pared d11, d12, d13, d14, d15, d16, d17, d18, d19, sd1;
Pared d21, d22, d23, d24, d25, d26, d27, d28, d29, sd2;
Pared d31, d32, d33, d34, d35, d36, d37, d38, d39, sd3;
Pared d41, d42, d43, d44, d45, d46, d47, d48, d49, sd4;
Pared d51, d52, d53, d54, d55, d56, d57, d58, d59, sd5;
Pared d61, d62, d63, d64, d65, d66, d67, d68, d69, sd6;
Pared d71, d72, d73, d74, d75, d76, d77, d78, d79, sd7;
Pared d81, d82, d83, d84, d85, d86, d87, d88, d89, sd8;
Pared d91, d92, d93, d94, d95, d96, d97, d98, d99, sd9;
 
void setup() {
  port = new Serial(this, "COM13", 115200);
  size(1500,700);
  bg1 = loadImage("fondo1.png");
  bg2 = loadImage("fondo2.png");
  bg3 = loadImage("fondo3.png");
  lav = loadImage("lava.png");
  water = loadImage("water.png");
  acid = loadImage("acid.png");
  suelo1 = loadImage("suelo1.png");
  suelo11 = loadImage("suelo11.png");
  suelo2 = loadImage("suelo2.png");
  suelo21 = loadImage("suelo21.png");
  suelo3 = loadImage("suelo3.png");
  suelo31 = loadImage("suelo31.png");
  minim = new Minim(this);
  salto1 = minim.loadFile("salto1.mp3");
  tema1 = minim.loadFile("tema1.mp3");
  salto2 = minim.loadFile("salto2.mp3");
  tema2 = minim.loadFile("tema2.mp3");
  tema3 = minim.loadFile("tema3.mp3");
  gameover = minim.loadFile("gameover.wav");
  nextlevel = minim.loadFile("nextlevel.wav");
  n1 = new Nivel1();
  n2 = new Nivel2();
  n3 = new Nivel3();
  p1 = new Player(700,612);
  p2 = new Player2(700,612);
  p3 = new Player3(700,612);
  //Level 1
  //Nivel 0
  b1 = new Pared(10, 600, 100, 30);
  b2 = new Pared(150, 550, 100, 30);
  b3 = new Pared(300, 500, 100, 30);
  b4 = new Pared(450, 450, 100, 30);
  b5 = new Pared(600, 400, 100, 30);
  b6 = new Pared(750, 350, 100, 30);
  b7 = new Pared(900, 300, 100, 30);
  b8 = new Pared(1050, 250, 100, 30);
  b9 = new Pared(1200, 200, 100, 30);
  s0 = new Pared(0, 100, 1500, 30);
  //Nivel 1
  b12 = new Pared(750, 0, 100, 30);
  b13 = new Pared(950, -100, 100, 30);
  b14 = new Pared(550, -160, 100, 30);
  b15 = new Pared(750, -160, 100, 30);
  b16 = new Pared(350, -250, 100, 30);
  b17 = new Pared(150, -300, 100, 30);
  s1 = new Pared(0, -400, 1500, 30);
  //Nivel 2
  b21 = new Pared(800, -500, 100, 30);
  b22 = new Pared(550, -600, 100, 30);
  b23 = new Pared(810, -700, 100, 30);
  b24 = new Pared(600, -700, 40, 10);
  s2 = new Pared(0, -900, 1500, 30);
  //Nivel 3
  b31 = new Pared(500, -1000, 100, 30);
  b32 = new Pared(700, -1050, 100, 30);
  b33 = new Pared(100, -1150, 100, 30);
  b34 = new Pared(500, -1270, 100, 30);
  s3 = new Pared(0, -1400, 1500, 30);
  //Nivel 4
  b41 = new Pared(900, -1500, 100, 30);
  b42 = new Pared(1100, -1600, 500, 30);
  b43 = new Pared(850, -1700, 100, 30);
  b44 = new Pared(10, -1800, 550, 30);
  s4 = new Pared(0, -1900, 1500, 30);
  //Nivel 5
  b51 = new Pared(700, -2000, 100, 30);
  b52 = new Pared(0, -2130, 100, 30);
  b53 = new Pared(200, -2250, 100, 30);
  b54 = new Pared(1000, -2300, 100, 30);
  s5 = new Pared(0, -2400, 1500, 30);
  //Nivel 6
  b61 = new Pared(500, -2500, 100, 30);
  b62 = new Pared(1000, -2600, 100, 30);
  b63 = new Pared(1100, -2700, 40, 10);
  b64 = new Pared(600, -2800, 100, 30);
  s6 = new Pared(0, -2900, 1500, 30);
  //Nivel 7
  b71 = new Pared(1200, -3000, 100, 30);
  b72 = new Pared(0, -3100, 100, 30);
  b73 = new Pared(1100, -3100, 100, 30);
  b74 = new Pared(450, -3200, 100, 30);
  b75 = new Pared(450, -3300, 100, 30);
  s7 = new Pared(0, -3400, 1500, 30);
  //Nivel 8
  b81 = new Pared(10, -3550, 40, 20);
  b82 = new Pared(150, -3500, 40, 20);
  b83 = new Pared(300, -3600, 40, 20);
  b84 = new Pared(450, -3550, 40, 20);
  b85 = new Pared(600, -3650, 40, 20);
  b86 = new Pared(750, -3600, 40, 20);
  b87 = new Pared(900, -3700, 40, 20);
  b88 = new Pared(1050, -3750, 40, 20);
  b89 = new Pared(1200, -3800, 40, 20);
  s8 = new Pared(0, -3850, 1500, 30);
  //Nivel 9
  b91 = new Pared(200, -3950, 100, 30);
  b92 = new Pared(250, -4050, 100, 30);
  b93 = new Pared(0, -4150, 300, 20);
  b94 = new Pared(450, -4250, 100, 30);
  b95 = new Pared(500, -4350, 100, 30);
  s9 = new Pared(0, -4400, 1500, 30);
  
  //Level 2
  //Nivel 0
  c2 = new Pared(150, 550, 100, 30);
  c4 = new Pared(450, 450, 100, 30);
  c6 = new Pared(750, 350, 100, 30);
  c8 = new Pared(1050, 250, 100, 30);
  sc0 = new Pared(0, 100, 1500, 30);
  //Nivel 1
  c12 = new Pared(750, 0, 100, 30);
  c14 = new Pared(380, -160, 100, 30);
  c15 = new Pared(750, -160, 100, 30);
  c17 = new Pared(150, -300, 100, 30);
  sc1 = new Pared(0, -400, 1500, 30);
  //Nivel 2
  c21 = new Pared(800, -500, 40, 10);
  c22 = new Pared(550, -600, 40, 10);
  c23 = new Pared(810, -700, 40, 10);
  c24 = new Pared(600, -700, 40, 10);
  sc2 = new Pared(0, -900, 1500, 30);
  //Nivel 3
  c32 = new Pared(700, -1050, 100, 30);
  c33 = new Pared(100, -1150, 40, 10); //se mueve
  c34 = new Pared(500, -1270, 40, 10);
  sc3 = new Pared(0, -1400, 1500, 30);
  //Nivel 4
  c41 = new Pared(900, -1500, 40, 10);
  c42 = new Pared(1100, -1600, 500, 30);
  c43 = new Pared(850, -1700, 80, 10); //se mueve
  c44 = new Pared(10, -1800, 550, 30);
  sc4 = new Pared(0, -1900, 1500, 30);
  //Nivel 5
  c51 = new Pared(700, -2000, 100, 30);
  c52 = new Pared(0, -2130, 80, 10); //se mueve
  c53 = new Pared(200, -2250, 80, 10); //se mueve
  c54 = new Pared(1000, -2300, 40, 10);
  sc5 = new Pared(0, -2400, 1500, 30);
  //Nivel 6
  c61 = new Pared(500, -2500, 100, 30);
  c62 = new Pared(1000, -2600, 100, 30);
  c64 = new Pared(600, -2800, 100, 30);
  sc6 = new Pared(0, -2900, 1500, 30);
  //Nivel 7
  c71 = new Pared(1200, -3000, 100, 30);
  c72 = new Pared(0, -3100, 100, 30); //se mueve
  c74 = new Pared(450, -3200, 40, 10);
  c75 = new Pared(450, -3300, 40, 10);
  sc7 = new Pared(0, -3400, 1500, 30);
  //Nivel 8
  c82 = new Pared(150, -3500, 40, 20);
  c84 = new Pared(450, -3550, 40, 20);
  c86 = new Pared(750, -3600, 40, 20);
  c88 = new Pared(1050, -3750, 40, 20);
  sc8 = new Pared(0, -3850, 1500, 30);
  //Nivel 9
  c91 = new Pared(200, -3950, 80, 30);
  c92 = new Pared(250, -4050, 40, 20);
  c94 = new Pared(450, -4250, 100, 30);
  c95 = new Pared(500, -4350, 80, 30);
  sc9 = new Pared(0, -4400, 1500, 30);
  
  //Level 3
  //Nivel 0
  d1 = new Pared(50, 600, 100, 30);
  d2 = new Pared(50, 550, 100, 30);
  d3 = new Pared(50, 500, 100, 30);
  d4 = new Pared(50, 450, 100, 30);
  d5 = new Pared(50, 400, 1050, 30);
  d6 = new Pared(1200, 350, 100, 30);
  d7 = new Pared(1200, 300, 100, 30);
  d8 = new Pared(1200, 250, 100, 30);
  d9 = new Pared(1200, 200, 100, 30);
  sd0 = new Pared(0, 100, 1500, 30);
  //Nivel 1
  d12 = new Pared(750, 0, 100, 30);
  d13 = new Pared(950, -100, 100, 30);
  d14 = new Pared(550, -160, 100, 30);
  d15 = new Pared(750, -160, 100, 30);
  d16 = new Pared(350, -250, 100, 30);
  d17 = new Pared(150, -300, 100, 30);
  sd1 = new Pared(0, -400, 1500, 30);
  //Nivel 2
  d21 = new Pared(800, -500, 100, 30);
  d22 = new Pared(550, -600, 100, 30);
  d23 = new Pared(810, -700, 100, 30);
  d24 = new Pared(600, -700, 40, 10);
  sd2 = new Pared(0, -900, 1500, 30);
  //Nivel 3
  d31 = new Pared(500, -1000, 100, 30);
  d32 = new Pared(700, -1050, 100, 30);
  d33 = new Pared(100, -1150, 100, 30);//se mueve
  d34 = new Pared(500, -1270, 100, 30);
  sd3 = new Pared(0, -1400, 1500, 30);
  //Nivel 4
  d41 = new Pared(900, -1500, 100, 30);
  d42 = new Pared(1100, -1600, 500, 30);
  d43 = new Pared(850, -1700, 100, 30);
  d44 = new Pared(10, -1800, 550, 30);
  sd4 = new Pared(0, -1900, 1500, 30);
  //Nivel 5
  d51 = new Pared(700, -2000, 100, 30);
  d52 = new Pared(0, -2130, 100, 30);//se mueve
  d53 = new Pared(200, -2250, 100, 30);//se mueve
  d54 = new Pared(1000, -2300, 100, 30);
  sd5 = new Pared(0, -2400, 1500, 30);
  //Nivel 6
  d61 = new Pared(500, -2500, 100, 30);
  d62 = new Pared(1000, -2600, 100, 30);
  d63 = new Pared(1100, -2700, 40, 10);
  d64 = new Pared(600, -2800, 100, 30);
  sd6 = new Pared(0, -2900, 1500, 30);
  //Nivel 7
  d71 = new Pared(1200, -3000, 100, 30);
  d72 = new Pared(0, -3100, 100, 30);//se mueve
  d73 = new Pared(1100, -3100, 100, 30);
  d74 = new Pared(450, -3200, 100, 30);
  d75 = new Pared(450, -3300, 100, 30);
  sd7 = new Pared(0, -3400, 1500, 30);
  //Nivel 8
  d81 = new Pared(10, -3800, 40, 20);
  d82 = new Pared(150, -3750, 40, 20);
  d83 = new Pared(300, -3700, 40, 20);
  d84 = new Pared(450, -3600, 40, 20);
  d85 = new Pared(600, -3650, 40, 20);
  d86 = new Pared(750, -3550, 40, 20);
  d87 = new Pared(900, -3600, 40, 20);
  d88 = new Pared(1050, -3500, 40, 20);
  sd8 = new Pared(0, -3850, 1500, 30);
  //Nivel 9
  d91 = new Pared(200, -3950, 100, 30);
  d92 = new Pared(250, -4050, 100, 30);
  d93 = new Pared(0, -4150, 300, 20);
  d94 = new Pared(450, -4250, 100, 30);
  d95 = new Pared(500, -4350, 100, 30);
  sd9 = new Pared(0, -4400, 1500, 30);
}

void draw() {
  if (0 < port.available()) {
    val = port.read();
    println("dato: " + val);
    println(".");
  }
  if  (val == 87){
    w = true;
  }
  else if  (val == 65){
    a = true;
  }
  else if  (val == 69){
    d = true;
    w = true;
  }
  else if  (val == 81){
    a = true;
    w = true;
  }
  else if  (val == 83 && y <= 75){
    s = true;
  }
  else if  (val == 68){
    d = true;
  }
  else{
    w = false;
    a = false;
    d = false;
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
 
boolean place_free(int xx,int yy) {
  xx = int(floor(xx));
  yy = int(floor(yy));
  if (yy < height-height/8) {
    return true;
  }
  return false;
}
