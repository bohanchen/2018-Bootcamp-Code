import processing.sound.*;
import ddf.minim.*;

//contents

//String landing = "Hey guys, Dave Barry is here. Just to be clear, I am the best history teacher this world ever XXXX seen. 
//So today, I am here to spread out a message that many people think learning history is boring, which is completely XXXXX.
//I am gonna just DDOS these people if they don’t care about history. Because I am the best history teacher this 
//world ever XXXX seen, I have some responsibilities. So I am gonna teach you guys a little bit about World War II, 
//which is very important to us. With my customize positive mental attitutes, 
//we will learn to value the peace and don’t make the same XXXXX mistakes again, though we are still making the wrong choice everyday.";


Minim minim;// load the minim class
AudioPlayer LandingPage;
AudioPlayer Allies;
AudioPlayer AmericanRole;
AudioPlayer Axis;
AudioPlayer Ending;
AudioPlayer GermanReactions;
AudioPlayer Intro;
AudioPlayer PeopleDied;
AudioPlayer TurningPoint;
AudioPlayer toPeace;


//Bohan Chen
//A Sort of History of WWII

PImage Landing;
PImage Scene01;
PImage Scene01_A;
PImage Scene01_B;
PImage Intro_Scene;
PImage Choose_Sides;
PImage Choose_Sides_A;
PImage Choose_Sides_B;
PImage People_Died;
PImage People_Died01;
PImage Turning_Point;
PImage Turning_Point01;
PImage German_Response;
PImage German_Response01;
PImage American_Role;
PImage American_Role01;
PImage Postwar_Era;
PImage End;

//init the counter for scene change
int counter= 0;

//String input;
void setup(){
  //Screen Size, iPad Pro 10.5 inch
  size(1112, 834);
 
  
  //Set up sound
  //Allies = new SoundFile(this, "Allies.wav");
  //AmericanRole = new SoundFile(this, "AmericanRole.wav");
  //Axis = new SoundFile(this, "Axis.wav");
  //Ending = new SoundFile(this, "End.wav");
  //GermanReactions = new SoundFile(this, "GermanReactions.wav");
  //Intro = new SoundFile(this, "Intro.wav");
  //LandingPage = new SoundFile(this, "landing.wav");
  //PeopleDied = new SoundFile(this, "People_Died.wav");
  //TurningPoint = new SoundFile(this, "TurningPoint.wav");
  
  minim = new Minim(this);
  LandingPage = minim.loadFile("landing.wav");
  Allies = minim.loadFile("Allies.wav");
  AmericanRole = minim.loadFile("AmericanRole.wav");
  Axis = minim.loadFile("Axis.wav");
  Ending = minim.loadFile("End.wav");
  GermanReactions = minim.loadFile("GermanReactions.wav");
  Intro = minim.loadFile("Intro.wav");
  PeopleDied = minim.loadFile("People_Died.wav");
  TurningPoint = minim.loadFile("TurningPoint.wav");
  toPeace = minim.loadFile("toPeace.wav");

  //LandingPage.play();
  
  //file = new SoundFile(this, "1.mp3");
  //file.play();
  
  
  //Load all customize screens
  Landing = loadImage("images/Landing.png"); //0
  Scene01 = loadImage("images/Scene01.png"); //1
  Scene01_A = loadImage("images/Scene01_A.png");//2
  Scene01_B = loadImage("images/Scene01_B.png");//3
  Intro_Scene = loadImage("images/Intro_Scene.png");//4
  Choose_Sides = loadImage("images/Choose_Sides.png"); //5
  Choose_Sides_A = loadImage("images/Choose_Sides_A.png"); //6
  Choose_Sides_B = loadImage("images/Choose_Sides_B.png");//7
  People_Died = loadImage("images/People_Died.png");//8
  People_Died01 = loadImage("images/People_Died01.png");//9
  Turning_Point = loadImage("images/Turning_Point.png");//10
  Turning_Point01 = loadImage("images/Turning_Point01.png");//11
  German_Response = loadImage("images/German_Response.png");//12
  German_Response01 = loadImage("images/German_Response01.png");//13
  American_Role = loadImage("images/America_Role.png");//14
  American_Role01 = loadImage("images/America_Role01.png");//15
  Postwar_Era = loadImage("images/Postwar_Era.png");//16
  End = loadImage("images/End.png");//17

}


void draw(){
  
  if(counter == 0){
    DrawLanding();  
  } else if (counter == 1){
    DrawScene01();
  } else if (counter == 2){
    DrawScene01_A();
  } else if (counter == 3){
    DrawScene01_B();
  } else if (counter == 4){
    DrawIntro_Scene();
  } else if (counter == 5){
    DrawChoose_Sides();
  } else if (counter == 6){
    DrawChoose_Side_A();
  } else if (counter == 7){
    DrawChoose_Side_B();
  } else if (counter == 8){
    DrawPeople_Died();
  } else if (counter == 9){
    DrawPeople_Died01();
  } else if (counter == 10){
    DrawTurning_Point();
  } else if (counter == 11){
    DrawTurning_Point01();
  } else if (counter == 12){
    DrawGerman_Response();
  } else if (counter == 13){
    DrawGerman_Response01();
  } else if (counter == 14){
    DrawAmerican_Role();
  } else if (counter == 15){
    DrawAmerican_Role01();
  } else if (counter == 16){
    DrawPostwar_Era();
  } else if (counter == 17){
    DrawEnd();
  }
}

void keyReleased(){
  if(counter == 0){
    if (key == 's' || key == 'S'){
      counter = 1;
      LandingPage.pause();
    }
  } else if(counter == 1){
     if (key == 'a' || key == 'A'){
      counter = 2;
      //file1.play();
    }else if (key == 'b' || key == 'B'){
      counter = 3;
    }
  } else if (counter == 2){
     if (keyCode == RIGHT){
      counter = 4;
    }
  } else if (counter == 3){
     if (keyCode == RIGHT){
       counter = 4;
    } 
  } else if (counter == 4){
      if(keyCode == RIGHT){
      counter = 5;
    }
  } else if (counter == 5){
      if (key == 'a' || key == 'A' ){
        counter = 6; 
      }else if (key == 'b' || key == 'B'){
        counter = 7; 
    }
  } else if (counter == 6){
      if (keyCode == RIGHT){
        counter = 8;
    }
  } else if (counter == 7){
      if (keyCode == RIGHT){
        counter = 8; 
    }
  } else if (counter == 8){
      if (key == 'a' || key == 'A' ||key == 'b' || key == 'B' ){
        counter = 9;
    }
  } else if (counter == 9){
      if (keyCode == RIGHT){
        counter = 10;
    }
  } else if (counter == 10){
      if (key == 'a' || key == 'A' ||key == 'b' || key == 'B' ){
        counter = 11;
    }
  } else if (counter == 11){
    if (keyCode == RIGHT){
      counter = 12;
    }
  } else if (counter == 12){
    if (key == 'a' || key == 'A' ||key == 'b' || key == 'B' ){
      counter = 13;
    }
  } else if (counter == 13){
    if (keyCode == RIGHT){
      counter = 14;
    }
  } else if (counter == 14){
    if (key == 'a' || key == 'A' ||key == 'b' || key == 'B' ){
      counter = 15;
    }
  } else if (counter == 15){
    if (keyCode == RIGHT){
      counter = 16;
    }
  } else if (counter == 16){
    if (keyCode == RIGHT){
      counter = 17;
    }
  } else  if (counter == 17){
    if (key == 'r' || key == 'R'){
      counter = 0;
    }
  }

}

//=================Draw Landing Page=================
void DrawLanding(){
  image(Landing, 0, 0);
  LandingPage.play();
  toPeace.pause();
}
 
//=================Draw Scene01=================
void DrawScene01(){
  image(Scene01, 0, 0);
}

//=================Draw Scene01_A=================
void DrawScene01_A(){ //the counter now is 2
  background(0,0,0);
  image(Scene01_A, 0, 0);
}

//=================Draw Scene01_B=================
void DrawScene01_B(){ // the counter now is 3
  image(Scene01_B, 0 , 0);
}

//=================Draw Intro_Scene=================
void DrawIntro_Scene(){ // the counter now is 4
  image(Intro_Scene, 0, 0);
  Intro.play();
}

//=================Choose_Sides=================
void DrawChoose_Sides(){ // the counter now is 5
  image (Choose_Sides, 0, 0);
  Intro.pause();
}

//=================Choose_Side_A=================
void DrawChoose_Side_A(){ // The counter is 6
  image(Choose_Sides_A, 0, 0);
  Allies.play();
}

//=================Choose_Side_B=================
void DrawChoose_Side_B(){ // the counter is 7
  image(Choose_Sides_B, 0, 0);
  Axis.play();
}

//=================People_Died=================
void DrawPeople_Died(){ // the counter is 8
  image(People_Died, 0, 0);
  Axis.pause();
  Allies.pause();
}

//=================People_Died01=================
void DrawPeople_Died01(){ //the counter is 9
  image(People_Died01, 0, 0);
  PeopleDied.play();
}

//=================Turning_Point=================
void DrawTurning_Point(){ // the counter is 10
  image(Turning_Point, 0, 0);
  PeopleDied.pause();
}

//=================Turning_Point01=================
void DrawTurning_Point01(){ // the counter is 11
  image(Turning_Point01, 0, 0);
  TurningPoint.play();
}

//=================German_Response=================
void DrawGerman_Response(){ // the counter is 12
  image(German_Response, 0, 0);
  TurningPoint.pause();
}

//=================German_Response01=================

void DrawGerman_Response01(){ // the counter is 13
  image(German_Response01, 0, 0);
  GermanReactions.play();
}

//=================American_Role=================

void DrawAmerican_Role(){  //the counter is 14
  image(American_Role, 0, 0);
  GermanReactions.pause();
}

//=================American_Role01=================
void DrawAmerican_Role01(){ //the counter is 15
  image(American_Role01, 0, 0);
  AmericanRole.play();
}


//=================Postwar_Era=================
void DrawPostwar_Era(){ //the counter is 16
  image(Postwar_Era, 0, 0);
  AmericanRole.pause();
  Ending.play();
}


//=================End=================
void DrawEnd(){
  image(End, 0, 0);
  toPeace.play();
  Ending.pause();
}
