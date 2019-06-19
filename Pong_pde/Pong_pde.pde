  Paddle right;
  Paddle left;
  Ball gameball;
  int leftscore;
  int rightscore;

void setup(){
  size(800, 800);
  right = new Paddle('r');
  left = new Paddle('l');
  gameball = new Ball();
  //display();
  leftscore=0;
  rightscore=0;
}
void draw(){
  
  display();
}

void keyPressed(){
    if(key=='w'){
      left.goup();
    }
    if(key=='s'){
      left.godown();
    }
    if (key == CODED) {
    if (keyCode == UP) {
      right.goup();
    }
    if(keyCode == DOWN){
      right.godown();
    }
    }
  }
void display(){
  background(0);
  right.display();
  left.display();
  gameball.display();
  textSize(30); 
  text(leftscore,200,50); 
  //text("-",400,50);
  text(rightscore,600,50); 
  
  
}
  
