float x = 300;
float y = 300;
PShape sun;
PImage txtr;
PShape stars;
PShape astro;
float theta;

void setup() {
  stars = createShape(SPHERE, 1000);
  stars.setTexture(loadImage("starfield.png"));
  size (500, 500, P3D);
  txtr = loadImage("sun.jpg");
  sun = loadShape("ball2.obj");
  sun.setTexture(txtr); //attach texture to the 3D shape
  

}
void draw () {
  background (0);
  shape(stars);
  //lights();
x = mouseX - width / 2;
  y = mouseY - height / 2;
  translate(width / 2, height /2);
  rotateX(frameCount * 0.01);
  rotateY(frameCount * 0.01);
  fill(255, 0, 0);
  translate(x, y , 0);
 
 //sphere(100);

  pushMatrix();
  translate (width/2, height/2);
  rotate(theta);
  rotateY(theta/2);
  scale (1.1);
  shape (sun);
  pointLight(255, 255, 255, 0, 0, 0);
  popMatrix();

  theta+=.01; //increment angle
}
