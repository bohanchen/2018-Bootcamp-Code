float r;
float g;
float b;
float a;

float diam;
float x;
float y;

void setup(){
  size(900,900);
  background(255);
  noStroke();
  //noLoop();
}

void draw(){
  r = random(255);
  g = random(255);
  b = random(255);
  a = random(255);
  
  x = random(width);
  y = random(height);
  
  diam = random(20);
  
  println(r);
  fill(r,g,b,a);
  ellipse(x, y, diam,diam);
  
 
}
