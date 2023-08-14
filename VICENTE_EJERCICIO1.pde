void setup() {
 size(800, 600);
 background(255);
 noLoop();
}
void draw() {
 for (int i = 0; i < 100; i++) {
 int shapeType = int(random(3)); // Genera un número aleatorio entre 0 y 2
 
 if (shapeType == 0) {
 drawCircle();
 } else if (shapeType == 1) {
 drawRectangle();
 } else {
 drawTriangle();
 }
 }
}
void drawCircle() {
 float x = random(width);
 float y = random(height);
 float diameter = random(10, 100);
 color c = color(random(255), random(255), random(255));
 
 fill(c);
 ellipse(x, y, diameter, diameter);
}
void drawRectangle() {
 float x = random(width);
 float y = random(height);
 float width = random(10, 100);
 float height = random(10, 100);
 color c = color(random(255), random(255), random(255));
 
 fill(c);
 rect(x, y, width, height);
}
void drawTriangle() {
 float x1 = random(width);
 float y1 = random(height);
 float x2 = x1 + random(-50, 50);
 float y2 = y1 + random(-50, 50);
 float x3 = x1 + random(-50, 50);
 float y3 = y1 + random(-50, 50);
 color c = color(random(255), random(255), random(255));
 
 fill(c);
 triangle(x1, y1, x2, y2, x3, y3);
}
