class Titulo {
  int tam;
  float ubicacionX, ubicacionY, ubicacionXe, ubicacionYe, ancho, alto, r, g, b, colorr;
  PImage cohete;
  Titulo() {
    cohete= loadImage ("cohete2.png");

  }


  void dibujar() {
    background(23, 16, 54);
    ubicacionYe =random(height);
    ubicacionXe = random(width);

    for (int i=0; i<=80; i++) {
      colorr= random(5);
      tam = round(random(5));
      //color
      fill(r, g, b);
      r=round(random(171, 230));
      g=round(random(224, 230));
      b=round(random(176, 230));

      ellipse(ubicacionXe, ubicacionYe, tam, tam );
    }

    ubicacionX = frameCount*3;
    ubicacionY = height-width/5-frameCount*2;
    ancho = 20+frameCount/3;
    alto = ancho-ancho/2 +frameCount/3;
    fill(23, 16, 54);
    noStroke();
 
    image(cohete, ubicacionX, ubicacionY, ancho, alto);

  }
}
