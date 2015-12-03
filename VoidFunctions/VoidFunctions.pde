void setup() {
  size(800, 800);
  background(0);  //black background
}

void draw() {
  background(0);
  drawARect();  //calls function drawARect
  drawACircleWith(0,255, 0);  //calls function drawACircleWith
  drawAHorizontalLineAt(60);  //calls function drawAHorizontalLineAt
  drawAVerticalLineAt(60);  //calls function drawAVerticalLineAt
  drawAHorizontalLineAt(740);  //calls function drawAHorizontalLineAt
  drawAVerticalLineAt(740);  //calls function drawAVerticalLineAt
  drawASlantedLinePositive(true);  //calls function drawASlantedLinePositive
  drawASlantedLinePositive(false);  //calls function drawASlantedLinePositive
  //all functions are defined below
}

void drawARect() {  //defines function drawARect
  refreshStroke();  //calls function refreshStroke (defined below)
  fill(0, 0, 255);  //blue fill
  int size = 50;  //define local variable called size
  rect(width/2-size/2, height/2-size/2, size, size);
}

void drawACircleWith(int r, int g, int b){  //defines function drawACircleWith with three parameters
  refreshStroke();  //calls function refreshStroke (defined below)
  fill(r, g, b);  //fill depending on input of the user
  ellipse(mouseX, mouseY, 30, 30);  //circle follows mouse
}

void drawAHorizontalLineAt(int y){  //defines function drawAHorizontalLineAt
  whiteStroke();  //calls function whiteStroke (defined below)
  line(0, y, width, y);  //horizontal line
}

void drawAVerticalLineAt(int x){  //defines function drawAVerticalLineAt
  whiteStroke();  //calls function whiteStroke (defined below)
  line(x, 0, x, height);  //vertical line
}

void drawASlantedLinePositive(boolean b){  //defines function drawASlantedLinePositive
  whiteStroke();  //calls function whiteStroke (defined below)
  if(b == true){  //if you want a positive slope of 1
    line(0, height, width, 0); //looks sorta like this: /
  }
  if(b == false){  //if you want a negative slope of 1
    line(0, 0, width, height); //looks sorta like this: \
  }
}

void refreshStroke(){  //defines function refreshStroke
  strokeWeight(1);  //default stroke
  stroke(0);  //black line
}

void whiteStroke(){  //defines function whiteStroke
  strokeWeight(4);  //stroke weight of 4
  stroke(255);  //white line
}