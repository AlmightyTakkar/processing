float rotx = PI/4;
float roty = PI/4;

void setup(){
  size( 1280, 720, P3D );
}

void draw(){
  background(128);
  noStroke();
  translate(width/2.0, height/2.0, -100);
  rotateX(rotx);
  rotateY(roty);
  scale(90);
  // Front
  
  beginShape(QUADS);
  fill(51,153,255);
  vertex(0, -2,  0);
  vertex( 2, 2,  2);
  vertex( 0,  2,  2);
  vertex(-2,  2,  2);
  endShape();
  
  beginShape(QUADS);
  fill(0,204,0);
  vertex(0, -2,  0);
  vertex( 2, 2,  -2);
  vertex( 0,  2, -2);
  vertex(-2,  2, -2);
  endShape();
  
  beginShape(QUADS);
  fill(255,255,51);
  vertex(0, -2,  0);
  vertex( 2, 2,  2);
  vertex( 2,  2,  -2);
  vertex(2,  2,  -2);
  endShape();
  
  beginShape(QUADS);
  fill(255,51,51);
  vertex(0, -2,  0);
  vertex( -2, 2,  2);
  vertex( -2,  2,  -2);
  vertex(-2,  2,  -2);
  endShape();
  
  beginShape(QUADS);
  fill(204,102,0);
  vertex(2, 2,  2);
  vertex( -2, 2,  2);
  vertex( -2,  2,  -2);
  vertex(2,  2,  -2);
  endShape();
}


void mouseDragged() {
  float rate = 0.01;
  rotx += (pmouseY-mouseY) * rate;
  roty += (mouseX-pmouseX) * rate;
}
