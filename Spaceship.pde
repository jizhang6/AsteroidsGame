class Spaceship extends Floater  
{
  public Spaceship() {
    corners = 4;  //the number of corners, a triangular floater has 3   
    xCorners = new int[]{16, -8, -2, -8};   
    yCorners = new int[]{0, -8, 0, 8};   
    myColor = color(255);   
    myCenterX = 250; //holds center coordinates   
    myCenterY = 250;
    myXspeed = 0; //holds the speed of travel in the x and y directions  
    myYspeed = 0;
    myPointDirection = 0; //degrees
  }
  public void hyperspace() {
    myCenterX = Math.random()*500;
    myCenterY = Math.random()*500;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = Math.random()*360;
  }
    public float getX()
  {
    return (float)myCenterX;
  }

  public float getY()
  {
    return (float)myCenterY;
  }
  
  public float getXspeed()
  {
    return (float)myXspeed;
  }
  
  public float getYspeed()
  {
    return (float)myYspeed;
  }
  
  public float getPointDirection()
  {
    return (float)myPointDirection;
  }
}
