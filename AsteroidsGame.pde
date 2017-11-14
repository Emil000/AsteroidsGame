Spaceship zoom = new Spaceship();
public void setup() 
{
  size(1000,1000);
  background(0);
}

public void draw() 
{
	background(0);
	zoom.show();
	zoom.move();
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
		zoom.accelerate(0.5);
	}
	if (key == 's')//down
	{
		zoom.accelerate(-0.5);
	}
}

