//your variable declarations here
Spaceship one;
Star [] stars;
ArrayList <Asteroid> rocks;
public void setup() 
{
  size(600, 600);
  background(0);
  //initilization
  one = new Spaceship();
  stars = new Star[100]; 
  rocks = new ArrayList <Asteroid> ();
  //Filling arrays
  for (int i = 0; i<stars.length; i++) {
    stars[i] = new Star();
  }
  for (int r = 0; r<20; r++) {
    rocks.add(new Asteroid());
  }
}


public void draw() 
{
  background(0);
  for (int i = 0; i<stars.length; i++) {
    stars[i].show();
  }

  for (int r = 0; r<rocks.size(); r++) {
    rocks.get(r).move();
    rocks.get(r).show();
    float d = dist((float)one.getCenterX(), (float)one.getCenterY(), (float)rocks.get(r).getCenterX(), (float)rocks.get(r).getCenterY());
    if (d<10) {
      rocks.remove(r);
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
      one.accelerate(.2);
    }
    if (key == 's' || key == 'S') {
      one.accelerate(-.2);
    }
  }

  one.move();
  one.show();
}



public void keyPressed()
{
  if (key == 'H'||key =='h') {
    one.setXSpeed(0);
    one.setYSpeed(0);
    one.setCenterX(Math.random()*500);
    one.setCenterY(Math.random()*500);
    one.setDirection(Math.random()*360);
  }
}

