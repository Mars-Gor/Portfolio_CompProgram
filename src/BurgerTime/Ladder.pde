class Ladder {
  int x, y, c, a, xtype, yType, z;
  PImage lad, p;
  boolean onladder;
  // Constructor
  Ladder(int xtype, int yType, int c) {
    this.xtype = xtype;
    this.yType = yType;
    this.c = c;
    y=(height+8)-(yType*16);
    lad = loadImage("ladd.png");
    p = loadImage("PeterPepper.png");
    x = (xtype*32)+40;
  }
  void display() {
    if (c1.y<=y-(c*16) && c1.yspeed==-1 && c1.x<=x+8 && c1.x>=x-8) {
      c1.yspeed = 0;
    }
    if (c1.y>=y-1 && c1.yspeed==1 && c1.x<=x+8 && c1.x>=x-8&&c1.y<=y+8) {
      c1.yspeed = 0;
    }
    if (c1.x<=x+8 && c1.x>=x-8&&c1.y>y-(c*16)&&c1.y<y+8) {
      if (key == 'w' || key == 'W' || keyCode == UP) {
        c1.still = false;
        c1.ladv = c1.ladv+.1;
        c1.yspeed = -c1.speed;
        c1.x = x;
        if (c1.ladv>=.0&&c1.ladv<=.5) {
          //image(c1.pu2, c1.x, c1.y);
        }
      }
    } else {
    }
    if (c1.x<=x+8 && c1.x>=x-8&&c1.y<y-1&&c1.y>(y-8)-(c*16)) {
      if (key == 's' || key == 'S' || keyCode == DOWN) {
        c1.still = false;
        c1.ladt = c1.ladt+.1;
        c1.yspeed = c1.speed;
        c1.x = x;
      } else {
      }
    }
    imageMode(CENTER);
    lad.resize(12, 16);
    if (c == 1) {
      image(lad, x, y);
    } else if (c == 2) {
      image(lad, x, y);
      image(lad, x, y-16);
    } else if (c == 3) {
      image(lad, x, y);
      image(lad, x, y-16);
      image(lad, x, y-32);
    } else if (c == 4) {
      image(lad, x, y);
      image(lad, x, y-16);
      image(lad, x, y-32);
      image(lad, x, y-48);
    } else if (c == 5) {
      image(lad, x, y);
      image(lad, x, y-16);
      image(lad, x, y-32);
      image(lad, x, y-48);
      image(lad, x, y-64);
    } else if (c == 6) {
      image(lad, x, y);
      image(lad, x, y-16);
      image(lad, x, y-32);
      image(lad, x, y-48);
      image(lad, x, y-64);
      image(lad, x, y-80);
    } else if (c == 7) {
      image(lad, x, y);
      image(lad, x, y-16);
      image(lad, x, y-32);
      image(lad, x, y-48);
      image(lad, x, y-64);
      image(lad, x, y-80);
      image(lad, x, y-96);
    } else if (c == 8) {
      image(lad, x, y);
      image(lad, x, y-16);
      image(lad, x, y-32);
      image(lad, x, y-48);
      image(lad, x, y-64);
      image(lad, x, y-80);
      image(lad, x, y-96);
      image(lad, x, y-112);
    } else if (c == 9) {
      image(lad, x, y);
      image(lad, x, y-16);
      image(lad, x, y-32);
      image(lad, x, y-48);
      image(lad, x, y-64);
      image(lad, x, y-80);
      image(lad, x, y-96);
      image(lad, x, y-112);
      image(lad, x, y-128);
    } else if (c == 10) {
      image(lad, x, y);
      image(lad, x, y-16);
      image(lad, x, y-32);
      image(lad, x, y-48);
      image(lad, x, y-64);
      image(lad, x, y-80);
      image(lad, x, y-96);
      image(lad, x, y-112);
      image(lad, x, y-128);
      image(lad, x, y-144);
    }
  }
}
