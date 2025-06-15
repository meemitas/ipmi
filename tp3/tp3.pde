// nadia b. romero :D
// com 3
// prof. David Bedoian
//video de Youtube: https://youtu.be/C09U4mmm-mM?si=hSnX0DhvWkuaG4nQ

PImage img;
int cont;
int cant = 11;
float tam;
boolean cambioTam = false;
boolean cambiarColor = false; 

color negro;
color blanco;


void setup() {
  size(800, 400);
  img = loadImage("F18.JPEG");
  cont = 2;
}

void draw() {
  cont++;
  background(255);
  dibujarGrilla();
  image(img, 0, 0, 400, 400); //obra :D
}
