class CheckIn extends State
{
  void update()
  {
    background(#419AF0);
    displayTextBox("Hi");
  }
  void displayTextBox(String text)
  {
    text("text", width/2, height/2);
  }
}
