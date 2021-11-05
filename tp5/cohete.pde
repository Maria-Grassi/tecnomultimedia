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
      cohetey -= 5;
    } else if (tecla==DOWN && cohetey<height) {
      cohetey += 5;
    } else if (tecla==LEFT && cohetex>0) {
      cohetex +=  -5;
    } else if (tecla==RIGHT &&cohetex<width ) {
      cohetex += 5;
    }
    else if (tecla==0 ){
    cohetex = 0;
  cohetey = 0;}
  }
   void reiniciar(){
 cohetex=50;
cohetey= height/2;}
 
}


/*
cargar imagen 
 ubicacion inicial x0 y widht/2
 velocidad inicial 2x por seg
 aumento de velocidad vf=v0+a*t  
 
 */
