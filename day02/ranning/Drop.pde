class Drop{
  float x = random(width);
  float y = random(-200,200);
  float yspeed = random(5,10);
  float len = random(4,10);
  
  //PImage img;
  
  //img = loadImage("g.jpg");
  
  
  void fall(){
    y = y+yspeed;
    
    if (y>height){
     y = random(-200,200);
    }
  }
  
  void show(){
    stroke(255,255,255);
    line(x,y,x,y+len);
    //image(img, x, y);
    

  }
}
