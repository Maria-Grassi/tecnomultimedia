class Naves {
  float navex;
  int navey;
  PImage nave;

  Naves(float navex_, int navey_) {
    navex= navex_;
    navey=navey_;

    nave= loadImage ("marciano.png");
  }
  void dibNave() {
    imageMode(CENTER);
    image(nave, navex, navey, 100, 100);
  }
  float movNavex() {
    if (navex<width&&navex>50) {
      navex += random(-5, 5);
      return navex;
    } else {
      navex=random(50, width);
      return navex;
    }
  }
}
