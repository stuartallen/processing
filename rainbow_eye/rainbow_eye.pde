int i = 0;
int lrange = 120;
int inrange = 120;
int ourange = 120;
void setup() {
  size(500,500);
  frameRate(40);
  background(0);
}
void draw(){
  stroke(random(255),100,random(200),255);
  //circles
  fill(random(100),100,100,10);
  ellipse(width/2,
          height/2,
          60,
          60);
  ellipse(width/2,
          height/2 - 50 * 1/3,
          120,
          120);
  ellipse(width/2,
          height/2 - 50 * 2/3,
          180,
          180);
  ellipse(width/2,
          height/2 - 50,
          240,
          240);
  //moving lines
  line(width/2 - inrange,
       height/2 - inrange,
       width/2 + i,
       height/2 + i);
  line(width/2 + inrange,
       height/2 - inrange,
       width/2 - i,
       height/2 + i);
  line(width/2,
       height/2 + inrange,
       width/2,
       height/2 - i);
  //perimeter lines
    //left turn lines
  line(width/2 - ourange,
       height/2 - ourange,
       width/2,
       height/2 - lrange* 1.75);
  line(width/2 + ourange,
       height/2 - ourange,
       width/2 + lrange,
       height/2);
  line(width/2,
       height/2 + ourange,
       width/2 - lrange,
       height/2);
    //right turn lines
  line(width/2 + ourange,
       height/2 - ourange,
       width/2,
       height/2 - lrange* 1.75);
  line(width/2,
       height/2 + ourange,
       width/2 + lrange,
       height/2);
  line(width/2 - ourange,
       height/2 - ourange,
       width/2 - lrange,
       height/2);
  if(i < 60) {
    i++;
  } else {
    i = 0;
  }
  if (lrange >= 0) {
    lrange = lrange - 1;
  } else {
    lrange = 120;
  }
}
