int wwidth = 800;
int wheight = 800;

final SceneManager sceneManager = new SceneManager();
final InventoryManager inventoryManager = new InventoryManager();

Scene InventoryScene;
  

void settings()
{
  size(wwidth, wheight);
}

void setup()
{
  /*
  InventoryScene = new Scene("Inventory", "back01.png");
  
  Collectable apple = new Collectable("apple", "back04_apple.png");
  CollectableObject object6 = new CollectableObject("apple_scene03", 325, 366, 123, 101, apple);
  
  InventoryScene.addGameObject(object6);
  */
  setup(sceneManager); //Check scene_setup
}

void draw()
{
  sceneManager.getCurrentScene().draw(wwidth, wheight);
  sceneManager.getCurrentScene().updateScene();
  
  //InventoryScene.draw(0, 0);
  //InventoryScene.updateScene();
  
  inventoryManager.clearMarkedForDeathCollectables();
  
}

void mouseMoved() 
{
  sceneManager.getCurrentScene().mouseMoved();
}

void mouseClicked() 
{
  sceneManager.getCurrentScene().mouseClicked();
}
