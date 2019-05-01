int wKeyWidth;
int bKeyWidth;

void setup() {
  size(800, 500);
  background(255);
}

void draw() {
  int wKeyWidth = width/8;
  int bKeyWidth = width/16;
  int bKeyHeight = height*7/10;
  for (int wKeyX = 0; wKeyX < width; wKeyX +=wKeyWidth) {

    strokeWeight(4);
    fill(255);
    rect(wKeyX, 0, wKeyWidth, height);
  }
  for (int bKeyX = wKeyWidth*3/4; bKeyX < width; bKeyX += wKeyWidth) {
    if ((bKeyX <= 3*wKeyWidth) && (bKeyX >= 2*wKeyWidth) || (bKeyX <= 7*wKeyWidth) && (bKeyX >=6*wKeyWidth)) {
      continue;
    }
    fill(0);
    rect(bKeyX, 0, bKeyWidth, bKeyHeight);
  }
}