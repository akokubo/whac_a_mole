// プレイ画面
float x = 100; // 敵の最初のx座標
float y = 100; // 敵の最初のy座標
float r = 50; // 敵の大きさ

void playing() {
  // プレイ時間を更新
  int time = millis() / 1000 - lapse;

  // 背景を灰色に
  background(204);
  // 文字を白く
  fill(0);

  // スコアと経過時間の表示
  text("SCORE: " + score, 10, 10);
  text("TIME: " + time, 100, 10);

  // 敵を表示
  fill(255);

  ellipse(x, y, r, r);
  // 敵をクリックすると、スコアが入って、敵が移動
  if (mousePressed == true) {
    if (dist(mouseX, mouseY, x, y) < r) {
      score++;
      x = random(0, width);
      y = random(0, height);
    }
  }

  // 10秒経過したら結果画面へ
  if (time > 10) {
    // シーンを2に設定(結果画面へ)
    scene = 2;

    // ここまでの経過時間を設定
    lapse = millis() / 1000;
  }
}

