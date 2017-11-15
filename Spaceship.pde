class Spaceship extends Floater  
{   
  public Spaceship() 
  {
  corners = 21;
  int [] xS= {10,-11,-11,-15,-15,-11,-11,-15,-15,-11,-11,-15,-15,-11,-11,10,11,17,17,11,10};
  int [] yS= {4, 4, 6,  6,  4,  4,  1,  1, -1, -1,  -4, -4 , -6,-6,-4, -4, -1,-1, 1,1,4};
  xCorners = xS;
  yCorners = yS;
  myColor = color(180,180,230);
  myCenterX=midX;
  myCenterY=midY; //holds center coordinates   
  myDirectionX = 0;
  myDirectionY = 0; //holds x and y coordinates of the vector for direction of travel   
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
  public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);   
    stroke(myColor);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);

    fill(0);
    rect((int)myCenterX+4,(int)myCenterY-4,4,8);



    if (key=='w') //flame
    {
      fill(200,30,30);
      triangle((float)myCenterX-20, (float)myCenterY-3, (float)myCenterX-20, (float)myCenterY+3, (float)myCenterX-25, (float)myCenterY);
    }
  }  

} 

