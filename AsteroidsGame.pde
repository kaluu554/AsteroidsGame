//your variable declarations here
Spaceship one;
Star [] stars;
ArrayList <Bullet> shots;
ArrayList <Asteroid> rocks;
int hp = 10;
public void setup() 
{
  size(600, 600);
  background(0);
  textAlign(CENTER);
  //initilization
  one = new Spaceship();
  stars = new Star[100]; 
  rocks = new ArrayList <Asteroid> ();
  shots = new ArrayList <Bullet>();
  //Filling arrays
  for (int i = 0; i<stars.length; i++) {
    stars[i] = new Star();
  }
  for (int r = 0; r<30; r++) {
    rocks.add(new Asteroid());
  }
}


public void draw() 
{
  background(0);
  for (int a = 0; a<stars.length; a++) {
    stars[a].show();
  }
  for (int b = 0; b<shots.size(); b++) {
    shots.get(b).show();
    shots.get(b).move();
  }
  for (int c = 0; c<shots.size(); c++) {
    for (int e = 0; e<rocks.size(); e++) {
      float col = dist((float)shots.get(c).getCenterX(), (float)shots.get(c).getCenterY(), (float)rocks.get(e).getCenterX(), (float)rocks.get(e).getCenterY());
      if (col < 17) {
        rocks.remove(e);
        shots.remove(c);
        break;
      }
    }
  }
  for (int r = 0; r<rocks.size(); r++) {
    rocks.get(r).move();
    rocks.get(r).show();
    float d = dist((float)one.getCenterX(), (float)one.getCenterY(), (float)rocks.get(r).getCenterX(), (float)rocks.get(r).getCenterY());
    textSize(20);
    fill(255);
    text("HP: " + hp, 30, 30);
    if (d<20) {
      rocks.remove(r);
      hp--;
    }
  }
  if (keyPressed) {
    if (key == 'a' || key == 'A') {
      one.turn(-10);
    }
    if (key == 'd' || key == 'D') {
      one.turn(10);
    }
    if (key == 'w' || key == 'W') {
      one.accelerate(.1);
    }
    if (key == 's' || key == 'S') {
      one.accelerate(-.1);
    }
  }
  one.move();
  one.show();
  if (hp == 0) {
    noLoop();
    one.setXSpeed(0);
    one.setYSpeed(0);
    fill(0);
    rect(0, 0, 600, 600);
    fill(255);
    textSize(40);
    text("Game Over", 300, 300);
    textSize(30);
    text("Press r to restart", 300, 400);
  }
  if(rocks.size() == 0){
    textSize(30);
    text("You Win c:", 300, 300);
    shots.clear();
  }
  
}



public void keyPressed()
{
  if (key == 'H'||key =='h') {
    one.setXSpeed(0);
    one.setYSpeed(0);
    one.setCenterX(Math.random()*500);
    one.setCenterY(Math.random()*500);
    one.setDirection(Math.random()*360);
  } else if ( key == 'q' || key == 'Q') {
    shots.add(new Bullet(one));
  } else if (key == 'r' || key == 'R') {
    hp = 10;
    one.setXSpeed(0);
    one.setYSpeed(0);
    one.setCenterX(300);
    one.setCenterY(300);
    one.setDirection(0);
    shots.clear();
    rocks.clear();
    for (int r = 0; r<30; r++) {
      rocks.add(new Asteroid());
    }
    loop();
  }
}
