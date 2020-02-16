class Caregiver extends State
{
  PImage bars = loadImage("bars.png");
  void update()
  {
    image(bars, height*.05, width*.05, 200, 200);
  }
}
