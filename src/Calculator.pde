// Mars Gorham | Sept 25 2025 | Calculator
Button[] buttons = new Button[13];
Button[] numButtons = new Button[10];
int num = 0;
float l, r, result;
boolean left;
String dVal;
String op;


void setup() {
  size(210, 260);
  background(25);
  left = true;
  l = 0.0;
  r = 0.0;
  result = 0.0;
  dVal ="0.0";
  op = "";
  buttons[0] = new Button(25, 75, 30, 30, "C", 100, 50);
  buttons[1] = new Button(65, 75, 30, 30, "±", 100, 50);
  buttons[2] = new Button(105, 75, 30, 30, "%", 175, 83);
  buttons[3] = new Button(145, 75, 30, 30, "√", 175, 83);
  buttons[4] = new Button(185, 75, 30, 30, "Sin", 175, 83);
  numButtons[7] = new Button(25, 115, 30, 30, "7", 50, 25);
  numButtons[8] = new Button(65, 115, 30, 30, "8", 50, 25);
  numButtons[9] = new Button(105, 115, 30, 30, "9", 50, 25);
  buttons[5] = new Button(145, 115, 30, 30, "X", 100, 50);
  buttons[6] = new Button(185, 115, 30, 30, "X²", 175, 83);
  numButtons[4] = new Button(25, 155, 30, 30, "4", 50, 25);
  numButtons[5] = new Button(65, 155, 30, 30, "5", 50, 25);
  numButtons[6] = new Button(105, 155, 30, 30, "6", 50, 25);
  buttons[7] = new Button(145, 155, 30, 30, "÷", 100, 50);
  buttons[8] = new Button(185, 155, 30, 30, " ", 175, 83);
  numButtons[1] = new Button(25, 195, 30, 30, "1", 50, 25);
  numButtons[2] = new Button(65, 195, 30, 30, "2", 50, 25);
  numButtons[3] = new Button(105, 195, 30, 30, "3", 50, 25);
  buttons[9] = new Button(145, 195, 30, 30, "-", 100, 50);
  buttons[10] = new Button(185, 215, 30, 70, "=", 100, 50);
  numButtons[0] = new Button(45, 235, 70, 30, "0", 50, 25);
  buttons[11] = new Button(105, 235, 30, 30, ".", 100, 50);
  buttons[12] = new Button(145, 235, 30, 30, "+", 100, 50);
}
void draw() {
  background(25);
  for (int i=0; i<buttons.length; i++) {
    buttons[i].display();
    buttons[i].hover(mouseX, mouseY);
  }
  for (int i=0; i<numButtons.length; i++) {
    numButtons[i].display();
    numButtons[i].hover(mouseX, mouseY);
  }
  updateDisplay();
}
void mousePressed() {
  //not num button
  for (int i = 0; i<buttons.length; i ++) {
    if (buttons[i].over && buttons[i].val.equals("+")) {
      dVal = "0.0";
      left = false;
      op = "+";
    } else if (buttons[i].over && buttons[i].val.equals("-")) {
      dVal = "0.0";
      left = false;
      op = "-";
    } else if (buttons[i].over && buttons[i].val.equals("X")) {
      dVal = "0.0";
      left = false;
      op = "*";
    } else if (buttons[i].over && buttons[i].val.equals("÷")) {
      dVal = "0.0";
      left = false;
      op = "/";
    } else if (buttons[i].over && buttons[i].val.equals("=")) {
      performCalculation();
    } else if (buttons[i].over && buttons[i].val.equals("s")) {
      if (left) {
        l = sq(l);
        dVal = str(l);
      } else {
        r = sq(r);
        dVal = str(r);
      }
    } else if (buttons[i].over && buttons[i].val.equals(".")) {
      if (dVal.contains(".") == false) {
        dVal += ".";
      }
    } else if (buttons[i].over && buttons[i].val.equals("±")) {
      if (left) {
        l = l*=1;
        dVal = str(l);
      } else {
        r*=r*-1;
        dVal = str(r);
      }
    }
  }



  //all num buttons
  for (int i = 0; i<numButtons.length; i++) {
    if (dVal.length()>14) {
      if (numButtons[i].over && left) {
        if (dVal.equals("0.0")) {
          dVal = (numButtons[i].val);
          l = float(dVal);
        } else {
          dVal += (numButtons[i].val);
          l = float(dVal);
        }
      } else if (numButtons[i].over && !left) {
        if (dVal.equals("0.0")) {
          dVal = (numButtons[i].val);
          r = float(dVal);
        } else {
          dVal += (numButtons[i].val);
          r = float(dVal);
        }
      }
    }
    println("L:" + l);
    println("R:" + r);
    println("Result:" + result);
    println("Op:" + op);
      println("Left:" + left);
  }
}
void updateDisplay() {
  rectMode(CORNER);
  fill(255);
  rect(4, 5, 200, 40, 4);
  fill(0);
  textSize(45);
  textAlign(RIGHT);
  if (dVal.length()>8) {
    textSize(25);
  } else if (dVal.length()>9) {
    textSize(23);
  }
  text(dVal, width-10, 40);
}
void performCalculation() {
  if (op.equals("+")) {
    result = l + r;
  } else if (op.equals("*")) {
    result = l * r;
  } else if (op.equals("-")) {
    result = l - r;
  } else if (op.equals("/")) {
    result = l / r;
  }
  dVal = str(result);
}
