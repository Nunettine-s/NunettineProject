PImage img; //<>//
PImage image[] = new PImage[20];
int index = 0;
int wait = 1000;
Button  btnVehicle,btnAnimal,btnColor,btnFood,btnNum,btnRandom,btnBack,btnRecord,btnGameStart,btnHome,btnMusic, btnEnd1, btnTomato, btnBear, btnWord, btnPig,btnEnd2;  

PImage  imgVehicle,imgAnimal,imgColor,imgFood,imgNum,imgRondom,imgBack,imgStart,imgTitle,imgWrite,imgHome,imgMusic,imgReady,bgd,random; 
import org.gicentre.handy.*; 
HandyRenderer h;
Flower[] flowers = new Flower[5];

import ddf.minim.*;
Minim minim;
AudioPlayer song1,song2,song3,song4, song5,song6,song7,song8,song9,song10;
PFont font;

class TitleState extends State {
  void drawState() {
    font = createFont("굴림체",20);
    imgTitle = loadImage("imgTitle.png");
    imageMode( CORNER );
    image(imgTitle, 0.1, 0.1, width, height); 
    rectMode(CENTER);
    textAlign(CENTER, CENTER);
    btnGameStart = new Button(353, 370, 120, 70,  color(204, 80, 255, 85),"START!");
    btnGameStart.run();
  }

  State decideState() {
    if (btnGameStart.isPush()) { 
      return new GameState0(); // start game
    }
    return this;
  }
}
class GameState0 extends State {
  void drawState() {
    fill(0); // moji color  
    font = createFont("굴림체",20);
    rectMode(CENTER);
    textAlign(CENTER, CENTER);
    
    //그림 읽기
    imgBack = loadImage("back1.jpg"); 
    imgVehicle = loadImage( "vehicle.png" );
    imgAnimal = loadImage( "animal.png"); 
    imgColor = loadImage("color.png"); 
    imgFood = loadImage("food.png"); 
    imgNum = loadImage("num.png"); 
    imgRondom = loadImage("random.png");
    
    imgHome = loadImage("home.png");
    imgWrite = loadImage("write.png");
    imgMusic = loadImage("music3.png");
    
    
    imageMode( CORNER );
    image(imgBack, 0, 0, width, height);
    
  //  버튼 생성
    btnVehicle =new Button(130, 170, 150, 100,  color(190, 100, 70,190), "Vehicle");
    btnAnimal =new Button(350, 170, 150, 100, color(190, 100, 70,190), "Animal");
    btnColor =new Button( 570, 170, 150, 100, color(190, 100, 70,190), "Color");
    btnFood =new Button(130, 320, 150, 100, color(190, 100, 70,190), "Food");
    btnNum =new Button(350, 320, 150, 100, color(190, 100, 70,190), "Things" );
    btnRandom =new Button(570, 320, 150, 100, color(190, 100, 70,190), "Random");
    
    btnBack = new Button(130, 450, 100, 50, color( 220, 80, 100, 88), "");
    btnRecord = new Button(350, 450, 100, 50, color( 220, 80, 100, 88), "");
    btnMusic = new Button(570, 450, 100, 50, color( 220, 80, 100, 88), "");
         
  // 버튼 실행
    btnVehicle.run();
    btnAnimal.run();
    btnColor.run(); 
    btnFood.run(); 
    btnNum.run();
    btnRandom.run(); 
    btnBack.run();
    btnRecord.run();
    btnMusic.run();
    
    //그림 넣기
    image(imgVehicle,30, 80);
    image(imgAnimal,317,100);
    image(imgColor,593, 105);
    image(imgFood,20, 310);
    image(imgNum,408, 313);
    image(imgRondom,600, 250);
    
    image(imgHome,100, 417);
    image(imgWrite,320, 420);
    image(imgMusic,545, 430);
       
   }  
  State decideState() {      
    if (btnVehicle.isPush()) { // if ellapsed time is larger than
      return new GameState1 (); // go to ending
    }  
    else if
    (btnAnimal.isPush()) {
      return new GameState2 ();    
    } 
     else if
    (btnColor.isPush()) {
      return new GameState3 ();    
    } 
     else if
    (btnFood.isPush()) {
      return new GameState4 ();   
    } 
     else if
    (btnNum.isPush()) {
      return new GameState5 ();   
    } 
     else if
    (btnRandom.isPush()) {
      return new GameState6 ();   
    } 
     else if
    (btnRecord.isPush()) {
      return new GameState7 ();    
    }
     else if
    (btnBack.isPush()) {
      return new TitleState();    
    }  
     else if
    (btnMusic.isPush()) {
      return new Music ();
    } 
    return this;
  }

}

class GameState extends State {
  void drawState() {
    fill(0); // moji color
    text("Game Start♪ ", width * 0.5, height * 0.5); // title
  }

  State decideState() {    
    if (t > 1) { // if ellapsed time is larger than
      return new GameState1 (); // go to ending
    } 
    return this;
  }
}

class GameState1 extends State {
  void drawState() {

     font = createFont("굴림체",20);
     bgd = loadImage("bgd.jpg");
     background(bgd);
     
     fill(47,21,178);
     textFont(font);
     textSize(50);
     
     text("Flash Game",350, 30); // title
     
     fill(47,21,178);
     textSize(35);
     text("탈것", 350,80);
     imgReady = loadImage("imgReady.jpg");
     imageMode(CENTER);
     image(imgReady,350,230);
      if (t>1) {

      for(int i = 0; i < image.length ; i++){
        image[i] = loadImage("timage" + i + ".png");
        if (btnEnd1.isPush()) 
     break;
     }  
     imageMode(CENTER);
     image(image[index],350,230);
     index = (index+1) % image.length;
     delay(wait);
     song5.play();
}
     btnEnd1 =new Button(600, 420, 100, 80, color(190, 100, 70,190), "END");
     btnEnd1.run();
  }
  
  State decideState() {
    if (btnEnd1.isPush()) { // if ellapsed time is larger than  
      song5.close( ) ;
      return new GameState0(); // go to ending
    } 
     else if
    (t> image.length) {
      return new EndingState();
    
    }
    return this;
  }
}

class GameState2 extends State {
  void drawState() {

     font = createFont("굴림체",20);
     bgd = loadImage("bgd.jpg");
     background(bgd);
     
     fill(47,21,178);
     textFont(font);
     textSize(50);
     
     text("Flash Game",350, 30); // title
     
     fill(47,21,178);
     textSize(35);
     text("동물", 350,80);
     imgReady = loadImage("imgReady.jpg");
     imageMode(CENTER);
     image(imgReady,350,230);
     if (t>1) {
        
     for(int i = 0; i < image.length ; i++){
       image[i] = loadImage("aimage" + i + ".png");
       if (btnEnd1.isPush()) 
     break;
     }  
     imageMode(CENTER);
     image(image[index],350,230);
     index = (index+1) % image.length;
     delay(wait);
     song6.play();
}
     btnEnd1 =new Button(600, 420, 100, 80, color(190, 100, 70,190), "END");
     btnEnd1.run();
  }
  
  State decideState() {
    if (btnEnd1.isPush()) { // if ellapsed time is larger than  
      song6.close( ) ;
      return new GameState0(); // go to ending
    } 
     else if
    (t> image.length) {
      return new EndingState();
    
    }
    return this;
  }
}

class GameState3 extends State {
  void drawState() {

     font = createFont("굴림체",20);
     bgd = loadImage("bgd.jpg");
     background(bgd);
     
     fill(47,21,178);
     textFont(font);
     textSize(50);
     
     text("Flash Game",350, 30); // title
     
     fill(47,21,178);
     textSize(35);
     text("색깔", 350,80);
     imgReady = loadImage("imgReady.jpg");
     imageMode(CENTER);
     image(imgReady,350,230);
      if (t>1) {
//         text("",350, 30); // title
  
     for(int i = 0; i < image.length ; i++){
       image[i] = loadImage("cimage" + i + ".png");
       if (btnEnd1.isPush()) 
     break;
     }  
     imageMode(CENTER);
     image(image[index],350,230);
     index = (index+1) % image.length;
     delay(wait);
     song7.play();
}
     btnEnd1 =new Button(600, 420, 100, 80, color(190, 100, 70,190), "END");
     btnEnd1.run();
  }
  
  State decideState() {
    if (btnEnd1.isPush()) { // if ellapsed time is larger than 
      song7.close();
      return new GameState0(); // go to ending
    } 
     else if
    (t> image.length) {
      return new EndingState();
    
    }
    return this;
  }
}


class GameState4 extends State {
  void drawState() {

     font = createFont("굴림체",20);
     bgd = loadImage("bgd.jpg");
     background(bgd);
     
     fill(47,21,178);
     textFont(font);
     textSize(50);
     
     text("Flash Game",350, 30); // title
     
     fill(47,21,178);
     textSize(35);
     text("음식", 350,80);
     imgReady = loadImage("imgReady.jpg");
     imageMode(CENTER);
     image(imgReady,350,230);
      if (t>1) {
//         text("",350, 30); // title
  
     for(int i = 0; i < image.length ; i++){
       image[i] = loadImage("food" + i + ".jpg");
       if (btnEnd1.isPush()) 
     break;
     }  
     imageMode(CENTER);
     image(image[index],350,230);
     index = (index+1) % image.length;
     delay(wait);
     song8.play();
}
     btnEnd1 =new Button(600, 420, 100, 80, color(190, 100, 70,190), "END");
     btnEnd1.run();
  }
  
  State decideState() {
    if (btnEnd1.isPush()) { // if ellapsed time is larger than 
      song8.close();
      return new GameState0(); // go to ending
    } 
     else if
    (t> image.length) {
      return new EndingState();
    
    }
    return this;
  }
}
class GameState5 extends State {
  void drawState() {
     bgd = loadImage("bgd.jpg");
     background(bgd);
     
     fill(47,21,178);
     textFont(font);
     textSize(50);
     
     text("Flash Game",350, 30); // title
     
     fill(47,21,178);
     textSize(35);
     text("사물", 350,80);  
     for(int i = 0; i < image.length ; i++){
       image[i] = loadImage("object" + i + ".jpg");

     }  
     imageMode(CENTER);
     image(image[index],350,230);
     index = (index+1) % image.length;
     delay(wait);
     song9.play();
     btnEnd1 =new Button(600, 420, 100, 80, color(190, 100, 70,190), "END");
     btnEnd1.run();
  }
  
  State decideState() {    
    if (t> image.length) { // if ellapsed time is larger than
      song9.close();
      return new EndingState(); // go to ending
    } 
    else if
    (btnEnd1.isPush()) {
      return new GameState0();  
    }
    return this;
  }
}

class GameState6 extends State {
  void drawState() {

     font = createFont("굴림체",20);
     bgd = loadImage("bgd.jpg");
     background(bgd);
     
     fill(47,21,178);
     textFont(font);
     textSize(50);
     
     text("Flash Game",350, 30); // title
     
     fill(47,21,178);
     textSize(35);
     text("렌덤", 350,80);
     imgReady = loadImage("imgReady.jpg");
     imageMode(CENTER);
     image(imgReady,350,230);
      if (t>1) {
      for(int i = 0; i < image.length ; i++){
        image[i] = loadImage("random" + i + ".jpg");
        if (btnEnd1.isPush()) 
      break;
     }  
     imageMode(CENTER);
     image(image[index],350,230);
     index = (index+1) % image.length;
     delay(wait);
     song10.play();
}
     btnEnd1 =new Button(600, 420, 100, 80, color(190, 100, 70,190), "END");
     btnEnd1.run();
  }
  
  State decideState() {
    if (btnEnd1.isPush()) { // if ellapsed time is larger than
      song10.close();
      return new GameState0(); // go to ending
    } 
     else if
    (t> image.length) {
      return new EndingState();
    
    }
    return this;
  }
}

class EndingState extends State {
  void drawState() {
//    colorMode(HSB, 360, 100, 100);
    fill(0);
    text("Ending", width * 0.5, height * 0.5);
    if (t > 1) {
      text("Press 'Home' to back.", width * 0.5, height * 0.7);   
    btnBack =new Button(350, 420, 130, 50, color(190, 100, 70), "Home");
    btnBack.run();
    }
  }
  State decideState() {
    for (int i = 0;i < flowers.length;i++) {
    flowers[i].expansion();
    flowers[i].display();
  }
    if (btnBack.isPush()) {
      return new  GameState0();
    } 
    else if
    (btnRecord.isPush()) {
      return new  GameState0();    
    } 
    return this;
  }
}

class Music extends State {
  void drawState() {
    fill(0); // moji color  
    font = createFont("굴림체",20);
    rectMode(CENTER);
    textAlign(CENTER, CENTER);
    imgHome = loadImage("home.png");   
    imageMode( CORNER );
    image(imgBack, 0, 0, width, height);
    
  //  버튼 생성
    btnTomato =new Button(200, 170, 150, 100,  color(190, 100, 70,190), "TOMATO");
    btnBear =new Button(500, 170, 150, 100, color(190, 100, 70,190), "BEAR");
    btnPig =new Button(200, 320, 150, 100, color(190, 100, 70,190), "PIG");
    btnWord =new Button(500, 320, 150, 100, color(190, 100, 70,190), "GOOD WORD"); 
    btnBack = new Button(360, 450, 100, 50, color( 220, 80, 100, 88), "");

      
  // 버튼 실행
    btnTomato.run();
    btnBear.run();
    btnPig.run(); 
    btnWord.run(); 
    btnBack.run();

    //그그림 넣기    
    image(imgHome,330, 420);         //<>//
   }
  State decideState() {      
    if (btnTomato.isPush()) { // if ellapsed time is larger than
      return new GameState7 (); // go to ending
    }  
    else if
    (btnBear.isPush()) {
      return new GameState8 ();    
    } 
     else if
    (btnWord.isPush()) {
      return new GameState9 ();   
    } 
     else if
    (btnPig.isPush()) {
      return new GameState10 ();
    } 
     else if
    (btnBack.isPush()) {
      return new TitleState();
    } 
     else if
    (btnMusic.isPush()) {
      return new Music ();    
    } 
    return this;
  }

}


class GameState7 extends State {
  void drawState() { 
    
     song1.play();

     // 글꼴
     printArray(PFont.list());
     font = createFont("굴림체",40);
  
     // 배경이미지
     bgd = loadImage("backg2.jpg");
     background(bgd);
     fill(47,21,178);
     textFont(font);
     textSize(20);
     fill(0);

    // 노래가사
    textAlign(CENTER);
    text("아기돼지 삼형제",width/2, 45);
  
    textAlign(CENTER,RIGHT);
    text("첫 번째 돼지가 집을 짓는데",width/4, 80 );
    text("짚으로 차곡차곡 집을 짓는데",width/4, 105 );
    text("늑대가 나타나 후!",width/4, 130 );
    text("늑대가 나타나 후!",width/4, 155 );
    text("무너져 내렸대요",width/4, 180 );
  
    textAlign(CENTER,LEFT);
    text("두 번째 돼지가 집을 짓는데",width/2 + 120, 80 );
    text("나무로 차곡차곡 집을 짓는데",width/2 + 120, 105 );
    text("늑대가 나타나 후!",width/2 + 120, 130 );
    text("늑대가 나타나 후!",width/2 + 120, 155 );
    text("무너져 내렸대요",width/2 + 120, 180 );
  
    textAlign(CENTER,RIGHT);
    text("세 번째 돼지가 집을 짓는데",width/4, 250 );
    text("벽돌로 차곡차곡 집을 짓는데",width/4, 275 );
    text("늑대가 나타나 후!",width/4, 300 );
    text("늑대가 나타나 후!",width/4, 325 );
    text("끄떡도 없었대요.",width/4, 350 );
  
    textAlign(CENTER,LEFT);
    text("높은 집을 지읍시다.",width/2 + 120, 250 );
    text("넓은 집을 지읍시다.",width/2 + 120, 275 );
    text("아담한 집을 지읍시다.",width/2 + 120, 300 );
    text("아름답게 지읍시다. 아자!",width/2 + 120, 325 );
    btnEnd2 =new Button(600, 420, 100, 80, color(190, 100, 70,190), "END");
    btnEnd2.run();

  }
  
  State decideState() {    
    if (btnEnd2.isPush()) { // if ellapsed time is larger than
      song1.close( ) ;
      return new Music();// go to ending
    } 
    return this;
  }
}

class GameState8 extends State {
  void drawState() {

     song2.play();
     
     // 글꼴
     printArray(PFont.list());
     font = createFont("굴림체",40);
  
     // 배경이미지
     bgd = loadImage("backg.jpg");
     background(bgd);
     fill(47,21,178);
     textFont(font);
     textSize(20);
     fill(0);
            // 노래가사
     textAlign(CENTER);
     text("참 좋은 말",width/2, 40);
  
     text("사랑해요 이한마디 참 좋은말",width/2, 100 );
     text("우리식구 자고나면 주고 받는 말",width/2, 140 );
     text("사랑해요 이 한마디 참 좋은말",width/2, 180 );
     text("엄마아빠 일터갈 때 주고 받는 말",width/2, 220 );
     text("이말이 좋아서 온종일 신이 나지요",width/2, 260 );
     text("이말이 좋아서 온종일 일맛 나지요",width/2, 300 );
     text("이말이 좋아서 온종일 가슴이 콩닥콩닥 인데요",width/2, 340 );
     text("사랑해요 이 한마디 참 좋은말",width/2, 380 );
     text("나는 나는 이 한마디가 정말 좋아요" ,width/2, 420 ); 
     btnEnd2 =new Button(600, 420, 100, 80, color(190, 100, 70,190), "END");
     btnEnd2.run();

  }
  
  State decideState() {    
    if (btnEnd2.isPush()) { // if ellapsed time is larger than
      song2.close( ) ;
      return new Music();// go to ending
    } 
    return this;
  }
}

class GameState9 extends State {
  void drawState() {
    
     song3.play();
      
     // 배경이미지
     bgd = loadImage("backg.jpg");
     background(bgd);
     fill(47,21,178);
     textFont(font);
     textSize(20);
     fill(0);

     // 글꼴
     printArray(PFont.list());
     font = createFont("굴림체",40);

     // 노래가사
     textAlign(CENTER);
     text("예쁜 아기곰",width/2, 40);
  
     text("동그란눈에 까만 작은 코",width/2, 80 );
     text("하얀 털옷을 입은 예쁜 아기 곰",width/2, 105 );
     text("언제나 너를 바라보면서 작은소망 애기하지",width/2, 130 );
     text("너의 곁에 있으면 나는 행복해",width/2, 155 );
     text("어떤 비밀이라도 말할 수 있어",width/2, 180 );////
     text("까만 작은 코에 입을 맞추면 ",width/2, 205 );
     text("수줍어 얼굴을 붉히는 예쁜 아기곰",width/2, 230 );
  
     text("동그란눈에 까만 작은 코",width/2, 280 );
     text("하얀 털옷을 입은 예쁜 아기 곰",width/2, 305 );
     text("언제나 너를 바라보면서 작은소망 애기하지",width/2, 330 );
     text("너의 곁에 있으면 나는 행복해",width/2, 355 );
     text("어떤 비밀이라도 말할 수 있어",width/2, 380 );
     text("까만 작은 코에 입을 맞추면",width/2, 405 );
     text("수줍어 얼굴을 붉히는 예쁜 아기곰",width/2, 430);
     btnEnd2 =new Button(600, 420, 100, 80, color(190, 100, 70,190), "END");
     btnEnd2.run();

  }
  
  State decideState() {    
    if (btnEnd2.isPush()) { // if ellapsed time is larger than
       song3.close( ) ;
      return new Music();// go to ending
    } 
    return this;
  }
}
class GameState10 extends State {
  void drawState() {

      
     // 배경이미지
     bgd = loadImage("backg.jpg");
     background(bgd);
     fill(47,21,178);
     textFont(font);
     textSize(20);
     fill(0);
     song4.play();
     
     // 글꼴
     printArray(PFont.list());
     font = createFont("굴림체",40);

    // 노래가사
    textAlign(CENTER);
    text("멋쟁이 토마토",width/2, 50);
  
    text("울끈불끈 멋진 몸매에(으쓱으쓱)",width/2, 100 );
    text("빨간 옷을 입고(샤방샤방)",width/2, 150 );
    text("새콤달콤 향기 풍기는(유후)",width/2, 200 );
    text("멋쟁이 토마토(토마토)",width/2, 250 );
    text("나는야 주스 될꺼야(꿀꺽)",width/2, 300 );
    text("나는야 케첩 될꺼야(찌익)",width/2, 350 );
    text("나는야 춤을 출거야(헤이)",width/2, 400 );
    text("뽑내는 토마토(토마토)",width/2, 450 );
    btnEnd2 =new Button(600, 420, 100, 80, color(190, 100, 70,190), "END");
    btnEnd2.run();

  }
  
  State decideState() {    
    if (btnEnd2.isPush()) { // if ellapsed time is larger than
      song4.close( ) ;
      return new Music();// go to ending
    } 
    return this;
  }
}
