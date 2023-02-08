float  ballX; // X coordinate  of the  ball
float  ballY;   // Y coordinate  of the  ball
float  ballWidth;   //  diameter  of the  ball
float  speedX;   //  speed  of  movement  in X direction
float  speedY;   //  speed  of  movement  in Y direction
float holeX;  // X coordinate  of the  hole
float holeY;  // Y coordinate  of the  hole
float holeWidth;  //  diameter  of the  hole

void  setup() {
  size (600, 600);
  // reset  ball  parameters , position  and  size
  ballX = 10;
  ballY = height /2;
  ballWidth = 60;
  //  initialize  the  speed  to  random  values
  initializeSpeed ();
  initializeHole ();
  //color black = color (0);
  //drawColourCircle (holeX , holeY , holeWidth , black);
}

void  draw() {
  background (127);
  // draw  the  ball
  color red = color (255, 0, 0);
  drawColourCircle(ballX, ballY, ballWidth, red);
  color black = color (0);
  drawColourCircle (holeX , holeY , holeWidth , black);
  // move  the  ball22
  moveBall ();
  if ( checkCollide (ballX , ballY , ballWidth ,holeX , holeY , holeWidth )) {
    initializeHole ();
    initializeSpeed ();
  }

  //  bounce  the  ball (if  necessary)
  bounceBall ();
  if (keyPressed) {
    if (key == 'x') {
      speedX = int(random(5, 10));
    } else if (key == 'y') {
      speedY = int(random(5, 10));
    }
  }
}

void initializeSpeed () {
  speedX = int(random(5, 10));
  speedY = int(random(5, 10));
  
}

void drawColourCircle(float ballX, float ballY, float ballWidth, color red) {
  fill(red);
  ellipse(ballX, ballY, ballWidth, ballWidth);
}

void moveBall () {
  ballX = ballX + speedX;
  ballY = ballY + speedY;
  ballX = constrain (ballX, 0, width );
  ballY = constrain (ballY, 0, width );
}

void bounceBall () {
  if ((ballX >= width) || (ballX <= 0)) {
    speedX = speedX*-1;
  } else if ((ballY >= height) || (ballY <= 0)) {
    speedY = speedY*-1;
  }
}

void initializeHole () {
  holeX = int(random(0, width));
  holeY = int(random(0, height));
  holeWidth = int(random(100, 300));
}

float distance (float x1, float y1, float x2, float y2) {
  float side1 = x1 - x2;
  float side2 = y1 - y2;
  float distance = sqrt((side1*side1) + (side2*side2));
  return distance;
}

boolean checkCollide (float ballX, float ballY, float ballWidth, float holeX , float holeY , float holeWidth){
  float d = distance (ballX, ballY, holeX, holeY);
  float sum = ballWidth + holeWidth;
  if (d <= sum/2) {
    return true;
  } else {
    return false;
  }
  
}
