public int midX = 350;
public int midY = 350; 

Stars[] stars= new Stars[150];
Spaceship zoom = new Spaceship();
ArrayList <Asteroid> asteroids = new ArrayList<Asteroid>(); //make array list

public void setup() 
{
  size(700,700);
  background(0);
  //stars = new Stars[100];
  for (int i = 0; i < stars.length; i++)
  {
  	stars[i] = new Stars();
  }

  for (int i = 0; i < 20; i++)
  {
  	asteroids.add(new Asteroid());
  }

}

public void draw() 
{

	background(0);

	for (int i = 0; i < stars.length; i++)
	{
		stars[i].show();
	}

	for (int i = 0; i < asteroids.size(); i++) 
	{
		asteroids.get(i).show();
		asteroids.get(i).move();
		if (dist(zoom.getX(),zoom.getY(),asteroids.get(i).getX(), asteroids.get(i).getY() ) < 40)
		{
			asteroids.remove(i);

		}

	}
	
	zoom.show();
	zoom.move();

	fill(255);
	rect(10,10,150,15);
	rect(10,30,150,15);
	fill(0,200,0);
	rect(11,11,140,13);
	
		
	
}

public void keyPressed()
{
	if (key == 'd')//right
	{
		zoom.turn(5);
		//zoom.accelerate(0.5);
	}
	if (key == 'a')//left
	{
		zoom.turn(-5);
		//zoom.accelerate(-0.5);
	}
		
	if (key == 'w')//up
	{
		//if (zoom.getDirectionX() < 8 && zoom.getDirectionY() < 8)
		
			zoom.accelerate(0.5);
		
	}
	if (key == 's')//down
	{
		zoom.accelerate(-0.5);
	}
	if (key == '0')
	{
		zoom.setX((int)(Math.random()*760)+20);
		zoom.setY((int)(Math.random()*760)+20);
		zoom.setPointDirection((int)(Math.random()*360));
		zoom.setDirectionX(0);
		zoom.setDirectionY(0);
	}
}

