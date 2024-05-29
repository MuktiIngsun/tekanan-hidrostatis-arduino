import processing.serial.*;

Serial mySerial; 
float hydrostaticPressure;

void setup() {
  size(800, 400); 
  background(255); 

  mySerial = new Serial(this, "COM9", 9600);
}

void draw() {
  background(255); 
  textSize(64); 
  textAlign(CENTER, CENTER); 
  fill(20, 27, 38);
  text(hydrostaticPressure, 300, 200); 
  fill(20, 27, 38);
  text("Pa", 500, 200);
  fill(20, 27, 38);
  text("Tekanan Hidrostatis", 400, 50);
  delay(500);
}

void serialEvent(Serial mySerial) {
  // membaca data dari serial port
  String input = mySerial.readStringUntil('\n');
  if (input != null) {
    // parse data menjadi float
    try {
      hydrostaticPressure = float(input);
    } catch(Exception e) {
      // jika tidak float, do nothing
    }
  }
}
