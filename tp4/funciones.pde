void titulo() {
  rectMode(CORNER);
  ubicacionYe =random(height);
  ubicacionXe = random(width);
  colorr= random(5);
     tam = round(random(5));
     //color
     fill(r,g,b);
     r=round(random(171,230));
     g=round(random(224,230));
     b=round(random(176,230));
     ellipse(ubicacionXe, ubicacionYe,tam, tam );
     
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
  text("La tercer expedicion \n a Marte",  width/4, height/4);
  
  rectMode(CENTER);

     fill(255);
  rect(width-100-70,height-100,70,40,20);
        fill(23, 16, 54);
    text("avanzar", width-100-70,height-100);
  };
  
  void historia( int pantalla){
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
    text("Una tripulacion con 15 astronautas\n parte rumbo a Marte",  width/4, height/4);
    
    boton();
  }
  else if (pantalla==2){
      imagen(1);
  
    text("El oxigeno es respirable \n Las casas son similares a la tierra  ",  width/4, height/4);
  
    boton();
  }
  else if (pantalla==3){
    imagen(2);
    text("\n John y Jose acompañenme a recorrer la zona Ustedes quedense aca  ",  width/4, height/4);
    
    boton();
  }
    else if (pantalla==4){
      imagen(3);
    text("Mira Capitan es esa casa vive una    señora \n Toca timbre vamos a hablar con ella \n ¿Capitan no cree que estamos en la tierra?",  width/4, height/4);
    difurcaciones();

  }
  //marte
  else if (pantalla==5){
      imagen(4);
    text("Hola señora quiesieramos saber como llego \n  Sale el Marido Vinimos en La primer expedición hace 40 años  \n pasan largo tiempo charlando con la pareja se despiden",  width/4, height/4);
boton();
    
  }
  else if (pantalla==6){
      imagen(5);
    text("Salen se encuentran con un cartero \n Conversan un largo tiempo mientras conversan cuenta que su abuelo",  width/4, height/4);
    boton();
    
  }
  else if (pantalla==7){
      imagen(6);
    text("Capitan: Como que vino su abuelo  \n si la primer expedicion fue hace 40 años y dice que su abuelo vino a los 20 años y el ya tiene 50",  width/4, height/4);
    difurcaciones();
  }
    else if (pantalla==8){
       imagen(4);
    text("¡Hola sos la abuela Tata! ¿Cuanto tiempo? No lo se hijo, Dios nos da otra oportunidad para vivir aca \n El capitan regresa a la nave",  width/4, height/4);
boton();
    
  }
  else if (pantalla==9){
     imagen(7);
    text("Mientras tanto en la nave Todos los tripulantes se encuentran con sus familiares \n Me pueden explicar que estan haciendo Desobedecieron las ordenes  \n Pero hermano baja la guardia veni a casa a comer ",  width/4, height/4);
    boton();
    
  }
  else if (pantalla==10){
     imagen(8);
    text("Va a comer a casa de su familia charla con sus padres,  \n no recuerda que su madre tuviera esa voz lo cual se plantea   \n si en verdad es su familia y donde esta realmente",  width/4, height/4);
    difurcaciones();
  }
    
    else if (pantalla==11){
       imagen(9);
    text("¡Hola! ¿Me podria decir que planeta es donde estamos? \n En la tierra donde mas",  width/4, height/4);
boton();
    
  }
  else if (pantalla==12){
     imagen(10);
    text("salen de la casa y ven un almanaque que dice 1977, ven pasar a sus padres de jovenes  ",  width/4, height/4);
    boton();
    
  }
  else if (pantalla==13){
     imagen(16);
    text("Se crusan a la abuela de John que murio en el '66 \n Pero que hace mi abuela si estamos en el 77 ya habia muerto ",  width/4, height/4);
    difurcaciones();
  }
    else if (pantalla==14){
      imagen(11);
    text("El capitan cree vuelve alarmado a la Nave Le comunica a la tripulacion q han sido hipnotizados",  width/4, height/4);
    boton();
    
  }
  else if (pantalla==15){
    imagen(15);
    text("Ya estan todos en la nave listos para despegar",  width/4, height/4);
    boton();
  }
    
    else if (pantalla==16){
      imagen(12);
    text("Llegan a la tierra \n Son la primer nave en regresar \n FIN",  width/4, height/4);
 creditos();
    
  }
  else if (pantalla==17){
    imagen(13);
    text(" Al dia siguiente \n toda la tripulacion murio ",  width/4, height/4);
    boton();
    
  }
  else if (pantalla==18){
      imagen(14);
    text("Los marcianos entierran a los tripulantes y se convierten en seres deformes \n FIN",  width/4, height/4);
     creditos();
  }
     else if (pantalla==19){
    text("Capitan: Muchachada debemos encontrar la manera de volver al 2000 \n Mañana a primera hora debemos encontrar una estrategia",  width/4, height/4);
    n= 17;
 boton();
    
  }
  else if (pantalla==20){
    text(" Como habran notado muchachos la expedicion fallo\n vayan a disfrutar con su familia  ",  width/4, height/4);
   n= 17;
    boton();
    
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
    ubicacionY = height/3;
    ancho =90;
    alto = 90;
    fill(23, 16, 54);
    noStroke();
    image(marte,ubicacionX, ubicacionY*2, ancho, alto);
    image(cielo,ubicacionX*2, ubicacionY*2, ancho, alto);
    image(tierra,ubicacionX*3, ubicacionY*2, ancho, alto);
    text("cielo", ubicacionX*2, ubicacionY*2);
     text("tierra", ubicacionX*3, ubicacionY*2);
      text("marte", ubicacionX, ubicacionY*2);
      

} 
void creditos(){
  background(23, 16, 54);
  String[] datos = {"Basado en: \n La tercera expedición \n Ray Bradbury","Realizado por:\n Grassi María \n 88237/7","En la materia: \n Tecnologia Multimedial 1 \n Comisión 1 \n Profesor: Jose Luis Bugiolachi"};
  text (datos[p], width/2, height/2);
  if (cont%30==0){
  p++;}
  
    rectMode(CENTER);

     fill(255);
  rect(width-100-70,height-100,70,40,20);
        fill(23, 16, 54);
    text("reiniciar", width-100-70,height-100);
}
  
