class Menu extends State
{
  void update()
  {
    bottomBar();
  }
  
  void bottomBar()
  {
    fill(0);
    noStroke();
    rect(0, height*.9, width, height*.1);
    stroke(100);
    line(0, height*.9, width, height*.9);
  }
}
