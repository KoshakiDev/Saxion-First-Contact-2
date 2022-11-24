class Scene 
{
  private String ID;
  private PImage backgroundImage;
  private ArrayList<GameObject> gameObjects;
  
  private ArrayList<GameObject> added_objects;
  private ArrayList<GameObject> removed_objects;
  
  public Scene(){}
  
  public Scene(String ID, String backgroundImageFile) 
  {
    this.ID = ID;
    this.backgroundImage = loadImage(backgroundImageFile);
    gameObjects = new ArrayList<GameObject>();
    removed_objects = new ArrayList<GameObject>();
    added_objects = new ArrayList<GameObject>();
  }
  
  public void update() 
  {
    clear_removed_objects();
    clear_added_objects();
  }
  
  public void draw(int wwidth, int wheight) 
  {
    image(backgroundImage, 0, 0, wwidth, wheight);
    for(GameObject object : gameObjects) 
    {
      object.draw();
    }
  }
  
  //Input
  public void mouseMoved() 
  {
    for(GameObject object : gameObjects) 
    {
      object.mouseMoved();
    }
  }
  
  public void mouseClicked() 
  {
    for(GameObject object : gameObjects) 
    {
      object.mouseClicked();
    }
  }
  public void mouseDragged()
  {
    for(GameObject object : gameObjects) 
    {
      object.mouseDragged();
    }
  }
  
  public void mouseReleased()
  {
    for(GameObject object : gameObjects) 
    {
      object.mouseReleased();
    }
  }
  
  
  // Add and Remove Methods
  public void add_object(GameObject object) 
  {
    added_objects.add(object);
  }
  
  public void remove_object(GameObject object) 
  {
    removed_objects.add(object);
  }
  
  
  public void clear_removed_objects()
  {
    if(removed_objects.size() > 0) 
    {
      for(GameObject object : removed_objects) 
      {
        gameObjects.remove(object);
      }
      removed_objects  = new ArrayList<GameObject>();
    }
  }
  public void clear_added_objects()
  {
    if(added_objects.size() > 0) 
    {
      for(GameObject object : added_objects) 
      {
        gameObjects.add(object);
      }
      added_objects  = new ArrayList<GameObject>();
    }
  }
  
  
  public String get_ID() 
  {
    return this.ID;
  }
}
