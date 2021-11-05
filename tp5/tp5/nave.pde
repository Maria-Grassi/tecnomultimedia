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
    if (navex<width&&navex>0) {
      navex += random(-5, 5);
      return navex;
    } else {
      navex=random(0, width);
      return navex;
    }
  }
}
