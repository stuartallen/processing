int i = 0;
int x = 0;
int range = 200;
int speed = 500;
int ldis = 135;
int llen = 500;
void setup() {
  size(500, 500);
}
void draw () {
  background(255);
  //body
  stroke(random(255), random(255), random(255));
  fill(100, 100 + x, 100 + x, 10);
  rect((float)(width/2-125 + range*1/4*Math.cos(2*Math.PI*x/speed)),
       (float)(height/2-125 + range*1/4*Math.sin(2*Math.PI*x/speed)),
       250,
       250);
  rect((float)(width/2-100 + range*1/2*Math.cos(2*Math.PI*x/speed)),
       (float)(height/2-100 + range*1/2*Math.sin(2*Math.PI*x/speed)),
       200,
       200);
  rect((float)(width/2-75 + range*3/4*Math.cos(2*Math.PI*x/speed)),
       (float)(height/2-75 + range*3/4*Math.sin(2*Math.PI*x/speed)),
       150,
       150);
  rect((float)(width/2-50 + range*Math.cos(2*Math.PI*x/speed)),
       (float)(height/2-50 + range*Math.sin(2*Math.PI*x/speed)),
       100,
       100);
  //connecting lines
  fill(100, 100 + x, 100 + x, 150);
  line(width/2.0-ldis, 
       height/2.0-ldis, 
       (float)(width/2 + range*Math.cos(2*Math.PI*x/speed)), 
       (float)(height/2 + range*Math.sin(2*Math.PI*x/speed)));
  line(width/2.0 + ldis, 
       height/2.0 + ldis, 
       (float)(width/2 + range*Math.cos(2*Math.PI*x/speed)), 
       (float)(height/2 + range*Math.sin(2*Math.PI*x/speed)));
  line(width/2.0 - ldis, 
       height/2.0 + ldis, 
       (float)(width/2 + range*Math.cos(2*Math.PI*x/speed)), 
       (float)(height/2 + range*Math.sin(2*Math.PI*x/speed)));
  line(width/2.0 + ldis, 
       height/2.0 - ldis, 
       (float)(width/2 + range*Math.cos(2*Math.PI*x/speed)), 
       (float)(height/2 + range*Math.sin(2*Math.PI*x/speed)));
  //crossing lines 
  line((float)(width/2.0-ldis), 
       (float)(height/2.0-ldis), 
       (float)(width/2 + range*Math.cos(2*Math.PI*x/speed) + llen), 
       (float)(height/2 + range*Math.sin(2*Math.PI*x/speed) + llen));
  line((float)(width/2.0 + ldis), 
       (float)(height/2.0 + ldis), 
       (float)(width/2 + range*Math.cos(2*Math.PI*x/speed) - llen), 
       (float)(height/2 + range*Math.sin(2*Math.PI*x/speed) - llen));
  line((float)(width/2.0 - ldis), 
       (float)(height/2.0 + ldis), 
       (float)(width/2 + range*Math.cos(2*Math.PI*x/speed) + llen), 
       (float)(height/2 + range*Math.sin(2*Math.PI*x/speed) - llen));
  line((float)(width/2.0 + ldis), 
       (float)(height/2.0 - ldis), 
       (float)(width/2 + range*Math.cos(2*Math.PI*x/speed) - llen), 
       (float)(height/2 + range*Math.sin(2*Math.PI*x/speed) + llen));
  //circles
  fill(0,0,x,100);
  ellipse((float)(width/2 + range*1/4*Math.cos(2*Math.PI*x/speed)),
          (float)(height/2 + range*1/4*Math.sin(2*Math.PI*x/speed)),
          250,
          250);
  ellipse((float)(width/2 + range*1/2*Math.cos(2*Math.PI*x/speed)),
          (float)(height/2 + range*1/2*Math.sin(2*Math.PI*x/speed)),
          200,
          200);
  ellipse((float)(width/2 + range*3/4*Math.cos(2*Math.PI*x/speed)),
          (float)(height/2 + range*3/4*Math.sin(2*Math.PI*x/speed)),
          150,
          150);
  ellipse((float)(width/2 + range*Math.cos(2*Math.PI*x/speed)), 
          (float)(height/2 + range*Math.sin(2*Math.PI*x/speed)),
           20,
           20);
  if (i < width) {
    i = i + 1;
  } else {
    i = 0;
  }
  x++;
}

