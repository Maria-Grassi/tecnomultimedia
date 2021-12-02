class Juego {

  bala [] b=new bala[4];
  Naves[] n=new Naves[4];
  Cohete c;
  int a, x, y, cx, cy;
  String modo, estado;

  boolean perder;
  Juego() {

    cx=50;
    cy= height/2;
    c= new Cohete(cx, cy);
    perder=false;
    for (int i=0; i<b.length; i++) {

      if (i%2==0) {
        x=200*i;
        y=70;
        modo="bajar";
      } else {
        x=200*i;
        modo="subir";
        y=height;
      }
      b[i] =new bala(y, modo);
      n[i]= new Naves(x, y);
    }
  }
  void dibmovobject() {

    background(20, 20, 100);
    for (int i=0; i<b.length; i++) {
      n[i].dibNave();
      n[i].movNavex ();
      b[i].dibujar();
      b[i].movy(n[i].movNavex());
    }

    c.dibujar();
    c.avanzar(keyCode);
  }
  String ataque() {
    estado="jugando";
    for (int i=0; i<b.length; i++) {
      if (dist(b[i].balax, b[i].balay, c.cohetex, c.cohetey)<77) {

        perder=true;
      }
    }

    if (c.cohetex>width-68) {      
      perder=false;
      estado="gane";
    } else if (perder==true) {
      c.avanzar(0);
      estado="perdi";
    }
    return estado;
  }

  void volver() {
    c.avanzar(0);
  }
}
