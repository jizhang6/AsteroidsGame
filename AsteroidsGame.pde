Spaceship hal = new Spaceship();//your variable declarations here
Star[] dav = new Star[200];
public ArrayList <Asteroid> rocks = new ArrayList <Asteroid> ();
public ArrayList <Bullet> pew = new ArrayList <Bullet> ();

public void setup() 
{
  background(0);
  size(500, 500);

  for (int i = 0; i < dav.length; i++)
  {
    dav[i] = new Star();
  }

  for (int i = 0; i < 15; i++)
  {
    rocks.add( new Asteroid());
  }
}

public void draw() 
{
  background(0);
  
  for (int i = 0; i < dav.length; i++)
  {
    dav[i].show();
  }

  for (int i = 0; i < rocks.size(); i++)
  {
    rocks.get(i).move();
    rocks.get(i).show();
  }
  
  for (int i = 0; i < pew.size(); i++)
  {
    pew.get(i).move();
    pew.get(i).show();
    float d = dist(pew.get(i).getX(), pew.get(i).getY(), rocks.get(i).getX(), rocks.get(i).getY());
    if ( d < 20)
    {
      rocks.remove(i);
    }
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
  if (key == 'a')
  {
    hal.turn(-5);
  }
  if (key == 'd')
  {
    hal.turn(5);
  }
  if (key == 'w')
  {
    hal.accelerate(0.1);
  }
  if (key == 'q')
  {
    pew.add(new Bullet(hal));
  }
}
