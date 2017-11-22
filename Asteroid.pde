class Asteroid extends Floater
{
	public Asteroid()
  {
  corners = 8;
  xCorners = new int [corners];
  yCorners = new int [corners];
  xCorners[0] =(int)(Math.random()*5)-8; //top
  yCorners[0] =(int)(Math.random()*10)-23; //top
  xCorners[1] =(int)(Math.random()*10)+18;
  yCorners[1] =(int)(Math.random()*10)-18; 
  xCorners[2] =(int)(Math.random()*5)+29; //right side
  yCorners[2] =(int)(Math.random()*5)-5;  //right side
  xCorners[3] =(int)(Math.random()*20)+13;
  yCorners[3] =(int)(Math.random()*10)+18;
  xCorners[4] =(int)(Math.random()*10)-8; //bottom
  yCorners[4] =(int)(Math.random()*10)+29; //bottom
  xCorners[5] = -23;
  yCorners[5] = 23;
  xCorners[6] =(int)(Math.random()*5)-24; //left side
  yCorners[6] =(int)(Math.random()*5)-5;  //left side
  xCorners[7] =(int)(Math.random()*10)-20;
  yCorners[7] =(int)(Math.random()*10)-17;
  
  myColor = color(192,192,192);
  myCenterX=Math.random()*800;
  myCenterY=Math.random()*800; //holds center coordinates   
  myDirectionX = (Math.random()*2)-1;
  myDirectionY = (Math.random()*2)-1;//holds x and y coordinates of the vector for direction of travel   
  myPointDirection = 0;
  } //holds current direction the ship is pointing in degrees    
  public void setX(int x){myCenterX=x;} 
  public int getX(){return (int)myCenterX;} 
  public void setY(int y){myCenterY=y;}  
  public int getY(){return (int)myCenterY;}
  public void setDirectionX(double x){myDirectionX = x;}   
  public double getDirectionX(){return myDirectionX;}
  public void setDirectionY(double y){myDirectionY = y;}
  public double getDirectionY(){return myDirectionY;}
  public void setPointDirection(int degrees){myPointDirection = degrees;}  
  public double getPointDirection(){return myPointDirection;}
  
	
}