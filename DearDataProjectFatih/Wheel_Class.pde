
class Wheel {

  int x;
  int y;
  int frequency;
  int wheelSize;

  String mood;
  String reason;


  // the constructor
  Wheel(int x, int y, int frequency,
    String mood, String reason) {

    this.x = x;
    this.y = y;
    this.frequency = frequency;
    this.mood = mood;
    this.reason = reason;

    this.wheelSize = 100 + frequency * 20;      // increases the wheel size based on frequency
  }


  // method to draw the wheel
  void display() {

    // silver rim outside
    fill(170, 175, 180);
    stroke(225);
    strokeWeight(3);
    ellipse(x, y, wheelSize - 18, wheelSize - 18);


    // silver rim inside
    fill(55, 60, 65);
    ellipse(x, y, wheelSize - 45, wheelSize - 45);


    // Brake disc
    fill(185, 190, 193);
    stroke(130);
    ellipse(x, y, wheelSize - 65, wheelSize - 65);


    // Spokes
    stroke(240);
    strokeWeight(5);

    line(x - wheelSize/3, y, x + wheelSize/3, y);

    line(x, y - wheelSize/3, x, y + wheelSize/3);

    line(x - wheelSize/4, y - wheelSize/4, x + wheelSize/4, y + wheelSize/4);

    line(x - wheelSize/4, y + wheelSize/4, x + wheelSize/4, y - wheelSize/4);


    // Brake caliper represents how I felt my day went
    noStroke();

    if (mood == "green") {
      fill(0, 170, 0);
    } else if (mood =="yellow") {
      fill(235, 185, 35);
    } else {
      fill(205, 0, 0);
    }

    rect(x + wheelSize/4, y - 23,
      15, 46, 4);


    // Centre cap
    fill(45);
    ellipse(x, y, 38, 38);

    fill(255);
    textAlign(CENTER, CENTER);
    textSize(9);
    text("DATA", x, y);


  }
}
