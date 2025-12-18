int fr, ia, ea, la, fa, level, world=1, counter, dTimer, lives, z, score, delay, chefY, enemX, enemY, enemX1, enX, enX1, animation2, deathanim;
int cx, cy, pep;
boolean dying, endlooper, levelChanged, changedWorld, beat, die;
PImage p, pV, d1, d2;
color fColor1, fColor2;
Enemy[] enemies = new Enemy[3];
Ladder[] ladders = new Ladder[12];
Ingredient[] ingredients = new Ingredient[16];
Floor[] floors = new Floor[15];
Ingredient i1;
Chef c1;
Enemy e1;
Ladder l1;
Info p1;
Floor f1;

void setup() {
  pep = 5;
  lives = 5;
  level = 0; // testing purposes
  p = loadImage("PeterPepper.png");
  pV = loadImage("PeterPepperVictory.png");
  d1 = loadImage("PeterPepDed.png");
  d2 = loadImage("PeterPepDed2.png");
  c1 = new Chef();
  p1 = new Info();
  size(336, 315);
  fr = 60;
}

void loadLevel() {
  if (level == 0) {
    level++;
    levelChanged = true;
  }
  if (levelChanged == true&&level == 1) {
    c1.x = width/2;
    chefY =(height-8)-(6*16);
    enemies[0] = new Enemy(0-64, (height-8)-(15*16), 16, 16, 1, 1);
    enemies[1] = new Enemy(width+64, (height-8)-(15*16), 16, 16, 1, 1);
    enemies[2] = new Enemy(0-16, (height-8)-(15*16), 16, 16, 1, 0);
    ladders[0] = new Ladder(0, 7, 5);
    ladders[1] = new Ladder(1, 9, 5);
    ladders[2] = new Ladder(0, 14, 2);
    ladders[3] = new Ladder(2, 7, 9);
    ladders[4] = new Ladder(3, 13, 3);
    ladders[5] = new Ladder(4, 7, 9);
    ladders[6] = new Ladder(5, 11, 3);
    ladders[7] = new Ladder(6, 7, 9);
    ladders[8] = new Ladder(7, 7, 5);
    ladders[9] = new Ladder(8, 7, 3);
    ladders[10] = new Ladder(8, 12, 4);
    ladders[11] = new Ladder(100, 7, 5);
    ingredients[0] = new Ingredient(1, 6, 4, 6);
    ingredients[1] = new Ingredient(1, 8, 3, 6);
    ingredients[2] = new Ingredient(1, 11, 2, 6);
    ingredients[3] = new Ingredient(1, 13, 1, 6);
    ingredients[4] = new Ingredient(2, 6, 4, 6);
    ingredients[5] = new Ingredient(2, 8, 3, 6);
    ingredients[6] = new Ingredient(2, 10, 2, 6);
    ingredients[7] = new Ingredient(2, 15, 1, 6);
    ingredients[8] = new Ingredient(3, 6, 4, 6);
    ingredients[9] = new Ingredient(3, 10, 3, 6);
    ingredients[10] = new Ingredient(3, 13, 2, 6);
    ingredients[11] = new Ingredient(3, 15, 1, 6);
    ingredients[12] = new Ingredient(4, 9, 4, 6);
    ingredients[13] = new Ingredient(4, 11, 3, 6);
    ingredients[14] = new Ingredient(4, 13, 2, 6);
    ingredients[15] = new Ingredient(4, 15, 1, 6);
    floors[0] = new Floor(0, 6, 4);
    floors[1] = new Floor(0, 8, 3);
    floors[2] = new Floor(3, 9, 1);
    floors[3] = new Floor(1, 10, 2);
    floors[4] = new Floor(0, 11, 1);
    floors[5] = new Floor(3, 11, 1);
    floors[6] = new Floor(1, 12, 1);
    floors[7] = new Floor(0, 13, 1);
    floors[8] = new Floor(2, 13, 2);
    floors[9] = new Floor(0, 15, 4);
    floors[10] = new Floor(-5, 15, 4);
    floors[11] = new Floor(-5, 15, 4);
    floors[12] = new Floor(-5, 15, 4);
    floors[13] = new Floor(-5, 15, 4);
    floors[14] = new Floor(-5, 15, 4);
    levelChanged = false;
  } else if (levelChanged == true&&level == 2) {// ---------------------------------2
    enemY = (height-8)-(15*16);
    c1.x = width/2;
    c1.y=(height-8)-(5*16);
    chefY =(height-8)-(5*16);
    enemies[0] = new Enemy(0-64, (height-8)-(15*16), 16, 16, 1, 1);
    enemies[1] = new Enemy(width+64, (height-8)-(15*16), 16, 16, 1, 1);
    enemies[2] = new Enemy(0-16, (height-8)-(15*16), 16, 16, 1, 0);
    ladders[0] = new Ladder(0, 12, 4);
    ladders[1] = new Ladder(1, 12, 4);
    ladders[2] = new Ladder(2, 12, 4);
    ladders[3] = new Ladder(3, 8, 8);
    ladders[4] = new Ladder(4, 6, 10);
    ladders[5] = new Ladder(5, 8, 8);
    ladders[6] = new Ladder(6, 12, 4);
    ladders[7] = new Ladder(7, 12, 4);
    ladders[8] = new Ladder(8, 12, 4);
    ladders[9] = new Ladder(100, 7, 5);
    ladders[10] = new Ladder(100, 7, 5);
    ladders[11] = new Ladder(100, 7, 5);
    ingredients[0] = new Ingredient(1, 11, 4, 6);
    ingredients[1] = new Ingredient(1, 13, 3, 6);
    ingredients[2] = new Ingredient(1, 14, 2, 6);
    ingredients[3] = new Ingredient(1, 15, 1, 6);
    ingredients[4] = new Ingredient(2, 7, 4, 6);
    ingredients[5] = new Ingredient(2, 12, 2, 6);
    ingredients[6] = new Ingredient(2, 14, 3, 6);
    ingredients[7] = new Ingredient(2, 15, 1, 6);
    ingredients[8] = new Ingredient(3, 7, 4, 6);
    ingredients[9] = new Ingredient(3, 8, 2, 6);
    ingredients[10] = new Ingredient(3, 10, 3, 6);
    ingredients[11] = new Ingredient(3, 15, 1, 6);
    ingredients[12] = new Ingredient(4, 11, 4, 6);
    ingredients[13] = new Ingredient(4, 12, 3, 6);
    ingredients[14] = new Ingredient(4, 13, 2, 6);
    ingredients[15] = new Ingredient(4, 15, 1, 6);
    floors[0] = new Floor(2, 5, 0);
    floors[1] = new Floor(1, 7, 2);
    floors[2] = new Floor(2, 8, 1);
    floors[3] = new Floor(1, 9, 1);
    floors[4] = new Floor(2, 10, 1);
    floors[5] = new Floor(0, 11, 4);
    floors[6] = new Floor(1, 12, 1);
    floors[7] = new Floor(3, 12, 1);
    floors[8] = new Floor(0, 13, 1);
    floors[9] = new Floor(2, 13, 2);
    floors[10] = new Floor(0, 14, 2);
    floors[11] = new Floor(0, 15, 4);
    floors[12] = new Floor(-5, 15, 4);
    floors[13] = new Floor(-5, 15, 4);
    floors[14] = new Floor(-5, 15, 4);
    levelChanged = false;
  } else if (levelChanged == true&&level == 3) {// ---------------------------------2
    enemY = (height-8)-(15*16);
    c1.x = width/2;
    chefY =(height-8)-(6*16);
    chefY =(height-8)-(5*16);
    enemies[0] = new Enemy(0-64, (height-8)-(15*16), 16, 16, 1, 1);
    enemies[1] = new Enemy(width+64, (height-8)-(15*16), 16, 16, 1, 1);
    enemies[2] = new Enemy(0-16, (height-8)-(15*16), 16, 16, 1, 0);
    ladders[0] = new Ladder(0, 12, 4);
    ladders[1] = new Ladder(1, 12, 4);
    ladders[2] = new Ladder(2, 12, 4);
    ladders[3] = new Ladder(3, 8, 8);
    ladders[4] = new Ladder(4, 6, 10);
    ladders[5] = new Ladder(5, 8, 8);
    ladders[6] = new Ladder(6, 12, 4);
    ladders[7] = new Ladder(7, 12, 4);
    ladders[8] = new Ladder(8, 12, 4);
    ladders[9] = new Ladder(100, 7, 5);
    ladders[10] = new Ladder(100, 7, 5);
    ladders[11] = new Ladder(100, 7, 5);
    ingredients[0] = new Ingredient(1, 11, 4, 6);
    ingredients[1] = new Ingredient(1, 13, 3, 6);
    ingredients[2] = new Ingredient(1, 14, 2, 6);
    ingredients[3] = new Ingredient(1, 15, 1, 6);
    ingredients[4] = new Ingredient(2, 7, 4, 6);
    ingredients[5] = new Ingredient(2, 12, 2, 6);
    ingredients[6] = new Ingredient(2, 14, 3, 6);
    ingredients[7] = new Ingredient(2, 15, 1, 6);
    ingredients[8] = new Ingredient(3, 7, 4, 6);
    ingredients[9] = new Ingredient(3, 8, 2, 6);
    ingredients[10] = new Ingredient(3, 10, 3, 6);
    ingredients[11] = new Ingredient(3, 15, 1, 6);
    ingredients[12] = new Ingredient(4, 11, 4, 6);
    ingredients[13] = new Ingredient(4, 12, 3, 6);
    ingredients[14] = new Ingredient(4, 13, 2, 6);
    ingredients[15] = new Ingredient(4, 15, 1, 6);
    floors[0] = new Floor(2, 5, 0);
    floors[1] = new Floor(1, 7, 2);
    floors[2] = new Floor(2, 8, 1);
    floors[3] = new Floor(1, 9, 1);
    floors[4] = new Floor(2, 10, 1);
    floors[5] = new Floor(0, 11, 4);
    floors[6] = new Floor(1, 12, 1);
    floors[7] = new Floor(3, 12, 1);
    floors[8] = new Floor(0, 13, 1);
    floors[9] = new Floor(2, 13, 2);
    floors[10] = new Floor(0, 14, 2);
    floors[11] = new Floor(0, 15, 4);
    floors[12] = new Floor(-5, 15, 4);
    floors[13] = new Floor(-5, 15, 4);
    floors[14] = new Floor(-5, 15, 4);
    levelChanged = false;
  }
}


void keyReleased() {
  if (key == 'f'||keyCode == SHIFT || key == 'F') {
    c1.SHOTSFIRED = true;
  }
  if (p1.password == true&&p1.start == true&&key != BACKSPACE&&key != 10&&key != 16&&key!= 18&&key!= 17&&key!= 9&&key!= ' ') {
    p1.cube++;
    p1.enterpass = 0;
  }
  if (p1.start == true&&p1.G4M3D3V == true) {
    if (key == 'p'||key == 'P') {
      fr = fr+5;
    } else if (key == 'o'||key == 'O') {
      fr = fr-5;
    }
  }
  if (p1.password == false) {
    if (key == 'w'||key == 'W'||keyCode == UP) {
      p1.ch=p1.ch-1;
    } else if (key == 'S'||key=='s'||keyCode==DOWN) {
      p1.ch=p1.ch+1;
    }
  }
  for (z = 0; z<ingredients.length; z++) {
    if (key == 'm') {
      ingredients[z].f = true;
      ingredients[z].f2 = true;
      ingredients[z].f3 = true;
      ingredients[z].f4 = true;
    }
  }
}

void draw() {
  if(lives<0) {
    fill(0);
    rectMode(CORNER);
  rect(0,0,width,height);
  textSize(40);
  textAlign(CENTER);
  fill(255);
  text("YOU DIED",width/2, 70);
  textSize(20);
  text("im not coding in", width/2,170);
  text("a respawn thing", width/2, 190);
  text("im hungry", width/2, 210);
  }
  if (lives>-1) {
    if (dying == false) {
      cx = c1.x;
      cy = c1.y;
    }
    if (dTimer<120&&dying == true) {
      die = true;
    } else {
      die = false;
    }
    if (die == true) {
      deathanim = deathanim+1;
    } else {
      deathanim = 0;
    }
    if (beat == true) {
      animation2 = animation2 + 1;
    } else {
      animation2 = -1;
    }
    if (animation2>=20) {
      animation2 = 0;
    }
    if (p1.G4M3D3V == false) {
      fr = world*5+35;
    }
    loadLevel();
    score = counter*50;
    if (counter>=16) {
      delay++;
      beat = true;
    }
    if (delay>=120) {
      counter=0;
      delay = 0;
      level++;
      levelChanged = true;
      beat = false;
    }
    if (level>=4) {
      level = 1;
      world++;
      counter=0;
      changedWorld = true;
    }
    if (fr<30) {
      fr = 30;
    }
    if (fr>200) {
      fr = 200;
    }
    frameRate(fr);
    if (p1.start == true&&p1.password == false) {
      c1.still = true;
      background(0);
      for (Ladder l : ladders) {
        l.display();
      }
      for (Floor f : floors) {
        f.display();
      }
      for (Ingredient i : ingredients) {
        i.display();
        if (dying == false) {
          i.move();
        }
      }
      for (Enemy e : enemies) {
        if (dying == false) {
          if (beat == false) {
            e.find();
            e.move();
            e.killEmAll();
          }
          e.display();
        }
        e.killed();
      }

      for (Floor f : floors) {
        f.collide();
      }
      if (beat == false&&dying == false) {
        c1.display();
      }
      p1.display();
      if (dying == false&&beat == false) {
        c1.move();
      }
    }
    p1.screen();
    if (c1.bigdead == true) {
      dTimer++;
      dying = true;
    }
    if (dTimer>=120) {
      rectMode(CORNER);
      fill(0);
      rect(0, 0, width, height);
      textSize(25);
      fill(255);
      textAlign(LEFT);
      image(p, c1.x, c1.y);
      text("x "+lives, c1.x+25, c1.y+12);
      die = false;
    }
    if (dTimer>=300) {
      dTimer = 0;
      c1.bigdead = false;
      dying = false;
      endlooper = false;
    }
    if (endlooper == false&&dying == true) {
      lives--;
      c1.x = width/2;
      c1.y = chefY;
      endlooper = true;
      enX = enemX;
      enX1 = enemX1;
    }
    if (endlooper == false&&dying == true) {
      c1.x = width/2;
      c1.y = chefY;
      endlooper = true;
    }
    if (deathanim>=50) {
      deathanim = 30;
    }
    if (deathanim>=1&&deathanim<=39) {
      image(d1, cx, cy );
    } else if (deathanim>=40&&deathanim<=50) {
      image(d2, cx, cy);
    }
    if (animation2>-1&&animation2<10) {
      image(p, c1.x, c1.y );
    } else if (animation2>=10&&animation2<=21) {
      image(pV, c1.x, c1.y);
    }
  }
}
void keyTyped() {
  p1.keyTyped();
}
