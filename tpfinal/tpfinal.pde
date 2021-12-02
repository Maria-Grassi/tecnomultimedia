/*
Alumna: Grassi Maria
 Comision 1
 Profesor Jose Luis Bugiolachi*/
//sonido
import processing.sound.*;
SoundFile juego, perder, ganar;
//tp final 
Historia h;
void setup() {
    size(800, 600);
  h= new Historia();
    //sonido
  juego = new SoundFile(this, "juego.mp3");
  perder = new SoundFile(this, "perder.mp3");
  ganar = new SoundFile(this, "ganar.mp3");


}
void draw() {
  h.dibujar();
}
void mousePressed() {
  h.botones();
}
