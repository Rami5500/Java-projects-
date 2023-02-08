
Car car;
Car[] carVariables;
RaceTrack track;
int arraySize;
boolean raceOver;

void setup() {
  size(1000, 600);
  arraySize = 3;
  carVariables = new Car[arraySize];
  track = new RaceTrack();
  //car = new Car(track.getStartPosition(), 100, 60, color(200, 100, 100));
  raceOver = false;
  for (int index=0; index < arraySize; index++) {
    carVariables[index] = new Car(track.getStartPosition(), random(1, height), 60, color(200, 100, 100));
  }
}

void draw() {
  background(70);
  track.display();
  for (int index=0; index < arraySize; index++) {
    carVariables[index].display();
    if (!raceOver) {
      if (carVariables[index].getPosition() >= track.getFinishPosition()) {
        raceOver = true;
        carVariables[index].increaseScore();
        println("Press 's' to restart");
      } else {
        carVariables[index].move();
      }
    }
  }
}

void keyPressed() {
  if (key == 's' && raceOver) {
    float startLine = track.getStartPosition();
    for (int index=0; index < arraySize; index++) {
      carVariables[index].setPosition(startLine);
      raceOver = false;
    }
  }
}
