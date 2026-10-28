Wheel[] wheels;

void setup() {
  background(140, 90, 50);
  size(1200, 900);
  
  wheels = new Wheel[1]; // how many slots I can store so would work up to 100
  
  wheels[0] = new Wheel(200,180,2,"green", "Distracted");
  
  
}




void draw () {
  
  
  for (int i = 0; i < wheels.length; i++) {
    wheels[i].display();
    }
  
  
}
