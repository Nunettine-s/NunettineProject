State state;


void setup() {
  size(700, 500);
  font = createFont("굴림체",20);
  textSize(32);
  textAlign(CENTER);
  fill(255);
  state = new TitleState();
  h = new HandyRenderer(this); 
//  colorMode(HSB, 300, 50, 100);  //<>// //<>// //<>//
  smooth();
  for (int i = 0;i < flowers.length;i++) {
   flowers[i] = new Flower();}
  
  minim = new Minim(this);
  song1 =  minim.loadFile("pig song.mp3");
  song2 =  minim.loadFile("true song.mp3");
  song3 =  minim.loadFile("bear song.mp3"); 
  song4 =  minim.loadFile("tomato song.mp3");
  song5 =  minim.loadFile("운송.mp3");
  song6 =  minim.loadFile("동물.mp3");
  song7 =  minim.loadFile("색깔.mp3");
  song8 =  minim.loadFile("음식.mp3");
  song9 =  minim.loadFile("사물.mp3");
  song10 =  minim.loadFile("랜덤.mp3");

}

void draw() {
  background(255);
  state = state.doState();
}

abstract class State {
  long t_start;
  float t;

  State() {
    t_start = millis();
  }

  State doState() {
    t = (millis() - t_start) / 1000.0;
    fill(0);
    drawState();
    return decideState();
  }

  abstract void drawState();    // 状態に応じた描画を行う
  abstract State decideState(); // 次の状態を返す
}
