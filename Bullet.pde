class Bullet extends Floater{
  public Bullet(){
    myCenterX = Bright.getCenterX();
    myCenterY = Bright.getCenterY();
    myPointDirection=Bright.getPointDirection();
  }
  public void move(){
      myCenterX = myCenterX + Math.cos(myPointDirection)*4;
    myCenterY =  myCenterY + Math.sin(myPointDirection)*4; 
  }
  public void show(){
   ellipse((float)myCenterX,(float)myCenterY,7,1); 
    
    
    
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}
