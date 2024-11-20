class Star //note that this class does NOT extend Floater
{
private int myX , myY,mySize;
public  Star(){
 myX =  (int)(Math.random()*500);
  myY =  (int)(Math.random()*500);
  mySize =  (int)(Math.random()*5);
}
public void show(){
 fill((int)(Math.random()*240),(int)(Math.random()*240),(int)(Math.random()*240));
 ellipse(myX,myY,mySize,mySize);
  
}
} 
