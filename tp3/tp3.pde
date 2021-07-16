/*
Trabajo Practico nro 3
Ilusión Óptica Interactiva
Comision: 1 
Profesor: José Luis Bugiolachi
Alumna: Grassi Maria
nro de Legajo: 88237/7 
video: https://youtu.be/dU7xD3jUAac

*/


float  xCirculo, yCirculo ,tiempo, viejaposY,viejaposX, ancho, alto, gInicio, gFin;
void setup(){
size (800,600);
stroke(0);
xCirculo=width/2 ;
yCirculo=height/2 ;
surface.setResizable(true);}

void draw(){
  background(255);
  
  tiempo=frameCount/3;
  int i,j;
for (i = 0; i <7+ tiempo; i++) {
  for (j = 0; j < 30 ; j++) {
    
    //relleno del ultimo circulo
if (i==6+tiempo ){
  fill(0);}
  //relleno de los arcos cuando tiempo es par
  else if (tiempo%2==0) {
  if(j%2==0 && i%2==0){
  fill(0);}
  else if (j%2==1 && i%2==1) {
  fill(0);}
  else {fill(255);}
  }
  //relleno de los arcos cuando tiempo es impar
  else  {
    if(j%2==1 && i%2==0){
  fill(0);}
  else if (j%2==0 && i%2==1) {
  fill(0);}
else {fill(255);}}

  //dibujo de los arcos 
  ancho=(width*3)/(i+1);
  alto=(height*3)/(i+1);
    //grado donde incia y finaliza el arco 
  gInicio=(j-1)*(PI/15);
  gFin=j*(PI/15);
arc(xCirculo, yCirculo,ancho,alto,gInicio,gFin);
}}
//boton de reinicio
fill(255,0,0);
ellipse(width-50,height-50,40,40);
      
        if(mousePressed== true){
          //boton de reinicio accionado
          if (mouseX>width-70 && mouseX<width-30 && mouseY>height-70 && mouseY<height-30){
  frameCount=1;
  i=0;
   j=0;
   xCirculo=width/2 ;
  yCirculo=height/2 ;

  }
  //modifica el punto centrar de la ilucion optica
  else {
   tiempo=1;
   i=0;
   j=0;
   viejaposY=yCirculo;
   viejaposX=xCirculo;  
  yCirculo=map(tiempo,0,20,viejaposY,mouseY);
  xCirculo=map(tiempo,0,20,viejaposX,mouseX);
}
}}
