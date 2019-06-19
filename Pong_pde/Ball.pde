class Ball{
  int x;
  int y;
  int angle;
  int speed;
  
  Ball(){
    y=400;
    x=400;
  }
  void move(){
    if(x-70<3 && angle>90 && angle<270){
      x=70;
      bounce();
    }
    if(740-x<3 && (angle>270 || angle<90)){
      x=740;
      bounce();
    }
    x+=cos((float)(Math.toRadians(angle)))*speed;
    y-=sin((float)(Math.toRadians(angle)))*speed;

    
    if(x==70){
      //bounce();
      /*if((left.gety()-y)>-10 && (left.gety()-y)<20){
        bounce();
      }*/
    }
    if(x==740){
      //bounce();
      /*if(right.gety()-y>-10 && right.gety()-y<20){
        bounce();
      }*/
    }
      

  }
  
  void bounce(){
    //TEMPORARY
    angle+=180;
    if(angle>360){
      angle=angle%360;
  }
  }
  
  void setangle(int x){
    angle=x;
  }
  
  void setspeed(int x){
    speed=x;
  }
  
  void display(){
    circle(x,y,20);
}
}
