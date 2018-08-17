float yPos;
float xPos;
float radius;
float size;
float speed;


void setup(){
  size(800,800);
  radius = 20;
  speed = 5;
}

void draw(){
  background(255);
  fill(0);
  
  drawCircle(100, radius);
  drawCircle(200,radius+30);
  circleRun();
}

void drawCircle(float x, float r){
  fill(0);
  ellipse(x, yPos, r, r);
}

void circleRun(){
  yPos+=speed;
  if(yPos <0 || yPos > height){
    speed *= -1;
  }
}
