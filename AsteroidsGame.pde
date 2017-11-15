public int midX = 400;
public int midY = 400; 

Stars[] stars= new Stars[150];
Spaceship zoom = new Spaceship();

public void setup() 
{
  size(800,800);
  background(0);
  //stars = new Stars[100];
  for (int i = 0; i < stars.length; i++)
	{
		stars[i] = new Stars();
	}
}

public void draw() 
{
	background(0);

	for (int i = 0; i < stars.length; i++)
	{
		stars[i].show();
	}
	
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
		if (zoom.getDirectionX() < 8 && zoom.getDirectionY() < 8)
		{
			zoom.accelerate(0.5);
		}
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

