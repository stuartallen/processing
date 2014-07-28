int i = 0;
void setup() {
  size(500,1000);
  background(255);
  frameRate(50);
  }
void draw() {
  fill(255,100,100,255);
  ellipse((width - 50) - i,
          mouseY,
          50,
          50);
  fill(255,255,100,255);
  ellipse((width - 50) - i,
          mouseY + 20,
          50,
          50);
  fill(100,255,100,255);
  ellipse((width - 50) - i,
          mouseY + 40,
          50,
          50);
  fill(100,255,255,255);
  ellipse((width - 50) - i,
          mouseY + 60,
          50,
          50);
  fill(100,100,255,255);
  ellipse((width - 50) - i,
          mouseY + 80,
          50,
          50);
  fill(255,255,255,30);
  rect(0,
       0,
       width,
       height);
  if(i < 501) {
    i = i + 50;
  }else{
    i = 0;
  }
}
