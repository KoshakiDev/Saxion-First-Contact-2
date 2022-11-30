class SceneChanger extends GameObject 
{
  private String nextSceneID;
  private boolean has_sound = false;
  private SoundFile transition_sound;
  
  public SceneChanger(String name, String nextSceneID) 
  {
    super(name);
    this.nextSceneID = nextSceneID;
  }
  
  public void set_transition_sound(String sound_path, PApplet context)
  {
    transition_sound = new SoundFile (context, sound_path);
    has_sound = true;
  }
  
  public void change_next_scene(String nextSceneID)
  {
      this.nextSceneID = nextSceneID;
  }
  
  @Override
  public void mouseClicked() 
  {
    if(mouseIsHovering) 
    {
      try 
      {
        if(has_sound)
        {
          transition_sound.play();
        }
        else
        {
          println("Warning: no sound for ", get_name());
        }
        sceneManager.go_to_scene(nextSceneID);
      } 
      catch(Exception e) 
      { 
        println(e.getMessage());
      }
    }
  }
}
