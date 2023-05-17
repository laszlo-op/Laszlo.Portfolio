// Isabel Khachatryan, Laszlo | April 26 2023 | RoadRunner Game`
boolean play;
int x, y, tarX, tarY;
Coyote fred;
Runner runner1;
PImage bg;
PImage SS;
PFont font;
int score;
int lives;
float d, RunnerDist;

void setup () {
  size(1230,600);
  play = false;
  fred = new Coyote();
  runner1= new Runner();
  bg = loadImage ("bg3.jpeg");
  SS = loadImage ("startscreen1.png");
  font = createFont("ARCADECLASSIC.TTF",48);
  score = 0;
  lives = 5;
}

void draw() {
  println(RunnerDist);
  if (play == false) {
    startScreen();
  } else {
    RunnerDist = dist(fred.x, fred.y, runner1.x, runner1.y);
    background(128);
    drawBackground();
    infoPanel();
    fred.display();
    runner1.display();
    runner1.move();
 if (runner1.x<-48){
   lives  = lives -1;
   
 }
    if (RunnerDist<50) {
      score = score + 100;
      runner1.x = int(random(width));
      runner1.y = int(random(400,580));
      //runner1.x = Runner.x;
    }
     if (lives<1) {
      gameOver();
    }
  }
}


//fred.move(mousex,200);


void keyPressed() {
  if (key == 'w' || key == 'W') {
    fred.move('u');
  } else   if (key == 's' || key == 'S') {
    fred.move('d');
  } else if (key == 'a' || key == 'A') {
    fred.move('l');
  } else if (key == 'd' || key == 'D') {
    fred.move('r');
  } else if (key == ' ') {
    play = true;
  }
}

//if (key == CODED) {
//  if (keyCode == UP) {
//    y = y - 15;
//  } else if (keyCode == DOWN) {
//    y = y + 15;
//  } else if (keyCode == RIGHT) {
//    x = x + 15;
//  } else if (keyCode == LEFT) {
//    x = x - 15;
//  }
//}
//if (x>width) {
//  x = 0;
//} else if (x<0) {
//  x= height;
//} else if (y<0) {
//  y = height;
//} else if (y>height) {
//  y = 0;
//}


void drawBackground () {
  imageMode(CORNER);
  image(bg, 0, 0);
}

void startScreen() {
  image(SS,0,0);
  fill(255);
  textSize(40);
  textAlign(CENTER);
  fill(#0A0A0A);
  textFont(font);
  text("Welcome  to  RoadRunner!", width/2, 330);
  text("You  have  5   Lives", width/2, 370);
  text("Press  space  bar  to  start", width/2, 410);
  text("By  Izzy  and  Laszlo", width/2,450);
}

void gameOver() {
  runner1.display();
  fill(0);
  textSize(70);
  textAlign(CENTER);
  text("GAME OVER", width/2, 200);
  text("Score " + score, width/2, 260);
  text("Lives " + lives, width/2, 320);
  noLoop();
}

void infoPanel () {
  fill(128, 128);
  rect(0, 0, width, 65);
  fill(0);
  text("Score  " + score, 130, 50);
  text("Lives  " + lives, 350, 50);
  {
  }
}
