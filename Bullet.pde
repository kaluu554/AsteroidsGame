class Bullet extends Floater
{
  public Bullet(Spaceship theShip)
  {
    myCenterX = theShip.getCenterX();
    myCenterY = theShip.getCenterY();
    myXspeed = theShip.getXSpeed();
    myYspeed = theShip.getYSpeed();
    myPointDirection = theShip.getPoint();
    accelerate(5);
  }
  public void show()
  {
    noStroke();
    fill(255);
    ellipse((float)myCenterX, (float)myCenterY, 8, 8);
  }
  public double getCenterX() {
    return myCenterX;
  }
  public double getCenterY() {
    return myCenterY;
  }
}
