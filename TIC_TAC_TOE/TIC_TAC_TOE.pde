int a1;
int b1;
int c1;

int a2;
int b2;
int c2;

int a3;
int b3;
int c3;

int y;
int x;

int player;
int gameOver;

void setup(){
  a1 = 0;
  a2 = 0;
  a3 = 0;
  b1 = 0;
  b2 = 0;
  b3 = 0;
  c1 = 0;
  c2 = 0;
  c3 = 0;
  player = 2;
  gameOver = 0;
  size(320,320);
  rectMode(CORNER);
  ellipseMode(CORNER);
  background(255,255,255);
}

void draw(){
  strokeWeight(3);
  line(110,10,110,310);
  line(210,10,210,310);
  line(10,110,310,110);
  line(10,210,310,210);
}

void mouseClicked(){
  if(gameOver == 0){
    y = mouseY;
    x = mouseX;
    if(player == 2){
      player2move();
    }else if(player == 1){
      player1move();
    }
  }else{
    setup();
  }
}



void player1move() {
  fill(255,255,255);
  if(y < 210){
    if(y < 110){//    row A
      if(x < 210){
        if(x < 110){//     A1
          if(a1 == 0){
            ellipse(20,20,80,80);
            a1 = 1;
            Tie();
            player = 2;
          }
        }else{//     A2
          if(a2 == 0){
            ellipse(120,20,80,80);
            a2 = 1;
            Tie();
            player = 2;
          }
        }
      }else{//    A3
        if(a3 == 0){
          ellipse(220,20,80,80);
          a3 = 1;
          Tie();
          player = 2;
        }
      }
    }else{//    row B
      if(x < 210){
        if(x < 110){
          if(b1 == 0){
            ellipse(20,120,80,80);
            b1 = 1;
            Tie();
            player = 2;
          }
        }else{//        B2
          if(b2 == 0){
            ellipse(120,120,80,80);
            b2 = 1;
            Tie();
            player = 2;
          } 
        }
      }else{//    B3
        if(b3 == 0){
          ellipse(220,120,80,80);
          b3 = 1;
          Tie();
          player = 2;
        }
      }
    }
  }else{//    row C
    if(x < 210){
      if(x < 110){//       C1
        if(c1 == 0){
          ellipse(20,220,80,80);
          c1 = 1;
          Tie();
          player = 2;
        }
      }else{//       C2
        if(c2 == 0){
          ellipse(120,220,80,80);
          c2 = 1;
          Tie();
          player = 2;
        }
      }
    }else{//   C3
      if(c3 == 0){
        ellipse(220,220,80,80);
        c3 = 1;
        Tie();
        player = 2;
      }
    }
  }
}

void player2move(){
    if(y < 210){
    if(y < 110){//    row A
      if(x < 210){
        if(x < 110){//     A1
          if(a1 == 0){
            line(20,20,100,100);
            line(20,100,100,20);
            a1 = 2;
            Tie();
            player = 1;
          }
        }else{//     A2
          if(a2 == 0){
            line(120,20,200,100);
            line(120,100,200,20);
            a2 = 2;
            Tie();
            player = 1;   
          } 
        }
      }else{//    A3
        if(a3 == 0){
          line(220,20,300,100);
          line(220,100,300,20);
          a3 = 2;
          Tie();
          player = 1;
        }
      }
    }else{//    row B
      if(x < 210){
        if(x < 110){//     B1
          if(b1 == 0){
            line(20,120,100,200);
            line(20,200,100,120);
            b1 = 2;
            Tie();
            player = 1;
          }
        }else{//        B2
          if(b2 == 0){
            line(120,120,200,200);
            line(120,200,200,120);
            b2 = 2;
            Tie();
            player = 1;
          } 
        }
      }else{//    B3
        if(b3 == 0){
          line(220,120,300,200);
          line(220,200,300,120);
          b3 = 2;
          Tie();
          player = 1;
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
          Tie();
          player = 1;
        }
      }else{//       C2
        if(c2 == 0){
          line(120,220,200,300);
          line(120,300,200,220);
          c2 = 2;
          Tie();
          player = 1;
        }
      }
    }else{//   C3
      if(c3 == 0){
        line(220,220,300,300);
        line(220,300,300,220);
        c3 = 2;
        Tie();
        player = 1;
      }
    }
  }
}

//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

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

void Tie(){
  if(a1+a2+a3+b1+b2+b3+c1+c2+c3 == 14){
    textAlign(CENTER);
    fill(255,0,0);
    textSize(120);
    text("TIE",width/2,height/2);
    gameOver = 1;
  }else{
    Win();
  }
}

void Win1(){
  fill(0,255,0);
  textSize(40);
  textAlign(CENTER);
  text("Player 1 Wins",width/2,height/2);
  gameOver = 1;
}

void Win2(){
  fill(0,0,255);
  textSize(40);
  textAlign(CENTER);
  text("Player 2 Wins",width/2,height/2);
  gameOver = 1;
}