class InventoryObject extends GameObject 
{ 
  private Collectable collectable;
  
  public InventoryObject(String identifier, int x, int y, int owidth, 
                           int oheight, Collectable collectable) 
  {
    super(identifier, x, y, owidth, oheight, collectable.getGameObjectImageFile());
    this.collectable = collectable;
  }
  
  @Override
  public void draw() 
  {
    super.draw();
  }
  
  @Override
  public void mouseClicked() 
  {
    if(mouseIsHovering) 
    {
      inventoryManager.addCollectable(collectable);
      sceneManager.getCurrentScene().removeGameObject(this);
    }
  }
}
