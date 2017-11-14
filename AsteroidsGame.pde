public int midX = 500;
public int midY = 500; 

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
		zoom.accelerate(0.3);
	}
	if (key == 's')//down
	{
		zoom.accelerate(-0.1);
	}
	if (key == '0')
	{
		zoom.setX((int)(Math.random()*960)+20);
		zoom.setY((int)(Math.random()*960)+20);
		zoom.setDirectionX(0);
		zoom.setDirectionY(0);
	}
}

