class RequireObject extends TextObject 
{
  private Collectable required_collectable;
  private GameObject replace_with;
  
  public RequireObject(String identifier, int x, int y, int owidth, int oheight, 
                       String gameObjectImageFile, String text, 
                       Collectable set_collectable, GameObject set_replace_with) 
  {
    super(identifier, x, y, owidth, oheight, gameObjectImageFile, text);
    this.required_collectable = set_collectable;
    this.replace_with = set_replace_with;
  }
  
  @Override
  public void mouseClicked() 
  {
    if(mouseIsHovering && inventoryManager.containsCollectable(required_collectable)) 
    {
      inventoryManager.removeCollectable(required_collectable);
      sceneManager.getCurrentScene().removeGameObject(this);
      sceneManager.getCurrentScene().addGameObject(replace_with);
    } 
    else 
    {
      super.mouseClicked();
    }
  } 
}
