PImage img;
PImage image[] = new PImage[5];
int index = 0;


class TitleState extends State {
  void drawState() {
    fill(0);
    text("Enjoy Flash game ♪", width * 0.5, height * 0.3);
    text("Press 'z' key to start", width * 0.5, height * 0.7);
  }

  State decideState() {
    if (keyPressed && key == 'z') { // if 'z' key is pressed
      return new GameState(); // start game
    }
    return this;
  }
}

class GameState extends State {
  void drawState() {
    fill(0); // moji color
    text("Animal Game (per 2 seconds)", width * 0.5, height * 0.5); // title
  }

  State decideState() {    
    if (t > 2) { // if ellapsed time is larger than
      return new GameState1 (0); // go to ending
    } 
    return this;
  }
}

class GameState1 extends State{
  int i =0;
  public GameState1(int i){
    this.i = i;
  };
  void drawState() { 
      //img = loadImage("aimage0.png");
      //image(img,350,230);
      //imageMode(CENTER);
      
      // 재귀 함수에 들어갑니다.
      //for(int i = 0; i < 5 ; i++){
        image[this.i] = loadImage("aimage" + this.i +".png");
        imageMode(CENTER);
        image(image[this.i],350,230);
        index = (index+1) % image.length;
      //}
      
      
    
      
          //System.out.println(image[i]);
        //try{
        //  Thread.sleep(2000);
        //}catch(InterruptedException e){
        //   e.printStackTrace();                
        //}
        //index = (index+1) % image.length;
        //}
      
  }

  State decideState() {
    // 사진의 마지막장이 되면 처음으로 돌아간다.
    if (this.i ==4){ //지금의 4는 마지막 숫자 30일 경우 4를 30으로 바꿈
          return new GameState2();
          
        } 
        
    if (t > 2) { // if ellapsed time is larger than
      
      return new GameState1 (this.i+1); // go to ending
    } 
    return this;
  }
}


class GameState2 extends State {
  void drawState() {
     text("Animal ", 100, 100);
     img = loadImage("aimage1.png");
     img = loadImage("aimage0.png");
     img = loadImage("aimage1.png");
     img = loadImage("aimage0.png");
     
      image(img,350,230);
      imageMode(CENTER); 
      }
  

  State decideState() {    
   if (t > 2) { // if ellapsed time is larger than
      return new GameState3 (); // go to ending
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
   if (t > 2) { // if ellapsed time is larger than
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
   if (t > 2) { // if ellapsed time is larger than
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
   if (t > 2) { // if ellapsed time is larger than
      return new EndingState(); // go to ending
    } 
    return this;
  }
}



//class GameState6 extends State {
//  void drawState() {
//    text("Game (for 5 seconds)", width * 0.5, height * 0.5);
//  }

//  State decideState() {
//    if (t > 2) { // if ellapsed time is larger than
//      return new EndingState(); // go to ending
//    } 
//    return this;
//  }
//}


class EndingState extends State {
  void drawState() {
    fill(0);
    text("Ending", width * 0.5, height * 0.5);
    if (t > 2) {
      text("Press 'a' to restart.", width * 0.5, height * 0.7);
    }
  }

  State decideState() {
    if (t > 2 && keyPressed && key == 'a') {
      return new TitleState();
    }
    return this;
  }
}
