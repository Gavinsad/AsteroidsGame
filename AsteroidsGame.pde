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
ArrayList <Asteroid> ast = new ArrayList<Asteroid>();

public void draw(){
noStroke();
  fill(32,42,68,80);
   rect(0,0,width,height);
  for(int i=0;i<Bobby.length;i++){
   Bobby[i].show(); 
  }
  for(int i=0;i<15;i++){
   ast.add(new Asteroid()); 
  }
  stroke(3);
  for(int i=0;i<15;i++){
  ast.get(i).show();
    ast.get(i).move(); 
  }
 stroke(1);
 Bob.show();
 Bob.move();

int x=15;
for(int i=0;i<x;i++){
if(dist((float)Bob.getCenterX(),(float)Bob.getCenterY(),(float)ast.get(i).getCenterX(),(float)ast.get(i).getCenterY())<=40){
 ast.remove(i); 
 x--;
}
}
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
