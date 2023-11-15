//your variable declarations here
Spaceship one = new Spaceship();
Star [] stars = new Star[100]; 
public void setup() 
{
  size(600, 600);
  background(0);
  for (int i = 0; i<stars.length; i++) {
    stars[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i<stars.length; i++) {
    stars[i].show();
  }
  if (keyPressed) {
    if (key == 'a' || key == 'A') {
      one.turn(-10);
    }
    if (key == 'd' || key == 'D') {
      one.turn(10);
    }
    if (key == 'w' || key == 'W') {
      one.accelerate(.5);
    }
    if (key == 's' || key == 'S') {
      one.accelerate(-.5);
    }
  }

  one.move();
  one.show();
}

public void keyPressed()
{
  if (key == 'H'||key =='h') {
    one.setSpeed(0);
    one.setCenterX(Math.random()*500);
    one.setCenterY(Math.random()*500);
    one.setDirection(Math.random()*360);
  }
}
