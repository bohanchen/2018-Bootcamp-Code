import processing.sound.*;

//import ddf.minim.*;

//Minim minim;
SoundFile sound1;

float rad;
float rad1;
float rad2;
float rad3;

PImage fish;
float angle;

boolean flag;
boolean flag1;
boolean flag2;
boolean flag3;


//AudioPlayer sound1;

void setup(){
  size(800, 800);
  //sound1 = minim.loadFile("1.mp3");
  //sound1.play();
  
  sound1 = new SoundFile(this, "1.mp3");
  
  flag = true;
  flag1 = true;
  flag2 = true;
  flag3 = true;
  
  //background(63,136,197);
  rad = 0; 
  rad1 = 0; 
  rad2 = 0; 
  rad3 = 0; 
  fish = loadImage( "images/fish.png");
   
  imageMode(CENTER);
  angle = 0;
  //noFill();
  noStroke();
 
}

void draw(){ 
  background(63,136,197);
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(angle));
  image(fish, 0, 0);
  angle += 5;
  popMatrix();
  println(rad);
  
  fill(255, 186, 8);
  ellipse(0, 0, rad, rad);
  
  fill(208, 0, 0);
  ellipse(width, 0, rad1, rad1);
  
  fill(25, 54, 79);
  ellipse(0, height, rad2, rad2);
  
  fill(122, 121,1208);
  ellipse(width, height, rad3, rad3);
  
  
  if(flag == true && key == 'a'){
    //sound1.play();
    flag = true;
    rad = rad+1;
  }
  if(rad == width+250){
    flag = false;
  }
  
   if(flag1 == true && key == 'b'){
    //sound1.play();
    flag1 = true;
    rad1 = rad1+1;
  }
  if(rad1 == width+250){
    flag1 = false;
  }
  
   if(flag2 == true && key == 'c'){
    //sound1.play();
    flag2 = true;
    rad2 = rad2+1;
  }
  if(rad2 == width+250){
    flag2 = false;
  }
  
   if(flag3 == true && key == 'd'){
    //sound1.play();
    flag3 = true;
    rad3 = rad3+1;
  }
  if(rad3 == width+250){
    flag3 = false;
  }
  
}

void keyPressed(){
  if (key == 'a'){
    //flag = true;
    sound1.play(); 
  } 
}
