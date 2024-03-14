class Pared {
  int x, y, ancho, alto;
  float xspeed;

  Pared(int x_, int y_, int ancho, int alto) {
    x = x_;
    y = y_;
    xspeed = 2;
    this.ancho = ancho;
    this.alto = alto;

  }

  void dibujar(int r, int g, int b) {
    rectMode(CORNER);
    fill(r, g, b);
    rect(x, y, ancho, alto);
  }
  
  void sety(int vy){
    y = vy;
  }
  
  void setx(int vx){
    x = vx;
  }
}
