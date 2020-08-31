int step = 3;
float current_x;
float current_y;

void setup() {
  size(720, 720);
  colorMode(HSB, 1);
  frameRate(60);
  initialize();
}
void draw() {
  random_step();
}
void initialize() {
  current_x = width / 2;
  current_y = height / 2;
}
void random_step() {
  float r = random(1.0);
  if (r < 0.25) {
    line(current_x, current_y, current_x + step, current_y);
    current_x += step;
  } else if (r < 0.5) {
    line(current_x, current_y, current_x, current_y + step);
    current_y += step;
  } else if (r < 0.75) {
    line(current_x, current_y, current_x - step, current_y);
    current_x -= step;
  } else {
    line(current_x, current_y, current_x, current_y - step);
    current_y -= step;
  }
}
