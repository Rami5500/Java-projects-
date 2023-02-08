class Catcher {
  
  private float catcherX; // x coordinate of the catcher
  private float catcherY; // y coordinate of the catcher
  private float catcherWidth; // width of the catcher
  private float catcherSpeed; // speed of the catcher
  private float catcherHeight; // height of the catcher
  private char catcherControl; // key pressed to control the catcher
  private int catcherScore;  // the number of balls caught
  
  public  Catcher(float  cSpeed , float  cWidth , float  cHeight) {
    //  assignment  statements  for  the  variables  go here
    catcherX = width/2; // catcher starts in the center
    catcherY = height - 100; // just up from the bottom
    catcherSpeed = 1; // slow speed of the catcher
    catcherWidth = 140; // width of the catcher
    catcherHeight = 20; // height of the catcher
    catcherScore = 0; // number of balls caught
    catcherX = width /2; //  catcher  starts  in the  center
  }
    
    // you  need to  write  the  rest of the  code ...
  public void display() {
    fill(255, 0, 0);
    rect(catcherX, catcherY, catcherWidth, catcherHeight);
   }
   
  public void move() {
    if (catcherControl == 'x') { // x moves right
      catcherX = catcherX + catcherSpeed;
    } else if (catcherControl == 'z') { // z moves left
      catcherX = catcherX - catcherSpeed;
    }
  }

  public void checkCaught(Ball ball) {
    if (ball.getX() > (catcherX - catcherWidth/2) && 
      ball.getX() < (catcherX + catcherWidth/2) &&
      ball.getY() + ball.getbWidth()/2 >= catcherY - catcherHeight/2 &&
      ball.getY() - ball.getbWidth()/2 <= catcherY + catcherHeight/2) {
      increaseScore();
      ball.resetBall();
    }
  }
  
  public void increaseScore() {
    catcherScore ++;
  }

  public int getScore(){
    return catcherScore;
  }
  
  public void setCatcherControl(char k){
    catcherControl = k;
}
  
  
  
  
  
  
  
}
