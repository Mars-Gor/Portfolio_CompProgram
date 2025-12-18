class Floor {
  int x, y, w, h, yType, wtype, xtype, co2;
  color co1;
  boolean onLadder, offLadder;

  Floor(int xtype, int yType, int wtype) {
    this.xtype = xtype;
    this.yType = yType;
    this.wtype = wtype;
    w = (wtype*64)+16;
    x = (xtype*64)+32;
    h = 2;
    co1 = #0041FF;
    co2 = #3BEAFF;
    y=(height)-(yType*16);
  }
  void collide() {
    if (keyPressed == true) {
      if (key=='d'||key == 'D'||keyCode == RIGHT) {
        if (keyPressed == true&&c1.y<=y-6&&c1.y>=y-10&&c1.x>=x+8&&c1.x<=(w+x)+8) {
          c1.animation = c1.animation+1;
          c1.xspeed = c1.speed;
          c1.still = false;
          c1.y = y-8;
        }
      }
    }
    if (keyPressed == true) {
      if (key=='a'||key == 'A'||keyCode == LEFT) {
        if (c1.y<=y-6&&c1.y>=y-10&&c1.x>=x+8&&c1.x<=(w+x)) {
          c1.anim2 = c1.anim2+1;
          c1.xspeed = -c1.speed;
          c1.still = false;
          c1.y = y-8;
        }
      }
    }
    if (c1.x<=x+8&&c1.x>=x&& c1.xspeed == -1&&c1.y<=y&&c1.y>=y-12) {
      c1.x = x+8;
      image(c1.p, c1.x, c1.y);
      c1.still = false;
      c1.anim2 = 0;
    } else if (c1.x>=w+x-8&&c1.x<w+x&&c1.xspeed ==1&&c1.y<=y&&c1.y>=y-12) {
      image(c1.p, c1.x, c1.y);
      c1.animation = 0;
      c1.still = false;
      c1.x = w+x-8;
    }
  }
  void display() {
    rectMode(CORNER);
    fill(co1);
    rect(x, y, w, h);
    fill(co2);
    if (wtype >=0) {
      rect(x, y, 16, h);
    }
    if (wtype >=1) {
      rect(x+64, y, 16, h);
    }
    if (wtype >=2) {
      rect(x+64*2, y, 16, h);
    }
    if (wtype >=3) {
      rect(x+64*3, y, 16, h);
    }
    if (wtype >=4) {
      rect(x+64*4, y, 16, h);
    }
  }
}
