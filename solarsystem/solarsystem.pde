Planet planet1;
int num = 30;
//int counts;
Planet[] planets;


void setup(){
  size(1000,1000);
  background(0);
  noStroke();
  
  //int range = width/2; 
  planets = new Planet[num];
  for (int i = 0; i< num; i++ ){
    planets[i] = new Planet(0, random(10, 40), random(100) , 0.01);
  }
  
  //planet1 = new Planet (30, 24, 100,0.05);
}

void draw(){
  fill(0, 40);
  rect(0, 0, width, height);
  fill(255,255,255);
  pushMatrix();
  translate(width/2, height/2);
  noStroke();
  
  ellipse(0, 0, 64, 64);
  for(Planet planets : planets){
    
    planets.drawplanet();
  }  
  popMatrix();

}
