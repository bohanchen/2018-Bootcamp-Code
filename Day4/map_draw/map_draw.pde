float xPods, yPods;
float diam;

float rgb;


void setup(){
  size(800,800);
  background(0);
}

void draw(){
   if(mousePressed){
     diam = map(mouseX, 0, width, 30, 150);
     rgb = map(mouseX,0,500, 0,255);
     println(rgb);
     println(mouseX);
     ellipse(mouseX, mouseY, diam, diam);
     fill(rgb);
   }
}
