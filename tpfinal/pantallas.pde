class Pantalla {
  int nPant, n, px, py ;
  PImage [] pantallas = new PImage[16];
  Pantalla() {
    for (int i=0; i<pantallas .length; i++) {
      n=i+1;
      pantallas [i] = loadImage("pantalla"+n+".png");
    }
  }
  void dibujarPant(int num) {
    imageMode(CORNER);
    nPant = num-1;
    image(pantallas[nPant], px, py);
  }
}
