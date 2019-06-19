class Ball{
  boolean past;
  int x;
  int y;
  int angle;
  int speed;
  
  Ball(){
    y=400;
    x=400;
    past=false;
  }
  void move(){
    if(!past && x-70<3 && angle>90 && angle<270){
      x=70;
      if((left.gety()-y)>-10 && (left.gety()-y)<20){
        bounce();
      }
      else{
        past=true;
      }
      //bounce();
    }
    if(x<10){
          rightscore++;
          x=400;
          y=400;
          speed=0;
          //NEW BALL
        }
    if(!past && 740-x<3 && (angle>270 || angle<90)){
      x=740;
      if(right.gety()-y>-10 && right.gety()-y<20){
        bounce();
      }
      else{
        past=true;
      }
      //bounce();
    }
    if(x>790){
          leftscore++;
          x=400;
          y=400;
          speed=0;
          //NEW BALL
        }
    x+=cos((float)(Math.toRadians(angle)))*speed;
    y-=sin((float)(Math.toRadians(angle)))*speed;
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
