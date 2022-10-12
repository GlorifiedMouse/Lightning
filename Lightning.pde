int startX = 0;
int startY = 0;
int endX = 0;
int endY = 0;
void setup() {
  size(600, 400);
  strokeWeight(3);
  background(255);
}
void draw() {
  double r = Math.random()*256;
  double g = Math.random()*256;
  double b = Math.random()*256;
  //println(r + " " + g + " " + b);
  stroke((int)r, 0, (int)b);


  while (endX < width) {
    int changeX = (int) random(20);
    int changeY = (int) random(-5, 10);
    endX = startX + changeX;
    endY = startY + changeY;
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}
void mousePressed() {
  startX = 0;
  startY = 0;
  endX = 0;
  endY = 0;
}
