int r, g, b;

void setup() {
  size(800, 800);
  background(0);
  r = 0;
  g = 255;
  b = 0;
}

void draw() {
  background(0);
  drawARect();
  drawACircleWith(0,255, 0);
  drawAHorizontalLineAt(60);
  drawAVerticalLineAt(60);
  drawAHorizontalLineAt(740);
  drawAVerticalLineAt(740);
  drawASlantedLinePositive(true);
  drawASlantedLinePositive(false);
}

void drawARect() {
  refreshStroke();
  fill(0, 0, 255);
  int size = 50;
  rect(width/2-size/2, height/2-size/2, size, size);
}

void drawACircleWith(int r, int g, int b){
  refreshStroke();
  fill(r, g, b);
  ellipse(mouseX, mouseY, 30, 30);
}

void drawAHorizontalLineAt(int y){
  whiteStroke();
  line(0, y, width, y);
}

void drawAVerticalLineAt(int x){
  whiteStroke();
  line(x, 0, x, height);
}

void drawASlantedLinePositive(boolean b){
  whiteStroke();
  if(b == true){
    line(0, height, width, 0);
  }
  if(b == false){
    line(0, 0, width, height);
  }
}

void refreshStroke(){
  strokeWeight(1);
  stroke(0);
}

void whiteStroke(){
  strokeWeight(4);
  stroke(255);
}