class Caregiver extends State
{
  PImage caregiver = loadImage("Caregiver.png");
  Button jj = new Button(0, 720, width, 450);
  Button sw = new Button(73, 60, 124, 116);
  void update()
  {
    image(caregiver, 0, 0, width, height);
    jj.update();
    if(jj.down)
     {
       noStroke();
       fill(128, 50);
       rect(0, 720, width, 450);
     }
     if(jj.released)
       currentState = 3;
      sw.update();
      if(sw.released)
        currentState = 0;
  }
}
