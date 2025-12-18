class Ingredient {
  // Member Variables
  int x, x1, x2, x3, y, w, h, speed, xtype, type, yType, xx, m, m1, m2, m3, timer, z, fall, low, felled, e;
  boolean f, f2, f3, f4, falling, fell, enemontop, enemyOn;
  PImage i, i1, i2, i3;
  float speedtimer;

  // Constructor
  Ingredient(int xtype, int yType, int type, int low) {
    this.low = low;
    this.xtype = xtype;
    this.yType = yType;
    this.type = type;
    y=(height)-(yType*16);
    x = 72;
    x1 = 72+64;
    x2 = 72+(64*2);
    x3 = 72+(64*3);
    m = y;
    m1 = y;
    m2 = y;
    m3 = y;
    f = false;
    f2 = false;
    f3 = false;
    f4 = false;
    timer = 0;
    if (xtype == 1) {
      xx = x;
    } else if (xtype == 2) {
      xx = x1;
    } else if (xtype == 3) {
      xx = x2;
    } else if (xtype == 4) {
      xx = x3;
    }
    if (type == 1) {
      i = loadImage("burgertop1.png");
      i1 = loadImage("burgertop2.png");
      i2 = loadImage("burgertop3.png");
      i3 = loadImage("burgertop4.png");
    } else if (type == 3) {
      i = loadImage("beef1.png");
      i1 = loadImage("beef2.png");
      i2 = loadImage("beef3.png");
      i3 = loadImage("beef4.png");
    } else if (type == 2) {
      i = loadImage("letus1.png");
      i1 = loadImage("letus2.png");
      i2 = loadImage("letus3.png");
      i3 = loadImage("letus4.png");
    } else if (type == 4) {
      i = loadImage("buttombun1.png");
      i1 = loadImage("buttombun2.png");
      i2 = loadImage("buttombun3.png");
      i3 = loadImage("buttombun4.png");
    } else if (type>=5) {
      i = loadImage("thisimagewillneverbeseen.png");
      i1 = loadImage("thisimagewillneverbeseen.png");
      i2 = loadImage("thisimagewillneverbeseen.png");
      i3 = loadImage("thisimagewillneverbeseen.png");
    }
  }

  // Member Methods

  void display() {
    imageMode(CENTER);
    image(i, xx-18, m);
    image(i1, xx-6, m1);
    image(i2, xx+6, m2);
    image(i3, xx+18, m3);
  }

  void move() {
    y=y+speed;
    if (falling == true) {
      m = y-3;
      m3 = y-3;
      m1 = y;
      m2 = y;
    }
    if (c1.x>=xx-26&&c1.x<=xx-10&&c1.y<=y&&c1.y>=y-20&&f == false) {
      m = y+3;
      f = true;
    } else {
    }
    if (c1.x>=xx-14&&c1.x<=xx+2&&c1.y<=y&&c1.y>=y-20&&f2 == false) {
      m1 = y+3;
      f2 = true;
    } else {
    }
    if (c1.x>=xx-2&&c1.x<=xx+14&&c1.y<=y&&c1.y>=y-20&&f3 == false) {
      m2 = y+3;
      f3 = true;
    } else {
    }
    if (c1.x>=xx+10&&c1.x<=xx+26&&c1.y<=y&&c1.y>=y-20&&f4 == false) {
      m3 = y+3;
      f4 = true;
    } else {
    }
    if (f == true&&f2 == true&&f3 == true&&f4 == true) {
      falling = true;
    } else {
      falling = false;
    }
    if (falling == true||enemyOn == true) {
      speedtimer = speedtimer+.1;
      if (speedtimer >=.2) {
        speed = 2;
        speedtimer=0;
      } else {
        speed = 0;
      }
    }
    for (z = 0; z<ingredients.length; z++) {
      if (falling == true&&ingredients[z].y<y+4&&ingredients[z].y>y&&xx>=ingredients[z].xx-2&&xx<=ingredients[z].xx+2) {
        y = ingredients[z].y;
        ingredients[z].y = ingredients[z].y+12;
        f = false;
        f2 = false;
        f3 = false;
        f4 = false;
        falling = false;
        fell = true;
        speed = 0;
        m = y;
        m1 = y;
        m2 = y;
        m3 = y;
        if (fell == true) {
          ingredients[z].f = true;
          ingredients[z].f2 = true;
          ingredients[z].f3 = true;
          ingredients[z].f4 =  true;
          ingredients[z].falling = true;
          fell = false;
        }
      }
      if (falling == true&&y>(height)-(low*16)) {
        if (y+10>=ingredients[z].y&&y+6<=ingredients[z].y&&xx == ingredients[z].xx) {
          y = ingredients[z].y-10;
          falling = false;
          f = false;
          f2 = false;
          f3 = false;
          f4 = false;
          speed = 0;
          m = y;
          m1 = y;
          m2 = y;
          m3 = y;
          counter++;
        } else if (y>height-30) {
          counter++;
          y = height-30;
          falling = false;
          f = false;
          f2 = false;
          f3 = false;
          f4 = false;
          speed = 0;
          m = y;
          m1 = y;
          m2 = y;
          m3 = y;
        }
      }
    }
    for (Enemy e : enemies) {
      if (e.x >= xx-26&&e.x<=xx+26&&e.y>=y-12&&e.y<=y+4&&f == true&&f2 == true&&f3 == true && f4 == true) {
        e.y = y-4;
        e.x = e.x-e.xspeed;
        f = true;
        f2 = true;
        f3 = true;
        f4 = true;
        enemyOn = true;
      }
    }
  }
}
