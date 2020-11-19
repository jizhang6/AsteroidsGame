Spaceship hal = new Spaceship();//your variable declarations here
Star[] dav = new Star[200];
public void setup() 
{
  background(0);
  size(500, 500);
  for (int i = 0; i < dav.length; i++)
  {
    dav[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < dav.length; i++)
  {
    dav[i].show();
  }
  hal.move();
  hal.show();
}
public void keyPressed()
{
  if (key == 's') 
  {
    hal.hyperspace();
  }
  if (key == 'a') // turn left
  {
    hal.turn(-5);
  }
  if (key == 'd') // turn right
  {
    hal.turn(5);
  }
  if (key == 'w')
  {
    hal.accelerate(0.1);
  }
}
