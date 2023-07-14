void textos(int t, int d, int e) {
  stroke(156, 222, 252);
  fill (0, 128, 255, 150);
  rect (100, 500, d, e);
  fill(0);
  textFont(font);
  textSize(t);
}
boolean inicio (int x, int y, int r) {
  return dist (mouseX, mouseY, x, y) <=r;
}

boolean zonaa (int x, int y, int r) {
  return dist(mouseX, mouseY, x, y)<=r;
}

void agrandar() {
  image(botoncitos[0], 500, 300);
  if (dist(mouseX, mouseY, 530, 340)<=radio) {
    image(botoncitos[0], 496, 292, tamanioaumentado, tamanioaumentado);
  }
}
void resetVariables() {
  estado= 0;
}
