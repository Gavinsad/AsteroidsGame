class Bullet extends Floater{
  public Bullet(Spaceship Bright){
    myCenterX = Bright.getCenterX();
    myCenterY = Bright.getCenterY();
    myPointDirection=Bright.getPointDirection();
    myXspeed=Bright.getSpeedX();
    myYspeed=Bright.getSpeedY();
   myColor=10;
  }
  public void move(double dAmount){

     
    myCenterX += ((dAmount) * Math.cos(myPointDirection*(Math.PI/180)));    
    myCenterY += ((dAmount) * Math.sin(myPointDirection*(Math.PI/180)));       
   
  }
  public void show(){
    color(0,255,0);
      ellipse((float)myCenterX,(float)myCenterY,5,4); 
   }
   public void gone(){
     
     
     
   }
   public double getPointDirection(){
      return myPointDirection;
    }
      public double getCenterX(){
     return myCenterX; 
    }
    public double getCenterY(){
     return myCenterY; 
    }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}
