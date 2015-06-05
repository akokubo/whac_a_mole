// 結果画面

void result() {
  // 背景を黒く
  background(0);
  // 文字を白く
  fill(255);

  // スコアと説明を表示
  text("YOUR SCORE: " + score, 10, 50);
  text("rキーで再挑戦", 10, 100);
  text("他のキーを押して終了", 10, 150);

  // キーが押されたら
  if (keyPressed == true) {
    if (key == 'r') { // 再挑戦
      // シーンを1に設定(プレイ画面へ)
      scene = 1;
      // スコアを0に
      score = 0;
      // ここまでの経過時間を設定
      lapse = millis() / 1000;
    } 
    else {
      exit(); // 終了
    }
  }
}

