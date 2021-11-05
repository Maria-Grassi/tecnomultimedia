class Cohete {
  PImage cohete;
  String estadoCohete;
  int cohetey,  cohetex, cohetetw, coheteth  ;

  Cohete(int cohetex_, int cohetey_) {
    cohetex =cohetex_;
    cohetey =cohetey_;
  }
  void dibujar() {
cohetetw=135;
coheteth=72;
    cohete= loadImage("cohete.png");
    imageMode(CENTER);
    image(cohete, cohetex, cohetey, cohetetw, coheteth);
  }

  void avanzar(int tecla) {
    if (tecla==UP && cohetey>0  ) {
      cohetey -= 3;
    } else if (tecla==DOWN && cohetey<height) {
      cohetey += 3;
    } else if (tecla==LEFT && cohetex>0) {
      cohetex +=  -3;
    } else if (tecla==RIGHT &&cohetex<width ) {
      cohetex += 3;
    }
  }
}

/*
cargar imagen 
 ubicacion inicial x0 y widht/2
 velocidad inicial 2x por seg
 aumento de velocidad vf=v0+a*t  
 
 */
