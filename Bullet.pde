class Bullet extends Floater{
  public Bullet(Spaceship hal){
    myCenterX = hal.getX();
    myCenterY = hal.getY();
    myXspeed = hal.getXspeed();
    myYspeed = hal.getYspeed();
    myPointDirection = hal.getPointDirection();
    accelerate(.6);
  }
  public void show() {
    ellipse((float)myCenterX, (float) myCenterY, 10, 10);
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
