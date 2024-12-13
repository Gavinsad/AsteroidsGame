//your variable declarations here
Star[]  nightsky = new Star [200];
public void setup() 
{
  size(500,500);
  for(int i=0;i<nightsky.length;i++){
   nightsky[i]=new Star(); 
  }
}
Spaceship Bright  = new Spaceship();

ArrayList <Asteroid> ast = new ArrayList<Asteroid>();
ArrayList <Bullet> magnum = new ArrayList<Bullet>();
public void draw(){
 
 
noStroke();
  fill(32,42,68,80);
   rect(0,0,width,height);
  for(int i=0;i<nightsky.length;i++){
   nightsky[i].show(); 
  }
  for(int i=0;i<15;i++){
   ast.add(new Asteroid()); 
  }
  stroke(3);
  for(int i=0;i<15;i++){
  ast.get(i).show();
    ast.get(i).move();
    for(int s=0;s<magnum.size();s++){ 
if(dist((float)magnum.get(s).getCenterX(),(float)magnum.get(s).getCenterY(),(float)ast.get(i).getCenterX(),(float)ast.get(i).getCenterY())<=25){
 magnum.remove(s); 
 ast.remove(i);
 }
 }
  }
  
   
 stroke(1);
 Bright.show();
 Bright.move();

int hp=5;
int x=15;
for(int i=0;i<ast.size();i++){
if(dist((float)Bright.getCenterX(),(float)Bright.getCenterY(),(float)ast.get(i).getCenterX(),(float)ast.get(i).getCenterY())<=40){
 hp--; 

 x--;}}

  for(int i=0;i<magnum.size();i++){
             
  magnum.get(i).show();
    magnum.get(i).move(6);
    
      
   } 
  
   
  
   
}//end of draw


public void keyPressed(){
 if(key=='w'){
  Bright.accelerate(1.00002);
 }//end of w
 if(key=='s'){
  Bright.accelerate(-1.000002) ;
 }//end of s
 if(key=='a'){
  Bright.turn(-9); 
 }//end of a
 if(key =='d'){
  Bright.turn(9); 
 }//end of d
 if(key =='x'){
  Bright.hyperspace();}
  if(key ==' '){
    magnum.add(new Bullet(Bright));
      
 }
 
 //setmaxspeed
 if(Bright.getSpeedX()>3){
   Bright.setSpeedX(3); }
  if(Bright.getSpeedY()>3){
   Bright.setSpeedY(3); }
 if(Bright.getSpeedX()<-3){
   Bright.setSpeedX(-3);}
if(Bright.getSpeedY()<-3){
   Bright.setSpeedY(-3);}
}
