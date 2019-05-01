//variables
float r = 0;
float g = 50;
float b = 50;

size(400,500);
noStroke();
background(255);

int colorWidth = width/15;
int whiteWidth = width/15;
int stripeX = 0;

//red gradient
for (float i = 0; i <= 255; i = i + (255/14)){
 fill(i,g,b);
 rect(stripeX,0,colorWidth, height);
 //X position of each stripe
 stripeX = stripeX + colorWidth + whiteWidth;
}

//loop stripes
while (stripeX < width) {
 rect(stripeX,0,colorWidth, height);
 //X position of each stripe
 stripeX = stripeX + colorWidth + whiteWidth;
}
//invert colors
if(mouseX > colorWidth-stripeX && mouseX < colorWidth+stripeX &&
  mouseY > height-stripeX && mouseY < height){
 println("de");
 fill(255-r,255-g,255-b);
 rect(stripeX,0,colorWidth, height);
 stripeX = stripeX + colorWidth + whiteWidth;
}

  