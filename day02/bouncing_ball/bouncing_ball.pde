int x, y;
int vx = 3;
int vy = 4;

int r = 40;
//int xdirection = 1;
//int ydirection = 1;

void setup(){
  size(720,480);
  background(255);
  ellipseMode(RADIUS);
  
  x = width/2;
  y = height/2;

  
}

void draw(){
  background(255);
  //x=x+(vx*xdirection);
  //y=y+(vy*ydirection);
  
  x+=vx;
  y+=vy;
  

  if((x >( width-r))|| (x < r)){
    //xdirection = xdirection*(-1);
    vx*=-1;
  }
  
  if((y > (height-r))|| (y < r)){
    //ydirection = ydirection*(-1);
    vy*=-1;
  }
  
  ellipse(x,y,r,r);

  
  
}
