int numRows ;
// the number of rectangles in the starting ( bottom ) row
int rowLength ;
// the X coordinate of the first rectangle in the bottom row
int startX ;
// the Y coordinate of the first rectangle in the bottom row
int startY ;
// the width of each rectangle
int rectWidth ;
// the height of each rectangle
int rectHeight ;
// when isColour is false , all rectangles are filled in white
// otherwise a random fill colour is chosen
boolean isColour ;

void setup () {
  size (900, 400);
  stroke (0); // pen colour black
  numRows = 1; // initially one row of rectangles is drawn
  //rowLength = 10; // 10 rectangles in the first row
  startX = 50;
  startY = 350;
  rectWidth = 75; // each rectangle 75 pixels wide
  rectHeight = 30; // each rectangle 30 pixels wide
  isColour = false ; // no colour to start with
}

void draw () {
  background(255);
  int y = startY;
  int x = startX;
  int j = 10;
  for (int numOfRows2 = 1; numOfRows2 <= numRows; numOfRows2 ++) {
    j = j - 1;
    
    for (int numOfRect = 1; numOfRect <= j; numOfRect ++) {
      rect(x, y, rectWidth, rectHeight);
      x = x + rectWidth;
    }
    x = startX;
    x = x + numOfRows2*rectWidth/2;
    y = y - rectHeight;
  }
}

void mousePressed () {
  numRows ++;
  print (numRows);
  if (numRows == 10) {
    numRows = 0;
    if (isColour) {
      fill (int(random(255)), int(random(255)), int(random(255)));
    } else {
      fill (255);
    }
    isColour = !isColour;
  }
}
