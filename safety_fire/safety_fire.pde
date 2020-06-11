PFont font;
  
void setup(){

  size(700,500);
  
  printArray(PFont.list());
  font = createFont("굴림체",40);


}



void draw(){
  
  background(0);
  textFont(font);
  textSize(30);
  
  fill(150);
  ellipse(180,250,150,150);
  
  fill(171,1,29);
  noStroke();
    for(int i = 5; i <10; i++ )
  {
    //noFill();
    ellipse(width/2,i*10,i*5,i*5);
  }
  
  fill(242,152,64);
  noStroke();
    for(int i = 2; i <7; i++ )
  {
    //noFill();
    ellipse(width/2,i*7,i*4,i*4);
  }
  fill(255);
  text("불은 조심해야 해요",350,180);
  // 문구수정
}
