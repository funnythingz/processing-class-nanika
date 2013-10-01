Nanika nanika1 = new Nanika();
Nanika nanika2 = new Nanika();
Nanika nanika3 = new Nanika();
Nanika nanika4 = new Nanika();

void setup() {
  size(300, 300);
  background(0);

  nanika1.setPosX(random(-10, 260));
  nanika1.setPosY(random(10, 260));

  nanika2.setPosX(random(-10, 260));
  nanika2.setPosY(random(10, 260));

  nanika3.setPosX(random(-10, 260));
  nanika3.setPosY(random(10, 260));

  nanika4.setPosX(random(-10, 260));
  nanika4.setPosY(random(10, 260));

  nanika1.setSpeed(random(1, 10));
  nanika2.setSpeed(random(1, 10));
  nanika3.setSpeed(random(1, 10));
  nanika4.setSpeed(random(1, 10));
}


void draw() {
  background(0);

  nanika1.setTurnLimitX(300);
  nanika2.setTurnLimitX(300);
  nanika3.setTurnLimitX(300);
  nanika4.setTurnLimitX(300);

  nanika1.move();
  nanika2.move();
  nanika3.move();
  nanika4.move();
}


class Nanika {

  private float speed = 0;
  private float posX = 0;
  private float posY = 0;

  void setSpeed(float speed) {
    this.speed = speed;
  }

  void setPosX(float posX) {
    this.posX = posX;
  }

  void setPosY(float posY) {
    this.posY = posY;
  }

  float getPosX() {
    return this.posX;
  }
  float getPosY() {
    return this.posY;
  }

  void setTurnLimitX(float limitX) {
    if(this.getPosX() < limitX) {
      this.setPosX(this.getPosX() + this.speed);
      return;
    }
    this.setPosX(-10);
    this.setPosY(random(10, 260));
  }

  void move() {
    rect(this.posX, this.posY, 10, 10);
    rect(this.posX + 10, this.posY + 10, 10, 10);
    rect(this.posX + 20, this.posY, 10, 10);
  }

}
