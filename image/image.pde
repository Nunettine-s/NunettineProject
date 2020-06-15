import ddf.minim.*;

PImage image1, image2, image3, image4, image5;
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
  fill(0);
  textFont(font);
  textSize(20);
  text("밖에서 놀다가 들어오면 제일 먼저 해야할 일은?",180,50);
  
  
  if(mouseX<width/2){
    
    fill(237,34,82);
    rect(10,200,340,250);
    image(image4,30,220,300,200);
    

  }else{
  fill(69,77,230);
  rect(350,200,340,250);
  image(image5,370,220,300,200);
  }
}

void mousePressed(){
  if(mouseX>=300 && mouseY>=200 && mouseX <=200 &&   mouseY<=200){
  
  }


}
