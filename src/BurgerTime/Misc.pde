class Info {
  // Member Variables
  int x, y, x2, x3, y2, up, hi, transition, ch = 1, enterpass, cube, value, ccube, a, merp, cooldown, spacing=45, idkatthispoint=width/2;
  PImage s, c;
  boolean start, start2, password, uselesspt2, typing, G4M3D3V, IM0RT4L;
  // the typing in the password is influenced heavily
  String passing = "", fRatecontroll = "G4M3D3V", speed = "NRW000M", god = "IM0RT4L", joat = "1DNTKN0";

  // Constructor
  Info() {
    x = 50-16;
    y = 12;
    x2 = 100-16;
    x3 = width-32;
    y2 = 27;
    up = 0;
    hi = 28000;
    start = false;
    c = loadImage("2ndPlaceHolder.png");
    ch = 1;
    enterpass =1;
    value = 255;
    a = 100;
    s = loadImage("Placeholder.png");
  }

  // Member Methods

  void display() {
    textSize(16);
    noStroke();
    fill(255, 0, 0);
    textAlign(LEFT);
    text("1UP", x, y);
    text("HI-SCORE", x2, y);
    fill(255);
    text(lives, x, y2);
    text(score, x2, y2);
    fill(0, 255, 0);
    textAlign(RIGHT);
    textSize(12);
    text("PEPPER", x3, y);
    fill(255);
    text(pep, x3, y2);
    fill(#FFFF00);
    textSize(16);
    textAlign(LEFT);
    if (G4M3D3V == true) {
      text("FRAMERATE", 175, y);
      fill(255);
      if (fr/10>16) {
        textSize(fr/10);
      }
      text(fr, 175, y2);
    }
    if (c1.NRW000M == true) {
      fill(#FF0000);
      textAlign(CENTER);
      textSize(25);
      text("WARNING, DANGEROUS SPEEDS", width/2, height - 10);
    }
  }

  void screen() {
    if (ch == 0) {
      ch = 3;
    }
    if (ch == 4) {
      ch = 1;
    }
    typing = password && cube > 0 && cube < 8;
    if (cube == 1) {
      ccube = 33;
    } else if (cube == 2) {
      ccube = 78;
    } else if (cube == 3) {
      ccube = 123;
    } else if (cube == 4) {
      ccube = 168;
    } else if (cube == 5) {
      ccube = 213;
    } else if (cube == 6) {
      ccube = 33+(45*5);
    } else if (cube == 7) {
      ccube = 33+(45*6);
    } else if (cube>=8) {
      ccube = -30;
      if (uselesspt2 == false) {
        uselesspt2 = true;
        merp = 1;
      }
      if (key == 'a'||key == 'A' || keyCode == LEFT) {
        merp = 1;
      }
      if (key == 'd'||key == 'D'||keyCode == RIGHT) {
        merp = 2;
      }
    }
    if (password == true) {
      text("ENTER PASSWORD", width/2, 50);
      if (ch==0) {
        ch=3;
      }
      if (ch==4) {
        ch =1;
      }
      imageMode(CORNER);
      if (password == true&&start == true) {
        enterpass++;
        if (enterpass<=45) {
          value = 255;
        }
        if (enterpass>=46) {
          value = 0;
        }
        if (enterpass>=91) {
          enterpass = 0;
        }
        rectMode(CORNER);
        fill(0);
        rect(0, 0, width, height);
        fill(255);
        textSize(40);
        text("ENTER PASSWORD", width/2, 50);
        textSize(50);
        text("_  _  _  _  _  _  _", idkatthispoint, height/2);
        textSize(35);
        text("ENTER", width/4+5, height-50);
        text("CANCEL", (width/4)*3-5, height-50);
        rectMode(CENTER);
        fill(value);
        rect(ccube, height/2-22, 20, 40);
        if (merp == 1) {
          fill(255);
          rect(width/4+5, height-40, 100, 5);
        } else if (merp == 2) {
          fill(255);
          rect(width/4*3-5, height-40, 120, 5);
        }
        if (keyCode == 10&& merp == 2&&password == true) {
          start = false;
          password = false;
          keyCode = 0;
          ch = 0;
          merp = 0;
          cube = -1;
          uselesspt2 = false;
          passing = passing.substring(0, passing.length()-7);
        } else if (keyCode == ENTER && merp == 1 && password == true) {
          if (passing.equals(fRatecontroll)) {
            start = true;
            password = false;
            G4M3D3V = true;
          } else if (passing.equals(speed)) {
            start = true;
            password = false;
            c1.NRW000M = true;
          } else if (passing.equals(god)) {
            start = true;
            password = false;
            IM0RT4L = true;
          } else if (passing.equals(joat)) {
            start = true;
            password = false;
            IM0RT4L = true;
            G4M3D3V = true;
          }
        }

        fill(255);
        if (password) {
          int startX = idkatthispoint - spacing*3;
          for (int l = 0; l < passing.length(); l++) {
            char c = passing.charAt(l);
            text(c, startX + l * spacing, height/2-5);
          }
        }
      }
    }
    if (start == false) {
      image(s, 0, 0);
      textAlign(CENTER);
      textSize(25);
      text("ENTER TO START", width/2, height-175);
      text("1 PLAYER", width/2, height-125);
      text("2 PLAYER(NOT READY)", width/2, height-75);
      text("INPUT PASSWORD", width/2, height-25);
      if (ch == 1) {
        image(c, 90, height-150);
      } else if (ch == 2) {
        image(c, 15, height-100);
      } else if (ch == 3) {
        image(c, 35, height-50);
      }
      if (keyCode == 10&&ch == 1) {
        start = true;
      } else if (keyCode == 10&&ch == 2) {
        start2 = true;
      } else if (keyCode == 10&&ch == 3) {
        password = true;
        start = true;
        cube = 1;
      }
    } else {
      ch = -1;
    }
  }
  void keyTyped() {
    if (typing == true) {
      if (key == BACKSPACE && passing.length() > 0) {
        passing = passing.substring(0, passing.length() - 1);
        cube = cube-1;
        enterpass = 0;
      } else if (key != CODED && key != ENTER && key != RETURN) {
        passing += Character.toUpperCase(key);
      }
    }
  }
}
