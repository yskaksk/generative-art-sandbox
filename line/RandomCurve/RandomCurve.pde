void setup() {
  size(720, 720);
  float xstep = 1;
  float lastx = 0;
  float lasty = height / 2;
  float angle = 0;
  float y = height / 2;
  for (int x = 0; x <= width; x += xstep) {
    float rad = radians(angle);
    y = height / 2 + 200 * customRandom();
    line(x, y, lastx, lasty);
    lastx = x;
    lasty = y;
    angle++;
  }
}

float customRandom() {
  float retValue = 1 - pow(random(1), 5);
  return retValue;
}
