  int y;
  int x;
void setup(){
  size(500,500);

}


void draw(){
  background(255,255,255);
  fill(0,0,0);
  textSize(50);
  text(x,100,100);
  text(y,200,100);
  text(",",190,100);
}
void mouseMoved(){
  y = mouseY;
  x = mouseX;
}