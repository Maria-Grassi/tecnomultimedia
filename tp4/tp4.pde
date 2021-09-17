int  tam, n, cont, p;
PImage cohete, cielo, tierra, marte;
float ubicacionX, ubicacionY, ubicacionXe, ubicacionYe, ancho, alto, r,g,b,colorr;
PImage pantalla;

void setup() {
  size(800, 600);
  background(23, 16, 54);
  n=0;
  }

void draw() {
 
  cont=frameCount%60;

 historia(n); 
}
 void mousePressed(){
   
  //siguiente
 if (mouseX>width-205 && mouseX<width- 135 && mouseY>height-120 && mouseY<height-80){   
          n++;
          fill(255);
  }


// retroceder
if (mouseX> 65 && mouseX<135 && mouseY>height-120 && mouseY<height-80){    
  
          n--;
             fill(255);
  }
  if (historia(n)==7
  //marte
if ( mouseX> width/4-45 && mouseX<width/4+45 && mouseY>(height/7)*6-45 && mouseY<(height/7)*6+45){
  if (n==4){n=5;}
  else if (n==8||n==10||n==13){n=14;}
 }
 
  //cielo
if ( mouseX> (width/4)*2-45 && mouseX<(width/4)*2+45 && mouseY>(height/7)*6-45 && mouseY<(height/7)*63+45){
  if (n==4){n=8;}
  else if (n==7||n==10|| n==14){n=19;};
 }

  //tierra
if ( mouseX> (width/4)*2-45 && mouseX<(width/3)*3+45 && mouseY>(height/7)*6-45 && mouseY<(height/7)*6+45){
   if (n==4){n=11;}
  else if (n==8||n==10 ||n==13){n=25;}
}
}
