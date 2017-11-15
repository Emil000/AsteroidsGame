class Stars
{
	private int myX,myY;
	private int size;
	private int myColor;
	
	public Stars() {

		size = (int)(Math.random()*9)+1;
		myColor = 255;
		myX = (int)(Math.random()*800);
		myY = (int)(Math.random()*800);
	}

	public void show()
	{
		//System.out.println("drawing stars");
		fill(myColor);
		ellipse(myX,myY,size,size);
	}
}
