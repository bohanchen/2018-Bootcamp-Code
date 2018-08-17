class Planet{
  
  float theta;
  float diameter;
  float distance;
  float orbitspeed;
  
  Planet(float _theta, float _diameter, float _distance, float _orbitspeed){
    theta = _theta;
    diameter = _diameter;
    distance = _distance;
    orbitspeed = _orbitspeed;
  }
  
  void drawplanet(){
    update();
    display();
  }
  
  void update(){
    theta += orbitspeed;
  }
  
  void display(){
    rotate(theta);
    translate(distance, 0);
    stroke(0);
    fill(175);
    ellipse(0, 0, diameter, diameter);
  }

}
