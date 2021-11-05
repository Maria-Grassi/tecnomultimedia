class Pantallas {
  Boton b;
  Cohete c;
 Pantjuego pj;
    Juego j;
  int p;
  Pantallas() {
    c= new Cohete(50, height/2);
    j= new Juego();
    pj= new Pantjuego();
    b=new Boton(width/2, (height/3)*2, 200, 50);
    p=1;
  }
  void dibPant() {
    if (p==1) {
      background(37, 40, 80);
      textMode(CENTER);
      textSize(25);
      text("Escapa de los marcianos", width/2, height/3);
      textSize(15);
      text("Con las flechas del teclado vas a mover la nave buscando \n llegar al otro lado sin que los marcianos te derriben", width/2, height/2); 
      b.dibujar(2, 1, "JUGAR");
    } else if (p==2) {
      background(20, 20, 100);
      j.dibmovobject();
      j.ataque();
     if(j.ataque()=="perdi"){
    background(20, 20, 100);
      pj.dib(1);
    b.dibujar(2, 2, "REINICIAR");
     
    j.estado="jugando";}
       else if(j.ataque()=="gane"){
    background(20, 20, 100);
      pj.dib(2);
    b.dibujar(2, 2, "REINICIAR");
       
  j.estado="jugando";}
    }}
  
  void Botones() {
    if (b.navegable(width/2, (height/3)*2, 200, 50) && p == b.pa  ) {
      p = b.ps;
      if(j.estado=="jugando"){
          background(20, 20, 100);
                  j.volver();
                  j.perder=false;
      j.dibmovobject();
      j.ataque();

       }
    }
  }

}
