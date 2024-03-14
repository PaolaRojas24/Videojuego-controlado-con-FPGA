class Nivel2{
  PImage carga3, intentar2;
  float acido = 900;
  int suelo = 650;
  int h2 = 0;
  int vx = 0, vx2 = 0, vx3 = 0, vx4 = 0, vx6 = 0, vx64 = 0, vx7 = 0, vx9 = 0, vx91 = 0, vx92 = 0, vx93 = 0;
  int xc43, xc33, xc52, xc53, xc61, xc64, xc72, xc91, xc92, xc94, xc95;
  //Stage 0
  int valc2 = 550, valc4 = 450, valc6 = 350, valc8 = 250, valsc0 = 100;
  //Stage 1
  int valc12 = 0, valc14 = -160, valc15 = -160, valc17 = -300, valsc1 = -400;
  //Stage 2
  int valc21 = -500, valc22 = -600, valc23 = -700, valc24 = -790, valc25 = -600, valc26 = -650, valc27 = -700, valc28 = -750, valc29 = -800, valsc2 = -900;
  //Stage 3
  int valc32 = -1050, valc33 = -1150, valc34 = -1270, valsc3 = -1400;
  //Stage 4
  int valc41 = -1500, valc42 = -1600, valc43 = -1700, valc44 = -1800, valc45 = -1600, valc46 = -1650, valc47 = -1700, valc48 = -1750, valc49 = -1800, valsc4 = -1900;
  //Stage 5
  int valc51 = -2000, valc52 = -2130, valc53 = -2250, valsc5 = -2400;
  //Stage 6
  int valc61 = -2500, valc62 = -2650, valc64 = -2800, valsc6 = -2900;
  //Stage 7
  int valc71 = -3000, valc72 = -3100, valc74 = -3200, valc75 = -3300, valsc7 = -3400;
  //Stage 8
  int valc82 = -3500, valc84 = -3550, valc86 = -3600, valc88 = -3700, valsc8 = -3850;
  //Stage 9
  int valc91 = -3950, valc92 = -4050, valc94 = -4180, valc95 = -4250, valsc9 = -4400;
  Nivel2(){}
  
  void level(){
    if (vx <= 1250 && xc33 < 500){
      vx += 1;
      xc33 += 1;
    }
    else if (vx >= 500){
      vx -= 1;
    }
    else{
      xc33 = 0;
    }
    c33.setx(vx);
    
    //movimiento Stage 5
    if (vx2 <= 1450 && xc52 < 700){
      vx2 += 3;
      xc52 +=3;
    }
    else if (vx2 >= 100){
      vx2 -= 3;
    }
    else{
      xc52 = 0;
    }
    c52.setx(vx2);
    
    if (vx3 <= 1450 && xc53 < 1050){
      vx3 += 2.5;
      xc53 +=2.5;
    }
    else if (vx3 >= 0){
      vx3 -= 2.5;
    }
    else{
      xc53 = 0;
    }
    c53.setx(vx3);
    
    //Movimiento Stage 4
    if (vx4 <= 1250 && xc43 < 500){
      vx4 += 3;
      xc43 +=2.5;
    }
    else if (vx4 >= 500){
      vx4 -= 2.5;
    }
    else{
      xc43 = 0;
    }
    c43.setx(vx4);
    
    //Bloque 61
    if (vx6 <= 1250 && xc61 < 500){
      vx6 += 2;
      xc61 +=2;
    }
    else if (vx6 >= 500){
      vx6 -= 1;
    }
    else{
      xc61 = 0;
    }
    c61.setx(vx6);
    
    //Movimiento Stage 6
    if (vx64 <= 1250 && xc64 < 500){
      vx64 += 2;
      xc64 +=2;
    }
    else if (vx64 >= 500){
      vx64 -= 1;
    }
    else{
      xc64 = 0;
    }
    c64.setx(vx64);
    
    //Movimientos Stage 7
    if (vx7 <= 1000 && xc72 < 650){
      vx7 += 2;
      xc72 +=2;
    }
    else if (vx7 >= 450){
      vx7 -= 1;
    }
    else{
      xc72 = 0;
    }
    c72.setx(vx7);
    
    //Movimientos Stage 9
    if (vx9 <= 1450 && xc91 < 700){
      vx9 += 2;
      xc91 +=2;
    }
    else if (vx9 >= 100){
      vx9 -= 2;
    }
    else{
      xc91 = 0;
    }
    c91.setx(vx9);
    
    //2
    if (vx91 <= 1450 && xc92 < 700){
      vx91 += 3;
      xc92 +=3;
    }
    else if (vx91 >= 100){
      vx91 -= 3;
    }
    else{
      xc92 = 0;
    }
    c92.setx(vx91);
    
    //4
    if (vx92 <= 1450 && xc94 < 700){
      vx92 += 4;
      xc94 +=4;
    }
    else if (vx92 >= 100){
      vx92 -= 4;
    }
    else{
      xc94 = 0;
    }
    c94.setx(vx92);
    
    //5
    if (vx93 <= 1450 && xc95 < 700){
      vx93 += 3;
      xc95 +=3;
    }
    else if (vx93 >= 100){
      vx93 -= 3;
    }
    else{
      xc95 = 0;
    }
    c95.setx(vx93);
    
    if (s == true && h2 != 50){
      w = false;
      a = false;
      d = false;
      h2 += 1;
      acido += 10;
      suelo += 10;
      //Stage 0
      valc2 += 10; valc4 += 10; valc6 += 10; valc8 += 10; valsc0 += 10;
      c2.sety(valc2); c4.sety(valc4); c6.sety(valc6); c8.sety(valc8); sc0.sety(valsc0);
      //Stage 1
      valc12 += 10; valc14 += 10; valc15 += 10; valc17 += 10; valsc1 += 10;
      c12.sety(valc12); c14.sety(valc14); c15.sety(valc15); c17.sety(valc17); sc1.sety(valsc1);
      //Stage 2
      valc21 += 10; valc22 += 10; valc23 += 10; valc24 += 10; valc25 += 10; valc26 += 10; valc27 += 10; valc28 += 10; valc29 += 10; valsc2 += 10;
      c21.sety(valc21); c22.sety(valc22); c23.sety(valc23); c24.sety(valc24); s2.sety(valsc2);
      //Stage 3
      valc32 += 10; valc33 += 10; valc34 += 10; valsc3 += 10;
      c32.sety(valc32); c33.sety(valc33); c34.sety(valc34); sc3.sety(valsc3);
      //Stage 4
      valc41 += 10; valc42 += 10; valc43 += 10; valc44 += 10; valsc4 += 10;
      c41.sety(valc41); c42.sety(valc42); c43.sety(valc43); c44.sety(valc44); sc4.sety(valsc4);
      //Stage 5
      valc51 += 10; valc52 += 10; valc53 += 10; valsc5 += 10;
      c51.sety(valc51); c52.sety(valc52); c53.sety(valc53); sc5.sety(valsc5);
      //Stage 6
      valc61 += 10; valc62 += 10; valc64 += 10; valsc6 += 10;
      c61.sety(valc61); c62.sety(valc62); c64.sety(valc64); sc6.sety(valsc6);
      //Stage 7
      valc71 += 10; valc72 += 10; valc74 += 10; valc75 += 10; valsc7 += 10;
      c71.sety(valc71); c72.sety(valc72); c74.sety(valc74); c75.sety(valc75); sc7.sety(valsc7);
      //Stage 8
      valc82 += 10; valc84 += 10; valc86 += 10; valc88 += 10; valsc8 += 10;
      c82.sety(valc82); c84.sety(valc84); c86.sety(valc86); c88.sety(valc88); sc8.sety(valsc8);
      //Stage 9
      valc91 += 10; valc92 += 10; valc94 += 10; valc95 += 10; valsc9 += 10;
      c91.sety(valc91); c92.sety(valc92); c94.sety(valc94); c95.sety(valc95); sc9.sety(valsc9);
    }
    if (h2 == 50){
      h2 = 0;
      s = false;
    }
    //Stage 0
    c2.dibujar(100, 100, 100);
    c4.dibujar(100, 100, 100);
    c6.dibujar(100, 100, 100);
    c8.dibujar(100, 100, 100);
    sc0.dibujar(142, 29, 8);
    image(suelo2, 0, valsc0, 1500, 30);
    p2.detenerEnPared(c2);
    p2.detenerEnPared(c4);
    p2.detenerEnPared(c6);
    p2.detenerEnPared(c8);
    p2.detenerEnPared(sc0);
    //Stage 1
    c12.dibujar(100, 100, 100);
    c14.dibujar(100, 100, 100);
    c15.dibujar(100, 100, 100);
    c17.dibujar(100, 100, 100);
    sc1.dibujar(142, 29, 8);
    image(suelo2, 0, valsc1, 1500, 30);
    p2.detenerEnPared(c12);
    p2.detenerEnPared(c14);
    p2.detenerEnPared(c15);
    p2.detenerEnPared(c17);
    p2.detenerEnPared(sc1);
    //Stage 2
    c21.dibujar(100, 100, 100);
    c22.dibujar(100, 100, 100);
    c23.dibujar(100, 100, 100);
    c24.dibujar(100, 100, 100);
    sc2.dibujar(142, 29, 8);
    image(suelo2, 0, valsc2, 1500, 30);
    p2.detenerEnPared(c21);
    p2.detenerEnPared(c22);
    p2.detenerEnPared(c23);
    p2.detenerEnPared(c24);
    p2.detenerEnPared(s2);
    //Stage 3
    c32.dibujar(100, 100, 100);
    c33.dibujar(100, 100, 100);
    c34.dibujar(100, 100, 100);
    sc3.dibujar(142, 29, 8);
    image(suelo2, 0, valsc3, 1500, 30);
    p2.detenerEnPared(c32);
    p2.detenerEnPared(c33);
    p2.detenerEnPared(c34);
    p2.detenerEnPared(sc3);
    //Stage 4
    c41.dibujar(100, 100, 100);
    c42.dibujar(100, 100, 100);
    c43.dibujar(100, 100, 100);
    c44.dibujar(100, 100, 100);
    sc4.dibujar(142, 29, 8);
    image(suelo2, 0, valsc4, 1500, 30);
    p2.detenerEnPared(c41);
    p2.detenerEnPared(c42);
    p2.detenerEnPared(c43);
    p2.detenerEnPared(c44);
    p2.detenerEnPared(sc4);
    //Stage 5
    c51.dibujar(100, 100, 100);
    c52.dibujar(100, 100, 100);
    c53.dibujar(100, 100, 100);
    sc5.dibujar(142, 29, 8);
    image(suelo2, 0, valsc5, 1500, 30);
    p2.detenerEnPared(c51);
    p2.detenerEnPared(c52);
    p2.detenerEnPared(c53);
    p2.detenerEnPared(sc5);
    //Stage 6
    c61.dibujar(100, 100, 100);
    c62.dibujar(100, 100, 100);
    c64.dibujar(100, 100, 100);
    sc6.dibujar(142, 29, 8);
    image(suelo2, 0, valsc6, 1500, 30);
    p2.detenerEnPared(c61);
    p2.detenerEnPared(c62);
    p2.detenerEnPared(c64);
    p2.detenerEnPared(sc6);
    //Stage 7
    c71.dibujar(100, 100, 100);
    c72.dibujar(100, 100, 100);
    c74.dibujar(100, 100, 100);
    c75.dibujar(100, 100, 100);
    sc7.dibujar(142, 29, 8);
    image(suelo2, 0, valsc7, 1500, 30);
    p2.detenerEnPared(c71);
    p2.detenerEnPared(c72);
    p2.detenerEnPared(c74);
    p2.detenerEnPared(c75);
    p2.detenerEnPared(sc7);
    //Stage 8
    c82.dibujar(100, 100, 100);
    c84.dibujar(100, 100, 100);
    c86.dibujar(100, 100, 100);
    c88.dibujar(100, 100, 100);
    sc8.dibujar(142, 29, 8);
    image(suelo2, 0, valsc8, 1500, 30);
    p2.detenerEnPared(c82);
    p2.detenerEnPared(c84);
    p2.detenerEnPared(c86);
    p2.detenerEnPared(c88);
    p2.detenerEnPared(sc8);
    //Stage 9
    c91.dibujar(100, 100, 100);
    c92.dibujar(100, 100, 100);
    c94.dibujar(100, 100, 100);
    c95.dibujar(100, 100, 100);
    sc9.dibujar(142, 29, 8);
    image(suelo2, 0, valsc9, 1500, 30);
    p2.detenerEnPared(c91);
    p2.detenerEnPared(c92);
    p2.detenerEnPared(c94);
    p2.detenerEnPared(c95);
    p2.detenerEnPared(sc9);
    //Suelo
    image(suelo21, 0, suelo);
  
    //acido
    if (acido > 0  && s == false) {
      acido = acido - 1;
    }
    image(acid, 0, acido);
    }
  
    void sound(){
      tema1.pause();
    if(gameover.isPlaying()){
      tema2.pause();
    }
    else if(nextlevel.isPlaying()){
      tema2.pause();
    }
    else{
      tema2.play();
      gameover.rewind();
      nextlevel.rewind();
    }
    if (w){
      salto2.play(1);
    }
  }
  
  void restart(){
    if (y >= acido){
      if (w == false){
        intentar2 = loadImage("gameover2.png");
        background(intentar2);
        if (tema2.isPlaying()){
          tema2.pause();
        }
        gameover.play();
        tema2.rewind();
      }
      else{
        p2 = new Player2(700, 612);
        acido = 900;
        suelo = 650;
          //Stage 0
        valc2 = 550; valc4 = 450; valc6 = 350; valc8 = 250; valsc0 = 100;
        c2.sety(valc2); c4.sety(valc4); c6.sety(valc6); c8.sety(valc8); sc0.sety(valsc0);
        //Stage 1
        valc12 = 0; valc14 = -160; valc15 = -160; valc17 = -300; valsc1 = -400;
        c12.sety(valc12); c14.sety(valc14); c15.sety(valc15); c17.sety(valc17); sc1.sety(valsc1);
        //Stage 2
        valc21 = -500; valc22 = -600; valc23 = -700; valc24 = -790; valc25 = -600; valc26 = -650; valc27 = -700; valc28 = -750; valc29 = -800; valsc2 = -900;
        c21.sety(valc21); c22.sety(valc22); c23.sety(valc23); c24.sety(valc24); sc2.sety(valsc2);
        //Stage 3
        valc32 = -1050; valc33 = -1150; valc34 = -1270; valsc3 = -1400;
        c32.sety(valc32); c33.sety(valc33); c34.sety(valc34); sc3.sety(valsc3);
        //Stage 4
        valc41 = -1500; valc42 = -1600; valc43 = -1700; valc44 = -1800; valc45 = -1600; valc46 = -1650; valc47 = -1700; valc48 = -1750; valc49 = -1800; valsc4 = -1900;
        c41.sety(valc41); c42.sety(valc42); c43.sety(valc43); c44.sety(valc44); sc4.sety(valsc4);
        //Stage 5
        valc51 = -2000; valc52 = -2130; valc53 = -2250; valsc5 = -2400;
        c51.sety(valc51); c52.sety(valc52); c53.sety(valc53); sc5.sety(valsc5);
        //Stage 6
        valc61 = -2500; valc62 = -2650; valc64 = -2800; valsc6 = -2900;
        c61.sety(valc61); c62.sety(valc62); c64.sety(valc64); sc6.sety(valsc6);
        //Stage 7
        valc71 = -3000; valc72 = -3100; valc74 = -3200; valc75 = -3300; valsc7 = -3400;
        c71.sety(valc71); c72.sety(valc72); c74.sety(valc74); c75.sety(valc75); sc7.sety(valsc7);
        //Stage 8
        valc82 = -3500; valc84 = -3550; valc86 = -3600; valc88 = -3700; valsc8 = -3850;
        c82.sety(valc82); c84.sety(valc84); c86.sety(valc86); c88.sety(valc88); sc8.sety(valsc8);
        //Stage 9
        valc91 = -3950; valc92 = -4050; valc94 = -4180; valc95 = -4250; valsc9 = -4400;
        c91.sety(valc91); c92.sety(valc92); c94.sety(valc94); c95.sety(valc95); sc9.sety(valsc9);
      }
    }
  }
    void nextlevel(){
    if(valsc9 == 600){
      acido = 900;
      if (w == false){
        carga3 = loadImage("carga3.png");
        background(carga3);
        if (tema2.isPlaying()){
          tema2.pause();
        }
        nextlevel.play();
        tema2.rewind();
      }
      else{
        nivel1 = false;
        nivel2 = false;
        nivel3 = true;
      }
    }
  }
}
