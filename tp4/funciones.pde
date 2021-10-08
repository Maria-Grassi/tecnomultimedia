void titulo(){
  rectMode(CORNER);
  ubicacionYe =random(height);
  ubicacionXe = random(width);

     for(int i=0; i<=20; i++){
       colorr= random(5);
     tam = round(random(5));
     //color
     fill(r,g,b);
     r=round(random(171,230));
     g=round(random(224,230));
     b=round(random(176,230));
     
  ellipse(ubicacionXe, ubicacionYe,tam, tam );
}
     
   textAlign(CENTER);
   cohete= loadImage ("cohete.png");
    ubicacionX = frameCount*3;
    ubicacionY = height-width/5-frameCount*2;
    ancho = 20+frameCount/3;
    alto = ancho+ancho/2 +frameCount/3;
    fill(23, 16, 54);
    noStroke();
    rect(ubicacionX-20, ubicacionY-20, ancho+40, alto+40);
    image(cohete,ubicacionX, ubicacionY, ancho, alto);
    
       fill(255); 
       textSize(20);
  text("La tercer expedicion \n a Marte",  width/4, height/4);
  
  rectMode(CENTER);

     fill(255);
  rect(width-100-70,height-100,70,40,20);
        fill(23, 16, 54);
    text("avanzar", width-100-70,height-100);
  }
  
  void historia( int pantalla){
    textSize(15);
    int ubicacionXcohete, ubicacionYcohete, anchoC, altoC;
    if (pantalla==0){
       titulo() ;}
    else  if (pantalla==1){
    background(23, 16, 54);
    tierra= loadImage ("tierra.png");
    imageMode(CENTER);
    image(tierra,width/4-cont/10, height/2,width-frameCount*2,width-frameCount*2);
    cohete= loadImage ("cohete.png");
     imageMode(CORNER);
    ubicacionXcohete = 100+frameCount*3;
    ubicacionYcohete = height-width/5-frameCount*2;
    anchoC = 20+frameCount/3;
    altoC= anchoC+anchoC/2 +frameCount/3;
    image(cohete,ubicacionXcohete,ubicacionYcohete, anchoC, altoC);
    fill(255);
    text(lines[0],  width/4, height/4);
    
    boton();
  }
  else if (pantalla==2){
      imagen(1);
  
    text(lines[1] ,  width/4, height/6,5);
  
    boton();
  }
  else if (pantalla==3){
    imagen(2);
    
    globo(width/2,height/4, width/3,height/6);
    text(lines[2],  width/2, height/4.5);
    
    boton();
  }
    else if (pantalla==4){
      imagen(3);
        globo(width/2.2,height/7, width/4,height/7);
    text(lines[3],  width/2.2,height/7.5);
      globo((width/4)*3,height/5, width/3,height/7);
    text(lines[4],  (width/4)*3, height/5);
      globo((width/7)*6,height/3, width/4,height/7);
    text(lines[5],  (width/7)*6,height/3);
    difurcaciones();

  }
  //marte
  else if (pantalla==5){
      imagen(4);
     globo(width/1.3,height/2.6, width/3,height/6); 
    text(lines[6],  width/1.3, height/2.8);
    
    text(lines[7],  width/1.3,height/2.0);
     globo(width/2.1,height/2, width/4,height/7);
    text(lines[8],  width/2.1, height/2);
    text(lines[9],  width/1.3, height/1.5);
boton();
    
  }
  else if (pantalla==6){
      imagen(5);
    text(lines[10],  width/5, height/8);
    boton();
    
  }
  else if (pantalla==7){
      imagen(6);
    text(lines[11],  width/1.3, height/2);
    difurcaciones();
    lugar[1] = true; 
  }
  //cielo
    else if (pantalla==8){
       imagen(4);
        globo(width/1.5,height/3, width/4,height/5);
    text(lines[12],  width/1.5, height/3.2);
      globo(width/2,height/2, width/3,height/7);
    text(lines[13],  width/2, height/2);
    text(lines[14],  width/1.2, height/1.5);
boton();
    
  }
  else if (pantalla==9){
     imagen(7);
     
      text(lines[15],  width/4, height/8);
     globo(width/4,height/3, width/4,height/5);
 text(lines[16],  width/4, height/3.2);
  globo(width/2,height/2, width/4,height/5);
  text(lines[17],  width/2, height/2);
    boton();
    
  }
  else if (pantalla==10){
     imagen(8);
    text(lines[18],  width/1.3, height/8);
    difurcaciones();
    lugar[2] = true; 
  }
    //tierra
    else if (pantalla==11){
       imagen(9);
       globo(width/5.2,height/8, width/3,height/7);
   text(lines[19],  width/5.2, height/8);
   globo(width/1.8,height/8, width/4,height/8);
   text(lines[20],  width/1.8, height/8);
boton();
    
  }
  else if (pantalla==12){ //(width/4)*2.5
     imagen(10);
    text(lines[21], (width/4)*3, height/7);
    boton();
  }
  else if (pantalla==13){
     imagen(16);
     
          globo(width/2.2,height/2, width/3,height/6);
    text(lines[23],  width/2.2,height/2.1);
   text(lines[22], (width/4)*3,height/9);
    difurcaciones();
    lugar[0] = true; 
  }
  //marte2
    else if (pantalla==14){
     imagen(11);
     globo(width/2.7,height/7, width/2,height/5);
   text(lines[24], width/2.7,height/7);
    lugar[5]=true;
    rectMode(CENTER);
     fill(255);
  rect(width-100-70,height-100,130,40,20);
  rect(100,height-100,130,40,20);
        fill(23, 16, 54);
    text("si los hipnotizaron", width-100-70,height-100);
     text("no los hipnotizaron", 100,height-100);
     
  }
  
  //si creen
  else if (pantalla==15){
    imagen(15);
    text(lines[25],  width/4, height/4);
    boton();
  }
    
    else if (pantalla==16){
      imagen(12);
    text(lines[26],  width/4, height/4);
    text(lines[32],  width/4, height/3);

    boton(); 
  }
  
  //no creen
  else if (pantalla==17){
    imagen(13);
    text(lines[27],  width/4, height/4);
    boton();
    
  }
  else if (pantalla==18){
      imagen(14);
    text(lines[28],  width/4, height/4);
    text(lines[32],  width/4, height/4);
     boton();
  }
  //tierra
     else if (pantalla==19){
      imagen(11); 
      globo(width/2.7,height/7, width/2,height/5);
   text(lines[30], width/2.7,height/7);
 boton();
 lugar[4] = true;
    
  }
  //cielo
  else if (pantalla==20){
     imagen(11);
     globo(width/2.7,height/7, width/2,height/5);
   text(lines[31], width/2.7,height/7);
 
    boton();
    lugar[3] = true;
  }
  
 else if (pantalla==21){
   creditos();
 }
  

}  
  
  
  // marte 
  
void imagen( int p){
   imageMode(CORNER);
      pantalla= loadImage ("pantalla"+p+".png");
       image(pantalla,0, 0,  width, height); 
}
void boton(){
  rectMode(CENTER);

     fill(255);
  rect(width-100-70,height-100,70,40,20);
  rect(100,height-100,70,40,20);
        fill(23, 16, 54);
    text("avanzar", width-100-70,height-100);
     text("retroceder", 100,height-100);
}

void difurcaciones(){
imageMode(CENTER);
  marte= loadImage ("marte.png");
  tierra= loadImage ("tierra.png");
  cielo= loadImage ("cielo.png");
  
  ubicacionX =width/4;
    ubicacionY = height/4;
    ancho =90;
    alto = 90;
    fill(23, 16, 54);
    noStroke();
    image(marte,ubicacionX, ubicacionY*3, ancho, alto);
    image(cielo,ubicacionX*2, ubicacionY*3, ancho, alto);
    image(tierra,ubicacionX*3, ubicacionY*3, ancho, alto);
    text("cielo", ubicacionX*2, ubicacionY*3);
     text("tierra", ubicacionX*3, ubicacionY*3);
      text("marte", ubicacionX, ubicacionY*3);
      

} 
void creditos(){
  background(0);
  fill(255);
  text ("Basado en: \n La tercera expedición \n Ray Bradbury\n Realizado por:\n Grassi María \n 88237/7\n En la materia: \n Tecnologia Multimedial 1 \n Comisión 1 \n Profesor: Jose Luis Bugiolachi", width/2, height/2);

  
    rectMode(CENTER);

     fill(255);
  rect(width-100-70,height-100,70,40,20);
        fill(23, 16, 54);
    text("reiniciar", width-100-70,height-100);
    
}
  
void globo( float xg,float yg, float  wg, float hg ){
  fill(0);
  ellipse(xg, yg,wg,hg);
  triangle(xg-wg/2.2, yg + hg/3, xg-wg/3.5, yg , xg-wg/2, yg);
   fill(255);
}  
