int a1 = 0;
int b1 = 0;
int c1 = 0;

int a2 = 0;
int b2 = 0;
int c2 = 0;

int a3 = 0;
int b3 = 0;
int c3 = 0;

int y;
int x;

void setup(){
  size(320,320);
  rectMode(CORNER);
  ellipseMode(CORNER);
  background(255,255,255);
}

void draw(){
  fill(0,0,0);
  strokeWeight(3);
//  line(10,10,310,10);
//  line(10,310,310,310);
//  line(10,10,10,310);
//  line(310,10,310,310);
  line(110,10,110,310);
  line(210,10,210,310);
  line(10,110,310,110);
  line(10,210,310,210);
}

void playerMove() {
  if(y < 210){
    if(y < 110){//    row A
      if(x < 210){
        if(x < 110){//     A1
          if(a1 == 0){
            ellipse(20,20,80,80);
            a1 = 1;
          }
        }else{//     A2
          if(a2 == 0){
            ellipse(120,20,80,80);
            a2 = 1;
          }
        }
      }else{//    A3
        if(a3 == 0){
          ellipse(220,20,80,80);
          a3 = 1;
        }
      }
    }else{//    row B
      if(x < 210){
        if(x < 110){
          if(b1 == 0){
            ellipse(20,120,80,80);
            b1 = 1;
          }
        }else{//        B2
          if(b2 == 0){
            ellipse(120,120,80,80);
            b2 = 1;
          } 
        }
      }else{//    B3
        if(b3 == 0){
          ellipse(220,120,80,80);
          b3 = 1;
        }
      }
    }
  }else{//    row C
    if(x < 210){
      if(x < 110){//       C1
        if(c1 == 0){
          ellipse(20,220,80,80);
          c1 = 1;
        }
      }else{//       C2
        if(c2 == 0){
          ellipse(120,220,80,80);
          c2 = 1;
        }
      }
    }else{//   C3
      if(c3 == 0){
        ellipse(220,220,80,80);
        c3 = 1;
        delay(700);
        AI()
      }
    }
  }
}

void mouseClicked(){
  y = mouseY;
  x = mouseX;
  playerMove();
}

void AI(){
  
}