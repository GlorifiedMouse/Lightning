int startX = 0;
int startY = 0;
int endX = 0;
int endY = 0;
//set initial values for each line segment
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
  //random purple color for stroke 


  while (endX < width) { //while line hasn't gone off right side of screen
    int changeX = (int) random(20);
    int changeY = (int) random(-5, 10);
    endX = startX + changeX;
    endY = startY + changeY; 
    line(startX, startY, endX, endY); //make line segment from end of last segment to random point slightly to the right and either up or down
    startX = endX;
    startY = endY; //set start values to the end point of last segment
  }
}
void mousePressed() {
  startX = 0;
  startY = 0;
  endX = 0;
  endY = 0; //when mouse is pressed, reset start values back to left, starting new lightning bolt
}
