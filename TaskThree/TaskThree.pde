/*3.a Draw a traffic light using colors stored in variables - one for each of the 4
 colors (background is the 4th).
 3.b add a gray color for the turned off effect
 3.c have the light turn on/off (green or red) automatically.*/

color red = color(255, 0, 0);
color yellow = color(255, 255, 0);
color green = color(0, 255, 0);
int i = 0;

void setup() {
  size(500, 1000);
  ellipseMode(CENTER);
  background(255);
  frameRate(1);
  ellipse(width/2, 100, 200, 200);
  ellipse(width/2, 350, 200, 200);
  ellipse(width/2, 600, 200, 200);
}

void draw() {
  if (i==3) i=0;
  if (i==0) {
    fill(red);
    ellipse(width/2, 100, 200, 200);
    fill(150);
   ellipse(width/2, 600, 200, 200);
  } else if (i==1) {
    fill(yellow);
    ellipse(width/2, 350, 200, 200);
    fill(150);
    ellipse(width/2, 100, 200, 200);
  } else if (i==2) {
    fill(green);
    ellipse(width/2, 600, 200, 200);
    fill(150);
    ellipse(width/2, 350, 200, 200);
  }
  i++;
}
