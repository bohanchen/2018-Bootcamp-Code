//declared 
BouncingBall myBall;
BouncingBall myBall1;
BouncingBall myBall2;
BouncingBall myBall3;
BouncingBall myBall4;
BouncingBall myBall5;
BouncingBall myBall6;
BouncingBall myBall7;
BouncingBall myBall8;
BouncingBall myBall9;
BouncingBall myBall10;
BouncingBall myBall11;
BouncingBall myBall12;

void setup(){
  size(800, 800);
  myBall = new BouncingBall(random(width), random(height), random(70));
  myBall1 = new BouncingBall(random(width), random(height), random(70));
  myBall2 = new BouncingBall(random(width), random(height), random(70));
  myBall3 = new BouncingBall(random(width), random(height), random(70));
  myBall4 = new BouncingBall(random(width), random(height), random(70));
  myBall5 = new BouncingBall(random(width), random(height), random(70));
  myBall6 = new BouncingBall(random(width), random(height), random(70));
  myBall7 = new BouncingBall(random(width), random(height), random(70));
  myBall8 = new BouncingBall(random(width), random(height), random(70));
  myBall9 = new BouncingBall(random(width), random(height), random(70));
  myBall10 = new BouncingBall(random(width), random(height), random(70));
  myBall11 = new BouncingBall(random(width), random(height), random(70));
  myBall12 = new BouncingBall(random(width), random(height), random(70));
  
}

void draw(){
  background(0);
  myBall.run();
  myBall1.run();
  myBall2.run();
  myBall3.run();
  myBall4.run();
  myBall5.run();
  myBall6.run();
  myBall7.run();
  myBall8.run();
  myBall9.run();
  myBall10.run();
  myBall11.run();
  myBall12.run();

}
