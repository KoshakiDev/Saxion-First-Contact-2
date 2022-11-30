class LockObject extends GameObject 
{
  private ItemObject key_item;
  private GameObject replacement;
  
  private boolean play_once = false;
  private SoundFile denied_sound;
  
  private SoundFile accepted_sound;
  
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
  
  public void set_denied_sound(String sound_path, PApplet context)
  {
    denied_sound = new SoundFile (context, sound_path);
  }
  
  public void set_accepted_sound(String sound_path, PApplet context)
  {
    accepted_sound = new SoundFile (context, sound_path);
  }
  
  public void mouseClicked()
  {
    super.mouseClicked();
    if(mouseIsHovering) 
    {
      denied_sound.play();
    }
  }
  
  public void mouseDragged()
  {
    super.mouseDragged();
    
    if(mouseIsHovering && inventoryManager.contains_item(key_item) && chosen_item == key_item) 
    {
      inventoryManager.remove_item(key_item);
      sceneManager.get_current_scene().remove_object(this);
      sceneManager.get_current_scene().add_object(replacement);
      accepted_sound.play();
    }
    else if(mouseIsHovering && chosen_item != key_item && !play_once)
    {
      denied_sound.play();
      play_once = true;
    }
  } 
  public void mouseReleased()
  {
    super.mouseReleased();
    play_once = false;
    
  }
}
