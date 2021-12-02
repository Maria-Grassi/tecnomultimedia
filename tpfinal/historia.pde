class Historia {
  Dialogo dizq, dder, dtext;
  Pantalla p;
  Boton Bizq, Bder, Bt, Bc, Bm;
  Juego j;
  int pantalla, v;
  float ubicacionX, ubicacionY, ancho, alto;
  String estado, estado2;
  Titulo t;
  p1 p1;
  Historia() {   
    ancho =90;
    alto = 90;
    ubicacionX =width/4;
    ubicacionY = height/4;
    p= new Pantalla();
    dizq= new Dialogo("izq");
    dder= new Dialogo("der");
    dtext= new Dialogo("text");
    Bizq= new Boton(width-100-70, height-100, 70, 50, "avance retroceso", "izq");
    Bder = new Boton(100, height-100, 70, 50, "avance retroceso", "der");
    Bt = new Boton(ubicacionX*3, ubicacionY*3, ancho, alto, "elegir", "tierra");
    Bc= new Boton(ubicacionX*2, ubicacionY*3, ancho, alto, "elegir", "cielo");
    Bm= new Boton(ubicacionX, ubicacionY*3, ancho, alto, "elegir", "marte");
    j=new Juego();
    t= new Titulo();
    p1 = new p1();
  }

  void dibujar() {
    if (pantalla==0) {
      t.dibujar();
      dtext.dibujar( width/4, height/4, 100, 100, dtext.lines[32]);
      Bizq.dibujar(1, 0, "Empezar");
    } else if (pantalla==1) {
      p1.dibujar();
      Bizq.dibujar(2, 1, "siguiente");
      Bder.dibujar(0, 1, "volver");
      dtext.dibujar(200, 100, 100, 100, dtext.lines[0]);
    } else if (pantalla==2) {
      p.dibujarPant(1);
      Bizq.dibujar(3, 2, "siguiente");
      Bder.dibujar(1, 2, "volver");
      dtext.dibujar(200, 100, 100, 100, dtext.lines[1]);
    } else if (pantalla==3) {
      p.dibujarPant(2);
      Bizq.dibujar(4, 3, "siguiente");
      Bder.dibujar(2, 3, "volver");
      dizq.dibujar((width/2)+40, height/4, width/3.5, height/5.5, dizq.lines[2]);
    } else if (pantalla==4) {
      p.dibujarPant(3);
      Bt.dibujar(11, 4, "tierra");
      Bc.dibujar(8, 4, "cielo");
      Bm.dibujar(5, 4, "marte");
      dder.dibujar(width/3, height/3, width/4, height/5.5, dder.lines[3]);
      dizq.dibujar((width/4)*3, height/5.5, width/4, height/7, dizq.lines[5]);
      dizq.dibujar((width/8)*7, height/3.5, width/4, height/6, dizq.lines[4]);
    }
    //marte

    else if (pantalla==5) { 

      p.dibujarPant(4);
      Bizq.dibujar(6, 5, "siguiente");
      Bder.dibujar(4, 5, "volver");
      dizq.dibujar(width/1.3, height/2.6, width/3, height/6, dizq.lines[6]);
      dtext.dibujar(width/1.3, height/2.0, 100, 100, dtext.lines[7]); 
      dder.dibujar(width/2.1, height/2, width/4, height/7, dder.lines[8]);
      dtext.dibujar(width/1.3, height/1.5, 100, 100, dtext.lines[9]);
    } else if (pantalla==6) { 
      p.dibujarPant(5);
      Bizq.dibujar(7, 6, "siguiente");
      Bder.dibujar(5, 6, "volver");
      dtext.dibujar(width/5, height/8, 100, 100, dtext.lines[10]);
    } else if (pantalla==7) { 
      p.dibujarPant(6);
      dtext.dibujar( width/1.3, height/2, 100, 100, dtext.lines[11]);
      Bt.dibujar(6, 7, "tierra");
      Bc.dibujar(6, 7, "cielo");
      Bm.dibujar(14, 7, "marte");
      estado="marte1";
    }
    //cielo
    else if (pantalla==8) { 

      p.dibujarPant(4);
      Bizq.dibujar(9, 8, "siguiente");
      Bder.dibujar(4, 8, "volver");
      dizq.dibujar(width/1.5, height/2, width/4, height/5, dizq.lines[12]);
      dder.dibujar(width/3, height/2, width/3, height/7, dder.lines[13]);
      dtext.dibujar(  width/1.2, height/1.5, 100, 100, dtext.lines[14]);
    } else if (pantalla==9) { 
      p.dibujarPant(7);
      Bizq.dibujar(10, 9, "siguiente");
      Bder.dibujar(8, 9, "volver");
      dder.dibujar(width/7, height/2.7, width/3.5, height/5, dder.lines[16]);
      dizq.dibujar(width/2, height/2.1, width/4, height/5, dizq.lines[17]);
      dtext.dibujar(  width/4, height/8, 100, 100, dtext.lines[15]);
    } else if (pantalla==10) { 
      p.dibujarPant(8);
      dtext.dibujar( width/1.4, height/8, 100, 100, dtext.lines[18]);
      Bt.dibujar(19, 10, "tierra");
      Bc.dibujar(20, 10, "cielo");
      Bm.dibujar(14, 10, "marte");
      estado="cielo1";
    }
    //tierra
    else if (pantalla==11) { 

      p.dibujarPant(9);
      Bizq.dibujar(12, 11, "siguiente");
      Bder.dibujar(4, 11, "volver");
      dizq.dibujar(width/7, height/12, width/4, height/7, dizq.lines[19]);
    } else if (pantalla==12) { 
      p.dibujarPant(10);
      Bizq.dibujar(13, 12, "siguiente");
      Bder.dibujar(11, 12, "volver");

      dtext.dibujar( (width/4)*3, height/13, 100, 100, dtext.lines[21]);
    } else if (pantalla==13) { 
      p.dibujarPant(16);
      Bt.dibujar(19, 13, "tierra");
      Bc.dibujar(20, 13, "cielo");
      Bm.dibujar(14, 13, "marte");
      dizq.dibujar(width/3, height/1.8, width/4, height/6, dizq.lines[23]);

      estado="tierra1";
    }
    //marte2
    else if (pantalla==14) { 

      p.dibujarPant(11);
      Bizq.dibujar(22, 14, "si los \n hipnotizaron");
      Bder.dibujar(11, 14, "no los \n hipnotizaron");
      dtext.dibujar(width/4, height/9, width/2, height/5, dtext.lines[24]);
      estado2="marte2";
    }
    //marte juego
    else if (pantalla==15) { 


      j.dibmovobject();
      j.ataque();
      if (j.ataque()=="perdi") {

        perder.play();

        pantalla=17;
      } else if (j.ataque()=="gane") {

        ganar.play();
        pantalla=16;
        j.estado="jugando";
      }
    } else if (pantalla==16) { 
      juego.stop();
      p.dibujarPant(12);
      Bizq.dibujar(21, 16, "creditos");
      Bder.dibujar(22, 16, "volver");
      dtext.dibujar( width/4, height/3, 0, 0, dtext.lines[31]);
      dtext.dibujar( width/4, height/4, 0, 0, dtext.lines[26]);
      j.estado="jugando";
    }
    //no le creen
    else if (pantalla==17) { 

      juego.stop();
      p.dibujarPant(13);
      Bizq.dibujar(18, 17, "siguiente");

      if (estado2.equals("marte2si")) {

        Bder.dibujar(22, 17, "volver");
      } else  if (estado2.equals("marte2")) {

        Bder.dibujar(14, 17, "volver");
      } else if (estado2.equals("tierra2")) {

        Bder.dibujar(19, 17, "volver");
      } else if (estado2.equals("cielo2")) {

        Bder.dibujar(20, 17, "volver");
      }

      dtext.dibujar(  width/4, height/4, 0, 0, dtext.lines[27]);
      j.estado="jugando";
    } else if (pantalla==18) { 
      p.dibujarPant(14);
      Bizq.dibujar(21, 18, "creditos");
      Bder.dibujar(17, 18, "volver");
      dtext.dibujar( width/4, height/7, 0, 0, dtext.lines[28]);
      dtext.dibujar( width/4, height-100, 0, 0, dtext.lines[31]);
    }
    //tierra
    else if (pantalla==19) {
      p.dibujarPant(11);
      Bizq.dibujar(17, 19, "siguiente");
      if (estado.equals("marte1")) {

        Bder.dibujar(7, 19, "volver");
      } else if (estado.equals("tierra1")) {

        Bder.dibujar(13, 19, "volver");
      } else if (estado.equals("cielo1")) {

        Bder.dibujar(10, 19, "volver");
      }


      dizq.dibujar(width/2.7, height/7, width/2, height/5, dizq.lines[29]);
      estado2="tierra2";
    }
    //cielo
    else if (pantalla==20) { 


      p.dibujarPant(11);
      Bizq.dibujar(17, 20, "siguiente");
      if (estado.equals("marte1")) {

        Bder.dibujar(7, 20, "volver");
      } else if (estado.equals("tierra1")) {

        Bder.dibujar(13, 20, "volver");
      } else if (estado.equals("cielo1")) {

        Bder.dibujar(10, 20, "volver");
      }
      dizq.dibujar(width/2.5, height/7, width/2, height/5, dizq.lines[30]);
      estado2="cielo2";
    } else if (pantalla==21) {
      background(0);
      fill(255);
      dtext.dibujar (width/2, height/2, width/2, height/2, dtext.lines[33]);
      Bizq.dibujar(1, 21, "reiniciar");
    } else if (pantalla==22) {
      juego.loop();
      background(37, 40, 80);
      dtext.dibujar (width/2, height/3, width/2, height/2, dtext.lines[34]);
      dtext.dibujar (width/2, height/2, width/2, height/2, dtext.lines[35]);
      Bizq.dibujar(15, 22, "jugar");

      estado2="marte2si";
    }
  }
  void botones() {
    if (Bizq.navegable(width-100-70, height-100, 70, 50) && (pantalla == Bizq.pa) ) {
      pantalla = Bizq.ps;
    } else if (Bder.navegable(100, height-100, 70, 50) && (pantalla == Bder.pa) ) {
      pantalla = Bder.ps;
    } else if (Bt.navegable(ubicacionX*3, ubicacionY*3, ancho, alto) && (pantalla == Bt.pa) ) {
      pantalla = Bt.ps;
    } else if (Bc.navegable(ubicacionX*2, ubicacionY*3, ancho, alto) && (pantalla == Bc.pa) ) {
      pantalla = Bc.ps;
    } else if (Bm.navegable(ubicacionX, ubicacionY*3, ancho, alto) && (pantalla == Bm.pa) ) {
      pantalla = Bm.ps;
    }
    if (j.estado=="jugando") {
      background(20, 20, 100);
      j.volver();
      j.perder=false;
      j.dibmovobject();
      j.ataque();
    }
  }
}
