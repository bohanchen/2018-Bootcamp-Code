class Button{

  float x, y;
  float bx, by;
  color fillColor, strokeColor;
  int passageNum;
  
  //int imageIndex = ;
  //PImage [] images1 = new PImage[10];
  
  //constructor
  Button (float _x, float _y, float _bx, float _by){
    x = _x;
    y = _y;
    bx = _bx;
    by = _by;
    
    //for(int i = 1; i<21; i++){
    //  images1[i]=loadImage(i+".jpg");
    //}
  }
  
  //Function
  void update(){
  
  }
  
  void display(){
    checkPressed();
    goToPassage();
    //mousePressed();
    rect(x, y, bx, by);
  
  }
  
  //void mousePressed(){
  //  if (checkPressed()== true){
  //     background(120, 3, 24);

  //  }
    
  //}
  
  boolean checkPressed(){
    if (mouseX >=x && mouseX <= x+width && mouseY >=y && mouseY <= y+height && mousePressed){
        fill(125);
      return true;
    } else {
      fill(255);
        return false;
    }
  }
  void goToPassage(){
      if (checkPressed() == true){
        //image(images1[imageIndex], width/2, height/2);
        //imageIndex=(imageIndex+1)% 20;
        background(random(255),random(255),random(255));
      //} else{
      //  background(0);
      }
  }
}
