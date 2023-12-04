

class Spaceship extends Floater  
{   
  public Spaceship()
  {
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    xCorners[3] = -12;
    yCorners[3] = 0;
    myColor = 255;
    myCenterX = 300;    
    myCenterY = 300;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }

  public void setCenterX(double ran) {
    myCenterX = ran;
  }
  public void setCenterY(double ran) {
    myCenterY = ran;
  }
  public double getCenterX() {
    return myCenterX;
  }
  public double getCenterY() {
    return myCenterY;
  }
  public void setDirection(double point) {
    myPointDirection = point;
  }
  public void setXSpeed(double nXSpeed) {
    myXspeed = nXSpeed;
  }
  public void setYSpeed(double nYSpeed) {
    myYspeed = nYSpeed;
  }
}
