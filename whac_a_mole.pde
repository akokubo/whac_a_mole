int score; // スコア
int scene; // シーン番号
int lapse; // 経過時間

void setup() {
  size(320, 320);
  score = 0; // 最初スコアは0
  scene = 0; // 最初はシーン0
  lapse = 0; // 経過時間は0
}

void draw() {
  switch (scene) {
  case 0:
    // シーン0は開始画面
    opening();
    break;
  case 1:
    // シーン1はプレイ画面
    playing();
    break;
  case 2:
    // シーン2は結果画面
    result();
    break;
  default:
    break;
  }
}

