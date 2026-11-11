
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





    //this whole if statement from here to
    if (mood =="green") {
      fill(100);
      stroke(0);
      strokeWeight(3);
      ellipse(x, y, wheelSize - 18, wheelSize - 18);

      // silver rim inside
      fill(0, 255, 0);
      ellipse(x, y, wheelSize - 45, wheelSize - 45);


      // Brake disc
      fill(185, 190, 193);
      stroke(130);
      ellipse(x, y, wheelSize - 65, wheelSize - 65);

      //brake calliper
      fill(0, 170, 0);
      rect(x + wheelSize/6, y - 23, 15, 46, 4);



      // Spokes
      stroke(0, 255, 0);
      strokeWeight(7);

      line(x - wheelSize/3, y, x + wheelSize/3, y); //this is the horizontal spoke -

      line(x, y - wheelSize/4, x, y + wheelSize/4); // this is the vertical spoke |

      line(x - wheelSize/5, y - wheelSize/5, x + wheelSize/5, y + wheelSize/5); //this is the backslash spoke \

      line(x - wheelSize/5, y + wheelSize/5, x + wheelSize/5, y - wheelSize/5); //this is the forward slash spoke /
    }

    if (mood == "yellow") {
      fill(100);
      stroke(0);
      strokeWeight(3);
      ellipse(x, y, wheelSize - 18, wheelSize - 18);

      // silver rim inside
      fill(255, 255, 0);
      ellipse(x, y, wheelSize - 45, wheelSize - 45);


      // Brake disc
      fill(185, 190, 193);
      stroke(130);
      ellipse(x, y, wheelSize - 65, wheelSize - 65);


      //brake calliper
      fill(150, 150, 0);
      rect(x + wheelSize/6, y - 23, 15, 46, 4);


      // Spokes
      stroke(255, 255, 0);
      strokeWeight(5);

      line(x - wheelSize/3, y, x + wheelSize/3, y); //this is the horizontal spoke -

      line(x, y - wheelSize/4, x, y + wheelSize/4); // this is the vertical spoke |

      line(x - wheelSize/5, y - wheelSize/5, x + wheelSize/5, y + wheelSize/5); //this is the backslash spoke \

      line(x - wheelSize/5, y + wheelSize/5, x + wheelSize/5, y - wheelSize/5); //this is the forward slash spoke /
    }



    if (mood == "red") {
      fill(100);
      stroke(0);
      strokeWeight(3);
      ellipse(x, y, wheelSize - 18, wheelSize - 18);
      
      /*// Brake disc
      stroke(130);
      ellipse(x, y, wheelSize - 65, wheelSize - 65);
      */
      
      // silver rim inside
      fill(150, 0, 0);
      ellipse(x, y, wheelSize - 45, wheelSize - 45);
      
      
      // Brake disc
      fill(185, 190, 193);
      stroke(130);
      ellipse(x, y, wheelSize - 65, wheelSize - 65);

      //brake calliper
      noStroke();
      fill(100, 0, 0);
      rect(x + wheelSize/6, y - 23, 15, 46, 4);
      


      // Spokes

      stroke(150, 0, 0);
      strokeWeight(5);

      line(x - wheelSize/3, y, x + wheelSize/3, y); //this is the horizontal spoke -

      line(x, y - wheelSize/4, x, y + wheelSize/4); // this is the vertical spoke |

      line(x - wheelSize/5, y - wheelSize/5, x + wheelSize/5, y + wheelSize/5); //this is the backslash spoke \

      line(x - wheelSize/5, y + wheelSize/5, x + wheelSize/5, y - wheelSize/5); //this is the forward slash spoke /
    }


    //...here represents the command to draw on the OUTER RIM and pick its colour based on input.





    // Centre cap
    fill(45);
    ellipse(x, y, 38, 38);

    fill(255);
    textAlign(CENTER, CENTER);
    textSize(9);
    text("DATA", x, y);
  }
}
