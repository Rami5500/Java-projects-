int circleX ;
int circleY ;
int wheelColour ;
int windowSize ;

void setup () {
  size (600 , 400);
  circleX = 0;
  circleY = 100;
  wheelColour = 0;
  windowSize = 0;
  rectMode ( CENTER );
}

void draw () {
  background (255);
  stroke (0);
  fill (0, 0, 255);
  rect(mouseX, mouseY, 200, 90);
  stroke (0);
  fill (0, 0, 255);
  rect(mouseX, mouseY-75, 120, 60);
  stroke (0);
  fill (255);
  rect(mouseX, mouseY-78, windowSize, windowSize);
  stroke (0);
  fill (wheelColour);
  ellipse(mouseX-60, mouseY+45, 40, 40);
  stroke (0);
  fill (wheelColour);
  ellipse(mouseX+60, mouseY+45, 40, 40);
  stroke (0);
  fill (255,0,0);
  rect(mouseX+115, mouseY+35, 30, 10);
  wheelColour = (wheelColour + 1) % 100;
  windowSize = (windowSize + 1) % 40;
}
