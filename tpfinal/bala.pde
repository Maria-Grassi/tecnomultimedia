class bala {
  float nx;
  float balay, balax, g;
  int  balat ;
  String estadobala;

  bala(float balay_, String estadob) {

    balay= balay_;

    balat= 20;
    g=9.8;
    estadobala= estadob;
  }
  void dibujar() {
    balax= nx;
    fill(00, 255, 00);
    ellipse(balax, balay, balat, balat);
  }
  void movy(float nx_) {
    nx=nx_; // depende de ubicacion de nave la cual se va a mover de forma random 
    // depende de ubicacion nave
    if ( balay > -balat/2 && estadobala.equals("subir") ) {
      //   d=v0*t+1/2(g*t2)
      balay -= random(2, 5)+1/2*g;
    } else if ( balay < height && estadobala.equals("bajar") ) {
      //   d=v0*t+1/2(g*t2)
      balay += random(2, 5)+1/2*-g;
    } else if (balay> height && estadobala.equals("bajar")) {
      balax=nx;
      balay=60;
    } else if (balay < 0 && estadobala.equals("subir")) {
      balay= height;
      balax=nx;
    }
    //background(20,20,100);
  }
}
