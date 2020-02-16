int checkInState = 0;
class CheckIn extends State
{
  PImage ci1 = loadImage("checkin1.png"), ci2 = loadImage("checkin2.png"), ci3 = loadImage("checkin3.png"), ci4 = loadImage("checkin4.png");
  Button smileys = new Button(200, 1516, 1072, 250);
  Button mic = new Button(504, 1654, 438, 430);
  Button exit = new Button(642, 2395, 169, 169);
  void update()
  {
    switch(checkInState)
    {
      case 0:
        image(ci1, 0, 0, width, height);
        smileys.update();
        if(smileys.released)
          checkInState = 1;
        break;
      case 1:
        image(ci2, 0, 0, width, height);
        smileys.update();
        if(smileys.released)
          checkInState = 2;
        break;
      case 2:
        image(ci3, 0, 0, width, height);
        mic.update();
        if(mic.down)
        {
          noStroke();
          fill(128, 50);
          ellipse(723, 1869, 438, 438);
        }
        if(mic.released)
          checkInState = 3;
        break;
      case 3:
        image(ci4, 0, 0, width, height);
        exit.update();
        if(exit.released)
          currentState = 0;
        break;
    }
  }
}
