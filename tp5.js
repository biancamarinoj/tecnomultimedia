//BIANCA MARINOOOO
//link a video: https://youtu.be/fOpMd0L63co


let bm = [];
let texto = [];
let j; //declaro un objeto de la clase juego
function setup() {
createCanvas(600,600);
j = new Juego(bm,texto); //inicializo el objeto
}


function draw() {
  //llamo a los metodos del objeto
j.dibujar(bm,texto);
j.actualizar();
j.time();



}
function keyPressed() {
 j.teclado(); 
}
function preload() {
 for (let i = 0 ; i < 10; i++){
bm[i] = loadImage('assets/bm'+ i +'.png');
for (let x = 0 ; x < 12; x++){
 texto = loadStrings('assets/texto.txt');
 }
}
}
function mousePressed() {
j.botonPresionado();
}
