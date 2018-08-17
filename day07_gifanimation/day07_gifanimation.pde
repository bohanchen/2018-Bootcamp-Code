//Paolo PV

int imageIndex=0;
float xPosition;
boolean faceLeft=true;
PImage bg;
//Delare two arrays of PImage respectively
//Face left
PImage[] images1=new PImage[10];

//Face Right
PImage[] images2=new PImage[10];

void setup() {
  size(1280, 720);
  bg = loadImage("bg.jpg");

  //Use for loop to load array of Images
  for ( int i = 0; i< 10; i++ ) {
    images1[i]=loadImage(i+".png");
    images2[i]=loadImage("f"+i+".png");
  }

  //speed
  //frameRate(0);
}

void draw() {
  image(bg, 0, 0, width, height);

  //Check running direction and load different array of images
  if (faceLeft==true) {
    image(images1[imageIndex], width/2+xPosition, height/2);
    imageIndex=(imageIndex+1)% 10;
  }
  if (faceLeft==false) { 
    image(images2[imageIndex], width/2+xPosition, height/2);
    imageIndex=(imageIndex+1)% 10;
  }

  //RETURN
  if (xPosition > 640) {
    xPosition = -640;
  }
  //println(xPosition);

  if (xPosition < -640) {
    xPosition = 640;
  }
  //println(xPosition);
}

//Keyboard control
void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      faceLeft=true;
      xPosition = xPosition - 30;
    } else if (keyCode == RIGHT) {
      faceLeft=false;
      xPosition = xPosition + 30;
    }
    //println(faceLeft);
  }
}
