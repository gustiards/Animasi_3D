PImage imgFront, imgBack, imgLeft, imgRight, imgTop, imgBottom;

void setup() {
  size(640, 360, P3D);
  background(0);
  noStroke();
  // Memuat enam gambar yang berbeda
  imgFront = loadImage("miya.jpeg");
  imgBack = loadImage("batrix.jpeg");
  imgLeft = loadImage("melissa.jpg");
  imgRight = loadImage("layla.jpg");
  imgTop = loadImage("lesley.jpeg");
  imgBottom = loadImage("ixia.jpg");
}

void draw() {
  background(0);
  lights();
  translate(width/2, height/2, 0);
  rotateY(map(mouseX, 0, width, -PI, PI));
  rotateX(map(mouseY, 0, height, -PI, PI));
  textureCube(200);
}

void textureCube(float size) {
  // Front face
  beginShape(QUADS);
  texture(imgFront);
  vertex(-size, -size, size, 0, 0);
  vertex(size, -size, size, imgFront.width, 0);
  vertex(size, size, size, imgFront.width, imgFront.height);
  vertex(-size, size, size, 0, imgFront.height);
  endShape();

  // Back face
  beginShape(QUADS);
  texture(imgBack);
  vertex(size, -size, -size, 0, 0);
  vertex(-size, -size, -size, imgBack.width, 0);
  vertex(-size, size, -size, imgBack.width, imgBack.height);
  vertex(size, size, -size, 0, imgBack.height);
  endShape();

  // Left face
  beginShape(QUADS);
  texture(imgLeft);
  vertex(-size, -size, -size, 0, 0);
  vertex(-size, -size, size, imgLeft.width, 0);
  vertex(-size, size, size, imgLeft.width, imgLeft.height);
  vertex(-size, size, -size, 0, imgLeft.height);
  endShape();

  // Right face
  beginShape(QUADS);
  texture(imgRight);
  vertex(size, -size, size, 0, 0);
  vertex(size, -size, -size, imgRight.width, 0);
  vertex(size, size, -size, imgRight.width, imgRight.height);
  vertex(size, size, size, 0, imgRight.height);
  endShape();

  // Top face
  beginShape(QUADS);
  texture(imgTop);
  vertex(-size, -size, -size, 0, 0);
  vertex(size, -size, -size, imgTop.width, 0);
  vertex(size, -size, size, imgTop.width, imgTop.height);
  vertex(-size, -size, size, 0, imgTop.height);
  endShape();

  // Bottom face
  beginShape(QUADS);
  texture(imgBottom);
  vertex(-size, size, size, 0, 0);
  vertex(size, size, size, imgBottom.width, 0);
  vertex(size, size, -size, imgBottom.width, imgBottom.height);
  vertex(-size, size, -size, 0, imgBottom.height);
  endShape();
}
