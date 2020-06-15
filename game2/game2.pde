int state;    // 現在の状態 (0=タイトル, 1=ゲーム, 2=エンディング)
long t_start; // 現在の状態になった時刻[ミリ秒]
float t;      // 現在の状態になってからの経過時間[秒]

void setup(){
  size(400, 400);
  textSize(32);
  textAlign(CENTER);
  fill(255);
  state = 0;
  t_start = millis();
}

void draw(){
  background(0);
  t = (millis() - t_start) / 1000.0; // 経過時間を更新
  text(nf(t, 1, 3)  + "sec.", width * 0.5, height * 0.9); // 経過時間を表示
  
  int nextState= 0;
  if(state == 0){ nextState = title(); }
  else if(state == 1){ nextState = game(); }
  else if(state == 2){ nextState = ending(); }
  
  if(state != nextState){ t_start = millis(); } // 状態が遷移するので、現在の状態になった時刻を更新する
  state = nextState;
}

int title(){
  text("Game Title", width * 0.5, height * 0.3);
  text("Press 'z' key to start", width * 0.5, height * 0.7);
  if(keyPressed && key == 'z'){ // if 'z' key is pressed
    return 1; // start game
  }
  return 0;
}

int game(){
  text("Game (for 5 seconds)", width * 0.5, height * 0.5);
  if(t > 5){  // if ellapsed time is larger than 5 seconds
    return 2; // go to ending
  } 
  return 1;
}

int ending(){
  text("Ending", width * 0.5, height * 0.5);
  if(t > 3){
    text("Press 'a' to restart.", width * 0.5, height * 0.7);
    if(keyPressed && key == 'a') return 0;
  }
  return 2;
}
