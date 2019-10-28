Bac[] jed;
void setup(){
  noStroke();
  size(500,500);
  jed = new Bac[50];
  for(int i = 0; i < jed.length; i++){
    jed[i] = new Bac();
  }
}

void draw(){
  background(100);
  for(int i = 0; i < jed.length; i++){
    jed[i].show();
    jed[i].walk();
  }
  fill(100,100,0);
  ellipse(mouseX,mouseY,30,30);
  ellipse(mouseX-10,mouseY+10,5,5);
  ellipse(mouseX-10,mouseY+10,5,5);
  ellipse(mouseX+10,mouseY+10,5,5);
  ellipse(mouseX+10,mouseY-10,5,5);
  
}

class Bac{
  int myX, myY, myColor;
  Bac(){
    myColor = color(255, 0, 255);
    myX = myY = 500;
  }
  void walk(){
    if(mouseX > 500){
      myX = myX + (int)(Math.random()*7)-6;
    } else if(mouseX < 500){
      myX = myX + (int)(Math.random()*7)-6;
    }else {
    myX = myX + (int)(Math.random()*6)-6;
  }
    if(mouseY > 500){
      myY = myY + (int)(Math.random()*7)-6;
    } else if(mouseY < 500) {
      myY = myY + (int)(Math.random()*7)-6;
    } else {
      myY = myY + (int)(Math.random()*6)-6;
    }
  }
  void show(){
    fill(myColor);
    ellipse(myX,myY,150,150);
  }
}
