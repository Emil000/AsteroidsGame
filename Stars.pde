class Stars
{
	private int myX,myY;
	private int size;
	private int myColor;
	Stars stars[] = new Stars[500];

	public Stars() {
		myX = 400;
		myY = 400;
		size = (int)(Math.random()*9)+1;
		myColor = 201;
	}

	public void setup() 
	{
		for (int i = 0; i<stars.length; i++)
			stars[i]=new Stars();


	}

	public void draw()
	{
		for (int i = 0; i<stars.length; i++)
			stars[i].show();

	}

	public void show()
	{
		fill(myColor);
		ellipse(myX,myY,size,size);
	}
}
