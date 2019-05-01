

void setup(){
  size(500,500);
}

void draw(){
  background(0);
  noStroke();
  //fill(255,0,0);
  //rect(0,0,width/2,height/2);
  //fill(0,255,0);
  //rect(width/2,0,width/2,height/2);
  //fill(0,0,255);
  //rect(0,height/2,width/2,height/2);
  //fill(240,230,22);
  //rect(width/2,height/2,width/2,height/2);
  if ((mouseX<=width/2) && (mouseY<=height/2)) {
    fill(255,0,0);
    rect(0,0,width/2,height/2);
  } else{
    background(0);
  }
  if ((mouseX>=width/2) && (mouseY<=height/2)) {
    fill(0,255,0);
    rect(width/2,0,width/2,height/2);
 
  } //else{
    //background(0);
  //}
  if ((mouseX>=width/2) && (mouseY>=height/2)) {
    fill(240,230,22);
    rect(width/2,height/2,width/2,height/2);
  
  }// else{
    //background(0);
  //}
 if ((mouseX<=width/2) && (mouseY>=height/2)) {
    fill(0,0,255);
    rect(0,height/2,width/2,height/2);
 } //else{
    //background(0);
  //}
}