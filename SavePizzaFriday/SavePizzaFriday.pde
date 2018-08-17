//                      /MAH/GAMES
//                       PRESENTS
// 
// 
//                *****  S A V E  *****
//  
//  |||||||\    ||  ==========  ==========     //\\
//  ||     |\   ||         //         //      //  \\
//  ||     |/   ||       //         //       //    \\
//  |||||||/    ||     //         //        //======\\
//  ||          ||   //         //         //        \\
//  ||          ||  ========== ========== //          \\
//
//              *****  F R I D A Y  *****
//
/**********************************************************/
/**********************************************************/
/****************** an original game by *******************/
/********************* Miguel Hidalgo *********************/
/**********************************************************/
/**********************************************************/
/****************** MFADT BOOTCAMP 2017! ******************/
/**********************************************************/
/**********************************************************/


// INDEX

/************** GUIDES **************//**** Functions ****//* P#
 
 
 // Intro & Setup Screens
 // ----
 //  gameScreen =    1: Intro screen    —> introScreen();         1
 
 
 // Game Screens
 // ----
 //  gameScreen = 100:  Text From Sven  —> gameScreenText();      2
 //  gameScreen = 101:  Sven Threats!   —> gameScreenThreat();    3
 //  gameScreen = 102:  Sven drops      —> failScreenDrop();      4
 //  gameScreen = 110:  How to pick up? —> gameScreenPickUp();    5
 //  gameScreen = 111:  Taxi Downtwn    —> failScreenDwntwn();    6
 //  gameScreen = 120:  Subway route?   —> gameScreenSubway();    7
 //  gameScreen = 121:  No Stop 51st    —> failScreen51st();     08
 //  gameScreen = 130:  Taxi route?     —> gameScreenTaxi();     09
 //  gameScreen = 131:  5th Ave         —> failScreenFith();     10
 //  gameScreen = 140:  How many pizza? —> gameScreenStore();    11
 //  gameScreen = 150:  Which floor?    —> gameScreenFloor();    12
 //  gameScreen = 151:  Else floor      —> failScreenFloor();    13
 //  gameScreen = 152:  50 pizzas (mad) —> failScreenAmount();   14
 //  gameScreen = 152:  100 pizzas      —> gameScreenAmount();   15
 
 
 // Game Over Screen
 // ----
 //  gameOver = 404: GAME OVER!          —> gameOver();          16
 
 // Winning Screen
 // ----
 //  gameWon = 255: YOU WON!            —> gameWon();            17
 
 
 
 
 
 
 
/************ VARIABLES ************///  VARIABLES

int gameScreen = 1;


import ddf.minim.*;
AudioPlayer player;
Minim minim;//audio context


PImage pizzaLogo;
PImage pizzaLogoSmall;
PImage mahLogo;
PImage frameRegular;
PImage framePlaying;
PImage mahLogoBottom;
PImage gameOverPizza;
PImage screen1;
PImage screen100;
PImage screen101;
PImage screen110;
PImage screen111;
PImage screen120;
PImage screen121;
PImage screen130;
PImage screen131;
PImage screen140;
PImage screen150;
PImage screen151;
PImage screen152;
PImage screen156;
PImage screen153;
PImage screen255;
PImage screen404;


PFont centrale;
PFont arcade;

int logoWidth;
int logoHeight;
int yQuarter;
int xCenter;
int yCenter;

int xPosition;
int yPosition;

int xSpeed;
int ySpeed;


/************** SETUP **************///  SETUP

void setup() {
  
//Basic  
  size(500, 750);
  background(3, 3, 3);

//Theme song
  minim = new Minim(this);
  player = minim.loadFile("song.mp3");
  player.play();

//Sizes
  xCenter=width/2;
  yCenter=height/2;
  yQuarter=height/3;
  logoWidth = 150;
  logoHeight = 100;
  xPosition = 115;
  yPosition = 105;
  xSpeed = 1;
  ySpeed = 4;
  
//Images
  pizzaLogo = loadImage ("img/Logo.png");
  pizzaLogoSmall = loadImage ("img/logosmall.png");
  frameRegular = loadImage ("img/gameframe.png");
  mahLogoBottom = loadImage ("img/mahlogo.png");
  mahLogo = loadImage ("img/mahgames.png");
  framePlaying = loadImage ("img/gameframeplaying.png");
  gameOverPizza = loadImage("img/flyingpizza.png");
 
 
//Screens
  screen1 =   loadImage ("img/screens/1.png");
  screen100 = loadImage ("img/screens/100.png");
  screen101 = loadImage ("img/screens/101.png");
  screen110 = loadImage ("img/screens/110.png");
  screen111 = loadImage ("img/screens/111.png");
  screen120 = loadImage ("img/screens/120.png");
  screen121 = loadImage ("img/screens/121.png");
  screen130 = loadImage ("img/screens/130.png");
  screen131 = loadImage ("img/screens/131.png");
  screen140 = loadImage ("img/screens/140.png");
  screen150 = loadImage ("img/screens/150.png");
  screen151 = loadImage ("img/screens/151.png");
  screen152 = loadImage ("img/screens/152.png");
  screen153 = loadImage ("img/screens/153.png");
  screen156 = loadImage ("img/screens/156.png");
  screen255 = loadImage ("img/screens/255.png");
  screen404 = loadImage ("img/screens/404.png");
  
//Fonts
  arcade = createFont ("fonts/arcade.ttf", 13);
  
}


/************** DRAW **************///  DRAW

void draw() {

  if (gameScreen == 1) {              // 1
    introScreen();
  } else if (gameScreen == 100) {     // 2
    gameScreenText();
  } else if (gameScreen == 101) {     // 3
    gameScreenThreat();
  } else if (gameScreen == 110) {     // 4
    gameScreenPickUp();
  } else if (gameScreen == 111) {     // 5
    failScreenDwntwn();
  } else if (gameScreen == 120) {     // 6
    gameScreenSubway();
  } else if (gameScreen == 121) {     // 7
    failScreen51st();
  } else if (gameScreen == 130) {     // 8
    gameScreenTaxi();
  } else if (gameScreen == 131) {     // 9
    failScreenFith();
  } else if (gameScreen == 140) {     //10
    gameScreenStore();
  } else if (gameScreen == 150) {     //11
    gameScreenFloor();
  } else if (gameScreen == 156) {     //12
    gameScreenFloor5();
  } else if (gameScreen == 151) {     //13
    failScreenFloor();
  } else if (gameScreen == 152) {     //14
    failScreenAmount();
  } else if (gameScreen == 404) {     //15
    gameOver();
  } else if (gameScreen == 255) {     //16
    gameWon();
  }
}

/************ SCREENS ************///  SCREENS*************p#





//INTRO SCREEN *********************************************/   INTRO SCREEN         1
//**********************************************************/

void introScreen() {

  background(3, 3, 3);

  //Images//
  logoPizza();
  mahLogoTop();
  mahLogoBottom();
  frameRegular();

  //Text//
  textFont(arcade);
  fill(253, 175, 254);
  textAlign(CENTER);
  text("HELP SVEN SAVE NCY", xCenter, 435);
  text("FROM HUNGRY DT STUDENTS", xCenter, 458);

  //Input//
  fill(255);
  text("HIT 'A' KEY", xCenter, 557);
  text("TO START", xCenter, 580);

  //Start if statemnt
  if (gameScreen == 1) {
    if (key == 'a' || key == 'A') {
      gameScreen = 100;
      delay(100);
    }
  }
}
//END*******************************************************/   INTRO SCREEN - END -  1






//TEXT FROM SVEN********************************************/   TEXT FROM SVEN        2
//**********************************************************/

void gameScreenText() {
  background(3, 3, 3);

  background(3, 3, 3);
  image(screen100, 0, 0, 500, 750);

  if (gameScreen == 100) {
    if (key == 'y' || key == 'Y') {
      gameScreen = 110;
    } else if (key == 'n' || key == 'N') {
      gameScreen = 101;
    }
  }
}
//END*******************************************************/   TEXT FROM SVEN - END- 2 





//THREAT FROM SVEN********************************************/   SVEN THREATS        3          3
//**********************************************************/

void gameScreenThreat() {

  background(3, 3, 3);
  image(screen101, 0, 0, 500, 750);


  if (key == 'c' || key == 'C') {
    gameScreen = 110;
  } else if (key == 'd' || key == 'D') {
    gameScreen = 404;
  }
}
//END*******************************************************/   SVEN THREATS - END -   3




//HOW TO PICK UP********************************************/   HOW TO PICK UP         4
//**********************************************************/

void gameScreenPickUp() {

  background(3, 3, 3);
  image(screen110, 0, 0, 500, 750);  

  if (key == 'a' || key == 'A') {
    gameScreen = 120;
  } else if (key == 'b' || key == 'B') {
    gameScreen = 130;
  }
}


//END*******************************************************/   HOW TO PICK UP - END - 4





//TAXI DOWNTWN**********************************************/   TAXI DOWNTWN           5
//**********************************************************/

void failScreenDwntwn() {
  background(3, 3, 3);
  image(screen111, 0, 0, 500, 750);

  if (key == 'f' || key == 'F') {
    gameScreen = 404;
  } 

}
//END*******************************************************/   TAXI DOWNTWN - END -   5





//SUBWAY ROUTE**********************************************/   SUBWAY ROUTE           6
//**********************************************************/

void gameScreenSubway() {

  background(3, 3, 3);
  image(screen120, 0, 0, 500, 750);


  if (gameScreen == 120) {
    if (key == '6') {
      gameScreen = 140;
      delay(300);
    } else if (key == '4' || key == '5') {
      gameScreen = 121;
      delay(300);
    }
  }
}
//END*******************************************************/   SUBWAY ROUTE - END -   6





//NO STOP ON 51st ST****************************************/   NO STOP ON 51st ST     7
//**********************************************************/

void failScreen51st() {

  background(3, 3, 3);
  image(screen121, 0, 0, 500, 750);

  if (key == 'f' || key == 'F') {
    gameScreen = 404;
  } 
}
//END*******************************************************/   NO STOP ON 51..- END   7





//TAXI ROUTE************************************************/   TAXI ROUTE             8
//**********************************************************/

void gameScreenTaxi() {

  background(3, 3, 3);
  image(screen130, 0, 0, 500, 750);


  if (gameScreen == 130) {
    if (key == 'c' || key == 'C') {
      gameScreen = 140;
      delay(300);
    } else if (key == 'd' || key == 'D') {
      gameScreen = 131;
      delay(300);
    }
  }
}
//END*******************************************************/   TAXI ROUTE - END -     8





//CONSTRUCTION**********************************************/   CONSTRUCTION           9
//**********************************************************/

void failScreenFith() {

  background(3, 3, 3);
  image(screen131, 0, 0, 500, 750);

  if (key == 'f' || key == 'F') {
    gameScreen = 404;
  } 
}
//END*******************************************************/   CONSTRUCTION - END -   9






//HOW MANY PIZZAS*******************************************/   HOW MANY PIZZAS       10
//**********************************************************/

void gameScreenStore() {

  background(3, 3, 3);
  image(screen140, 0, 0, 500, 750);


  if (gameScreen == 140) {
    if (key == 'a' || key == 'A') {
      gameScreen = 156;
      delay(300);
    } else if (key == 'b' || key == 'B') {
      gameScreen = 150;
      delay(300);
    }
  }
}
//END*******************************************************/   HOW MANY PIZZAS -END  10





//WHICH FLOOR***********************************************/   WHICH FLOOR           11
//**********************************************************/

void gameScreenFloor() {

  background(3, 3, 3);
  image(screen150, 0, 0, 500, 750);

  if (gameScreen == 150) {
    if (key == '5') {
      gameScreen = 153;
      delay(300);
    } else if(key == '6' || key == '1' || key == '2' || key == '3' || key == '4' || key == '7'){
      gameScreen = 151;
      delay(300);
    }
  }
  }

//END*******************************************************/   WHICH FLOOR - END -   11






//WHICH FLOOR 50********************************************/   WHICH FLOOR           12
//**********************************************************/

void gameScreenFloor5() {

  background(3, 3, 3);
  image(screen156, 0, 0, 500, 750);

  if (gameScreen == 156) {
    if (key == '5') {
      gameScreen = 152;
      delay(300);
    } else if(key == '6' || key == '1' || key == '2' || key == '3' || key == '4' || key == '7'){
      gameScreen = 151;
      delay(300);
    }
  }
  }

//END*******************************************************/ WHICH FLOOR 50 - END -  12





//ELSE FLOOR************************************************/   ELSE FLOOR            13
//**********************************************************/

void failScreenFloor() {

  background(3, 3, 3);
  image(screen151, 0, 0, 500, 750);

  if (key == 'f' || key == 'F') {
    gameScreen = 404;
  } 
}
//END*******************************************************/   ELSE FLOOR - END -    13





//50 PIZZAS*************************************************/   50 PIZZAS             14
//**********************************************************/

void failScreenAmount() {

  background(3, 3, 3);
  image(screen152, 0, 0, 500, 750);

  if (key == 'f' || key == 'F') {
    gameScreen = 404;
  } 
}
//END*******************************************************/   50 PIZZAS  - END -    14





//100 PIZZAS************************************************/   100 PIZZAS            15
//**********************************************************/

void gameScreenAmount() { 

  background(3, 3, 3);
  image(screen151, 0, 0, 500, 750);


  if (key == 'F') {
    gameScreen = 153;
    delay(300);
  }
}
//END*******************************************************/   100 PIZZAS  - END -   15





//GAME OVER*************************************************/   GAME OVER             16
//**********************************************************/

void gameOver() { 

  background(3, 3, 3);
  image(screen404, 0, 0, 500, 750);
  
    image(gameOverPizza,xPosition,yPosition);
    
    xPosition = xPosition + xSpeed;
    yPosition = yPosition + ySpeed;
    
    if(xPosition>230 || xPosition <-30){
    xSpeed *= -1;}
   
    if(yPosition>540 || yPosition<-10){
    ySpeed *=  -1;}
  
    
 
  
}
//END*******************************************************/   GAME OVER  - END -    16





//YOU WON***************************************************/   YOU WON              17
//**********************************************************/

void gameWon() {


  background(3, 3, 3);
  image(screen255, 0, 0, 500, 750);

  if (gameScreen == 255) {
    if (key == 'A') {
      gameScreen = 100;
      delay(300);
    }
  }
}
//END*******************************************************/   YOU WON    - END -    17





/************** FUNCTIONS **************///  FUNCTIONS

void logoPizza() {
  image(pizzaLogo, 75, 177, 356, 176);
}

void logoPizzaSmall() {
  image(pizzaLogoSmall, 122, 20, 256, 46);
}

void mahLogoTop() {
  image(mahLogo, 165, 85, 170, 30);
}

void frameRegular() {
  image(frameRegular, 25, 24, 450, 769);
}

void framePlaying() {
  image(framePlaying, 25, 24, 450, 769);
}

void mahLogoBottom() {
  image(mahLogoBottom, 208, 715, (float)82.84, (float)16.58);
}

void nextScreen(int a, int b, int x, int y) {
  if (gameScreen == a) {
    if (key == 'x' || key == 'y') {
      gameScreen = b;
      delay(300);
    }
  }
}

void reboot(){
   
  if(gameScreen == 404){
   
    gameScreen = 1;
   
  } 
}


void stop()
{
  player.close();
  minim.stop();
  super.stop();
}

/************************************/
/************************************/
/************* CREDITS **************/
/************************************/
/************************************/

// SAVE PIZZA FRIDAY
// Project by Miguel Hidalgo
// The New School, Parsons Shcool of Design
// Master of Fine Arts, Design & Techonology
// Bootcamp 2017
// Section A "Scyther"
// Coding Class
// Instructor: Paolo Villanueva
//
// Inspiration: The original Pizza Nights by Sven Travis!
//
// Tutorials and sites used to learn and achieve the results:
//
// ** The Ultimate Guide To Processing by Oguz Gelal
// *** Available at: 
// **** https://www.toptal.com/game/ultimate-guide-to-processing-simple-game 
// **** Used on (08/04/2017)
//
// ** Images used:
// *** http://imgur.com/8sdby0n
// *** https://www.youtube.com/watch?v=zQsiH7XAMzM
// *** http://www.minecraftforum.net/forums/minecraft-pocket-edition/mcpe-maps/1983987-city-of-mhttp://imgur.com/vNoqgAK
// *** http://heads.freshcoal.com/img/pizza.png
// *** https://i.ytimg.com/vi/25PpMabgSCQ/hqdefault.jpg
// *** https://lh3.ggpht.com/e1gykDptp3OqP8OOjcNZ27g1NG8AgqDzRgkGl4R2olZT5_6hFCjP8ALbJw_1l5ZV4Q=h900
// *** https://media.giphy.com/media/RLMIDDi0tPtKM/giphy.gif
// *** http://clipart-library.com/clipart/qiBALM9aT.htm
// *** http://img00.deviantart.net/184a/i/2015/121/2/b/fnaf_office_minecraft_ver__by_endertigerbooks-d8rt339.png
// *** http://www.mediafire.com/convkey/b505/s3zd1buctmgqnfvzg.jpg?size_id=7
// *** http://media.indiedb.com/images/articles/1/118/117425/PizzaWhirled.png
//
// ** Theme Song
// *** Licensor's Author Username:
// **** HitsLab
// *** Licensee:
// **** Miguel Hidalgo
// *** Item Title:
// **** "Game"
// *** Item URL:
// **** https://audiojungle.net/item/this-is-funny/19555774
//
//
//
//
//                      /MAH/GAMES
// 
// 
//                *****  S A V E  *****
//  
//  |||||||\    ||  ==========  ==========     //\\
//  ||     |\   ||         //         //      //  \\
//  ||     |/   ||       //         //       //    \\
//  |||||||/    ||     //         //        //======\\
//  ||          ||   //         //         //        \\
//  ||          ||  ========== ========== //          \\
//
//              *****  F R I D A Y  *****
//
/**********************************************************/
/**********************************************************/
/****************** an original game by *******************/
/********************* Miguel Hidalgo *********************/
/**********************************************************/
/**********************************************************/
/**********************************************************/


                  //| //|| //|| //|| //  //
                 //||// ||// ||// ||//  //
                // ||/  ||/  ||/  ||/  //

                        //GAMES//
