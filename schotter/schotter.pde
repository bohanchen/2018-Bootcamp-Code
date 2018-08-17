int columns = 12;       
int rows = 22;          
int sqrsize=30;  

float rndStep=.22;      // Rotation Increment in degrees 
float randsum=0;        // Cumulative rotation value 
int padding=2*sqrsize;  // margin area
float randval;          // random value for translation and rotation
float dampen=0.45;      // soften random effect for translation
 
void setup() { 
  size(480,780); 
  background(255);   
  stroke(0);        
  smooth();          
  noFill();  
  
  //rectMode(CENTER);  // use x,y value as the center of the square
  noLoop();  
} 
 
void draw() {
  //background(255);   
  for (int y=1; y <= rows; y++){
    randsum += (y*rndStep);  // Increment the random value
    for (int x=1; x <= columns; x++) {
      pushMatrix();
      randval = random(-randsum,randsum);
      translate( padding + (x * sqrsize) - (.5*sqrsize) + (randval*dampen),
         padding + (y * sqrsize) - (.5*sqrsize) + (randval*dampen));
      rotate(radians(randval));
      rect(0,0,sqrsize,sqrsize);
      popMatrix();
    } 
  } 
}
