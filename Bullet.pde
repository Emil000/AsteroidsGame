class Bullet extends Floater
{
public Bullet() 
  {
  corners = 8;
  int [] xS= {0,2,3,2,0,-2,-3,-2};
  int [] yS= {3,2,0,-2,-3,-2,0,2};
  xCorners = xS;
  yCorners = yS;
  myColor = color(255);
  myCenterX=midX;
  myCenterY=midY; //holds center coordinates   
  myDirectionX = 0;
  myDirectionY = 0;//holds x and y coordinates of the vector for direction of travel   
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