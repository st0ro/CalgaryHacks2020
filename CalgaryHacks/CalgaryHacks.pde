State[] states = new State[4];
int currentState = 0;

void setup()
{
  frameRate(60);
  orientation(PORTRAIT);
  states[0] = new Menu();
  states[1] = new CheckIn();
  states[2] = new Caregiver();
  states[3] = new CaregiverView();
  //println("Width:" + width);
  //println("Height:" + height);
}

void draw()
{
  background(48);
  states[currentState].update();
}

void backPressed()
{
  if(currentState == 3)
    currentState = 2;
}

abstract class State
{
  abstract void update();
}

boolean lfi = true;
class Button
{
  boolean down = false, released = false;
  int x, y, w, h;
  Button(int x, int y, int w, int h)
  {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }
  void update()
  {
    if(released)
      released = false;
    if(lfi && touches.length > 0)
    {
      for(int i = 0; i < touches.length; i++)
      {
        if(touches[i].x >= x && touches[i].x <= x+w && touches[i].y >= y && touches[i].y <= y+h)
        {
          down = true;
          lfi = false;
        }
      }
    }
    else if(!lfi && down)
    {
      boolean in = false;
      for(int i = 0; i < touches.length; i++)
      {
        if(touches[i].x >= x && touches[i].x <= x+w && touches[i].y >= y && touches[i].y <= y+h)
        {
          in = true;
        }
      }
      if(!in)
      {
        down = false;
        released = true;
        lfi = true;
      }
    }
  }
}
