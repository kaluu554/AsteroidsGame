class Star //note that this class does NOT extend Floater
{
  private int myX,myY,myColor;
  public Star()
  {
   myX = (int)(Math.random()*600); 
   myY = (int)(Math.random()*600); 
   myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  public void show()
  {
    fill(myColor);
    stroke(myColor);
    ellipse(myX,myY,(int)(Math.random()*5)+1,(int)(Math.random()*5)+1);
  }
}
