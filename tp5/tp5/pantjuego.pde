class Pantjuego{
   Boton b;
 
   int w;
  Pantjuego(){;

  b=new Boton(width/2 ,(height/3)*2, 200, 50);
}
 void dib(int p_){
   w=p_;
    if(w==1){
fill(255, 20, 100);
rect(width/2,height/2,width/2,height/2);
fill(255);
textSize(25);
text("PERDISTE",width/2,height/3);
 b.dibujar(2, 3,"REINICIAR");
}
else if(w==2){
fill(25, 250, 100);
rect(width/2,height/2,width/2,height/2);
fill(255);
textSize(25);
text("GANASTE",width/2,height/3);
textSize(15);
 text("Salvaste a los astronautas \n ¿Quieres volver a jugar?",width/2,height/2); 
 b.dibujar(2, 4,"REINICIAR");
}}

    }
  
