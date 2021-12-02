class Dialogo {
  float xg, yg, wg, hg;
  String[] lines = { "Una tripulación con 15 astronautas\n parte rumbo a Marte", 
    "El oxigeno es respirable \n Las casas son similares a la tierra  ", 
    "John y Jose acompáñenme \n  a recorrer la zona \n  Ustedes quédense acá  ", 
    "Mira capitán \n   en esa casa vive una \n señora ", 
    "Toca timbre \n vamos  a hablar con ella ", 
    "¿Capitan no cree que \n estamos en la tierra?", 
    "Hola señora \nquisiéramos saber como llego ", 
    " Sale el Marido ", 
    " Vinimos en La primer\n expedición hace 40 años ", 
    "Pasan largo tiempo charlando\n con la pareja \nse despiden", 
    "Salen se encuentran con un cartero \n Conversan un largo tiempo, en el transcurso \n cuenta que su abuelo habia venido a Marte", 
    "Como que vino su abuelo  \n si la primer expedición fue hace 40 años \n y dice que su abuelo vino a los \n 20 años y el ya tiene 50", 
    "¡Hola sos la abuela Tata!\n ¿Cuanto tiempo? \n ¿C Como llegaste aca?", 
    " No lo sé hijo, Dios nos da \notra oportunidad para vivir acá ", 
    "El capitán regresa a la nave", 
    "Mientras tanto en la nave  \n Todos los tripulantes se encuentran  \n con sus familiares ", 
    "Me pueden explicar que estan  \n haciendo \nDesobedecieron las ordenes ", 
    "Pero hermano baja la guardia  \n vení a casa a comer ", 
    "Va a comer a casa de su familia  charla con sus padres,  \n no recuerda que su madre tuviera esa voz lo cual se plantea   \n si en verdad es su familia y donde esta realmente", 
    "¡Hola! ¿Nos podría decir \n que planeta es donde \n estamos?", 
    "En la tierra donde más", 
    "salen de la casa y ven un almanaque que dice 1977, \n ven pasar a sus padres de jóvenes  ", 
    "Se cruzan a la abuela de John que murió en el '66 ", 
    "Pero que hace mi abuela si\n estamos en el 77 \n ya había muerto ", 
    "El capitán vuelve alarmado a la Nave \n Le comunica a la tripulación que han sido hipnotizados", 
    "Ya éstan todos en la nave, \n listos para despegar", 
    "Llegan a la tierra \n Son la primer nave en regresar", 
    " Al día siguiente \n toda la tripulación murió ", 
    "Los marcianos entierran a los tripulantes \n se convierten en seres deformes ", 
    "Muchachada debemos encontrar la manera de volver al 2000 \n Mañana a primera hora debemos encontrar una estrategia", 
    " Como habran notado muchachos la expedicion fallo\n vayan a disfrutar con su familia", 
    "Fin", 
    "La tercer expedicion \n a Marte", 
    "Basado en: \n La tercera expedición \n Ray Bradbury\n Realizado por:\n Grassi María \n 88237/7\n En la materia: \n Tecnologia Multimedial 1 \n Comisión 1 \n Profesor: Jose Luis Bugiolachi", 
    "Escapa de los marcianos", 
    "Los marcianos nos bombardean para impedirnos volver \n Tu mision es ayudar a la tripulacion a escapar  \n Con las flechas del teclado vas a direccionar el \n movimiento de la nave hasta llegar \n al otro extremo de la pantalla \n Si estas listo presiona 0 y luego a jugar"};
  String dialogos, direccion;
  Dialogo(String direccion_ ) {
    direccion=direccion_;
  }
  void dibujar( float xg_, float yg_, float  wg_, float hg_, String dialogos_  ) {

    textSize(13);
    xg=xg_;
    yg=yg_; 
    wg=wg_;
    hg=hg_;
    dialogos=dialogos_;

    fill(0);

    if (direccion.equals("izq")) {

      triangle(xg-wg/2.2, yg + hg/3, xg-wg/3.5, yg, xg-wg/2, yg);
      ellipse(xg, yg, wg, hg);
    } else if (direccion.equals("der")) {
      triangle(xg+wg/2.2, yg + hg/3, xg+wg/3.5, yg, xg+wg/2, yg);
      ellipse(xg, yg, wg, hg);
    } else if (direccion.equals("text")) {
      textSize(15);
    }
    fill(255);   
    textAlign(CENTER, CENTER);
    text(dialogos, xg, yg);
  }
}
