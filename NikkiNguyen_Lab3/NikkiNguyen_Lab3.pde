//declare variables
int chickenDinner; //randomly choose secret "winning" door
int remember = 0; //which square user clicked most recently
int squareSize;
int nextX,nextY;
PImage img;

//setup size
void setup(){
  size(700,400);
  //load images into program (Sketch -> Add File)
  img = loadImage("cutePony.jpg"); //not really
  chickenDinner = int(random(1,4));
  println("Winner = " + chickenDinner);
}

void draw(){
  squareSize = 100;
  nextX = width/7;
  nextY = 120;
  //background is gray
  background(150);
  
  /*box 1
  //comparing choice to the random integer
  if true =*/
  if (chickenDinner == remember && remember == 1){ 
    //println("true");
    textAlign(CENTER);
    fill(0,255,0);
    text("***Winner Winner Chicken Dinner!!!***",width/2,50);
    text("***You've won a Cute Pony!!!***",width/2,100);
    noFill();
    image(img,100,125,squareSize,squareSize);
  }
  else if(remember == 1 && chickenDinner != remember){ //if false
    fill(255,0,0);
  }
  else{
    fill(171,243,245);
  }
  strokeWeight(4);
  stroke(#647128);
  rect(100,125,squareSize,squareSize);
  fill(0);
  textAlign(CENTER,CENTER);
  textSize(30);
  text("1",nextX+squareSize/2,nextY+squareSize/2);
  
  //box 2
  if (chickenDinner == remember && remember == 2){
    fill(0,255,0);
    text("***Winner Winner Chicken Dinner!!!***",width/2,50);
    text("***You've won a Cute Pony!!!***",width/2,100);
    noFill();
    image(img,300,125,squareSize,squareSize);
  }
  else if (remember == 2 && chickenDinner!= remember){
    fill(255,0,0);
  }
  else{
    fill(171,243,245);
  }
  strokeWeight(4);
  stroke(#647128);
  rect(300,125,squareSize,squareSize);
  fill(0);
  textAlign(CENTER,CENTER);
  textSize(30);
  text("2",nextX+200+squareSize/2,nextY+squareSize/2);
  
  //box 3 
  if(chickenDinner == remember && remember == 3){
    fill(0,255,0);
    text("***Winner Winner Chicken Dinner!!!***",width/2,50);
    text("***You've won a Cute Pony!!!***",width/2,100);
    noFill();
    image(img,500,125,squareSize,squareSize);
  }
  else if(remember == 3 && chickenDinner!= remember){
    fill(255,0,0);
  }
  else{
    fill(171,243,245);
  }
  strokeWeight(4);
  stroke(#647128);
  rect(500,125,squareSize,squareSize);
  fill(0);
  textAlign(CENTER,CENTER);
  textSize(30);
  text("3",nextX+400+squareSize/2,nextY+squareSize/2);
}


void mousePressed(){
  //clickity the boxes-> remember choice of user
  //box 1
  /*if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height)*/
  if(mouseX >= 100 && mouseX <= 100+squareSize && mouseY >= 125 && mouseY <= 125+squareSize){
    remember = 1;
    println("Box1");
  }
  //box 2
  else if (mouseX >= 300 && mouseX <= 300+squareSize && mouseY >= 125 && mouseY <= 125+squareSize){
    remember = 2;
    println("Box2");
  }
  //box 3
  else if (mouseX >= 500 && mouseX <= 500+squareSize && mouseY >= 125 && mouseY <= 125+squareSize){
    remember = 3;
    println("Box3");
  }
  else{
    remember = 0;
  }
}  