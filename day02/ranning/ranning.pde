
Drop[] drop = new Drop[100];

void setup(){
  
  size(720, 480);
  for (int i = 0; i<drop.length; i++){
    drop[i] = new Drop();
  }
  //d = new Drop();
}

void draw(){

  background(0);
  for(int i = 0; i<drop.length; i++){
    drop[i].show();
    drop[i].fall();
   }

}
