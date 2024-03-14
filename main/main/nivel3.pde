class Nivel3{
  PImage carga3, intentar3, win;
  String imagen;
  float agua = 900;
  int suelo = 650;
  int h = 0;
  int vx = 0, vx2 = 0, vx3 = 0, vx4 = 0, vx6 = 0, vx64 = 0, vx7 = 0, vx9 = 0, vx91 = 0, vx92 = 0, vx93 = 0;
  int xd43, xd33, xd52, xd53, xd61, xd64, xd72, xd91, xd92, xd94, xd95;
  //Stage 0
  int vald1 = 600, vald2 = 550, vald3 = 500, vald4 = 450, vald5 = 400, vald6 = 350, vald7 = 300, vald8 = 250, vald9 = 200, valsd0 = 100;
  //Stage 1
  int vald12 = 0, vald13 = -100, vald14 = -160, vald15 = -160, vald16 = -250, vald17 = -300, valsd1 = -400;
  //Stage 2
  int vald21 = -500, vald22 = -600, vald23 = -700, vald24 = -790, valsd2 = -900;
  //Stage 3
  int vald31 = -1000, vald32 = -1050, vald33 = -1150, vald34 = -1270, valsd3 = -1400;
  //Stage 4
  int vald41 = -1500, vald42 = -1600, vald43 = -1700, vald44 = -1800, valsd4 = -1900;
  //Stage 5
  int vald51 = -2000, vald52 = -2130, vald53 = -2250, vald54 = -2300, valsd5 = -2400;
  //Stage 6
  int vald61 = -2500, vald62 = -2600, vald63 = -2700, vald64 = -2800, valsd6 = -2900;
  //Stage 7
  int vald71 = -3000, vald72 = -3100, vald73 = -3100, vald74 = -3200, vald75 = -3300, valsd7 = -3400;
  //Stage 8
  int vald81 = -3800, vald82 = -3750, vald83 = -3700, vald84 = -3600, vald85 = -3650, vald86 = -3550, vald87 = -3600, vald88 = -3500, valsd8 = -3850;
  //Stage 9
  int vald91 = -3950, vald92 = -4050, vald93 = -4150, vald94 = -4250, vald95 = -4350, valsd9 = -4400;
  Nivel3(){
  }
  
  void level(){
    if (vx <= 1250 && xd33 < 500){
      vx += 1;
      xd33 +=1;
    }
    else if (vx >= 500){
      vx -= 1;
    }
    else{
      xd33 = 0;
    }
    d33.setx(vx);
    
    //movimiento Stage 5
    if (vx2 <= 1450 && xd52 < 700){
      vx2 += 3;
      xd52 +=3;
    }
    else if (vx2 >= 100){
      vx2 -= 3;
    }
    else{
      xd52 = 0;
    }
    d52.setx(vx2);
    
    if (vx3 <= 1450 && xd53 < 1050){
      vx3 += 2;
      xd53 +=2;
    }
    else if (vx3 >= 0){
      vx3 -= 2;
    }
    else{
      xd53 = 0;
    }
    d53.setx(vx3);
    
    //Movimiento Stage 4
    if (vx4 <= 1250 && xd43 < 500){
      vx4 += 2;
      xd43 +=2;
    }
    else if (vx4 >= 500){
      vx4 -= 1;
    }
    else{
      xd43 = 0;
    }
    d43.setx(vx4);
    
    //Bloque 61
    if (vx6 <= 1250 && xd61 < 500){
      vx6 += 2;
      xd61 +=2;
    }
    else if (vx6 >= 500){
      vx6 -= 1;
    }
    else{
      xd61 = 0;
    }
    d61.setx(vx6);
    
    //Movimiento Stage 6
    if (vx64 <= 1250 && xd64 < 500){
      vx64 += 2;
      xd64 +=2;
    }
    else if (vx64 >= 500){
      vx64 -= 1;
    }
    else{
      xd64 = 0;
    }
    d64.setx(vx64);
    
    //Movimientos Stage 7
    if (vx7 <= 1000 && xd72 < 650){
      vx7 += 2;
      xd72 +=2;
    }
    else if (vx7 >= 450){
      vx7 -= 1;
    }
    else{
      xd72 = 0;
    }
    d72.setx(vx7);
    
    //Movimientos Stage 9
    if (vx9 <= 1450 && xd91 < 700){
      vx9 += 2;
      xd91 +=2;
    }
    else if (vx9 >= 100){
      vx9 -= 2;
    }
    else{
      xd91 = 0;
    }
    d91.setx(vx9);
    
    //2
    if (vx91 <= 1450 && xd92 < 700){
      vx91 += 3;
      xd92 +=3;
    }
    else if (vx91 >= 100){
      vx91 -= 3;
    }
    else{
      xd92 = 0;
    }
    d92.setx(vx91);
    
    //4
    if (vx92 <= 1450 && xd94 < 700){
      vx92 += 3;
      xd94 +=3;
    }
    else if (vx92 >= 100){
      vx92 -= 3;
    }
    else{
      xd94 = 0;
    }
    d94.setx(vx92);
    
    //5
    if (vx93 <= 1450 && xd95 < 700){
      vx93 += 2;
      xd95 +=2;
    }
    else if (vx93 >= 100){
      vx93 -= 2;
    }
    else{
      xd95 = 0;
    }
    d95.setx(vx93);
    
    if (s == true && h != 50){
      w = false;
      a = false;
      d = false;
      h += 1;
      agua += 10;
      suelo += 10;
      //Stage 0
      vald1 += 10; vald2 += 10; vald3 += 10; vald4 += 10; vald5 += 10; vald6 += 10; vald7 += 10; vald8 += 10; vald9 += 10; valsd0 += 10;
      d1.sety(vald1); d2.sety(vald2); d3.sety(vald3); d4.sety(vald4); d5.sety(vald5); d6.sety(vald6); d7.sety(vald7); d8.sety(vald8); d9.sety(vald9); sd0.sety(valsd0);
      //Stage 1
      vald12 += 10; vald13 += 10; vald14 += 10; vald15 += 10; vald16 += 10; vald17 += 10; valsd1 += 10;
      d12.sety(vald12); d13.sety(vald13); d14.sety(vald14); d15.sety(vald15); d16.sety(vald16); d17.sety(vald17); sd1.sety(valsd1);
      //Stage 2
      vald21 += 10; vald22 += 10; vald23 += 10; vald24 += 10; valsd2 += 10;
      d21.sety(vald21); d22.sety(vald22); d23.sety(vald23); d24.sety(vald24); sd2.sety(valsd2);
      //Stage 3
      vald31 += 10; vald32 += 10; vald33 += 10; vald34 += 10; valsd3 += 10;
      d31.sety(vald31); d32.sety(vald32); d33.sety(vald33); d34.sety(vald34); sd3.sety(valsd3);
      //Stage 4
      vald41 += 10; vald42 += 10; vald43 += 10; vald44 += 10; valsd4 += 10;
      d41.sety(vald41); d42.sety(vald42); d43.sety(vald43); d44.sety(vald44); sd4.sety(valsd4);
      //Stage 5
      vald51 += 10; vald52 += 10; vald53 += 10; vald54 += 10; valsd5 += 10;
      d51.sety(vald51); d52.sety(vald52); d53.sety(vald53); d54.sety(vald54); sd5.sety(valsd5);
      //Stage 6
      vald61 += 10; vald62 += 10; vald63 += 10; vald64 += 10; valsd6 += 10;
      d61.sety(vald61); d62.sety(vald62); d63.sety(vald63); d64.sety(vald64); sd6.sety(valsd6);
      //Stage 7
      vald71 += 10; vald72 += 10; vald73 += 10; vald74 += 10; vald75 += 10; valsd7 += 10;
      d71.sety(vald71); d72.sety(vald72); d73.sety(vald73); d74.sety(vald74); d75.sety(vald75); sd7.sety(valsd7);
      //Stage 2
      vald81 += 10; vald82 += 10; vald83 += 10; vald84 += 10; vald85 += 10; vald86 += 10; vald87 += 10; vald88 += 10; valsd8 += 10;
      d81.sety(vald81); d82.sety(vald82); d83.sety(vald83); d84.sety(vald84); d85.sety(vald85); d86.sety(vald86); d87.sety(vald87); d88.sety(vald88); sd8.sety(valsd8);
      //Stage 9
      vald91 += 10; vald92 += 10; vald93 += 10; vald94 += 10; vald95 += 10; valsd9 += 10;
      d91.sety(vald91); d92.sety(vald92); d93.sety(vald93); d94.sety(vald94); d95.sety(vald95); sd9.sety(valsd9);
    }
    if (h == 50){
      h = 0;
      s = false;
    }
    //Stage 0
    d1.dibujar(100, 100, 100);
    d2.dibujar(100, 100, 100);
    d3.dibujar(100, 100, 100);
    d4.dibujar(100, 100, 100);
    d5.dibujar(100, 100, 100);
    d6.dibujar(100, 100, 100);
    d7.dibujar(100, 100, 100);
    d8.dibujar(100, 100, 100);
    d9.dibujar(100, 100, 100);
    sd0.dibujar(142, 29, 8);
    image(suelo3, 0, valsd0, 1500, 30);
    p3.detenerEnPared(d1);
    p3.detenerEnPared(d2);
    p3.detenerEnPared(d3);
    p3.detenerEnPared(d4);
    p3.detenerEnPared(d5);
    p3.detenerEnPared(d6);
    p3.detenerEnPared(d7);
    p3.detenerEnPared(d8);
    p3.detenerEnPared(d9);
    p3.detenerEnPared(sd0);
    //Stage 1
    d12.dibujar(100, 100, 100);
    d13.dibujar(100, 100, 100);
    d14.dibujar(100, 100, 100);
    d15.dibujar(100, 100, 100);
    d16.dibujar(100, 100, 100);
    d17.dibujar(100, 100, 100);
    sd1.dibujar(142, 29, 8);
    image(suelo3, 0, valsd1, 1500, 30);
    p3.detenerEnPared(d12);
    p3.detenerEnPared(d13);
    p3.detenerEnPared(d14);
    p3.detenerEnPared(d15);
    p3.detenerEnPared(d16);
    p3.detenerEnPared(d17);
    p3.detenerEnPared(sd1);
    //Stage 2
    d21.dibujar(100, 100, 100);
    d22.dibujar(100, 100, 100);
    d23.dibujar(100, 100, 100);
    d24.dibujar(100, 100, 100);
    sd2.dibujar(142, 29, 8);
    image(suelo3, 0, valsd2, 1500, 30);
    p3.detenerEnPared(d21);
    p3.detenerEnPared(d22);
    p3.detenerEnPared(d23);
    p3.detenerEnPared(d24);
    p3.detenerEnPared(sd2);
    //Stage 3
    d31.dibujar(100, 100, 100);
    d32.dibujar(100, 100, 100);
    d33.dibujar(100, 100, 100);
    d34.dibujar(100, 100, 100);
    sd3.dibujar(142, 29, 8);
    image(suelo3, 0, valsd3, 1500, 30);
    p3.detenerEnPared(d31);
    p3.detenerEnPared(d32);
    p3.detenerEnPared(d33);
    p3.detenerEnPared(d34);
    p3.detenerEnPared(sd3);
    //Stage 4
    d41.dibujar(100, 100, 100);
    d42.dibujar(100, 100, 100);
    d43.dibujar(100, 100, 100);
    d44.dibujar(100, 100, 100);
    sd4.dibujar(142, 29, 8);
    image(suelo3, 0, valsd4, 1500, 30);
    p3.detenerEnPared(d41);
    p3.detenerEnPared(d42);
    p3.detenerEnPared(d43);
    p3.detenerEnPared(d44);
    p3.detenerEnPared(sd4);
    //Stage 5
    d51.dibujar(100, 100, 100);
    d52.dibujar(100, 100, 100);
    d53.dibujar(100, 100, 100);
    d54.dibujar(100, 100, 100);
    sd5.dibujar(142, 29, 8);
    image(suelo3, 0, valsd5, 1500, 30);
    p3.detenerEnPared(d51);
    p3.detenerEnPared(d52);
    p3.detenerEnPared(d53);
    p3.detenerEnPared(d54);
    p3.detenerEnPared(sd5);
    //Stage 6
    d61.dibujar(100, 100, 100);
    d62.dibujar(100, 100, 100);
    d63.dibujar(100, 100, 100);
    d64.dibujar(100, 100, 100);
    sd6.dibujar(142, 29, 8);
    image(suelo3, 0, valsd6, 1500, 30);
    p3.detenerEnPared(d61);
    p3.detenerEnPared(d62);
    p3.detenerEnPared(d63);
    p3.detenerEnPared(d64);
    p3.detenerEnPared(sd6);
    //Stage 7
    d71.dibujar(100, 100, 100);
    d72.dibujar(100, 100, 100);
    d73.dibujar(100, 100, 100);
    d74.dibujar(100, 100, 100);
    d75.dibujar(100, 100, 100);
    sd7.dibujar(142, 29, 8);
    image(suelo3, 0, valsd7, 1500, 30);
    p3.detenerEnPared(d71);
    p3.detenerEnPared(d72);
    p3.detenerEnPared(d73);
    p3.detenerEnPared(d74);
    p3.detenerEnPared(d75);
    p3.detenerEnPared(sd7);
    //Stage 8
    d81.dibujar(100, 100, 100);
    d82.dibujar(100, 100, 100);
    d83.dibujar(100, 100, 100);
    d84.dibujar(100, 100, 100);
    d85.dibujar(100, 100, 100);
    d86.dibujar(100, 100, 100);
    d87.dibujar(100, 100, 100);
    d88.dibujar(100, 100, 100);
    sd8.dibujar(142, 29, 8);
    image(suelo3, 0, valsd8, 1500, 30);
    p3.detenerEnPared(d81);
    p3.detenerEnPared(d82);
    p3.detenerEnPared(d83);
    p3.detenerEnPared(d84);
    p3.detenerEnPared(d85);
    p3.detenerEnPared(d86);
    p3.detenerEnPared(d87);
    p3.detenerEnPared(d88);
    p3.detenerEnPared(sd8);
    //Stage 9
    d91.dibujar(100, 100, 100);
    d92.dibujar(100, 100, 100);
    d93.dibujar(100, 100, 100);
    d94.dibujar(100, 100, 100);
    d95.dibujar(100, 100, 100);
    sd9.dibujar(142, 29, 8);
    image(suelo3, 0, valsd9, 1500, 30);
    p3.detenerEnPared(d91);
    p3.detenerEnPared(d92);
    p3.detenerEnPared(d93);
    p3.detenerEnPared(d94);
    p3.detenerEnPared(d95);
    p3.detenerEnPared(sd9);
    //Suelo
    image(suelo31, 0, suelo);
  
    //agua
    if (agua > 0  && s == false) {
      agua = agua - 1;
    }
    image(water, 0, agua);
    }
  
  void sound(){
      tema2.pause();
    if(gameover.isPlaying()){
      tema3.pause();
    }
    else if(nextlevel.isPlaying()){
      tema3.pause();
    }
    else{
      tema3.play();
      gameover.rewind();
      nextlevel.rewind();
    }
     if (w){
      salto1.play(1);
    }
  }
  
  void restart(){
    if (y >= agua){
      if (w == false){
        intentar3 = loadImage("gameover3.png");
        background(intentar3);
        if (tema3.isPlaying()){
          tema3.pause();
        }
        gameover.play();
        tema3.rewind();
      }
      else{
        p3 = new Player3(700, 612);
        agua = 900;
        suelo = 650;
        //Stage 0
        vald1 = 600; vald2 = 550; vald3 = 500; vald4 = 450; vald5 = 400; vald6 = 350; vald7 = 300; vald8 = 250; vald9 = 200; valsd0 = 100;
        d1.sety(vald1); d2.sety(vald2); d3.sety(vald3); d4.sety(vald4); d5.sety(vald5); d6.sety(vald6); d7.sety(vald7); d8.sety(vald8); d9.sety(vald9); sd0.sety(valsd0);
        //Stage 1
        vald12 = 0; vald13 = -100; vald14 = -160; vald15 = -160; vald16 = -250; vald17 = -300; valsd1 = -400;
        d12.sety(vald12); d13.sety(vald13); d14.sety(vald14); d15.sety(vald15); d16.sety(vald16); d17.sety(vald17); sd1.sety(valsd1);
        //Stage 2
        vald21 = -500; vald22 = -600; vald23 = -700; vald24 = -790; valsd2 = -900;
        d21.sety(vald21); d22.sety(vald22); d23.sety(vald23); d24.sety(vald24); sd2.sety(valsd2);
        //Stage 3
        vald31 = -1000; vald32 = -1050; vald33 = -1150; vald34 = -1270; valsd3 = -1400;
        d31.sety(vald31); d32.sety(vald32); d33.sety(vald33); d34.sety(vald34); sd3.sety(valsd3);
        //Stage 4
        vald41 = -1500; vald42 = -1600; vald43 = -1700; vald44 = -1800; valsd4 = -1900;
        d41.sety(vald41); d42.sety(vald42); d43.sety(vald43); d44.sety(vald44); sd4.sety(valsd4);
        //Stage 5
        vald51 = -2000; vald52 = -2130; vald53 = -2250; vald54 = -2300; valsd5 = -2400;
        d51.sety(vald51); d52.sety(vald52); d53.sety(vald53); d54.sety(vald54); sd5.sety(valsd5);
        //Stage 6
        vald61 = -2500; vald62 = -2600; vald63 = -2700; vald64 = -2800; valsd6 = -2900;
        d61.sety(vald61); d62.sety(vald62); d63.sety(vald63); d64.sety(vald64); sd6.sety(valsd6);
        //Stage 7
        vald71 = -3000; vald72 = -3100; vald73 = -3100; vald74 = -3200; vald75 = -3300; valsd7 = -3400;
        d71.sety(vald71); d72.sety(vald72); d73.sety(vald73); d74.sety(vald74); d75.sety(vald75); sd7.sety(valsd7);
        //Stage 8
        vald81 = -3800; vald82 = -3750; vald83 = -3700; vald84 = -3600; vald85 = -3650; vald86 = -3550; vald87 = -3600; vald88 = -3500; valsd8 = -3850;
        d81.sety(vald81); d82.sety(vald82); d83.sety(vald83); d84.sety(vald84); d85.sety(vald85); d86.sety(vald86); d87.sety(vald87); d88.sety(vald88); sd8.sety(valsd8);
        //Stage 9
        vald91 = -3950; vald92 = -4050; vald93 = -4150; vald94 = -4250; vald95 = -4350; valsd9 = -4400;
        d91.sety(vald91); d92.sety(vald92); d93.sety(vald93); d94.sety(vald94); d95.sety(vald95); sd9.sety(valsd9);
      }
    }
  }
  void finish(){
    if(valsd9 == 600){
      agua = 900;
      win = loadImage("win.png");
      background(win);
      if (tema3.isPlaying()){
        tema3.pause();
      }
      nextlevel.play();
      tema3.rewind();
    }
  }
}
