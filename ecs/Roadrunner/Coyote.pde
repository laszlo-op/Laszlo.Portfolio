class Coyote {
  int x, y;
  PImage f1;
  Coyote () {
    x = width/2;
    y = height-100;
    f1 = loadImage("coyote (1).png");
  }


  void display () {
    imageMode(CENTER);
    f1.resize(100, 100);
    image (f1, x, y);
  }

  void move (char dir) {
    if (dir == 'u') {
      y = y - 50;
    } else if (dir == 'd') {
      y = y +50;
    } else if (dir == 'l') {
      x = x - 50;
    } else if (dir == 'r') {
      x = x + 50;
    }
  }
}
