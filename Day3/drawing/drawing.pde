//Bohan Chen
//Drawing Application


PImage bg;

int radius = 50;

PFont f;

void setup(){
  size(800, 800);
  bg = loadImage("canvas.jpg");
  background(0);
  
  f = createFont("Lato-Regular.ttf", 24);
  
  text("Draw on the canvase", 10, 10);
  text("Press R to Reset", 10, 30);
  text(radius, 750, 10);
}

void draw(){
  //fill(random(255),random(255),random(255));
  noFill();
  stroke(255);
  
  if (mousePressed == true){
    ellipse(mouseX, mouseY, radius, radius);
  }else if(key == 'r'){
     background(0); 
  }
  
  text("Draw on the canvase", 10, 10);
  text("Press R to Reset", 10, 30);


}

void keyPressed(){
   if (key == CODED){
     if(keyCode == UP){
       radius +=2;
       println(radius);
     } else if(keyCode == DOWN){
       radius -=2;
       println(radius);
     }
   }
}

//void drawType(float x){
//  line(x, 0, x, 65);
//  line(x, 220, x, height);
//   text("ichi", x, 95);
//   fill(51);
//}


//void brush(){
  
//}
