/*
Comision 1
Tecnologia Multimedial 1 
Alumna: Maria Grassi
nro de Legajo: 88237/7
video: https://youtu.be/xdtyHL181Ws
*/

int  tam, n, cont, p;
PImage cohete, cielo, tierra, marte;
float ubicacionX, ubicacionY, ubicacionXe, ubicacionYe, ancho, alto, r,g,b,colorr;
PImage pantalla;
boolean[] lugar = new boolean[6];

String[] lines = { "Una tripulación con 15 astronautas\n parte rumbo a Marte",
"El oxigeno es respirable \n Las casas son similares a la tierra  ",
"John y Jose acompáñenme \n  a recorrer la zona \n  Ustedes quédense acá  ",
"Mira capitán \n   en esa casa vive una  señora ",  
"Toca timbre vamos a hablar con ella ",  
"¿Capitan no cree que \n estamos en la tierra?",
"Hola señora \nquisiéramos saber como llego ",
" Sale el Marido ",  
" Vinimos en La primer\n expedición hace 40 años ", 
"Pasan largo tiempo charlando\n con la pareja \nse despiden",  
"Salen se encuentran con un cartero \n Conversan un largo tiempo, en el transcurso \n cuenta que su abuelo habia venido a Marte",
"Como que vino su abuelo  \n si la primer expedición fue hace 40 años \n y dice que su abuelo vino a los 20 años y el ya tiene 50",
"¡Hola sos la abuela Tata!\n ¿Cuanto tiempo? \n ¿C Como llegaste aca?",
" No lo sé hijo, Dios nos da \notra oportunidad para vivir acá ", 
"El capitán regresa a la nave",
"Mientras tanto en la nave  \n Todos los tripulantes se encuentran  \n con sus familiares ",  
 "Me pueden explicar que estan  \n haciendo \nDesobedecieron las ordenes ",
 "Pero hermano baja la guardia  \n vení a casa a comer ",
"Va a comer a casa de su familia  charla con sus padres,  \n no recuerda que su madre tuviera esa voz lo cual se plantea   \n si en verdad es su familia y donde esta realmente",
"¡Hola! ¿Nos podría decir \n que planeta es donde estamos?", 
"En la tierra donde más",
"salen de la casa y ven un almanaque que dice 1977, \n ven pasar a sus padres de jóvenes  ", 
"Se cruzan a la abuela de John que murió en el '66 ",
"Pero que hace mi abuela si\n estamos en el 77 ya había muerto ",
"El capitán vuelve alarmado a la Nave \n Le comunica a la tripulación que han sido hipnotizados",
"Ya éstan todos en la nave, \n listos para despegar",
"Llegan a la tierra \n Son la primer nave en regresar",
" Al día siguiente \n toda la tripulación murió ",
"Los marcianos entierran a los tripulantes \n se convierten en seres deformes ","Muchachada debemos encontrar la manera de volver al 2000 \n Mañana a primera hora debemos encontrar una estrategia",
"Muchachada debemos encontrar la manera de volver al 2000 \n Mañana a primera hora debemos encontrar una estrategia",
" Como habran notado muchachos la expedicion fallo\n vayan a disfrutar con su familia",
"Fin"};
 boolean creditos=false;
void setup() {
  size(800, 600);
  background(23, 16, 54);
  n=0;
  
  lugar[0] = false; //tierra
  lugar[1] = false; //marte
  lugar[2] = false; //cielo
}

void draw() {


 historia(n);}

 void mousePressed(){
   
  //siguiente
 if (mouseX>width-205 && mouseX<width- 135 && mouseY>height-120 && mouseY<height-80){   
   if(n==4){n=4;}
     else if (n==7){n=7;}
   else if (n==10){n=10;}
   else if (n==13){n=13;}
   else if(n==18||n==16){
n=21;
background(23, 16, 54);
   }else if(n==19||n==20){n=17;
   }else if(n==22){n=0;
   frameCount=0;
   background(0);
   }
   else{
   n++;}
          fill(255);
  }


// retroceder

if (mouseX> 65 && mouseX<135 && mouseY>height-120 && mouseY<height-80){    
  if(n==0){n=0;}
  else if (n==4){n=4;}
     else if (n==7){n=7;}
   else if (n==10){n=10;}
   else if (n==13){n=13;}
   else if (n==21){n=21;}
  else if(n==8||n==5|| n==11){n=4;}
  
  //tierra
  else if (n==19){ 
    if (lugar[0]==true){n=13;
                       }
    else if (lugar[1]==true){n=7;
                      }
    else if (lugar[2]==true){n=10;
    }}
   
     //cielo
     else if (n==20){ 
    if (lugar[0]==true){n=13;
                     }
    else if (lugar[1]==true){n=7;
                      }
    else if (lugar[2]==true){n=10;
                      }}        
   
  //regreso a la pantalla antes de que los maten
     else if (n==17){ 
    if (lugar[4]==true){n=19;
                       }
    else if (lugar[3]==true){n=20;
                      } 
    else if (lugar[5]==true){n=14; } }
  else if(n==14){n=17;
   }
  else{  n--;}
             fill(255);
  }
  if(n==4||n==7||n==10||n==13){
  //marte
if ( mouseX> width/4-45 && mouseX<width/4+45 && mouseY>(height/4)*3-45 && mouseY<(height/4)*3+45){
  if (n==4){n=5;}
  else if (n==7||n==10||n==13){n=14;}
 }
 
  //cielo
if ( mouseX> (width/4)*2-45 && mouseX<(width/4)*2+45 && mouseY>(height/4)*3-45 && mouseY<(height/4)*3+45){
  if (n==4){n=8;}
  else if (n==7||n==10|| n==13){n=20;};
 }

  //tierra
if ( mouseX> (width/4)*3-45 && mouseX<(width/4)*3+45 && mouseY>(height/4)*3-45 && mouseY<(height/4)*3+45){
   if (n==4){n=11;}
  else if (n==7||n==10 ||n==13){n=19;}
}
}}
