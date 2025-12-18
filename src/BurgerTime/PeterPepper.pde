class Chef {
  // Member Variables
  int x, y, w, h, xspeed, move, animation, anim2, yspeed, speed, facing, pepperX, pepperY, pTimer;
  boolean still, NRW000M, bigdead, SHOTSFIRED;
  float ladt, ladv;
  PImage p, p1, p2, pr1, pr2, pl1, pl2, pd1, pd2, pu1, pu2, pD, pU, pL, pR;

  // Constructor
  Chef() {
    facing = 1;
    key = 3;
    x = width/2;
    y=(height-8)-(6*16);
    w = 16;
    h = 16;
    if(SHOTSFIRED == false) {
    p = loadImage("PeterPepper.png");
    }
    p1 = loadImage("PeterPepper1.png");
    p2 = loadImage("PeterPepper2.png");
    pr1 = loadImage("PeterPepperRight1.png");
    pr2 = loadImage("PeterPepperRight2.png");
    pl1 = loadImage("PeterPepperLeft.png");
    pl2 = loadImage("PeterPepperLeft1.png");
    pd1 = loadImage("PeterPepDown1.png");
    pd2 = loadImage("PeterPepDown2.png");
    pu1 = loadImage("PeterPepUp1.png");
    pu2 = loadImage("PeterPepUp2.png");
    pD = loadImage("PepperDown.png");
    pU = loadImage("PepperUp.png");
    pL = loadImage("PepperLeft.png");
    pR = loadImage("PepperRight.png");
    xspeed = 0;
    move = 0;
  }

  // Member Methods

  void display() {
    if (pep == 0) {
    SHOTSFIRED = false;
    }
    if (SHOTSFIRED == true&&pep>0) {
      still = false;
      pTimer++;
      if (facing == 1) {
        pepperX = x-16;
        pepperY = y;
        image(pL, x-16, y);
      } else if (facing == 2) {
        pepperX = x;
        pepperY = y-16;
        image(pU, x, y-16);
      } else if (facing == 3) {
        pepperX = x+16;
        pepperY = y;
        image(pR,x+16,y);
      } else if (facing == 4) {
        pepperX = x+16;
        pepperY = y;
        image(pD,x,y+16);
      } else {
        pepperX = -100;
        pepperY = -100;
      }
      if (pTimer>=5) {
        pTimer = 0;
        pep--;
        SHOTSFIRED = false;
      }
    }
    if (NRW000M == true) {
      speed = 2;
    } else {
      speed = 1;
    }
    imageMode(CENTER);
    if (keyPressed == true&&key == 'a' || key == 'A' || keyCode == LEFT) {
    } else if (keyPressed == true&&key == 'd' || key == 'D' || keyCode == RIGHT) {
    } else {
      xspeed = 0;
    }
    if (keyPressed == true) {
      if (key == 'w' || key == 'W' || keyCode == UP) {
        facing = 2;
        animation = 0;
        ladt = 0;
        if (ladv>=.1&&ladv<=.5) {
          image(pu2, x, y);
        } else if (ladv>.5 && ladv<1.1) {
          image(pu1, x, y);
        }
        if (ladv >=1) {
          ladv = 0;
        }
      }
    } else {
      yspeed = 0;
      ladv = 0;
    }
    if (keyPressed == true) {
      if (key == 's' || key == 'S' || keyCode == DOWN) {
        facing = 4;
        animation = 0;
        ladv = 0;
        if (ladt>.1 && ladt<.6) {
          image(c1.pd1, c1.x, c1.y);
        } else if (ladt>=.5 && ladt<1.1) {
          image(pd2, x, y);
        }
        if (ladt >=1) {
          ladt = 0;
        }
      }
    } else {
      yspeed = 0;
      ladt = 0;
    }
    if (keyPressed == true) {
      if (key == 'd' || key == 'D' || keyCode == RIGHT) {
        facing = 3;
        anim2 = 0;
      }
      if (animation>0 && animation<=6) {
        image(pr1, x, y);
      } else if (animation>6 && animation<11) {
        image(pr2, x, y-2);
      }
      if (animation>=10) {
        animation = 1;
      }
    }
    if (keyPressed == true) {
      if (key == 'a' || key == 'A' || keyCode == LEFT) {
        facing = 1;
        animation = 0;
      }
      if (anim2>0 && anim2<=6) {
        image(pl1, x, y);
      } else if (anim2>6 && anim2<11) {
        image(pl2, x, y-2);
      }
      if (anim2>=10) {
        anim2 = 1;
      }
    }

    if (keyPressed == true&&still == true&&SHOTSFIRED == false) {
      image(p, x, y);
      anim2 = 0;
      animation = 0;
      ladt = 0;
    }
    if (keyPressed == false&&SHOTSFIRED == false) {
      image(p, x, y);
    }
  }


  void move() {
    if (keyPressed == true) {
      move = move+1;
      if (move>0) {
        move = 0;
        x = x+xspeed;
        y = y+yspeed;
        if (x > width-32) {
          x=width-32;
          anim2=0;
          animation=0;
        } else if (x < 32) {
          x = 32;
          anim2 = 0;
          animation = 0;
        }
      }
    }
  }
}
