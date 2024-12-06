class Asteroid extends Floater{
private double myTS;
private int d;
private int hehehehaw;
 public Asteroid(){
        corners =10; 
        d=((int)(Math.random()*3+1));
     xCorners  = new int[]{-2*d, -8*d,-10*d,-6*d,1*d, 4*d, 6*d,6*d ,4*d,-2*d};
     yCorners  = new int[]{-10*d,-2*d,-1*d,  6*d,10*d,7*d,1*d,-5*d,-6*d,-10*d};
    myColor = (100);
    myCenterX=Math.random()*500;
    myCenterY=Math.random()*500;
     myTS = (Math.random()*5-10);
     myXspeed=(Math.random()*6-3);
     myYspeed=(Math.random()*6-3);
   hehehehaw= ((int)Math.random()+1);
   
   
 }
 public double getCenterX(){
  return myCenterX; 
 }
  public double getCenterY(){
  return myCenterY; 
 }
  public void move(){
     

  myCenterX += myXspeed;    
    myCenterY += myYspeed; 
 turn(myTS);

    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
  }   
    
    
    
  }
  
