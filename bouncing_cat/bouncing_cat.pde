//declared 

int num = 40; 
Cat[] cats = new Cat[num];

void setup() {
  background(0);
  size(800, 800);
  //noFill();
  //stroke(2);
  for (int i = 0; i<cats.length; i++) {
    cats[i] = new Cat(random(width), random(height), random(20));
  }
}

void draw() {
  background(0);

  for (int i = 0; i< num; i++) {
    cats[i].run();
  }
}
