Flake[] f = new Flake[1000];
int count;

void setup() {
  size(600, 600);
  noStroke();
  rectMode(CENTER);
  for (int i=0; i<1000; i++) {
    f[i] = new Flake();
  }
}

void draw() {
  background(0);

  for (int i=0; i<1000; i++) {
    f[i].update();
  }
}

void mouseMoved() {
  f[count].set();
  count ++;
  if(count>=1000){
    count=0;
  }
}