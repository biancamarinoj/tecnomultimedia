
int cant;
int diametro;
PImage ilusion;
int cantidadcirculos;  
int uncirculo;
int tamanioaumentado; //que se aumente el tamaño de los circulos cuando el mouse esta arriba
color bg;

void setup() {
  size(800, 400);

  cant = 80; //cantidad de circulitos pequeños
  cantidadcirculos=20; //circulo del medio
  uncirculo=10;
  tamanioaumentado=15; 
  diametro=width/cant; //tamaño de los circulitos pequeños
  bg = color (247,40,244); 
  ilusion = loadImage("ilusion.jpg");
  noStroke();
}
void draw() {
  
 background(bg);
 image (ilusion,0,0);
 ilusion.resize(396,400);
println(esPar(2));
  circulitos (cant,diametro,mouseX,mouseY,tamanioaumentado) ;
  circulos (cantidadcirculos) ;
}





void circulitos (int cant,int diametro,int mouseX,int mouseY,int tamanioaumentado){
  for (int x=0; x<cant; x++) {
  for (int y=0; y<cant; y++) {
  if (esPar(x+y)){
  ellipse (x*diametro+diametro*40,y*diametro+diametro*-1.5,diametro,diametro);
  fill(0);
  if (dist (mouseX,mouseY,x*diametro+diametro*40,y*diametro+diametro*1.5) <= diametro * 2) {
  fill (0);
  ellipse(x*diametro+diametro*40,y*diametro+diametro*-1.5,tamanioaumentado,tamanioaumentado);
  }else{
  fill(0);
  ellipse(x*diametro+diametro*40,y*diametro+diametro*-1.5,diametro,diametro);
    }
    }
    }
    }
    }

void circulos(int cantidadcirculos) { 
  for (int i = 0; i < cantidadcirculos; i++) {
  float tamanioc = map(i, 0, cantidadcirculos - 1, 0, width * 0.4);
  float opacidad = map(i, 0, cantidadcirculos - 1, 255, 0);
  fill(0,opacidad);
  ellipse (600,200,tamanioc,tamanioc);    
    }
    }

void keyPressed() {
if (key == 'B') {
bg = color (246,255,5);
}else if (key == 'I') {
  bg = color (37,255,5);
} else if (key == 'A') {
bg = color (52,3,255);
}else if (key == 'N') {
  bg = color (255,119,8);
}
if (key== 'R' ) {
  resetearVariables();
}
}


boolean esPar (int x) {
  boolean resultado;
  if ((x%2) == 0) {
    resultado =true;
  }else{
    resultado= false;
  }
  return resultado;
}


void resetearVariables() {
  cant = 80;
  cantidadcirculos=20;
  uncirculo=10;
  tamanioaumentado=14; 
  diametro=width/cant; 
  bg = color (247,40,244);
}
  
