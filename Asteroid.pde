class Asteroid extends Floater
{
  private double rotSpeed;
  public Asteroid()
  {
    rotSpeed = 0;
    myColor = 166;
    myCenterX = 300;    
    myCenterY = 300;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
    corners = 7;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -10;
    yCorners[0] = -8;
    xCorners[1] = 7;
    yCorners[1] = -9;
    xCorners[2] = 13;
    yCorners[2] = 3;
    xCorners[3] = 7;
    yCorners[3] = 10;
    xCorners[4] = -13;
    yCorners[4] = -8;
    xCorners[5] = 6;
    yCorners[5] = 0;
    xCorners[6] = -8;
    yCorners[6] = 8;
  }
  public void move()
  {
    turn(rotSpeed);
    super.move();
  }
  public void setCenterX(double newX) {
    myCenterX = newX;
  }
  public void setCenterY(double newY) {
    myCenterY = newY;
  }
}
