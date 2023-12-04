class Asteroid extends Floater
{
  private double rotSpeed;
  public Asteroid()
  {
    rotSpeed = (Math.random()*5)-2;
    myColor = 166;
    myCenterX = Math.random()*500;    
    myCenterY = Math.random()*500;
    myXspeed = (Math.random()*3)-1;
    myYspeed = (Math.random()*3)-1;
    myPointDirection = 0;
    corners = 7;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -10;
    yCorners[0] = -8;
    xCorners[1] = 7;
    yCorners[1] = -5;
    xCorners[2] = 12;
    yCorners[2] = 3;
    xCorners[3] = 7;
    yCorners[3] = 10;
    xCorners[4] = -9;
    yCorners[4] = -8;
    xCorners[5] = 6;
    yCorners[5] = 6;
    xCorners[6] = -8;
    yCorners[6] = 8;
  }
  public void move()
  {
    super.move();
    turn(rotSpeed);
  }
  public double getCenterX() {
    return myCenterX;
  }
  public double getCenterY() {
    return myCenterY;
  }
}

