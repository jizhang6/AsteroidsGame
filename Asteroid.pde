class Asteroid extends Floater
{
  double rotSpeed;
  public Asteroid() {
    corners = 5;
    xCorners = new int[]{-13, -6, 12, 11, -8};
    yCorners = new int[]{7, 13, 10, -10, -12};
    myColor = color(100, 100, 100);
    myCenterX = Math.random()*500;
    myCenterY = Math.random()*500;
    myXspeed = Math.random()*3;
    myYspeed = Math.random()*3;
    myPointDirection = 0;
    rotSpeed = Math.random()*5;
  }

  public void move() {
    // proto turn   
    // myPointDirection+=myXspeed;  

    turn(rotSpeed);
    super.move();
  }

  public float getX()
  {
    return (float)myCenterX;
  }

  public float getY()
  {
    return (float)myCenterY;
  }
}
