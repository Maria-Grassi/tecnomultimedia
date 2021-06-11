
//Grassi Maria 
// nro de legajo: 88237/7

PImage hoja, copo, elemento, frozen, escarcha;
PFont fuente;
float alto, altura, ancho, ubicacionX, ubicacionY, colorr, transparencia, dist, ubicaciontextoY,ubicaciontextoX,cant,tam;
int colorhoja, escarchita, tiempo,r,g,b,nelemento;
int x1, x2, x3, y1, y2, y3;
String text;
String texto;
float tamano;
void setup(){
size (800, 500);
background(0);
imageMode(CENTER);
rectMode(CENTER);
textAlign(CENTER);
 fuente = loadFont ("text.vlw");
 
}

void draw(){
  //pantalla 1 rombos de los elementos y titulo
  if(frameCount<150){
      if(frameCount<80){
        background(0);
    frozen = loadImage ("logo.png");
    ubicacionX = width/2;
    ubicacionY = height/2;
    ancho = frameCount*6;
    alto = ancho/2.29;
    image(frozen,ubicacionX, ubicacionY, ancho, alto);}
    colorr= random(3);
     colorhoja = round(colorr)+1;
    elemento = loadImage("elemento"+colorhoja+".png");
    ubicacionY =random(height);
  ubicacionX = random(width);
  ancho=random(30);
  alto=ancho*3;
  if(ubicacionY<150 || ubicacionY>350){
  image(elemento,ubicacionX, ubicacionY, ancho, alto);}
  
}else if(frameCount==150){background(0);}
//direccion
else if(frameCount>150 && frameCount<250){
  escarcha= loadImage("escarcha.png");
    tint(map(frameCount, 150, 200, 0, 255));
        image(escarcha,width/4,height/2,250,250);
        image(escarcha,width/4*3,height/2,250,250);
   textFont (fuente,20);
  text("DIRECTED BY \n Chirs Buck \n Jennifer Lee",  width/2, height/2);}
else if(frameCount==250){background(0);}
//pantalla 3 circulos 
 else if(frameCount>250 && frameCount<650){
   cant= map(frameCount, 1200, 1400, 0, 255);
  
  ubicacionY =random(height);
  ubicacionX = random(width);
  if(ubicacionX<300||ubicacionX>500||ubicacionY<150||ubicacionY>350){
    colorr= random(5);
     tam = round(random(5));
     //color
     fill(r,g,b);
     r=round(random(171,230));
     g=round(random(224,230));
     b=round(random(176,230));
     ellipse(ubicacionX, ubicacionY,tam, tam );
     };
    
  strokeWeight(30);
  tiempo=round((frameCount-250)/50)+1;
    fill(0);
  if(tiempo<=3){ texto = "Story inspired by \n The snow queen \n By Hans Cristian Anderson";nelemento=1;}

      else if(tiempo==4){ rect(width/2,height/2,250,200);
                     texto= "Story by \n Jennifer Lee";
                      nelemento=2;}
      else if(tiempo==5){ rect(width/2,height/2,200,200);
                       texto= "Story by \n Chirs Buck";
                        nelemento=3;}
      else if(tiempo==6){ rect(width/2,height/2,200,200);
                       texto= "Story by \n Marc E Smith"; 
                       nelemento=4;} 
      else if(tiempo==7){ rect(width/2,height/2,200,200);
                        texto= "Story by \n Kristen Anderson Lopez"; 
                         nelemento=1;}
      else if(tiempo==8){ rect(width/2,height/2,200,200);
                         texto= "Story by \n Robert Lopez"; 
                          nelemento=2;} 
    
    elemento = loadImage("elemento"+nelemento+".png");
    ubicaciontextoY =height/2-50;
    ubicaciontextoX = width/2;
    image(elemento,ubicaciontextoX, ubicaciontextoY+100, 10, 30);
    textFont (fuente,20);
    fill(255);
  text(texto,ubicaciontextoX  , ubicaciontextoY);
  
  ;} // pantalla copos 
  
else if(frameCount==650){background(0);}
//pantalla 3 copos
else if(frameCount>650 && frameCount<1000){
  tiempo=round((frameCount-650)/75)+1;
  copo = loadImage("copo.png");
  ancho= 134;
  alto= 64;
  x1=200;
  x2=400;
  x3=600;
  y1=150;
  y2=300;
  y3=450;
  if(tiempo==1){ ubicacionX= x2;}
  else if(tiempo==2 ||tiempo==4){ubicacionX=x1;}
  else if(tiempo==3 ||tiempo==5){ubicacionX=x3;}
  if(tiempo==1){ubicacionY= y2;}
  else if(tiempo==2 ||tiempo==3){ubicacionY= y1;}
  else if(tiempo==4 ||tiempo==5){ubicacionY= y3;}
  ubicaciontextoY= ubicacionY -100;
  image(copo,ubicacionX,ubicacionY,ancho,alto);
   textFont (fuente,20);
   if(tiempo==1){ texto = "Produced by \n Peter Del Vecho";}
   else if(tiempo==2){ texto= "Screen play by \n Jennifer Lee";}
   else if(tiempo==3){ texto= "Edited by \n Jeff Draheim ";}
   else if(tiempo==4){ texto= "Executive producer\n Byron Howard";}
   else if(tiempo==5){ texto= "Asociate producer \n Nicole P. Hearon";}
  text(texto,  ubicacionX, ubicaciontextoY);
}else if(frameCount==1000){background(0);}


    else if(frameCount>1000 && frameCount<1350){
  
  background(0,transparencia);
  ubicacionY =random(height);
  ubicacionX = random(width);
    colorr= random(3);
     colorhoja = round(colorr)+1;
  hoja = loadImage("hoja"+colorhoja+".png");
  image(hoja,ubicacionX, ubicacionY, 35, 35);
  strokeWeight(30);
 
  fill(255);
  ubicaciontextoY = map(frameCount, 1000,1300, height, -100 );
   textFont (fuente,20);
  text("Original songs by \n Kristen Anderson Lopez \n Robert Lopez \n \n Original score composed by \n Christhope Beck ",  width/2, ubicaciontextoY);
    if (frameCount>1300&& frameCount<1350){
      background((frameCount-1300)*1.25); 
      fill(255,0,0);
}}
    
 
 if(frameCount>1350){
   ellipse(width-50,height-50,40,40);
      if (mouseX>width-70 && mouseX<width-30 && mouseY>height-70 && mouseY<height-30){
        if(mousePressed){
  frameCount=0;
  fill(255);}
  println(mouseX,mouseY);

}
 }}
