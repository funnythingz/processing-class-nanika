void setup() {
  size(300, 300);
  background(0);
  
  Nanika nanika1 = new Nanika();
  nanika1.setPosition(10, 0);
  nanika1.draw();
  
  Nanika nanika2 = new Nanika();
  nanika2.setPosition(100, 20);
  nanika2.draw();
  
  Nanika nanika3 = new Nanika();
  nanika3.setPosition(50, 10);
  nanika3.draw();
  nanika3.click();
  
  Nanika nanika4 = new Nanika();
  nanika4.setPosition(70, 60);
  nanika4.draw();
}

class Nanika {
  
  private int posX = 0;
  private int posY = 0;
  
  private boolean flag = false;
  
  void setPosition(int posX, int posY) {
    this.posX = posX;
    this.posY = posY;
  }
  void draw() {
    rect(this.posX, this.posY, 10, 10);
    rect(this.posX + 10, this.posY + 10, 10, 10);
    rect(this.posX + 20, this.posY, 10, 10);
  }
  void click() {
    this.flag = true;
  }
  
}
