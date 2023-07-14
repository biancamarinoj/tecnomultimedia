//Bianca Marino, Legajo  94693/7
//Link video de YT
//https://youtu.be/ZBQvRJyiB9Q
//Cuento elegido: Cenicienta de "Charles Perrault"

int estado;
int radio;
boolean botoninicio=true;
boolean botona=true;
boolean botonb=true;
boolean botonreinicio=true;
boolean botoncreditos= true;
int c= 14; //cantidad de imagenes
int cant=5;// cantidad de imagenes para mis botones
int cantidad= 14; //cantidad de bloques de textos
PImage[] botoncitos= new PImage[cant];
PImage[] princesas = new PImage[c];
String [] desarrollo = new String [cantidad];
PFont titulo;
PFont font;
int a; // lados boton rectangular
int b;
int e;
int d;
int tamanioaumentado;

void setup() {
  size (600, 600);
  radio=20;
  estado= 0;
  for (int i=0; i<c; i++) {
    princesas[i] = loadImage("images/princesa" + i +".png");
    for (int x=0; x<cant; x++) {
      botoncitos[x] = loadImage("botones/boton"+ x + ".png");
      titulo= loadFont("berlin.vlw");
      font = loadFont ("bold.vlw");

      a=320;
      b=107;
      e=200;
      d=50;

      tamanioaumentado=103;

      desarrollo = loadStrings("desarrollo.txt");
      for (int d =0; d < cantidad; d++) {
      }
    }
  }
}

void draw() {
  if ( estado == 0) {
    image(princesas[0], 0, 0);
    agrandar();
    textFont(titulo);
    textSize(72);
    fill(121, 178, 245);
    text( desarrollo[0], 250, 95);
    noStroke();
    fill (0, 128, 255, 100);
    stroke(84, 90, 245);
    rect (a, b, e, d);
    textSize(40);
    fill(0);
    text( desarrollo[14], 350, 140);
    
  } else if (estado == 1 ) {
    image(princesas[1], 0, 0);
    agrandar();
    textos (22, 355, 75);
    text( desarrollo[1], 110, 510, 350, 250);
    
  } else if (estado == 2) {
    image(princesas[2], -75, 0);
    agrandar();
    textos (22, 370, 80);
    text( desarrollo[2], 110, 510, 350, 250);
    
  } else if (estado == 3) {
    image(princesas[3], -250, 0);
    image(botoncitos[1], 20, 305);
    image(botoncitos[2], 510, 305);
    textos (22, 330, 60);
    text( desarrollo[3], 110, 510, 350, 250);
    
  } else if (estado == 4) {
    image(princesas[4], 0, -100);
    agrandar();
    textos(22, 380, 80);
    text( desarrollo[4], 110, 510, 350, 250);
    
  } else if (estado == 5) {
    image(princesas[5], 0, 0);
    agrandar();
    textos(22, 360, 80);
    text( desarrollo[5], 110, 510, 350, 250);
    
  } else if (estado == 6) {
    image(princesas[6], -100, -80);
    agrandar();
    textos(20, 360, 80);
    text( desarrollo[6], 110, 510, 350, 250);
    
  } else if (estado == 7) {
    background(88, 85, 147);
    image(princesas[7], 100, 0);
    textos (22, 330, 80);
    text( desarrollo[7], 110, 510, 350, 250);
    fill(random(10, 255), random(145, 320), random(200, 275));
    text("reset", 535, 590);
    image(botoncitos[3], 520, 500);
    
  } else if (estado == 8) {
    image(princesas[8], -130, 0);
    agrandar();
    textos(22, 350, 80);
    text( desarrollo[8], 110, 510, 350, 250);
    
  } else  if (estado == 9) {
    background(88, 85, 147);
    image(princesas[9], 120, 20);
    textos (22, 320, 60);
    text( desarrollo[9], 110, 510, 350, 250);
    image(botoncitos[1], 20, 305);
    image(botoncitos[2], 510, 305);
    
  } else  if (estado == 10) {
    image(princesas[10], -15, -100);
    agrandar();
    textos(22, 370, 40);
    text( desarrollo[12], 110, 510, 350, 250);
    
  } else if (estado == 11) {
    background(88, 85, 147);
    image(princesas[11], 20, 100);
    image(botoncitos[3], 520, 500);
    textos (18, 350, 65);
    text( desarrollo[13], 110, 510, 350, 250);
    fill(random(255, 25), random(0, 300), random(20, 75));
    textSize(22);
    text("reset", 535, 590);
    
  } else if (estado == 12) {
    background(88, 85, 147);
    image(princesas[12], -80, 100);
    agrandar();
    textos(22, 350, 60);
    text( desarrollo[10], 110, 510, 350, 250);
    
  } else if (estado == 13) {
    background(88, 85, 147);
    image(princesas[13], -80, 100);
    image(botoncitos[3], 520, 500);
    textos (22, 380, 60);
    text( desarrollo[11], 110, 510, 350, 250);
    fill(random(125), random(141, 20), random(26, 335));
    text("reset", 535, 590);
    
  } else if (estado == 14) {
    background(88, 85, 147);
    textFont(titulo);
    textSize(60);
    fill(random(275), random(111, 230), random(226, 345));
    text ("Bianca Marino", 140, 120);
    textFont(font);
    text("reset", 535, 590);
    fill(255);
    textSize(25);
    text( "Cenicienta - Charles Perrault, con finales alternativos de:", 0, 50);
    image(botoncitos[4], 10, 120);
    image(botoncitos[3], 520, 500);
  }
}


void mousePressed() {
  if (inicio (530, 340, 20) && (estado==0)) {
    botoninicio= true;
    estado = 1;
  } else if (inicio(530, 340, 20) && (estado==1) ) {
    botoninicio=true;
    estado = 2;
  } else if (inicio (530, 340, 20) && (estado==2) ) {
    botoninicio=true;
    estado = 3;
  } else if (zonaa (50, 340, 20) && (estado==3) ) {
    botona=true;
    estado = 4;
  } else if (inicio (530, 340, 20) && (estado==4) ) {
    botoninicio=true;
    estado = 5;
  } else if (inicio (530, 340, 20) && (estado==5) ) {
    botoninicio=true;
    estado = 6;
  } else if (inicio (530, 340, 20) && (estado==6) ) {
    botoninicio=true;
    estado = 7;
  } else if ((dist(mouseX, mouseY, 550, 340)<=radio) && (estado==3) ) {
    botonb=true;
    estado = 8;
  } else if (inicio (530, 340, 20) && (estado==8) ) {
    botoninicio=true;
    estado = 9;
  } else if ((dist(mouseX, mouseY, 550, 340)<=radio) && (estado==9) ) {
    botonb=true;
    estado = 10;
  } else if (inicio (530, 340, 20) && (estado==10) ) {
    botoninicio=true;
    estado = 11;
  } else if (zonaa (50, 340, 20) && (estado==9) ) {
    botona=true;
    estado = 12;
  } else if (inicio (530, 340, 20) && (estado==12) ) {
    botoninicio=true;
    estado = 13;
  } else if ((dist(mouseX, mouseY, 560, 550)<=radio) && (estado==7) ) {
    botonreinicio=true;
    estado = 0;
  } else if ((dist(mouseX, mouseY, 560, 550)<=radio) && (estado==11) ) {
    botonreinicio=true;
    estado = 0;
  } else if ((dist(mouseX, mouseY, 560, 550)<=radio) && (estado==13) ) {
    botonreinicio=true;
    estado = 0;
  } else if ((mouseX> a && mouseX< a+e && mouseY > b && mouseY <b+d) && (estado==0) ) {
    botoncreditos=true;
    estado = 14;
  } else if ((dist(mouseX, mouseY, 560, 550)<=radio) && (estado==14) ) {
    botonreinicio=true;
    estado = 0;
  }
}

void keyPressed() {
  if (key== 'B' ) {
    resetVariables();
  }
}
