int marcaTiempo;
int estado;
//imagenes
PImage fionaaa;
PImage fionaa;
PImage fiona;
PImage fioni;
PImage fio;
PImage fi;
PImage be;
PImage f;
PFont font;


float posX;
int x,y;

//boton final
int a;
int b;
int c;
int d;
PImage logo;

 boolean botonFinal = false;

//color texto
//float posY,opacidad;

//boton inicio
int radio = 80;
boolean botonInicio = false;
int pantalla = 0;
PImage botonrosa;


//texto movimiento
 int m, n ;
 //texto mouse
 int p;
 
void setup(){
size( 640,480 );
estado = 0;
fionaaa = loadImage ("fionaaa.jpg");
fionaa = loadImage ("fionaa.jpg");
fiona = loadImage ("fiona.jpg");
fioni = loadImage ("fioni.jpg");
fio = loadImage ("fio.jpg");
fi = loadImage ("fi.jpg");
be = loadImage ("be.jpg");
f = loadImage ("f.jpg");
font = loadFont("berlin.vlw");
textFont(font);


posX = 0;

x=28;
  y= 12;
  
  //boton
 a = 20;
 b = 420;
 c = 50;
 d = 50;
 logo = loadImage ("logo.jpg");
 
 
 botonrosa = loadImage ("botonrosa.jpg");
 
 //texto fiona prueba
m = 200;
n = 100;

//texto mouse
p = 0;
}
void draw(){
  int diferencia = millis() - marcaTiempo; {
if ( estado == 0 ){
  background ( 255,196,196 );
  image (fionaaa,100,0);
  fill (255);
  noStroke();
  circle(570,420,radio);
  image(botonrosa,545,400);
  posX = posX + 0.5;
   text("la historia de mi perrita", posX,200); 
}
}
if (estado == 1 ){
  background (232,140,140);
  image (fionaa,80,40);
  fill (0);
  text ("hace 7 años mi tio me regalo una cachorrita",x,y);
  y+=1;
  if ( diferencia >=10*1000){
    estado = 2;
    marcaTiempo = millis( );
  }
}else if (estado == 2 ){
  background (245,153,153);
  image (fiona,20,40);
  fill (200,0,0);
  p += 1;
  textSize(30);
 text ("la cual llego para robarse mi corazón por completo",mouseX,p);
if ( diferencia >= 8000 ){
    estado = 3;
    marcaTiempo = millis( );
}
}else if (estado == 3 ){
background (206,114,114);
image (fioni,50,150);
 image (fio,250,0);
  fill(200,0,0,90);
 textSize(40);
 text ("la llamamos Fiona",m,n);
 m-=1;
if ( diferencia >= 5000){
  estado = 4; 
  marcaTiempo = millis( );
}
}else if ( estado == 4) {
  background (188,74,74);
 image (fi,20,40);
 image (be,250,0);
 textSize(45);
 fill(139,144,255);
text ("es muy intensa y juguetona",n,200,0);
n-=1;
  if (diferencia >=3000){
    estado = 5;
    marcaTiempo = millis( );
  }
}else if ( estado == 5) {
  background (232,159,159);
  //boton
    //boton
 fill (0);
 rect (a,b,c,d);
 image (logo,20,430);
  image (f,100,0);
  fill (255);
text("le encanta estar al sol y dormir",m,450);
  m+=1;
  if (diferencia >= 3000) {
    //estado = 0;
    marcaTiempo = millis( );
  }
}
}
void mousePressed() {
  if (dist(mouseX,mouseY,580,430)< radio){
    botonInicio = true;
    estado = 1;
  }
 if (dist(mouseX,mouseY,a,b) < d) {
 botonFinal = false;
 estado= 0;
  }
 }
 
    
