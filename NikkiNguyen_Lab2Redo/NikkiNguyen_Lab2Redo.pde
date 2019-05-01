//declaring white key, unnecessary 
int wKeyWidth;

//declaring black keys
int bKeyWidth;
int bKeyHeight;

// setting up canvas  
void setup(){
  size(800,500);
}

//drawing keys
void draw(){
  //assign 8 white keys width
  wKeyWidth = width/8;
  //white keys
  //fill(255);
  fill(100,mouseX,mouseY);
  strokeWeight(4);
  rect(0,0,wKeyWidth,height);
  rect(width/8,0,wKeyWidth,height);
  rect(width/4,0,wKeyWidth,height);
  rect(width*3/8,0,wKeyWidth,height);
  rect(width*1/2,0,wKeyWidth,height);
  rect(width*5/8,0,wKeyWidth,height);
  rect(width*3/4,0,wKeyWidth,height);
  rect(width*7/8,0,wKeyWidth,height);
  //black keys
  fill(0);
  //colors change over time and according to mouse location
  fill(frameCount+50,frameCount+100,frameCount+50);
  bKeyWidth = width/15;
  bKeyHeight = height*7/10;
  rectMode(CORNER);
  rect(width/12,0,bKeyWidth,bKeyHeight);
  rect(width/5,0,bKeyWidth,bKeyHeight);
  rect(width*23/50,0,bKeyWidth,bKeyHeight);
  rect(width*3/5,0,bKeyWidth,bKeyHeight);
  rect(width*18/25,0,bKeyWidth,bKeyHeight);
  
}