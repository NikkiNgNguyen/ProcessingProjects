float xPos, yPos, xVel, yVel;
int ballWidth = 50;
void setup() {
  size(400, 600);
  xPos = width/2;
  yPos = ballWidth/2;
  xVel = 1;
  frameRate(70);
}
void drawBall() {
  // ball will show up at the top middle of the screen
  background(255);
  fill (255, 0, 0);
  ellipse(xPos, yPos, ballWidth, ballWidth);
}

void updatePos() {
  xPos += xVel;
  yPos += yVel;

  //acceleration amount
  yVel += 0.4;
}
void bounce() {
  //should the ball bounce?
  if (yPos>= height - ballWidth /2) {
    yVel = -yVel*0.7;
    yPos = height - ballWidth/2;
  }
  if (xPos >= width-ballWidth/2
    || xPos <= ballWidth/2) {
    xVel = -xVel;
  }
}

void draw() {
  drawBall();
  updatePos();
  bounce();
}