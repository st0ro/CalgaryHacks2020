class Menu extends State
{
  PImage menu = loadImage("Menu.png");
  Button checkin = new Button(75, 340, 1312, 232);
  Button sw = new Button(73, 60, 124, 116);
  void update()
  {
    image(menu, 0, 0, width, height);
    checkin.update();
    sw.update();
    if(checkin.released)
    {
      checkInState = 0;
      currentState = 1;
    }
    if(sw.released)
      currentState = 2;
  }
}
