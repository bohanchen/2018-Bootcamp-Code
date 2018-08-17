// Example 14-18: Object-oriented solar system
int num = 30;
float[] theta = new float[num];      // Rotation around sun
float[] diameter = new float [num];   // Size of planet
float[] distance = new float [num];   // Distance from sun
float[] orbitspeed = new float [num]; // Orbit speed

void setup() {
  size(1000, 1000);

  // The planet objects are initialized using the counter variable
  for (int i = 0; i < num; i++ ) {
    distance[i] = 64 + i*32;
    diameter[i] = 24;
    orbitspeed[i] = random(0.1, 0.2);
  }
  
  background(0);
  noStroke();
}

void draw() {
  //fill(0, 40);
  //rect(0, 0, width, height);
  // Drawing the Sun
  pushMatrix();
  translate(width/2, height/2);
  noStroke();
  fill(255);
  ellipse(0, 0, 64, 64);

  // Drawing all Planets
  for (int i = 0; i < num; i++ ) {
    update(i);
    display(i);
  }
  popMatrix();
}

void update(int index) {
  // Increment the angle to rotate
  theta[index] += orbitspeed[index];
}

void display(int index) {
  // Before rotation and translation, the state of the matrix is saved with pushMatrix().
  pushMatrix(); 
  // Rotate orbit
  rotate(theta[index]); 
  // Translate out distance
  translate(distance[index], 0); 
  stroke(0);
  fill(175);
  ellipse(0, 0, diameter[index], diameter[index]);
  // Once the planet is drawn, the matrix is restored with popMatrix() so that the next planet is not affected.
  popMatrix();
}
