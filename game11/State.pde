PImage img; //<>//
PImage image[] = new PImage[10];
int index = 0;
int wait = 1000;
Button  btnVehicle,btnAnimal,btnColor,btnFood,btnNum,btnRandom,btnBack,btnRecord,btnGameStart,btnHome,btnMusic, btnEnd;  
//PFont font;
PImage bgd;
public PImage  imgVehicle,imgAnimal,imgColor,imgFood,imgNum,imgRondom,imgBack,imgStart,imgTitle,imgWrite,imgHome,imgMusic,imgReady; 
import org.gicentre.handy.*; 
HandyRenderer h;

Flower[] flowers = new Flower[5];


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
    if (btnGameStart.isPush()) { // if 'z' key is pressed
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
    btnNum =new Button(350, 320, 150, 100, color(190, 100, 70,190), "Number" );
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
      return new GameState1 ();    
    } 
     else if
    (btnColor.isPush()) {
      return new GameState2 ();
    
    } 
     else if
    (btnFood.isPush()) {
      return new GameState4 ();
    
    } 
     else if
    (btnRandom.isPush()) {
      return new GameState3 ();
    
    } 
     else if
    (btnBack.isPush()) {
      return new TitleState();
    
    } 
     else if
    (btnRecord.isPush()) {
      return new GameState2 ();
    
    } 
     else if
    (btnMusic.isPush()) {
      return new MusicState();
    
    //} 
    // else if
    //(btnMusic.isPush()) {
    //  return new MusicState();
    
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
     text("동물", 350,80);
     imgReady = loadImage("imgReady.jpg");
     imageMode(CENTER);
     image(imgReady,350,230);
      if (t>1) {
//         text("",350, 30); // title
  
     for(int i = 0; i < image.length ; i++){
       image[i] = loadImage("aimage" + i + ".png");
     }  
     imageMode(CENTER);
     image(image[index],350,230);
     index = (index+1) % image.length;
     delay(wait);}

  }
  
  State decideState() {
     btnEnd =new Button(600, 420, 100, 80, color(190, 100, 70,190), "END");
     btnEnd.run();
    if (btnEnd.isPush()) { // if ellapsed time is larger than
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
     bgd = loadImage("bgd.jpg");
     background(bgd);
     
     fill(47,21,178);
     textFont(font);
     textSize(50);
     
     text("Flash Game",350, 30); // title
     
     fill(47,21,178);
     textSize(35);
     text("색깔", 350,80);  
     for(int i = 0; i < image.length ; i++){
       image[i] = loadImage("cimage" + i + ".png");
     }  
     imageMode(CENTER);
     image(image[index],350,230);
     index = (index+1) % image.length;
     delay(wait);
     btnEnd =new Button(600, 420, 100, 80, color(190, 100, 70,190), "END");
     btnEnd.run();
  }
  
  State decideState() {    
    if (t>10) { // if ellapsed time is larger than
      return new EndingState(); // go to ending
    } 
    else if
    (btnEnd.isPush()) {
      return new GameState0();    
    }    
    return this;
  }
}

class GameState3 extends State {
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
     btnEnd =new Button(600, 420, 100, 80, color(190, 100, 70,190), "END");
     btnEnd.run();
  }
  
  State decideState() {    
    if (t>10) { // if ellapsed time is larger than
      return new EndingState(); // go to ending
    } 
    else if
    (btnEnd.isPush()) {
      return new GameState0();  
    }
    return this;
  }
}

class GameState4 extends State {
  void drawState() {
     bgd = loadImage("bgd.jpg");
     background(bgd);
     
     fill(47,21,178);
     textFont(font);
     textSize(50);
     
     text("Flash Game",350, 30); // title
     
     fill(47,21,178);
     textSize(35);
     text("음식", 350,80);  
     for(int i = 0; i < image.length ; i++){
       image[i] = loadImage("food" + i + ".jpg");
     }  
     imageMode(CENTER);
     image(image[index],350,230);
     index = (index+1) % image.length;
     delay(wait);
     btnEnd =new Button(600, 420, 100, 80, color(190, 100, 70,190), "END");
     btnEnd.run();
  }
  
  State decideState() {    
    if (t>10) { // if ellapsed time is larger than
      return new EndingState(); // go to ending
    } 
    else if
    (btnEnd.isPush()) {
      return new GameState0();    
    }
    return this;
  }
}

class GameState5 extends State {
  void drawState() {
     img = loadImage("aimage4.png");
      image(img,350,230);
      imageMode(CENTER); 
      }
  
  State decideState() {    
   if (t > 1) { // if ellapsed time is larger than
      return new EndingState(); // go to ending
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






class MusicState extends State {
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
    btnNum =new Button(350, 320, 150, 100, color(190, 100, 70,190), "Number" );
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
    
    //그그림 넣기
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
      return new GameState1 ();    
    } 
     else if
    (btnColor.isPush()) {
      return new GameState2 ();
    
    } 
     else if
    (btnFood.isPush()) {
      return new GameState4 ();
    
    } 
     else if
    (btnRandom.isPush()) {
      return new GameState3 ();
    
    } 
     else if
    (btnBack.isPush()) {
      return new TitleState();
    
    } 
     else if
    (btnRecord.isPush()) {
      return new GameState2 ();
    
    } 
     else if
    (btnMusic.isPush()) {
      return new GameState2 ();
    
    } 
    return this;
  }

}
