int x, y;
float vx = 5;
float vy = 3;

float radius = 3.0;
//int xdirection = 1;
//int ydirection = 1;

float r, g, b, a;
 
void setup(){
  size(720,480);
  background(255);
  ellipseMode(RADIUS);
  
  x = width/2;
  y = height/2;
  
  noStroke();
  fill(20,120,50,10);
  
}

void draw(){
  //background(255);
  //x=x+(vx*xdirection);
  //y=y+(vy*ydirection);
  
  x+=vx;
  y+=vy;
  
  r=random(255);
  g=random(255);
  b=random(255);
  a=random(255);
  
  //fill(r,g,b,a);
  
  //fill(200);
  if((x >( width-radius))|| (x < radius)){
    //xdirection = xdirection*(-1);
    vx*=-1;
    fill(r,g,b,a);
  }
  
  if((y > (height-radius))|| (y < radius)){
    //ydirection = ydirection*(-1);
    vy*=-1;
    fill(r,g,b,a);
    //fill(random(255),);
  }
  
  ellipse(x,y,radius,radius);
  ellipse(x+random(40),y+random(50),radius,radius);
  //println(y);

  
  
}
