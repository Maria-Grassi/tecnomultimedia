class Boton{
int bx, by, pa, ps, bancho, balto;
String tipo,texto, tipo2;
PImage lugar;

Boton(int bx_, int by_, int bancho_, int balto_){
bx=bx_;
by= by_;
bancho=bancho_;
balto=balto_;



}
void dibujar(int ps_, int pa_,String texto_){
ps= ps_;
pa= pa_;
texto=texto_;
textAlign(CENTER);
fill(70,40,90);
  rectMode(CENTER);
  rect(bx,by,bancho,balto,10);
  fill(255,40,90);
text(texto,bx,by);
}
 
boolean navegable(int bx_, int by_, int bancho_, int balto_){
    bx=bx_;
    by= by_;
    bancho = bancho_;
    balto = balto_;
    boolean presionado = mouseX>bx-bancho/2 && mouseX<bx+bancho/2 && mouseY>by-balto/2 && mouseY <by+balto/2 == true; 
    return presionado;
}
}
