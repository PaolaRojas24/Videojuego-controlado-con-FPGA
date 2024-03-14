class Player3 {
  int x,y;
  float xSpeed,ySpeed;
  float accel,deccel;
  float maxXspd,maxYspd;
  float xSave,ySave;
  int xRep,yRep;
  float gravity;
  float state;
  float stateRate;
  float stateShift;
  int charXShift;
  int charYShift;
  int pace;
  
  Player3(int _x, int _y ) {
    x = _x;
    y = _y;
    xSpeed = 0;
    ySpeed = 0;
    accel = 0.5;
    deccel = 0.5;
    maxXspd = 2;
    maxYspd = 1.5;
    xSave = 0;
    ySave = 0;
    xRep = 0;
    yRep = 0;
    gravity = 0.18;
    stateRate = .1;
    stateShift = 2;
    charXShift = 60;
    charYShift = 45;
    pace = 2;
  }
  
  int update1() {
    
    if ( d ) {
      xSpeed += accel;
      if ( xSpeed > maxXspd ) {
        xSpeed = maxXspd;
      }
      state = state + stateRate;
      if (state >2) {
        state =  stateRate;
      }
      if (x > 1280){
        x = 1280;
      }
    }
    else if ( a ) {
      xSpeed -= accel;
      if ( xSpeed < -maxXspd ) {
        xSpeed = -maxXspd;
      }
      state = state - stateRate;
      if (state <-2) {
        state = - stateRate;
      }
      if (x < 0){
        x = 0;
      }
    }
    else {
      state = 0;
      if ( xSpeed > 0 ) {
        xSpeed -= deccel;
        if ( xSpeed < 0 ) {
           xSpeed = 0;
        }
      }
      if ( xSpeed < 0 ) {
        xSpeed += deccel;
        if ( xSpeed > 0 ) {
           xSpeed = 0;
        }
      }
    }
     
    if ( w ) {
      if ( !place_free(x,y+pace) && !place_free(x+charXShift,y+pace)) {
        ySpeed = -4.3;
      }
    }
    ySpeed += gravity;
    int signX = (xSpeed<0) ? -pace : pace;
    int signY = (ySpeed<0) ? -pace : pace;
        
    xRep += floor(abs(xSpeed));
    yRep += floor(abs(ySpeed));
                 
    for ( ; yRep > 0; yRep-- ) {
      if ( place_free(x,y+signY) && place_free(x+charXShift,y+signY)) {
        y += signY;
      }
      else {
        ySpeed = 0;
      }
    }
    for ( ; xRep > 0; xRep-- ) {
      if ( place_free(x+signX,y-charYShift) && place_free(x+signX,y) ) {
        x += signX;
    }
    else{
      xSpeed = 0;
    }
  }
  println(y);
  return y;
  }
  
  void display() {
    //LEFT0
    if (state <0 && state >=-1){
     PImage leftB;
     leftB = loadImage("shihtzu-left-000.png");
     image(leftB, x, y-charYShift);
    }
    
    //LEFT1
     else if (state <-1 && state >=-2){ 
     PImage leftB;
     leftB = loadImage("shihtzu-left-001.png");
     image(leftB, x, y-charYShift);
    }
    
     //RIGHT0
      else if (state >0 && state <=1){
      PImage rightA;
     rightA = loadImage("shihtzu-right-000.png");
     image(rightA, x,y-charYShift);
    }
    
    //RIGHT1
     else if (state >1 && state <=2){
     PImage rightB;
     rightB = loadImage("shihtzu-right-001.png");
     image(rightB, x, y-charYShift);
    }
    
    //STILL
    else if(state == 0){
     PImage still;
     still = loadImage("shihtzu-still-000.png");
     image(still, x, y-charYShift);
    }
  }
  
  void detenerEnPared(Pared pared) {
    // Verificar colisión con la pared
    if (x + charXShift > pared.x && x < pared.x + pared.ancho &&
        y > pared.y - charYShift && y < pared.y + pared.alto) {
      ySpeed = 0;
      if (w) {
        ySpeed = -4.3;
      }
    }
  }
}
