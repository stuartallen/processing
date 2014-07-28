int x= 1;
int i = 1;
void setup() {
  size(500,500);
}
void draw () {
  background(0,0,0,0);
  stroke(random(255),random(255),random(255));
   fill(100,100,255,255);
   ellipse((float)(width/2 + 200*Math.cos(2*Math.PI*i/25)),
           (float)(height/2 + 50*Math.sin(2*Math.PI*i/250)),
           100.0,
           100.0);
   stroke(255,255,255,100);
   fill(0,0,0,x);
   ellipse(width/2.0,
           height/2.0,
           200.0,
           200.0);
  if(i < width){
    i = i + 1;
  }else {
    i = 0;
  }
  if(x < width){
    x = x + 20;
  }else {
    x = 0;
  }
}
