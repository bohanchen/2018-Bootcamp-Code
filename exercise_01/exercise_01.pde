int x = 100;
int y = 100;
int circWidth = 50;
int circHeight = 50;

color circColor = color(255, 0, 0);



void setup(){
  //set up canvas size
  size(1250,800);
  
  //background color
  background(255);
}

void draw(){
  //background(0);
  fill(120);
    noFill();

  ellipse(x, y, circWidth,circHeight);
  
  fill(24,25,255);
  ellipse(1000,600,100,100);
  
  y=y+1;
  x+=1;
  
  fill(circColor);
  ellipse(x,y,circWidth, circHeight);
  noStroke();
  
  

}

//int x = 5;
//int y = 5;
//int Width = 2;
//int Height = 2;

//void setup(){
//  //set up canvas size
//  size(20,20);
  
//  //background color
//  background(255);
//}

//void draw(){
//  fill(0);
//  rect(x,y,Width,Height);
//  y+=1;

//}