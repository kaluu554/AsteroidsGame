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
    corners = 9;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -3;
    yCorners[0] = 10;
    xCorners[1] = 15;
    yCorners[1] = 9;
    xCorners[2] = 18;
    yCorners[2] = 0;
    xCorners[3] = 16;
    yCorners[3] = -7;
    xCorners[4] = 5;
    yCorners[4] = -15;
    xCorners[5] = -2;
    yCorners[5] = -8;
    xCorners[6] = -10;
    yCorners[6] = -6;
    xCorners[7] = -12;
    yCorners[7] = 0;
    xCorners[8] = -8;
    yCorners[8] = 2;

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
