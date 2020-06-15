State state;


void setup() {
  size(700, 500);
  font = createFont("굴림체",20);
  textSize(32);
  textAlign(CENTER);
  fill(255);
  state = new TitleState();
  h = new HandyRenderer(this); 
//  colorMode(HSB, 300, 50, 100);  //<>//
  smooth();
  for (int i = 0;i < flowers.length;i++) {
   flowers[i] = new Flower();}
  
  minim = new Minim(this);
  song1 =  minim.loadFile("pig song.mp3");
  song2 =  minim.loadFile("true song.mp3");
  song3 =  minim.loadFile("bear song.mp3"); 
  song4 =  minim.loadFile("tomato song.mp3");


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
 //   text(nf(t, 1, 3)  + "sec.", width * 0.5, height * 0.9);
    drawState();
    return decideState();
  }

  abstract void drawState();    // 状態に応じた描画を行う
  abstract State decideState(); // 次の状態を返す
}
