class Asteroid extends Floater
{
  double rotSpeed;
  public Asteroid() {
    corners = 5;
    xCorners = new int[]{-11, -4, 10, 9, -6};
    yCorners = new int[]{5, 11, 8, -8, -10};
    myColor = color(100, 100, 100);
    myCenterX = Math.random()*500;
    myCenterY = Math.random()*500;
    myXspeed = Math.random()*5;
    myYspeed = Math.random()*5;
    myPointDirection = 0;
    rotSpeed = Math.random()*5;
  }

  public void move() {
    // proto turn   
    // myPointDirection+=myXspeed;  
    
    turn(rotSpeed);
    super.move();
  }

  public double getCenterX()
  {
    return myCenterX;
  }

  public double getCenterY()
  {
    return myCenterY;
  }
}
