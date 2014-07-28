int i = 0;
int x = 0;
int cloud = 0;
int rectx = 0;
int rectY = 200;
int birdx = 0;
int birdy = 0;
int score = 0;
int bars = 0;
int gameover = 0;
void setup() {
  size(1000, 400);
}
void draw() {
  background(100,200,255,255); 
  // clouds
  fill(255);
  ellipse((width + 500) - ((cloud + 500)),
  0,
  250,
  20);
  // ground
  fill(100,255,100,255);
  rect(0,
  300,
  width,
  100);
  // bird
  fill(0, 0, 255);
  ellipse(mouseX, 
  (float)(mouseY + (100+score/125)*Math.cos(2*Math.PI*i/100)), 
  20, 
  20); 
  fill(100, 100, 255);
  ellipse((float)(mouseX + 20*Math.cos(2*Math.PI*i/20)), 
  (float)(mouseY + (100+score/125)*Math.cos(2*Math.PI*i/100)), 
  20, 
  20);
  ellipse((float)(mouseX + 20*Math.cos(2*Math.PI*(i-250)/20)), 
  (float)(mouseY + (100+score/125)*Math.cos(2*Math.PI*i/100)), 
  20, 
  20);
  // obstacle
  rect(width - x, 
  rectY, 
  50, 
  200);
  //integers
  rectx = width - x;
  birdx = mouseX;
  birdy = (int)(mouseY + 100*Math.cos(2*Math.PI*i/100));
  if(gameover == 0) {
    score = score + 2;
  } else {
  score = score;
  }
  if (i < width) {
    i++;
  } else {
    i = 0;
  }
  if(cloud < width) {
    cloud = cloud + 2 + score/1000;
  } else {
    cloud = 0;
  }
  if (x < width) {
    x = x + 10 + score/50;
  } else {
    x = 0;
  }
  if (x == 0) {
    rectY = (int)(random(height/4));
  }
  if(intersect(birdx,20,rectx,50) && intersect(birdy,20,rectY,200)) {
    println("GAME OVER score:" + (score + (bars * 100)) + " Bars Survived:" + bars);
    gameover = 1;
  }
  if(intersect(birdx,10,rectx,10) && (birdy != rectY) && (gameover == 0)) {
    bars = bars + 1;
    print("+ 100                                                                           ");
  }
}

// functions
boolean intersect(float x0, float l0, float x1, float l1) {
  return ((x1 >= x0) && (x1 <= x0 + l0)) || 
  ((x1 + l1 >= x0) && ( x1 + l1<= x0 + l0))  ||
  ((x1 < x0) && (x1 + l1 >= x0));
}


