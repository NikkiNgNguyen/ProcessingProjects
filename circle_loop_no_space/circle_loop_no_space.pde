size(400,400);

background(150);
int cirSize = width/10;
//int cirSpace = width;
int cirX = 0;
while(cirX < width){
  fill(255);
  ellipseMode(CORNER);
  //left to right x-axis
  ellipse(cirX,0,cirSize,cirSize);
  //bottom left to right
  ellipse(cirX,height-cirSize,cirSize,cirSize);
  //diagonal left to right
  ellipse(cirX,cirX,cirSize,cirSize);
  //diagonal right to left
  ellipse(cirX,height-cirX,cirSize,cirSize);
  //up down left side
  ellipse(0,cirX,cirSize,cirSize);
  //up down right side
  ellipse(width-cirSize,cirX,cirSize,cirSize);
  cirX = cirX +cirSize;
  }
  
  