size(800,400);

background(150);
int cirSize = 20;
int cirSpace = width;
int cirX = 0;
while(cirX < width){
  fill(255);
  ellipseMode(CORNER);
  ellipse(cirX,100,cirSize,cirSize);
  cirX = cirX + width/10;
  }

  
  