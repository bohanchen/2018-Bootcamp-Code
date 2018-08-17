
class BouncingBall{
  
  //variables
  float x;
  float y;
  float speedx = 4;
  float speedy = 2; 
  float r = 20;
  
  float g = 0.2;
  
  //constructor
  BouncingBall(float _x, float _y, float _r){
    x = _x;
    y = _y;
    r = _r;
  }
  
  void run(){
    move();
    bounce();
    gravity();
    display();
  }
  
  //functions
  void move(){
    x += speedx; 
    y += speedy;
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
    ellipse (x, y, r, r);
  }
  
  void gravity(){
    speedy = speedy + g;
  }
  
}
