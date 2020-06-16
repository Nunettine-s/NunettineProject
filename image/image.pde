import ddf.minim.*;

PImage image1, image2, image3, image4, image5, blue, red, open, notOpen, touch, dontTouch;
PImage bgd;
PFont font;

Minim minim;
AudioPlayer song1,song2;

void setup(){  
 
  size(700,500);
  bgd = loadImage("bimage.png");
  background(bgd);
  
  font = createFont("굴림체",20);
  
  image1 = loadImage("truck.png");
  image2 = loadImage("car.png");
  image3 = loadImage("bcar.png");
  image4 = loadImage("image4.png");
  image5 = loadImage("image5.png");
  blue = loadImage("blue.PNG");
  red = loadImage("red.PNG");
  open = loadImage("open.PNG");
  notOpen = loadImage("notOpen.PNG");
  touch = loadImage("touch.PNG");
  dontTouch = loadImage("dontTouch.PNG");
  
  
  minim = new Minim(this);
  song1 =  minim.loadFile("yes.mp3");
  song2 =  minim.loadFile("no.mp3");
}

void draw(){
  
  //image(image3,250,60,200,120);
  
  fill(250,10);
  rect(10,200,340,250);
  
  fill(250,10);
  rect(350,200,340,250);
  
  // 텍스트 
  // 밖에서 놀다 왔을 때 해야 할 일 퀴즈(1번퀴즈)
  //fill(0);
  //textFont(font);
  //textSize(25);
  //text("밖에서 놀다가 들어오면 제일 먼저 해야 할 일은?",80,70);
  
  
  //if(mouseX<width/2){
    
  //  fill(237,34,82);
  //  rect(10,200,340,250);
  //  image(image4,30,220,300,200);
    

  //}else{
  //fill(69,77,230);
  //rect(350,200,340,250);
  //image(image5,370,220,300,200);
  //}

//  // 모르는 사람이 문 열어 달라 했을 때 퀴즈(2번퀴즈)
//  fill(0);
//  textFont(font);
//  textSize(25);
//  text("모르는 사람이 문을 열어 달라고 하면?",100,70);
  
  
//  if(mouseX<width/2){
    
//    fill(237,34,82);
//    rect(10,200,340,250);
//    image(notOpen,30,220,300,200);
    

//  }else{
//  fill(69,77,230);
//  rect(350,200,340,250);
//  image(open,370,220,300,200);
//  }
//}

//  // 불이나 뜨거운 것에 대한 퀴즈(3번퀴즈)
//  fill(0);
//  textFont(font);
//  textSize(25);
//  text("근처에 불이나 뜨거운 냄비가 있을 땐",120,70);
//  text("어떻게 해야 할까요?",210,100);
  
  
//  if(mouseX<width/2){
    
//    fill(237,34,82);
//    rect(10,200,340,250);
//    image(touch,30,220,300,200);
    

//  }else{
//  fill(69,77,230);
//  rect(350,200,340,250);
//  image(dontTouch,370,220,300,200);
//  }
//}

  // 물을 틀 때 조심해야 하는 방향에 대한 퀴즈(4번퀴즈)
  fill(0);
  textFont(font);
  textSize(25);
  text("물을 틀 때 조심해야 하는 방향의 색깔은?",120,70);
  
  
  if(mouseX<width/2){
    
    fill(237,34,82);
    rect(10,200,340,250);
    image(red,30,220,300,200);
    

  }else{
  fill(69,77,230);
  rect(350,200,340,250);
  image(blue,370,220,300,200);
  }
}

//// 1번퀴즈, 3번퀴즈일 경우 정답처리
//void mousePressed(){
//  if(mouseX>=350 && mouseY>=200){
//    song1.play();
//  }
//  if(mouseX<=350 && mouseY>=200){
//    song2.play();
//  }
//}

// 2번퀴즈, 4번퀴즈일 경우 정답처리
void mousePressed(){
  if(mouseX>=350 && mouseY>=200){
    song2.play();
  }
  if(mouseX<=350 && mouseY>=200){
    song1.play();
  }
}
