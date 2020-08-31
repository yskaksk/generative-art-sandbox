int step = 10;

void setup() {
  size(720, 720);
  background(255);
  strokeWeight(5);
  smooth();
  random_line();
}

void random_line() {
  stroke(20, 50, 70);
  float lastx = -999;
  float lasty = height / 2;
  float y_seed = random(10);
  float y;
  for (int x = 0; x <= width; x += step) {
    y = height / 2 + noise(y_seed) * 8;
    if (lastx > -999) {
      line(x, y, lastx, lasty);
    }
    lastx = x;
    lasty = y;
    y_seed += 0.1;
  }
}
