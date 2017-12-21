class Bullet extends Floater
{
  public Bullet(Spaceship theShip) 
  {
  corners = 8;
  int [] xS= {0,2,3,2,0,-2,-3,-2};
  int [] yS= {3,2,0,-2,-3,-2,0,2};
  xCorners = xS;
  yCorners = yS;
  myColor = color(255,0,0);
  myCenterX=theShip.getX();
  myCenterY=theShip.getY();
  double dRadians =myPointDirection*(Math.PI/180);
  myDirectionX = 5 * Math.cos(dRadians) + theShip.getDirectionX();
  myDirectionY = 5 * Math.sin(dRadians) + theShip.getDirectionY();
  myPointDirection = theShip.getPointDirection();
  }
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
public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     
  }   