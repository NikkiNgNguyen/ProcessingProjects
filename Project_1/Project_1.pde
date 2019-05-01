//declare global variables
int wKeyWidth;
int bKeyWidth;
PImage img;

// setup canvas and initialize MusicBox.java
void setup() {
  size(800, 500);
  background(255);
  img = loadImage("cutePony.jpg");
  MusicBox.initialize();
}

void draw() {
  //declare variables
  int wKeyWidth = width/8;
  int bKeyWidth = width/16;
  int bKeyHeight = height*7/10;
  //see if mouse is over key (-1 = white keys, i = black)
  int smallHover = -1;

  //see if mouse if over black keys (increments black keys 0-7)
  for (int i = 0; i < 8; i++) {
    int wKeyX = i * wKeyWidth;
    int bKeyX = wKeyX + wKeyWidth*3/4;
    int bKeyRight = bKeyX + bKeyWidth;
    if (mouseX >= bKeyX && mouseX <= bKeyRight && mouseY <= bKeyHeight && i !=2 && i != 6) {
      smallHover = i;
    }
  }
  // changes fill when mouse is pressed and hovered on white key
  for (int i = 0; i < 8; i++) {
    int wKeyX = i * wKeyWidth;
    int bKeyX = wKeyX + wKeyWidth*3/4;
    int wKeyRight = wKeyX + wKeyWidth;
    int notBKey = wKeyRight - bKeyWidth/2;

    //dark blue if pressed
    if (mousePressed && mouseX >= wKeyX  && mouseX <= wKeyX+wKeyWidth
      && smallHover == -1) {
      noFill();
      image(img,wKeyX,0,wKeyWidth,height);
      // light blue if hover
    } else if (mouseX >= wKeyX  && mouseX <= wKeyX+wKeyWidth
      && smallHover == -1) {
      fill(#B9F2F7);
      
      //fill white if neither of the above are in play
    } else {
      fill(255);
    }
    //draw white keys
    strokeWeight(4);
    rect(wKeyX, 0, wKeyWidth, height);
  }
  //changes fill when mouse is pressed and hovered on black key
  for (int bKey = 1; bKey <9; bKey++) {
    int blackLeft = wKeyWidth* bKey - bKeyWidth/2;
    if (mousePressed && mouseX>blackLeft && mouseX <= blackLeft + bKeyWidth && mouseY < bKeyHeight) {
      noFill();
      image(img,blackLeft, 0, bKeyWidth, bKeyHeight);
    } else if (mouseX>blackLeft && mouseX <= blackLeft + bKeyWidth && mouseY < bKeyHeight) {
      fill(#B9F2F7);
    } else {
      fill(0);
    }
    // don't draw black key on 3 and 7
    if (bKey !=3 && bKey !=7) {
      rect(blackLeft, 0, bKeyWidth, bKeyHeight);
    }
  }
}

void mousePressed() {
  int wKeyWidth = width/8;
  int bKeyWidth = width/16;
  int bKeyHeight = height*7/10;
  int smallHover = -1;

  // bring forth the notes for the keys
  int[] wKeyNotes = {60, 62, 64, 65, 67, 69, 71, 72};
  // 0 indicates no note to be played, goes to white key note
  int[] bKeyNotes = {0, 61, 63, 0, 66, 68, 70, 0, 73};

  for (int i = 0; i < 8; i++) {
    int wKeyX = i * wKeyWidth;
    int bKeyX = wKeyX + wKeyWidth*3/4;
    int bKeyRight = bKeyX + bKeyWidth;
    if (mouseX >= bKeyX && mouseX <= bKeyRight && mouseY <= bKeyHeight && i !=2 && i != 6) {
      smallHover = i;
    }
  }
  for (int i = 0; i < 8; i++) {
    int wKeyX = i * wKeyWidth;
    int bKeyX = wKeyX + wKeyWidth*3/4;
    int wKeyRight = wKeyX + wKeyWidth;
    int notBKey = wKeyRight - bKeyWidth/2;

    if (mouseX >= wKeyX  && mouseX <= wKeyX+wKeyWidth
      && smallHover == -1) {
      // plays the notes from wKeyNotes in order
      MusicBox.playNote(wKeyNotes[i], 1000);
    }
  }
  for (int i = 1; i <9; i++) {
    int blackLeft = wKeyWidth* i - bKeyWidth/2;
    if (mouseX>blackLeft && mouseX <= blackLeft + bKeyWidth && mouseY < bKeyHeight && i != 3 && i != 7) {
      // plays the notes from bKeyNotes in order
      MusicBox.playNote(bKeyNotes[i], 1000);
    }
  }
}