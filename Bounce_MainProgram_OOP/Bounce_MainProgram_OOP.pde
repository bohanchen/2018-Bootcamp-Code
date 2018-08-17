//declared 

int num = 200; 
BouncingBall[] balls = new BouncingBall[num];

void setup(){
  background(0);
  size(800, 800);
  //noFill();
  //stroke(2);
  for(int i = 0; i<balls.length; i++){
   balls[i] = new BouncingBall(random(width), random(height), random(10,100));
  }
  
}

void draw(){
  //background(0);
  
  for(int i = 0; i< num; i++){
  balls[i].run();  
  
  }

}
