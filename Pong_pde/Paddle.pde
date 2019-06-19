class Paddle{
  boolean left;
  boolean right;
  int x;
  int y;
  
  Paddle(char p){
    if(p=='l'){
      left=true;
      right=false;
    }
    if(p=='r'){
      left=false;
      right=true;
    }
    if(left){
      y=385;
      x=50;
    }
    if(right){
      y=385;
      x=750;
    }
  }
  void goup(){
    y-=15;
  }
  
  void godown(){
    y+=15;
  }
  
  int getx(){
    return x;
  }
  
  int gety(){
    return y;
  }
  
  void display(){
    rect(x,y,10,30);
  }
}
  
      
