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

void mouseClicked(){
  y = mouseY;
  x = mouseX;
  playerMove();
}

void playerMove() {
  if(y < 210){
    if(y < 110){//    row A
      if(x < 210){
        if(x < 110){//     A1
          if(a1 == 0){
            ellipse(20,20,80,80);
            a1 = 1;
            Win();
            AI();
          }
        }else{//     A2
          if(a2 == 0){
            ellipse(120,20,80,80);
            a2 = 1;
            Win();
            AI();
          }
        }
      }else{//    A3
        if(a3 == 0){
          ellipse(220,20,80,80);
          a3 = 1;
          Win();
          AI();
        }
      }
    }else{//    row B
      if(x < 210){
        if(x < 110){
          if(b1 == 0){
            ellipse(20,120,80,80);
            b1 = 1;
            Win();
            AI();
          }
        }else{//        B2
          if(b2 == 0){
            ellipse(120,120,80,80);
            b2 = 1;
            Win();
            AI();
          } 
        }
      }else{//    B3
        if(b3 == 0){
          ellipse(220,120,80,80);
          b3 = 1;
          Win();
          AI();
        }
      }
    }
  }else{//    row C
    if(x < 210){
      if(x < 110){//       C1
        if(c1 == 0){
          ellipse(20,220,80,80);
          c1 = 1;
          Win();
          AI();
        }
      }else{//       C2
        if(c2 == 0){
          ellipse(120,220,80,80);
          c2 = 1;
          Win();
          AI();
        }
      }
    }else{//   C3
      if(c3 == 0){
        ellipse(220,220,80,80);
        c3 = 1;
        Win();
        AI();
      }
    }
  }
}

void AI(){
  if(b2 == 0){
    line(120,120,200,200);
    line(120,200,200,120);
    b2 = 1;
    Win();
  }else{
    AI2();
  }
}

void AI2(){
    if(y < 210){
    if(y < 110){//    row A
      if(x < 210){
        if(x < 110){//     A1
          if(a1 == 0){
            line(20,20,100,100);
            line(20,100,100,20);
            a1 = 2;
            Win();
          }
        }else{//     A2
          if(a2 == 0){
            line(120,20,200,100);
            line(120,100,200,20);
            a2 = 2;
            Win();
          }
        }
      }else{//    A3
        if(a3 == 0){
          line(220,20,300,100);
          line(220,100,300,20);
          a3 = 2;
          Win();
        }
      }
    }else{//    row B
      if(x < 210){
        if(x < 110){//     B1
          if(b1 == 0){
            line(20,120,100,200);
            line(20,200,100,120);
            b1 = 2;
            Win();
          }
        }else{//        B2
          if(b2 == 0){
            line(120,120,200,200);
            line(120,200,200,120);
            b2 = 2;
            Win();
          } 
        }
      }else{//    B3
        if(b3 == 0){
          line(220,120,300,200);
          line(220,200,300,120);
          b3 = 2;
          Win();
        }
      }
    }
  }else{//    row C
    if(x < 210){
      if(x < 110){//       C1
        if(c1 == 0){
          line(20,220,100,300);
          line(20,300,100,220);
          c1 = 2;
          Win();
        }
      }else{//       C2
        if(c2 == 0){
          line(120,220,200,300);
          line(120,300,200,220);
          c2 = 2;
          Win();
        }
      }
    }else{//   C3
      if(c3 == 0){
        line(220,220,300,300);
        line(220,300,300,220);
        c3 = 2;
        Win();
      }
    }
  }
}

void Win(){
  if(a1 == 1){//test if Player wins
    if(a2 == 1){
      if(a3 == 1){
        Win1();
      }
    }
  }
  if(a1 == 1){
    if(b2 == 1){
      if(c3 == 1){
        Win1();
      }
    }
  }
  if(a1 == 1){
    if(b1 == 1){
      if(c1 == 1){
        Win1();
      }
    }
  }
  if(a2 == 1){
    if(b2 == 1){
      if(c2 == 1){
        Win1();
      }
    }
  }
  if(a3 == 1){
    if(b2 == 1){
      if(c1 == 1){
        Win1();
      }
    }
  }
  if(a3 == 1){
    if(b3 == 1){
      if(c3 == 1){
        Win1();
      }
    }
  }
  if(b1 == 1){
    if(b2 == 1){
      if(b3 == 1){
        Win1();
      }
    }
  }
  if(c1 == 1){
    if(c2 == 1){
      if(c3 == 1){
        Win1();
      }
    }
  }
  
//---------------------------------------------
  
  if(a1  ==2){//test if AI wins
    if(a2  ==2){
      if(a3  ==2){
         Win2();
      }
    }
  }
  if(a1  ==2){
    if(b2  ==2){
      if(c3  ==2){
         Win2();
      }
    }
  }
  if(a1  ==2){
    if(b1  ==2){
      if(c1  ==2){
         Win2();
      }
    }
  }
  if(a2  ==2){
    if(b2  ==2){
      if(c2  ==2){
         Win2();
      }
    }
  }
  if(a3  ==2){
    if(b2  ==2){
      if(c1  ==2){
         Win2();
      }
    }
  }
  if(a3  ==2){
    if(b3  ==2){
      if(c3  ==2){
         Win2();
      }
    }
  }
  if(b1  ==2){
    if(b2  ==2){
      if(b3  ==2){
         Win2();
      }
    }
  }
  if(c1  ==2){
    if(c2  ==2){
      if(c3  ==2){
         Win2();
      }
    }
  }
}

void Win1(){
  fill(0,255,0);
  textSize(50);
  textAlign(CENTER);
  text("Player Wins",width/2,height/2);
}

void Win2(){
  fill(255,0,0);
  textSize(40);
  textAlign(CENTER);
  text("Computer Wins",width/2,height/2);
}

/*
a1
          line(20,20,100,100);
          line(20,100,100,20);
a2
          line(120,20,200,100);
          line(120,100,200,20);
a3
          line(220,20,300,100);
          line(220,100,300,20);
b1
          line(20,120,100,200);
          line(20,200,100,120);
b2
          line(120,120,200,200);
          line(120,200,200,120);
b3
          line(220,120,300,200);
          line(220,200,300,120);
c1
          line(20,220,100,300);
          line(20,300,100,220);
c2
          line(120,220,200,300);
          line(120,300,200,220);
c3
          line(220,220,300,300);
          line(220,300,300,220);
*/