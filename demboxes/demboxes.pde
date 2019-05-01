void setup() {
  size(800, 200);
}
void draw() {
  background(255);
  strokeWeight(3);
  int numberOfBoxes = 4;
  int bigBoxWidth = width / numberOfBoxes;
  int smallBoxWidth = bigBoxWidth / 2;
  // Before we draw the big boxes, see if there is a small box that we are
  // hovering inside.
  // We will set this variable to a number if a small box is being hovered.
  int smallHover = -1;
  for (int i = 0; i < numberOfBoxes; i++) {
    int bigBoxLeft = i * bigBoxWidth;
    int smallBoxLeft = bigBoxLeft + bigBoxWidth / 4;
    int smallBoxRight = smallBoxLeft + smallBoxWidth;
    int smallBoxTop = bigBoxWidth / 4;
    int smallBoxBottom = smallBoxTop + smallBoxWidth;
    // See if the mouse is inside the inner box.
    if (mouseX >= smallBoxLeft && mouseX <= smallBoxRight &&
      mouseY >= smallBoxTop && mouseY <= smallBoxBottom) {
      // We can't draw the inner box yet; instead, we just want to remember
      // that we found an inner box to highlight.
      smallHover = i;
    }
  }
  for (int i = 0; i < numberOfBoxes; i++) {
    int bigBoxLeft = i * bigBoxWidth;
    int bigBoxRight = bigBoxLeft + bigBoxWidth;
    // Now we have a variable that will be greater than -1
    // if we are actually hovering inside a small box. If that
    // variable is set, we should NOT fill the outer box with
    // a bright color.
    if (mouseX >= bigBoxLeft && mouseX <= bigBoxRight
      && smallHover == -1) {
      // If the mouse is inside the big box, AND we did not find a
      // small box that the mouse is inside.
      fill(255, 100, 100);
    } else {
      fill(120, 0, 0);
    }
    rect(bigBoxLeft, 0, bigBoxWidth, height);
    int smallBoxLeft = bigBoxLeft + bigBoxWidth / 4;
    int smallBoxTop = bigBoxWidth / 4;
    // We don't need to repeat the logic for seeing if the mouse is
    // inside this small box. We already checked earlier!
    if (i == smallHover) {
      fill(120, 255, 120);
    } else {
      fill(255);
    }
    rect(smallBoxLeft, smallBoxTop, smallBoxWidth, smallBoxWidth);
  }
}