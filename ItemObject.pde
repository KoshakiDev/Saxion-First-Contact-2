class ItemObject extends GameObject 
{
  private PVector initial_position;
  boolean in_inventory = false;
  private GameObject replacement;
  private boolean has_replacement;
  
  
  public ItemObject(String ID) { super(ID); initial_position = new PVector(0, 0); }
  
  public void set_replacement_object(GameObject replacement) { has_replacement = true; this.replacement = replacement; }
  
  public void set_initial_position(PVector initial_position) { this.initial_position = initial_position; }
  

  void mouseClicked() 
  {
    if(!in_inventory) 
    { 
      if(mouseIsHovering) 
      {
        move_to_inventory();
      }
      return;
    }
    else
    {
      if(has_cutscene && mouseIsHovering)
      {
        cutscene_manager.play_cutscene(play_cutscene_ID);
      }
    }
  }
  
  void mouseDragged()
  {
    if(!in_inventory)
    {
      return;
    }
    if(mouseIsHovering)
    {
      chosen_item = this;
      position.x = mouseX;
      position.y = mouseY;
    }
  }
  
  void mouseReleased()
  {
    if(!in_inventory)
    {
      return;
    }
    position.x = initial_position.x;
    position.y = initial_position.y;
  }
  
  public void move_to_inventory()
  {
    in_inventory = true;
    inventoryManager.add_item(this);
    if(has_replacement) 
    {
      sceneManager.get_current_scene().add_object(replacement);  
    }
    sceneManager.get_current_scene().remove_object(this);
  }
}
