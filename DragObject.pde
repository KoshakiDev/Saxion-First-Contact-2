class DragObject extends GameObject 
{
  public DragObject(String ID) { super(ID); } 

  void mouseClicked() 
  {
    if(has_cutscene && mouseIsHovering)
    {
      cutscene_manager.play_cutscene(play_cutscene_ID);
    }
  }
  
  void mouseDragged()
  {
    if(mouseIsHovering)
    {
      chosen_item = this;
      position.x = mouseX;
      position.y = mouseY;
    }
  }
}
