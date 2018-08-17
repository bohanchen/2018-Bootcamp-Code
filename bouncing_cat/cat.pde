
class Cat{
  PImage cat;
  
  //variables
  float x;
  float y;
  float speedx = 4;
  float speedy = 2; 
  
  //float g = 0.2;
  float rad = 0;
  float degree = random(0.04, 0.07);
  
  //constructor
  Cat(float _x, float _y, float _rad){
    x = _x;
    y = _y;
    rad = _rad;
    imageMode(CENTER);
    cat = loadImage ("3.png");

  }
  
  void run(){
    move();
    bounce();
    //gravity();
    display();
  }
  
  //functions
  void move(){
    x += speedx; 
    y += speedy;
    rad +=degree;
  }
  
  void bounce(){ 
    if (x > width || x<0 ){
      speedx *= -1;
    } 
    if (y > height || y<0){
      speedy *= -1;
    }
  }
  
  void display(){
    pushMatrix();
    translate(x, y);
    rotate(rad);
    image(cat, 0, 0);
    popMatrix();
  }
  
  //void gravity(){
  //  speedy = speedy + g;
  //}
  
}
