void setup(){
  size(500,500);
}

void draw(){
  background(0,mouseX/2,mouseY/2);
  float a = 0;
  a = sqrt((mouseX-250)*(mouseX-250)+(mouseY-250)*(mouseY-250));
  ellipse(250,250,a*2,a*2);
}