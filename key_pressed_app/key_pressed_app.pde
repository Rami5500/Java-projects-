boolean stop;

void setup () {
  size (200 , 200);
  stop = true;
  
}

void mousePressed() {
  stop = !stop;
}


void draw () {
  if (stop == true) {
    background(255);
    fill(0,255,0);
    rect(20,20,160,160);
    fill(0);
    textSize(26); 
    text("WALK", 60, 100);
  } else if (stop == false) {
    fill(255,0,0);
    rect(20,20,160,160);
    fill(0);
    textSize(26); 
    text("STOP", 60, 100);
  }
}
