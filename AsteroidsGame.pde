Spaceship hal = new Spaceship();//your variable declarations here
public void setup() 
{
  background(0);
  size(500, 500);
  for (int i = 0; i < 200; i++)
  {
    Star dav = new Star();
    dav.show();
  }
}
public void draw() 
{
  hal.move();
  hal.show();
}
public void keyPressed()
{
  if (key == 'h') 
  {
    hal.hyperspace();
  }
  if (key == 'a')
  {
    hal.turn(-2);
  }
  if (key == 'd')
  {
    hal.turn(2);
  }
  if (key == 'w')
  {
    hal.accelerate(0.1);
  }
}
