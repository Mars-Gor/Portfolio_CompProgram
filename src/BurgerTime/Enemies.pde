class Enemy {
  // path finding influenced heavily
  boolean onFloor() {
    for (Floor f : floors) {
      if (y <= f.y && y >= f.y - 12 &&
        x >= f.x && x <= f.x + f.w) {
        y = f.y - 8;
        return true;
      }
    }
    return false;
  }

  Ladder getNearbyLadder() {
    for (Ladder l : ladders) {
      if (abs(x - l.x) <= 1 &&
        y <= l.y && y >= l.y - (l.c * 16)) {
        return l;
      }
    }
    return null;
  }

  int x, y, w, h, xspeed, yspeed, speed, type, z, idk, OgX, OgY, stunTime;
  PImage enem1;
  boolean stunned;

  // Constructor
  Enemy(int x, int y, int w, int h, int type, int speed) {
    this.x = x;
    OgX = x;
    this.y = y;
    OgY = y;
    this.w = w;
    this.h = h;
    this.speed = speed;
    this.type = type;
    if (type == '1') {
      enem1 = loadImage("");
    } else if (type == '2') {
      enem1 = loadImage("");
    } else if (type == '3') {
      enem1 = loadImage("");
    } else if (type == '4') {
      enem1 = loadImage("");
    }
  }

  // Member Methods

  void display() {
    noStroke();
    fill(255, 0, 0);
    rectMode(CENTER);
    rect(x, y, w, h);
  }
  void find() {
    xspeed = 0;
    yspeed = 0;

    if (abs(y - c1.y) < 8 && onFloor()) {
      if (c1.x > x) xspeed = speed;
      else if (c1.x < x) xspeed = -speed;
      return;
    }

    Ladder l = getNearbyLadder();
    if (l != null) {
      x = l.x;

      if (c1.y < y) {
        yspeed = -speed;
      } else if (c1.y > y) {
        yspeed = speed;
      }
      return;
    }

    if (c1.x > x) xspeed = speed;
    else xspeed = -speed;
  }


  void move() {
    if (x<=c1.pepperX+8&&x>=c1.pepperX-8&&y>=c1.pepperY-8&&y<=c1.pepperY+8) {
      stunned = true;
      stunTime++;
    }
    if (stunTime>=120) {
      stunned = false;
    }
    if (stunned == false) {
      x += xspeed;
      y += yspeed;
    }
  }
  void killEmAll() {
    if (stunned == false) {
      if (c1.y==y&&c1.x>=x-8&&c1.x<=x+8&&p1.IM0RT4L == false) {
        c1.bigdead = true;
      }
    }
  }
  void killed() {
    if (c1.bigdead == true) {
      x = OgX;
      y = OgY;
    }
  }
}
