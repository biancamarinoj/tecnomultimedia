class Ratoncito {
  constructor() { //declaro las propiedades/variables y les asigno valor
    this.x= 250;
    this.y= 510;
    this.ancho=75;
     this.alto=92;
    this.velocidad =9;
    this.limiteY=20;
    this.imagenRaton=[2];
  }
  
  flechas(teclas) {
    if (keyCode === UP_ARROW && this.y > this.limiteY) {
      this.y -=  this.velocidad;
      this.imagenRaton= [2];
    } else if (keyCode === DOWN_ARROW) {
       this.y  +=  this.velocidad;
      this.imagenRaton= [8];
    } else if (keyCode === LEFT_ARROW ) {
      this.x -=  this.velocidad;
       this.imagenRaton= [1];
    } else if (keyCode === RIGHT_ARROW) {
      this.x += this.velocidad;
      this.imagenRaton= [3];
    }
  
 this.x = constrain(this.x,0, width - this.ancho);
  this.y = constrain( this.y,this.limiteY, height -  this.alto); 
  } 
  
  dibujar (imgArray) {
    image(imgArray[this.imagenRaton], this.x, this.y,this.ancho,this.alto);
  }
 
}
