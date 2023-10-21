class Juego {
  constructor() {
    // creo los objetos de mis otras clases
    this.raton =  new Ratoncito();
    this.tacos = [];
    
    this.maxTacos= 6;
    this.interval= 800; //que aparezcan cada
    this.ultimoTiempoAparicion= 0;
    
    this.tiempo=0;
    this.duracion=20;
    this.jugando=true; //time
    
    this.puntos= 0;
    this.boton = true;
    for (let i=0; i< this.maxTacos; i++) {
      this.tacos.push(new Zapatos()); //array de tacos
    }
    
    this.estado ="instrucciones";
  }
  dibujar(imgArray, textos) {
    if (this.estado == "instrucciones" ) {
      image(imgArray[7], 0, 0);
      fill(255);
      textSize(30);
      text (textos[0], 250, 30);
      textSize(20);
      text (textos[1], 5, 70);
      text (textos[2], 5, 80, 600);
      text (textos[3], 5, 130, 600);
      text (textos[4], 5, 180, 600);
      text (textos[5], 5, 260, 600);
      text (textos[9], 90, 580);
      fill(200,0,0);
      text (textos[10], 120, 520);
      
    } else if (this.estado == "jugando" ) {
      image(imgArray[4], 0, 0);
      image(imgArray[5], 0, 0);
      this.raton.dibujar(imgArray); //dibujo mis objetos con sus metodos
      for (let i=0; i< this.tacos.length; i++) {
        this.tacos[i].dibujar(imgArray);
        fill(255);
        text("puntos: "+this.puntos,440,45);
      }
      
    } else if (this.estado == "ganaste") {
      image(imgArray[9], 0, 0);
      textSize(18);
      fill(255);
      text (textos[8], 10, 10, 600);
      noStroke();
      rect (250,500,100,50);
      fill(200,0,0);
     text (textos[11], 255, 530);
      
        
      
      
    } else if (this.estado == "perdiste" ) {
      push();
      image(imgArray[6], 0, 0);
      textSize(18);
      text (textos[7], 10, 10, 600);
      noStroke();
      rect (250,500,100,50);
      fill(200,0,0);
     text (textos[11], 255, 530);
      pop();
    }
    
  }
  teclado(imgArray) {
    if (this.estado == "jugando" ) {
      this.raton.flechas(keyCode, UP_ARROW, DOWN_ARROW, LEFT_ARROW, RIGHT_ARROW);
    }
     if (key=== ' ' ) {
      if (this.estado=== "instrucciones") {
        this.estado = "jugando";
      }
}
   
  }

  actualizar () {
    if (this.estado == "jugando" ) {
      let tiempoActual = millis();
      if (tiempoActual - this.ultimoTiempoAparicion > this.interval) { //comparacion tiempo actual con el tiempo del ultimo aparecimiento del taco
        if (this.tacos.length === this.maxTacos) { 
          this.tacos.splice(0, 1); //si la longitud del arreglo tacos es igual a el nro de tacos asignado se elimina el primer elemento del arreglo para dar espacio a otro (taco)
          this.tacos.push (new Zapatos()); //aca se agrega uno nuevo
        }
        this.ultimoTiempoAparicion = tiempoActual;
      }
    }
    
    let distanciaColision = 30 ;
    for ( let i = 0; i < this.tacos.length; i++ ) {  //recorro cada posicion de la lista
      let distanciaTacoRaton = dist( this.raton.x, this.raton.y, this.tacos[i].x,this.tacos[i].y);
      //
      if ( distanciaTacoRaton < distanciaColision && !this.tacos[i].colision) {
     this.puntos++;
     this.tacos[i].colision=true;
     this.reubicarTaco(this.tacos[i]);
   }
    }
     
      if (   this.puntos > 5) {
           this.estado="ganaste";
      }
      
    }

      reubicarTaco(taco) {
    
      taco.x = random(taco.size, width- taco.size);
      taco.y = random(100, height - taco.size- 80);
      taco.colision= false;
      }

  time() { //tiempo del juego
    if (this.estado == "jugando" ) {
      if (this.jugando) {
        this.tiempo += deltaTime / 1000;
        let tiempoRestante = this.duracion - this.tiempo;
        if (tiempoRestante <= 0) {
          this.jugando = false;
          this.estado = "perdiste";
        }
        fill(255);
        textSize(30);
        let tiempoFormateado = nf(tiempoRestante, 1, 1);
        text( "        " + tiempoFormateado, 5, 50);
      }
    }
  }
  botonPresionado() {
  if ((mouseX> 250 && mouseX< 250+100 && mouseY > 500 && mouseY <500+50)&& (this.estado==="ganaste")) {
    this.boton=true;
   this.estado = "instrucciones";
    this.reiniciar();
}else if ((mouseX> 250 && mouseX< 250+100 && mouseY > 500 && mouseY <500+50)&& (this.estado==="perdiste")) {
    this.boton=true;
   this.estado = "instrucciones";
    this.reiniciar();
} 
  }
  reiniciar(){ //reinicio variables
      this.estado = "instrucciones";
       this.raton =  new Ratoncito();
    this.tacos = [];
    this.maxTacos= 6;
    this.interval= 800; 
    this.ultimoTiempoAparicion= 0;
    this.tiempo=0;
     this.boton = true;
    this.duracion=20;
    this.jugando=true; 
    this.puntos= 0;
     for (let i=0; i< this.maxTacos; i++) {
      this.tacos.push(new Zapatos());
    
    }
    }
}
