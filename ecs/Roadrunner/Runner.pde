class Runner {
  int x, y;
  PImage l1;


  Runner () {
    x = int(random(width));
    y = int(random(400,580));
    l1 = loadImage("roadrunner1.png");
  }

  void display () {
    imageMode(CENTER);
    l1.resize(100, 100);
    image (l1, x, y);
  }

  void move() {
     x = x-2;
    if (x<-50) {
      x =(width+100);
      y =int(random(height));
     
    }
  }
}
