//your variable declarations here
Star[]  Bobby = new Star [200];
public void setup() 
{
  size(500,500);
  for(int i=0;i<Bobby.length;i++){
   Bobby[i]=new Star(); 
  }
}
Spaceship Bob  = new Spaceship();
public void draw() 
{
  noStroke();
background(2);
  for(int i=0;i<Bobby.length;i++){
   Bobby[i].show(); 
  }
 stroke(1);
 Bob.show();
 Bob.move();

}
public void keyPressed(){
 if(key=='w'){
  Bob.accelerate(1.00002);
 }//end of w
 if(key=='s'){
  Bob.accelerate(-1.000002) ;
 }//end of s
 if(key=='a'){
  Bob.turn(-9); 
 }//end of a
 if(key =='d'){
  Bob.turn(9); 
 }//end of d
 if(key =='x'){
  Bob.hyperspace();
 }
 //setmaxspeed
 if(Bob.getSpeedX()>3){
   Bob.setSpeedX(3); }
  if(Bob.getSpeedY()>3){
   Bob.setSpeedY(3); }
 if(Bob.getSpeedX()<-3){
   Bob.setSpeedX(-3);}
if(Bob.getSpeedY()<-3){
   Bob.setSpeedY(-3);}
}
