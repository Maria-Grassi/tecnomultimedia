/*Alumna: Grassi Maria
nro de legajo: 88237/7
comision 1 
Profesor: José Luis Bugiolachi */

Pantallas p;

void setup() {
  size(800, 600);
  p= new Pantallas();

}
void draw() {
    size(800, 600);
  background(20, 20, 100);
p.dibPant();
}
void mousePressed() {
  p.Botones();

}
