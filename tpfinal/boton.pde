class Boton {
  int pa, ps;
  float bx, by, bancho, balto;
  String tipo, texto, tipo2;
  PImage lugar;
  boolean presionado;
  Boton(float bx_, float by_, float bancho_, float balto_, String posicion_, String tipo_) {
    bx=bx_;
    by= by_;
    bancho=bancho_;
    balto=balto_;
    tipo2=tipo_;
    tipo=posicion_;
  }
  void dibujar(int ps_, int pa_, String texto_) {
    textAlign(CENTER);
    textSize(11.3);
    ps= ps_;
    pa= pa_;
    texto=texto_;
    fill(255);
    if (tipo.equals("avance retroceso")) {
      rectMode(CENTER);
      rect(bx, by, bancho, balto, 10);
    } else if (tipo.equals("elegir")) {
      lugar =loadImage(tipo2+".png") ;
      imageMode(CENTER);
      image(lugar, bx, by, bancho, balto);
    }
    fill(0);
    text(texto, bx, by );
  }
  boolean navegable(float bx_, float by_, float bancho_, float balto_) {
    bx=bx_;
    by= by_;
    bancho = bancho_;
    balto = balto_;
    if (tipo.equals("avance retroceso")) {
      presionado = mouseX>bx-bancho/2 && mouseX<bx+bancho/2 && mouseY>by-balto/2 && mouseY <by+balto/2 == true;
    } else if (tipo.equals("elegir")) {
      presionado = dist(bx, by, mouseX, mouseY)<bancho/2 == true;
    }
    return presionado;
  }
}
