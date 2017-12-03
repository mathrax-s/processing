class Flake {
  float x, y, r, s;

  Flake() {
    x = random(600);
    y = random(600);
    s = 1.0;
    r = random(360);
  }

  void update() {
    r++;
    s*=0.99;

    pushMatrix();
    translate(x, y);
    scale(s);
    rotate(radians(r));

    fill(255, 255*s);
    rect(0, 0, 100, 100);

    popMatrix();
  }

  void set() {
    x = mouseX;
    y = mouseY;
    s = 1.0;
    r = random(360);
  }
}