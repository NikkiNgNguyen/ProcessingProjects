void setup() {
  size(540, 500);
  noStroke();
  background(255);
}

void draw() {
  //variables
  float r = 0;
  float g = 50;
  float b = 50;
  int stripeX = 0;
  int stripeNum = 1;
  int colorWidth = width/15;

  //loop stripes
  while (stripeX < width) {
    fill(r, g, b);
    rect(stripeX, 0, colorWidth, height);
    //invert colors with mouse
    if (mouseX >= stripeX && mouseX <= stripeX+colorWidth && mouseY >= 0 && mouseY <= height) {
      fill(255-r, 255-g, 255-b);
    } 
    //invert odds
    else if (keyPressed && key == '1' && stripeNum % 2 == 1) {
      fill(255-r, 255-g, 255-b);
      //invert evens
    } else if (keyPressed && key == '2' && stripeNum % 2 ==0) {
      fill(255-r, 255-g, 255-b);
    } else {
      fill(r, g, b);
    }
    rect(stripeX, 0, colorWidth, height);
    r = r+255/14;
    stripeX = stripeX + colorWidth;
    stripeNum ++;
  }
}