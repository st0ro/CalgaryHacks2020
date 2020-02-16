State[] states = new State[2];
int currentState = 0;

void setup()
{
  frameRate(60);
  orientation(LANDSCAPE);
  states[0] = new CheckIn();
  states[1] = new Menu();
}

void draw()
{
  states[currentState].update();
}


abstract class State
{
  abstract void update();
}
