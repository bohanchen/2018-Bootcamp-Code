
int x = 100;
int y = 100;
int circWidth = 50;
int circHeight = 50;
color circColor = color(255, 0 , 0);

void setup(){
  //canvas size
  size(800, 800);
 
  //background color
  background(0);
}

void draw(){

  //draw a circle
  fill(255); //fill color
  ellipse(100, 100, 50, 50); //x-coordinate, y-coordinate, width, height
  
  //draw a circle with variables
  //fill(255); //fill color
  //ellipse(x, y, circWidth, circHeight); //x-coordinate, y-coordinate, width, height
  
  //draw a circle with changing variables
  //y= y+1; //add 1 pixel each loop
  //fill(circColor); //fill color
  //ellipse(x, y, circWidth, circHeight); //x-coordinate, y-coordinate, width, height

}