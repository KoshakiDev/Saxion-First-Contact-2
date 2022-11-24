class SceneChanger extends GameObject 
{
  private String nextSceneID;
  
  public SceneChanger(String name, String nextSceneID) 
  {
    super(name);
    this.nextSceneID = nextSceneID;
  }
  
  @Override
  public void mouseClicked() 
  {
    if(mouseIsHovering) 
    {
      try 
      {
        sceneManager.go_to_scene(nextSceneID);
      } 
      catch(Exception e) 
      { 
        println(e.getMessage());
      }
    }
  }
}
