class Spaceship extends Floater  
{   
  public Spaceship() {
  corners = 16;
  int [] xS= {10,-9,-9,-15,-15,-11,-11,-15,-15,-11,-11,-15,-15,-11,-11,10};
  int [] yS= {4, 4, 6,  6,  4,  4,  1,  1, -1, -1,  -4, -4 , -6,-6,-4, 4};
  
  xCorners = xS;
  yCorners = yS;
  myColor = color(100,100,255);
  myCenterX=0;
  myCenterY=0; //holds center coordinates   
  myDirectionX = 0;
  myDirectionY = 0; //holds x and y coordinates of the vector for direction of travel   
  myPointDirection = 0; //holds current direction the ship is pointing in degrees    
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
}
