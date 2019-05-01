void setup(){
  size(500,500);
}

void draw(){
  noStroke();
  fill(255,0,0);
  rect(0,0,width/2,height/2);
  fill(0,255,0);
  rect(width/2,0,width/2,height/2);
  fill(0,0,255);
  rect(0,height/2,width/2,height/2);
  fill(240,230,22);
  rect(width/2,height/2,width/2,height/2);
}