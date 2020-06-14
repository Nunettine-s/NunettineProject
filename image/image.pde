PImage image1, image2, image3;
PImage bgd;
PFont font;

void setup(){  
 
  size(700,500);
  bgd = loadImage("bimage.png");
  background(bgd);
  
  font = createFont("굴림체",20);
  
  image1 = loadImage("truck.png");
  image2 = loadImage("car.png");
  image3 = loadImage("bcar.png");
}

void draw(){
  
  image(image3,250,60,200,120);
  
  fill(250,10);
  rect(10,200,340,250);
  
  fill(250,10);
  rect(350,200,340,250);
  
  // 텍스트 
  fill(0);
  textFont(font);
  textSize(20);
  text("나는 누구일까요?",280,50);
  
  
  if(mouseX<width/2){
    
    fill(237,34,82);
    rect(10,200,340,250);
    image(image1,30,220,300,200);
    

  }else{
  fill(69,77,230);
  rect(350,200,340,250);
  image(image2,370,220,300,200);
  }
 
}
