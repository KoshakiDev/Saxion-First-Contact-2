class LockObject extends GameObject 
{
  private ItemObject key_item;
  private GameObject replacement;
  
  public LockObject(String name, ItemObject key_item, GameObject replacement) 
  {
    super(name);
    this.key_item = key_item;
    this.replacement = replacement;
  }
  
  public void change_replacement(GameObject replacement)
  {
    this.replacement = replacement;
  }
  
  public void mouseDragged()
  {
    super.mouseDragged();
    
    if(mouseIsHovering && inventoryManager.contains_item(key_item) && chosen_item == key_item) 
    {
      println(get_name());
      inventoryManager.remove_item(key_item);
      sceneManager.get_current_scene().remove_object(this);
      sceneManager.get_current_scene().add_object(replacement);
    }
  } 
}
