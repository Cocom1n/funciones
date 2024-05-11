float a,b,c;
float x,y;
float intervalo;
void setup() {
  size(500, 500); 
  a=0.1;
  b=0;
  c=0;
  intervalo=0.25;
  println("Rosado: funcion estandar");
  println("Amarillo: funcion trasladada en el eje Y");
  println("Azul: funcion trasladada en el eje X");
  println("Verde: funcion alargada en el ejeY");
  println("Rojo: funcion comprimida en el eje Y");
  println("Violeta: funcion invertida en el eje X");
  println("Gris: Otras aplicaciones mostradas en el ppt");
}

void draw(){
  background(0);  
  translate(width/2, height/2); 
  scale(1,-1);
  strokeWeight(1.5);
  stroke(60);
  line(0,-height,0,height);
  line(-width,0,width,0);
  dibujarCuadratica();
  traslacionEjeY();
  traslacionEjeX();
  alargamientoVertical();
  compVertical();
  dibujarInvertida();
  otras();
}


public void dibujarCuadratica(){
  for(float x=-width; x<width; x+=intervalo){
    float y =(a*x*x + b*x + c);
    stroke(255,0,255);
    point(x,y);
  }
}

public void dibujarInvertida(){
  for(float x=-width; x<width; x+=intervalo){
    float y =(a*x*x + b*x + c);
    stroke(150,0,200);
    point(x,-y);
  }
}

public void traslacionEjeY(){
  for(float x=-width; x<width; x+=intervalo){
    stroke(200,184,33);
    float y =(a*x*x + b*x + c);
    point(x,y+100);   
    point(x,y-100);
  }
}

public void traslacionEjeX(){
  for(float x=-width; x<width; x+=intervalo){
    stroke(0,0,255);
    float y =(a*x*x + b*x + c);
    point(x+150,y);
    point(x-150,y);
  }
}

public void alargamientoVertical(){
  for(float x=-width; x<width; x+=intervalo){
    float y =(a*x*x + b*x + c);
    stroke(16,158,87);
    point(x,y*5);
  }
}
  
public void compVertical(){
  for(float x=-width; x<width; x+=intervalo){
    float y =(a*x*x + b*x + c);
    stroke(200,10,10);
    point(x,y/5);
  }
}

public void otras(){
  for(float x=-width; x<width; x+=intervalo){
    //float y =(a*x*x + b*x + c);
    stroke(150);
    
    point(x,sqrt(x));
    point(x,sqrt(x)-20);
    point(x,sqrt(x-100));
    point(x,-sqrt(x));
    point(x,sqrt(-x));
    point(x,2*sqrt(x));
  }
}
