//variables
int r = 0;
int g = 50;
int b = 50;

size(800,500);
noStroke();
background(255);

int colorWidth = width/200;
int whiteWidth = width/15;
int stripeX = 0;

for (int i = 0; i <= 255; i = i + 255/14){
 fill(i,50,50);
 rect(stripeX,0,colorWidth, height);
 //X position of each stripe
 stripeX = stripeX + colorWidth + whiteWidth;
}
while (stripeX < width) {
 rect(stripeX,0,colorWidth, height);
 //X position of each stripe
 stripeX = stripeX + colorWidth + whiteWidth;
}