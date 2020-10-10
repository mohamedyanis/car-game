import java.util.Random; 
PImage road, lamb, lamb2 , lamb3 , lamb4,car,startbg,T,T1,T2,over;
PFont font;
int carspeed=800,cary=200;
int speed = 0, lamb1S = 0,lamb2S=0, lamb3S=650 , lamb4S= 650;
int lines1=0 , lines2=240,lines3=550, lines4=860,speed1=200,speed2=350;
int score =0;
int y = 0, R11,R12,R13, R1,R2,R3;
int startFlag=1, gaming = 1;
String objects[] = {"images/Cow.png", "images/hammer.png", "images/rock.png", "images/tire.png","images/tree.png"};
void setup() {

  road = loadImage("images/road.jpg");
  lamb = loadImage("images/lamb.png");
  lamb3=lamb4=lamb2=lamb;
  car = loadImage("images/car.png");
  startbg=loadImage("images/drib.png");
  over = loadImage("images/gameover.png");
  size(1100,600);
  R1 = (int)(290.0*Math.random()+120);
  R2 = (int)(290.0*Math.random()+120);
  R3 = (int)(290.0*Math.random()+120);
  T = loadImage(objects[0]);
  T2 = loadImage(objects[2]);
  T1 = loadImage(objects[4]);

}
void draw() {
  //// start screen show
   if(startFlag == 1){
     background(startbg);
     if (mousePressed) {
     if ((mouseX > 435) && (mouseX < 708) &&(mouseY > 455) && (mouseY < 529)) {
       startFlag=0;
       clear();
     }
     }
   }
  ////////// end start screen //////
  else if (startFlag == 0 && gaming==1){
  background(road);
  
  rect(lines1,290, 200, 30);
  rect(lines2,290, 200, 30);
  rect(lines3,290, 200, 30);
  rect(lines4,290, 200, 30);
  
    if(lines1<=1100) lines1+=5;
       else lines1=0;
    if(lines2<=1100) lines2+=5;
       else lines2=0;
    if(lines3<=1100) lines3+=5;
       else lines3=0;
    if(lines4<=1100) lines4+=5;
       else lines4=0;
  
  
  if(lamb1S<=1100) lamb1S+=5;
      else lamb1S=0; 
  if(lamb2S<=1100) lamb2S+=5;
      else lamb2S=0; 
  if(lamb3S<=1100) lamb3S+=5;
      else lamb3S=0; 
  if(lamb4S<=1100) lamb4S+=5;
      else lamb4S=0; 



    if(speed<=1100)
      speed+=5;
    else{
    R11 = (int)(5.0*Math.random()+0);
    R1 = (int)((190.0*Math.random())+120);
    T = loadImage(objects[R11]);
    speed= 0;
    }

    if(speed1<=1100)
      speed1+=5;
    else{
    R12 = (int)(5.0*Math.random()+0);
    R2 = (int)((190.0*Math.random())+120);
    T1 = loadImage(objects[R12]);
    speed1= 0;
    }

    if(speed2<=1100)
      speed2+=5;
    else{
    R13 = (int)(5.0*Math.random()+0);
    R3 = (int)((190.0*Math.random())+120);
    T2 = loadImage(objects[R13]);
    speed2= 0;
    }

  image(lamb, lamb1S, 2,150,80);
  image(lamb2, lamb2S, 450,150,100);
  image(lamb3, lamb3S, 2,150,80);
  image(lamb4, lamb4S, 450,150,100);
  //fill(220,220,220);

  image(T, speed, R1,100,100);
  image(T1, speed1, R2,100,100);
  image(T2, speed2, R3,100,100);
  image(car,carspeed,cary,200,210);
  
  if(((speed>=carspeed && speed<=carspeed+200)&& (R1>=cary && R1<=cary+100)) || ((speed1==carspeed && speed1<=carspeed+100)&& (R2>=cary && R2<=cary+100)) || ((speed2==carspeed&& speed2<=carspeed+100)&& (R3>=cary && R3<=cary+100))){
      gaming = 0;
      clear();
      background(over);
  }
    
  }

}
void keyPressed() {
    //clear();
    if(keyCode==UP ){
        cary -= 6;
    }
    if(keyCode==DOWN){
        cary += 3;
    }
    if(keyCode==LEFT){
        carspeed -= 3;
    }
    if(keyCode==RIGHT){
        carspeed += 3;
}
  
  }
