class p1 {

  int tam;
  float ubicacionX, ubicacionY, ubicacionXcohete, ubicacionYcohete, anchoC, altoC;
  PImage cohete, tierra;

  p1() {

    tierra= loadImage ("tierra.png");
    cohete= loadImage ("cohete2.png");
  }
  void dibujar() {
    background(23, 16, 54);
    imageMode(CENTER);
    image(tierra, width/4, height/2, width/2-frameCount, width/2-frameCount);

    imageMode(CORNER);
    ubicacionXcohete = 100+frameCount*3;
    ubicacionYcohete = height-width/5-frameCount*2;
    anchoC = 20+frameCount/3;
    altoC= anchoC+anchoC/2 +frameCount/3;
    image(cohete, ubicacionXcohete, ubicacionYcohete, anchoC, altoC);
    fill(255);
  }
}
