//Created by Bohan Chen
// 7/32/2018
//=======================
//variable 
int squareSize = 30;
float ranScale = 0.05;

//set up canvase
void setup(){
  size(325, 600);
  background(255);
  
  stroke(0);
  smooth();
  noFill();
  
  rectMode(CENTER);
  //noLoop();
  frameRate(20);
}

//draw rectangle
void draw(){
  background(255);
  
  for (int i = 0; i<=12; i++){
    for (int j = 0; j<=22; j++){
      pushMatrix();
      translate(squareSize*i+random(-j,j), 
                squareSize*j+random(-j,j));
      println(-j);
      rotate(random(-j*ranScale, j*ranScale));
      rect(0,0,squareSize,squareSize);
      popMatrix();
    }
  }
}
