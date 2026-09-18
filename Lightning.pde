int startX = 0;
int startY = 0;
int endX = -10;
int endY = 311;
int addX;
int addY;
int fader = 250;
int struck = 400;
public void setup(){
  strokeWeight(5);
  stroke(#FAEF0D,250);
  size(300,300);
  background(0);
}
public void draw(){
  stroke(#9B9B9B);
  fill(#9B9B9B);
  ellipse(mouseX+2, 85, 35,35); 
  ellipse(mouseX+25, 89, 30,30);
  ellipse(mouseX-15, 87, 30,30);
  fill(0,10);
  rect(-10, -10, width+20, height+20);
  stroke(#FAEF0D,250);
  while (endY < 310){
    endX = startX + (int)(Math.random()*22) - 9;
    endY = startY + (int)(Math.random()*20);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
    System.out.println(endX);
  }
  stroke(#52D137);
  fill(#52D137);
  rect(0,280,width, 300);
  stroke(#522B2B);
  fill(#522B2B);
  triangle(endX-7,280,endX+7,280,endX,295);
  triangle(endX-8,280,endX-10,290,endX,280);
  triangle(endX+8,280,endX+10,290,endX,280);
}
void mousePressed(){
  startX = mouseX;
  startY = 105;
  fader = 250;
  endX = startX;
  endY = startY;
}
