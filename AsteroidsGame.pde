public int midX = 350;
public int midY = 350; 

Stars[] stars= new Stars[150];
Spaceship zoom = new Spaceship();
Asteroid[] aBunch = new Asteroid[20];

public void setup() 
{
  size(700,700);
  background(0);
  //stars = new Stars[100];
  for (int i = 0; i < stars.length; i++)
  {
  	stars[i] = new Stars();
  }
  for (int i =0; i<aBunch.length; i++)
  {
  	aBunch[i] = new Asteroid();
  }
}

public void draw() 
{

	background(0);

	for (int i = 0; i < stars.length; i++)
	{
		stars[i].show();
	}

	for (int i = 0; i < aBunch.length; i++) 
	{
		aBunch[i].show();
		aBunch[i].move();
		aBunch[i].turn((int)(Math.random()*5)-3);
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

