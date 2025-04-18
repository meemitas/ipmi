//tp1 programación :D

PImage img;

void setup(){
  size(800,400);
  background(175,165,190);
  img = loadImage("autoretrato.jpeg");
}

void draw(){
  image(img,0,1,400,400);
  
  pushMatrix(); 
  
// cuello, lo pongo pimero porque sino se sobrepone con la cara
  fill(219,187,180); //color de piel
  noStroke();
  rect(549,247,83,86);
 
// carita
  translate(66,13);
  rotate(0.03);
  fill(219,187,180); //color de piel
  stroke(212,144,123);
  ellipse(549,148,159,211);

// nariz 
  stroke(244,134,124);
  strokeWeight(2);
  line(567,169,560,140);
  line(567,170,563,182);
  
// ojitos
  rotate(0.02);
  stroke(36,30,27); //color de borde(filete) de ojos
  strokeWeight(1);
  fill(201,191,189); //blanco tirando a gris para el fondo de los ojos
  ellipse(522,137,54,29);
  ellipse(596,136,54,29);
 
// pupilas y brillo
  rotate(0.02);
  fill(33,29,28); //color de ojos, negro
  ellipse(520,123,31,21);
  ellipse(590,122,31,21);
  fill(231,220,168); //reflejo, brillo de ojos
  stroke(0);
  ellipse(533,122,13,5);
  ellipse(602,118,13,5);
  noStroke();
  
// ceja derecha
  translate(415,31);
  fill(95, 64,56); //color de cejas
  noStroke();
  bezier(212,70, 202, 51, 145, 53, 170, 63);
 
// ceja izquierda
  translate(63,-26);
  fill(95, 64,56); //color de cejas
  bezier(55, 91, 104, 82, 27, 75, 10, 96);

// boca :D
  translate(29,177);
  fill(160,92,93); //color de labios
  ellipse(50,-4,35,14); //labio de arriba1
  ellipse(67,-5,25,11); //labio de arriba2
  bezier(14, -3, 14, -2, 73, 35, 76, -4); //labio inferior
  
// blush
  fill(210,152,146); //rosita 
  ellipse(102,-28,41,27); 
  ellipse(0,-26,41,27);
 
  popMatrix(); //rotate y translate estaban interfiriendo en 
              // algunas funciones, esto lo solucionó
  
// ropita!
  fill(54,55,83); //color de blusa
  rect(477,313,231,98);
  ellipse(507,412,184,218);
  ellipse(678,379,211,195);
  rect(699,307,111,100); //brazo derecho
  rect(401,337,77,140); //brazo izquierdo
  arc(597,303,156,101, radians(-30), radians(189)); //cuello de blusa
   
// pelo
  fill(86,41,41); //color de pelo, marrón
  arc(602,131,171,167, radians(180), radians(368)); //flequillo
  fill(219,187,180); //color de piel para hueco del flequillo
  arc(633,142,15,81, radians(175), radians(351)); 
  fill(86,41,41); 
  bezier(548,387,656,314,409,230,540,78); //mechón izquierdo
  bezier(637,391,513,188,749,442,685,113); //mechón derecho
  
// piercings
  fill(212,212,219); //gris
  ellipse(621,239,5,4);
  ellipse(614,252,5,4);
  ellipse(624,218,5,4);
  ellipse(632,210,5,4);
  noFill();
  stroke(-6);
  arc(626,208,19,21,2,PI);
 
// pestañas
  stroke(33,29,28); //negrito
  strokeWeight(3);
  line(560,194,564,188);
  line(575,154,577,160);
  line(598,155,596,163);
  line(649,167,654,157);
  line(667,165,672,159);
  line(670,198,665,193);
  
// :D
  fill(33,29,28);
  textSize(20);
  text(":D", 720, 265);
 
}
