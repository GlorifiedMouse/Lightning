int startX = 300;
int startY = 0;
int endX = 300;
int endY = 0;
//set initial values for each line segment
void setup() {
  size(600, 400);
  strokeWeight(3);
  background(0);
}
void draw() {
  double r = Math.random()*256;
  double g = Math.random()*256;
  double b = Math.random()*256;
  //println(r + " " + g + " " + b);
  stroke((int)r, 0, (int)b);
  //random purple color for stroke 


  while (endX < width) { //while line hasn't gone off right side of screen
    int changeX = (int) random(-15,15);
    int changeY = (int) random(20);
    endX = startX + changeX;
    endY = startY + changeY; 
    line(startX, startY, endX, endY); //make line segment from end of last segment to random point slightly to the right and either up or down
    startX = endX;
    startY = endY; //set start values to the end point of last segment
  }
}
void mousePressed() {
  startX = 300;
  startY = 0;
  endX = 300;
  endY = 0; //when mouse is pressed, reset start values back to left, starting new lightning bolt
}
