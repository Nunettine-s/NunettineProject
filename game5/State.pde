PImage img;
PImage image[] = new PImage[10];
int index = 0;
int wait = 1000;
Button  btnVehicle,btnAnimal,btnColor,btnFood,btnNum,btnRandom,btnBack,btnRecord,btnGameStart;  
PFont font;
public PImage  imgVehicle,imgAnimal,imgColor,imgFood,imgNum,imgRondom,imgBack; 
//private boolean changeScmFlg; 

class TitleState extends State {
  void drawState() {
    fill(0);        
    text("Enjoy Flash game ♪", width * 0.5, height * 0.3);
    rectMode(CENTER);
    textAlign(CENTER, CENTER);
    btnGameStart =new Button(350, 300, 150, 100, color(190, 100, 70),"START!" );
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
    rectMode(CENTER);
    textAlign(CENTER, CENTER);
    
    //그림 읽기
    imgBack = loadImage("back1.jpg"); 
    imgVehicle = loadImage( "vehicle.png" );
    imgAnimal = loadImage( "animal.png"); 
    imgColor= loadImage("color.png"); 
    imgFood = loadImage("food.png"); 
    imgNum= loadImage("num.png"); 
    imgRondom = loadImage("random.png"); 
    
    //버튼 생성
    btnVehicle =new Button(130, 170, 150, 100, color(190, 100, 70), "Vehicle" );
    btnAnimal =new Button(350, 170, 150, 100, color(190, 100, 70), "Animal");
    btnColor =new Button( 570, 170, 150, 100, color(190, 100, 70), "Color");
    btnFood =new Button(130, 320, 150, 100, color(190, 100, 70), "Food");
    btnNum =new Button(350, 320, 150, 100, color(190, 100, 70), "Number" );
    btnRandom =new Button(570, 320, 150, 100, color(190, 100, 70), "Random");
  
    btnBack =new Button(220, 450, 130, 50, color(190, 100, 70), "Back");
    btnRecord=new Button(470, 450, 130, 50, color(190, 100, 70), "Record");
   
   //버튼 실행
    btnVehicle.run();
    btnAnimal.run();
    btnColor.run(); 
    btnFood.run(); 
    btnNum.run();
    btnRandom.run(); 
    btnBack.run();
    btnRecord.run();    
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
      return new GameState2 ();
    
    } 
     else if
    (btnRandom.isPush()) {
      return new GameState2 ();
    
    } 
     else if
    (btnBack.isPush()) {
      return new TitleState();
    
    } 
     else if
    (btnRecord.isPush()) {
      return new GameState2 ();
    
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
     text("Animal Game",350, 30); // title
      if (t>1) {
         text("",350, 30); // title
     for(int i = 0; i < image.length ; i++){
       image[i] = loadImage("aimage" + i + ".png");
     }  
     imageMode(CENTER);
     image(image[index],350,230);
     index = (index+1) % image.length;
     delay(wait);}
  }
  
  State decideState() {    
    if (t>9) { // if ellapsed time is larger than
      return new EndingState(); // go to ending
    } 
    return this;
  }
}

class GameState2 extends State {
  void drawState() {
     text("Color Game Start! ",350, 30);    
     for(int i = 0; i < image.length ; i++){
       image[i] = loadImage("cimage" + i + ".png");
     }  
     imageMode(CENTER);
     image(image[index],350,230);
     index = (index+1) % image.length;
     delay(wait);
  }
  
  State decideState() {    
    if (t>10) { // if ellapsed time is larger than
      return new EndingState(); // go to ending
    } 
    return this;
  }
}

class GameState3 extends State {
  void drawState() {
     img = loadImage("aimage2.png");
      image(img,350,230);
      imageMode(CENTER); 
      }
  

  State decideState() {    
   if (t > 1) { // if ellapsed time is larger than
      return new GameState4 (); // go to ending
    } 
    return this;
  }
}

class GameState4 extends State {
  void drawState() {
      img = loadImage("aimage3.png");
      image(img,350,230);
      imageMode(CENTER); 
      }
  

  State decideState() {    
   if (t > 1) { // if ellapsed time is larger than
      return new GameState5 (); // go to ending
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
    fill(0);
    text("Ending", width * 0.5, height * 0.5);
    if (t > 1) {
    //  text("Press 'a' to restart.", width * 0.5, height * 0.7);
    btnBack =new Button(220, 450, 130, 50, color(190, 100, 70), "Back");
    btnRecord=new Button(470, 450, 130, 50, color(190, 100, 70), "Record");
    btnBack.run();
    btnRecord.run();
    }
  }

  State decideState() {
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
