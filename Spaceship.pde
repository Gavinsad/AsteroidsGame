class Spaceship extends Floater  
{   
    public Spaceship(){
     corners =7; 
     xCorners= new int[corners];
     yCorners  = new int[corners];
     xCorners[0]=16;yCorners[0]=0;
     xCorners[1]=0;yCorners[1]=8;
     xCorners[2]=4;yCorners[2]=2;
     xCorners[3]=-8;yCorners[3]=0;
     xCorners[4]=4;yCorners[4]=-2;
     xCorners[5]=0;yCorners[5]=-8;
     xCorners[6]=16;yCorners[6]=0;
     myColor = 255;
     myCenterX =50;
     myCenterY = 50;
     myYspeed = 0;
     myXspeed = 0;
    }
    public void setSpeedX(double n){
      myXspeed=n;
    }
     public void setSpeedY(double t){
      myYspeed=t;
    }
     public double getSpeedX(){
      return myXspeed;
    }
    public double getSpeedY(){
      return myYspeed;
    }
    public double getCenterX(){
     return myCenterX; 
    }
    public double getCenterY(){
     return myCenterY; 
    }
    public void setCenterX(double y){
     myCenterX = y; 
    }
     public void setCenterY(double y){
     myCenterY = y; 
    }
     public void setPointDirection(double y){
     myPointDirection = y; 
     rotate((float)y);
    }
    public void hyperspace(){
     myCenterX=((double)(Math.random()*500));
 myCenterY=((double)(Math.random()*500));
    myPointDirection=((double)(Math.random()*2));
   
    myXspeed=0;
    myYspeed=0;
      
    }
}
