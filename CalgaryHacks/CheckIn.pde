class CheckIn extends State
{
  void update()
  {
    background(80);
    navigationBar();
    displayTextBox("Hi");
  }
  void navigationBar()
  {
    fill(0);
    noStroke();
    rect(0, height*9/10, width, height/10);
  }
  void displayTextBox(String text)
  {
    fill(255);
    textAlign(CENTER, CENTER);
    text(text, width/2, height/2);
  }
}
