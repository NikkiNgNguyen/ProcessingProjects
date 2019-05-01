void setup(){
  size(500,500);
}

void draw(){
  background(0,mouseX/2,mouseX/2);

  int xSquared = (mouseX - width/2) * (mouseX - height/2);
  int ySquared = (mouseY - width/2) * (mouseY - height/2);

  float radius = sqrt(xSquared + ySquared);
  ellipse(width/2,height/2, radius*2, radius*2);
}