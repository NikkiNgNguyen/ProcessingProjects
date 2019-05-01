int circleSize = 20;

void setup(){
  size(400,400);
}
 
void draw(){
  background(240);
  fill(0,255,0);
  ellipse(0,0,circleSize*2,circleSize*2);
}

void mousePressed(){
  circleSize = circleSize*2;
}