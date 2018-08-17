Planet designer;

void setup(){
  //fullScreen();
  size(1200, 800);
  designer = new Planet(0.01);
  imageMode(CENTER);
  //frameRate(20);
}

void draw(){
  background(255,245,204);
  translate(width/2, height/2);
  
  designer.drawSun();
  designer.drawArchitect();
  designer.drawArtist();
  designer.drawDataDesigners();
  designer.drawProductDesigner();
  designer.drawGraphicDesigner();
}

void mousePressed(){
  link("https://bohanchen.github.io/");
}
