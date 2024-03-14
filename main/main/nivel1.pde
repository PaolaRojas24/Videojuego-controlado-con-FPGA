class Nivel1{
  PImage carga1, carga2, intentar1;
  float lava = 900;
  int suelo = 650;
  int h1 = 0;
  int vx = 0, vx2 = 0, vx3 = 0, vx4 = 0, vx6 = 0, vx64 = 0, vx7 = 0, vx9 = 0, vx91 = 0, vx92 = 0, vx93 = 0;
  int xb43, xb33, xb52, xb53, xb61, xb64, xb72, xb91, xb92, xb94, xb95;
  //Stage 0
  int valb1 = 600, valb2 = 550, valb3 = 500, valb4 = 450, valb5 = 400, valb6 = 350, valb7 = 300, valb8 = 250, valb9 = 200, vals0 = 100;
  //Stage 1
  int valb12 = 0, valb13 = -100, valb14 = -160, valb15 = -160, valb16 = -250, valb17 = -300, vals1 = -400;
  //Stage 2
  int valb21 = -500, valb22 = -600, valb23 = -700, valb24 = -790, vals2 = -900;
  //Stage 3
  int valb31 = -1000, valb32 = -1050, valb33 = -1150, valb34 = -1270, vals3 = -1400;
  //Stage 4
  int valb41 = -1500, valb42 = -1600, valb43 = -1700, valb44 = -1800, vals4 = -1900;
  //Stage 5
  int valb51 = -2000, valb52 = -2130, valb53 = -2250, valb54 = -2300, vals5 = -2400;
  //Stage 6
  int valb61 = -2500, valb62 = -2600, valb63 = -2700, valb64 = -2800, vals6 = -2900;
  //Stage 7
  int valb71 = -3000, valb72 = -3100, valb73 = -3100, valb74 = -3200, valb75 = -3300, vals7 = -3400;
  //Stage 8
  int valb81 = -3550, valb82 = -3500, valb83 = -3600, valb84 = -3550, valb85 = -3650, valb86 = -3600, valb87 = -3700, valb88 = -3750, valb89 = -3800, vals8 = -3850;
  //Stage 9
  int valb91 = -3950, valb92 = -4050, valb93 = -4150, valb94 = -4250, valb95 = -4350, vals9 = -4400;
  Nivel1(){}
  
  void start(){
      if (w == false){
        carga1 = loadImage("carga1.png");
        background(carga1);
        nextlevel.play();
        tema1.pause();
      }
      else{
        start = false;
        nivel1 = true;
        nivel2 = false;
        nivel3 = false;
      }
  }
  
  void level(){
    if (vx <= 1250 && xb33 < 500){
      vx += 1;
      xb33 +=1;
    }
    else if (vx >= 500){
      vx -= 1;
    }
    else{
      xb33 = 0;
    }
    b33.setx(vx);
    
    //movimiento Stage 5
    if (vx2 <= 1450 && xb52 < 700){
      vx2 += 3;
      xb52 +=3;
    }
    else if (vx2 >= 100){
      vx2 -= 3;
    }
    else{
      xb52 = 0;
    }
    b52.setx(vx2);
    
    if (vx3 <= 1450 && xb53 < 1050){
      vx3 += 2;
      xb53 +=2;
    }
    else if (vx3 >= 0){
      vx3 -= 2;
    }
    else{
      xb53 = 0;
    }
    b53.setx(vx3);
    
    //Movimiento Stage 4
    if (vx4 <= 1250 && xb43 < 500){
      vx4 += 2;
      xb43 +=2;
    }
    else if (vx4 >= 500){
      vx4 -= 1;
    }
    else{
      xb43 = 0;
    }
    b43.setx(vx4);
    
    //Bloque 61
    if (vx6 <= 1250 && xb61 < 500){
      vx6 += 2;
      xb61 +=2;
    }
    else if (vx6 >= 500){
      vx6 -= 1;
    }
    else{
      xb61 = 0;
    }
    b61.setx(vx6);
    
    //Movimiento Stage 6
    if (vx64 <= 1250 && xb64 < 500){
      vx64 += 2;
      xb64 +=2;
    }
    else if (vx64 >= 500){
      vx64 -= 1;
    }
    else{
      xb64 = 0;
    }
    b64.setx(vx64);
    
    //Movimientos Stage 7
    if (vx7 <= 1000 && xb72 < 550){
      vx7 += 2;
      xb72 +=2;
    }
    else if (vx7 >= 550){
      vx7 -= 1;
    }
    else{
      xb72 = 0;
    }
    b72.setx(vx7);
    
    //Movimientos Stage 9
    if (vx9 <= 1450 && xb91 < 700){
      vx9 += 2;
      xb91 +=2;
    }
    else if (vx9 >= 100){
      vx9 -= 2;
    }
    else{
      xb91 = 0;
    }
    b91.setx(vx9);
    
    //2
    if (vx91 <= 1450 && xb92 < 700){
      vx91 += 3;
      xb92 +=3;
    }
    else if (vx91 >= 100){
      vx91 -= 3;
    }
    else{
      xb92 = 0;
    }
    b92.setx(vx91);
    
    //4
    if (vx92 <= 1450 && xb94 < 700){
      vx92 += 3;
      xb94 +=3;
    }
    else if (vx92 >= 100){
      vx92 -= 3;
    }
    else{
      xb94 = 0;
    }
    b94.setx(vx92);
    
    //5
    if (vx93 <= 1450 && xb95 < 700){
      vx93 += 2;
      xb95 +=2;
    }
    else if (vx93 >= 100){
      vx93 -= 2;
    }
    else{
      xb95 = 0;
    }
    b95.setx(vx93);
    
    if (s == true && h1 != 50){
      h1 += 1;
      w = false;
      a = false;
      d = false;
      lava += 10;
      suelo += 10;
      //Stage 0
      valb1 += 10; valb2 += 10; valb3 += 10; valb4 += 10; valb5 += 10; valb6 += 10; valb7 += 10; valb8 += 10; valb9 += 10; vals0 += 10;
      b1.sety(valb1); b2.sety(valb2); b3.sety(valb3); b4.sety(valb4); b5.sety(valb5); b6.sety(valb6); b7.sety(valb7); b8.sety(valb8); b9.sety(valb9); s0.sety(vals0);
      //Stage 1
      valb12 += 10; valb13 += 10; valb14 += 10; valb15 += 10; valb16 += 10; valb17 += 10; vals1 += 10;
      b12.sety(valb12); b13.sety(valb13); b14.sety(valb14); b15.sety(valb15); b16.sety(valb16); b17.sety(valb17); s1.sety(vals1);
      //Stage 2
      valb21 += 10; valb22 += 10; valb23 += 10; valb24 += 10; vals2 += 10; b21.sety(valb21); b22.sety(valb22); b23.sety(valb23); b24.sety(valb24); s2.sety(vals2);
      //Stage 3
      valb31 += 10; valb32 += 10; valb33 += 10; valb34 += 10; vals3 += 10;
      b31.sety(valb31); b32.sety(valb32); b33.sety(valb33); b34.sety(valb34); s3.sety(vals3);
      //Stage 4
      valb41 += 10; valb42 += 10; valb43 += 10; valb44 += 10; vals4 += 10; b41.sety(valb41); b42.sety(valb42); b43.sety(valb43); b44.sety(valb44); s4.sety(vals4);
      //Stage 5
      valb51 += 10; valb52 += 10; valb53 += 10; valb54 += 10; vals5 += 10;
      b51.sety(valb51); b52.sety(valb52); b53.sety(valb53); b54.sety(valb54); s5.sety(vals5);
      //Stage 6
      valb61 += 10; valb62 += 10; valb63 += 10; valb64 += 10; vals6 += 10; 
      b61.sety(valb61); b62.sety(valb62); b63.sety(valb63); b64.sety(valb64); s6.sety(vals6);
      //Stage 7
      valb71 += 10; valb72 += 10; valb73 += 10; valb74 += 10; valb75 += 10; vals7 += 10;
      b71.sety(valb71); b72.sety(valb72); b73.sety(valb73); b74.sety(valb74); b75.sety(valb75); s7.sety(vals7);
      //Stage 8
      valb81 += 10; valb82 += 10; valb83 += 10; valb84 += 10; valb85 += 10; valb86 += 10; valb87 += 10; valb88 += 10; valb89 += 10; vals8 += 10;
      b81.sety(valb81); b82.sety(valb82); b83.sety(valb83); b84.sety(valb84); b85.sety(valb85); b86.sety(valb86); b87.sety(valb87); b88.sety(valb88); b89.sety(valb89); s8.sety(vals8);
      //Stage 9
      valb91 += 10; valb92 += 10; valb93 += 10; valb94 += 10; valb95 += 10; vals9 += 10;
      b91.sety(valb91); b92.sety(valb92); b93.sety(valb93); b94.sety(valb94); b95.sety(valb95); s9.sety(vals9);
    }
    if (h1 == 50){
      h1 = 0;
      s = false;
    }
    //Stage 0
    b1.dibujar(100, 100, 100);
    b2.dibujar(100, 100, 100);
    b3.dibujar(100, 100, 100);
    b4.dibujar(100, 100, 100);
    b5.dibujar(100, 100, 100);
    b6.dibujar(100, 100, 100);
    b7.dibujar(100, 100, 100);
    b8.dibujar(100, 100, 100);
    b9.dibujar(100, 100, 100);
    s0.dibujar(142, 29, 8);
    image(suelo1, 0, vals0, 1500, 30);
    p1.detenerEnPared(b1);
    p1.detenerEnPared(b2);
    p1.detenerEnPared(b3);
    p1.detenerEnPared(b4);
    p1.detenerEnPared(b5);
    p1.detenerEnPared(b6);
    p1.detenerEnPared(b7);
    p1.detenerEnPared(b8);
    p1.detenerEnPared(b9);
    p1.detenerEnPared(s0);
    //Stage 1
    b12.dibujar(100, 100, 100);
    b13.dibujar(100, 100, 100);
    b14.dibujar(100, 100, 100);
    b15.dibujar(100, 100, 100);
    b16.dibujar(100, 100, 100);
    b17.dibujar(100, 100, 100);
    s1.dibujar(142, 29, 8);
    image(suelo1, 0, vals1, 1500, 30);
    p1.detenerEnPared(b12);
    p1.detenerEnPared(b13);
    p1.detenerEnPared(b14);
    p1.detenerEnPared(b15);
    p1.detenerEnPared(b16);
    p1.detenerEnPared(b17);
    p1.detenerEnPared(s1);
    //Stage 2
    b21.dibujar(100, 100, 100);
    b22.dibujar(100, 100, 100);
    b23.dibujar(100, 100, 100);
    b24.dibujar(100, 100, 100);
    s2.dibujar(142, 29, 8);
    image(suelo1, 0, vals2, 1500, 30);
    p1.detenerEnPared(b21);
    p1.detenerEnPared(b22);
    p1.detenerEnPared(b23);
    p1.detenerEnPared(b24);
    p1.detenerEnPared(s2);
    //Stage 3
    b31.dibujar(100, 100, 100);
    b32.dibujar(100, 100, 100);
    b33.dibujar(100, 100, 100);
    b34.dibujar(100, 100, 100);
    s3.dibujar(142, 29, 8);
    image(suelo1, 0, vals3, 1500, 30);
    p1.detenerEnPared(b31);
    p1.detenerEnPared(b32);
    p1.detenerEnPared(b33);
    p1.detenerEnPared(b34);
    p1.detenerEnPared(s3);
    //Stage 4
    b41.dibujar(100, 100, 100);
    b42.dibujar(100, 100, 100);
    b43.dibujar(100, 100, 100);
    b44.dibujar(100, 100, 100);
    s4.dibujar(142, 29, 8);
    image(suelo1, 0, vals4, 1500, 30);
    p1.detenerEnPared(b41);
    p1.detenerEnPared(b42);
    p1.detenerEnPared(b43);
    p1.detenerEnPared(b44);
    p1.detenerEnPared(s4);
    //Stage 5
    b51.dibujar(100, 100, 100);
    b52.dibujar(100, 100, 100);
    b53.dibujar(100, 100, 100);
    b54.dibujar(100, 100, 100);
    s5.dibujar(142, 29, 8);
    image(suelo1, 0, vals5, 1500, 30);
    p1.detenerEnPared(b51);
    p1.detenerEnPared(b52);
    p1.detenerEnPared(b53);
    p1.detenerEnPared(b54);
    p1.detenerEnPared(s5);
    //Stage 6
    b61.dibujar(100, 100, 100);
    b62.dibujar(100, 100, 100);
    b63.dibujar(100, 100, 100);
    b64.dibujar(100, 100, 100);
    s6.dibujar(142, 29, 8);
    image(suelo1, 0, vals6, 1500, 30);
    p1.detenerEnPared(b61);
    p1.detenerEnPared(b62);
    p1.detenerEnPared(b63);
    p1.detenerEnPared(b64);
    p1.detenerEnPared(s6);
    //Stage 7
    b71.dibujar(100, 100, 100);
    b72.dibujar(100, 100, 100);
    b73.dibujar(100, 100, 100);
    b74.dibujar(100, 100, 100);
    b75.dibujar(100, 100, 100);
    s7.dibujar(142, 29, 8);
    image(suelo1, 0, vals7, 1500, 30);
    p1.detenerEnPared(b71);
    p1.detenerEnPared(b72);
    p1.detenerEnPared(b73);
    p1.detenerEnPared(b74);
    p1.detenerEnPared(b75);
    p1.detenerEnPared(s7);
    //Stage 8
    b81.dibujar(100, 100, 100);
    b82.dibujar(100, 100, 100);
    b83.dibujar(100, 100, 100);
    b84.dibujar(100, 100, 100);
    b85.dibujar(100, 100, 100);
    b86.dibujar(100, 100, 100);
    b87.dibujar(100, 100, 100);
    b88.dibujar(100, 100, 100);
    b89.dibujar(100, 100, 100);
    s8.dibujar(142, 29, 8);
    image(suelo1, 0, vals8, 1500, 30);
    p1.detenerEnPared(b81);
    p1.detenerEnPared(b82);
    p1.detenerEnPared(b83);
    p1.detenerEnPared(b84);
    p1.detenerEnPared(b85);
    p1.detenerEnPared(b86);
    p1.detenerEnPared(b87);
    p1.detenerEnPared(b88);
    p1.detenerEnPared(b89);
    p1.detenerEnPared(s8);
    //Stage 9
    b91.dibujar(100, 100, 100);
    b92.dibujar(100, 100, 100);
    b93.dibujar(100, 100, 100);
    b94.dibujar(100, 100, 100);
    b95.dibujar(100, 100, 100);
    s9.dibujar(142, 29, 8);
    image(suelo1, 0, vals9, 1500, 30);
    p1.detenerEnPared(b91);
    p1.detenerEnPared(b92);
    p1.detenerEnPared(b93);
    p1.detenerEnPared(b94);
    p1.detenerEnPared(b95);
    p1.detenerEnPared(s9);
    //Suelo
    image(suelo11, 0, suelo);
  
    //Lava
    if (lava > 0  && s == false) {
      lava = lava - 1;
    }
    image(lav, 0, lava);
  }
  
  void sound(){
    if(gameover.isPlaying()){
      tema1.pause();
    }
    else if(nextlevel.isPlaying()){
      tema1.pause();
    }
    else{
      tema1.play();
      gameover.rewind();
      nextlevel.rewind();
    }
    if (w){
      salto1.play(1);
    }
  }
  
  void restart(){
    if (y >= lava){
      if (w == false){
        intentar1 = loadImage("gameover1.png");
        background(intentar1);
        if (tema1.isPlaying()){
          tema1.pause();
        }
        gameover.play();
        tema1.rewind();
      }
      else{
        p1 = new Player(700, 612);
        lava = 900;
        suelo = 650;
        //Stage 0
        valb1 = 600; valb2 = 550; valb3 = 500; valb4 = 450; valb5 = 400; valb6 = 350; valb7 = 300; valb8 = 250; valb9 = 200; vals0 = 100;
        b1.sety(valb1); b2.sety(valb2); b3.sety(valb3); b4.sety(valb4); b5.sety(valb5); b6.sety(valb6); b7.sety(valb7); b8.sety(valb8); b9.sety(valb9); s0.sety(vals0);
        //Stage 1
        valb12 = 0; valb13 = -100; valb14 = -160; valb15 = -160; valb16 = -250; valb17 = -300; vals1 = -400;
        b12.sety(valb12); b13.sety(valb13); b14.sety(valb14); b15.sety(valb15); b16.sety(valb16); b17.sety(valb17); s1.sety(vals1);
        //Stage 2
        valb21 = -500; valb22 = -600; valb23 = -700; valb24 = -790; vals2 = -900;
        b21.sety(valb21); b22.sety(valb22); b23.sety(valb23); b24.sety(valb24); s2.sety(vals2);
        //Stage 3
        valb31 = -1000; valb32 = -1050; valb33 = -1150; valb34 = -1270; vals3 = -1400;
        b31.sety(valb31); b32.sety(valb32); b33.sety(valb33); b34.sety(valb34); s3.sety(vals3);
        //Stage 4
        valb41 = -1500; valb42 = -1600; valb43 = -1700; valb44 = -1800; vals4 = -1900;
        b41.sety(valb41); b42.sety(valb42); b43.sety(valb43); b44.sety(valb44); s4.sety(vals4);
        //Stage 5
        valb51 = -2000; valb52 = -2130; valb53 = -2250; valb54 = -2300; vals5 = -2400;
        b51.sety(valb51); b52.sety(valb52); b53.sety(valb53); b54.sety(valb54); s5.sety(vals5);
        //Stage 6
        valb61 = -2500; valb62 = -2600; valb63 = -2700; valb64 = -2800; vals6 = -2900;
        b61.sety(valb61); b62.sety(valb62); b63.sety(valb63); b64.sety(valb64); s6.sety(vals6);
        //Stage 7
        valb71 = -3000; valb72 = -3100; valb73 = -3100; valb74 = -3200; valb75 = -3300; vals7 = -3400;
        b71.sety(valb71); b72.sety(valb72); b73.sety(valb73); b74.sety(valb74); b75.sety(valb75); s7.sety(vals7);
        //Stage 8
        valb81 = -3550; valb82 = -3500; valb83 = -3600; valb84 = -3550; valb85 = -3650; valb86 = -3600; valb87 = -3700; valb88 = -3750; valb89 = -3800; vals8 = -3850;
        b81.sety(valb81); b82.sety(valb82); b83.sety(valb83); b84.sety(valb84); b85.sety(valb85); b86.sety(valb86); b87.sety(valb87); b88.sety(valb88); b89.sety(valb89); s8.sety(vals8);
        //Stage 9
        valb91 = -3950; valb92 = -4050; valb93 = -4150; valb94 = -4250; valb95 = -4350; vals9 = -4400;
        b91.sety(valb91); b92.sety(valb92); b93.sety(valb93); b94.sety(valb94); b95.sety(valb95); s9.sety(vals9);
      }
    }
  }
  
  void nextlevel(){
    if(vals9 == 600){
      lava = 900;
      if (w == false){
        carga2 = loadImage("carga2.png");
        background(carga2);
        if (tema1.isPlaying()){
          tema1.pause();
        }
        nextlevel.play();
        tema1.rewind();
      }
      else{
        nivel1 = false;
        nivel2 = true;
        nivel3 = false;
      }
    }
  }
}
