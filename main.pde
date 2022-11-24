
final int UF = 3;

int wwidth = 380 * UF;
int wheight = 180 * UF;

GameObject chosen_item = new GameObject("");
final SceneManager sceneManager = new SceneManager();
final InventoryManager inventoryManager = new InventoryManager();

void settings()
{
  size(wwidth, wheight);
}

void setup()
{
  setup(sceneManager); //Check scene_setup
}

// Main game loop
void draw()
{
  sceneManager.get_current_scene().draw(wwidth, wheight);
  sceneManager.get_current_scene().update();
  
  inventoryManager.draw();
  inventoryManager.update();
}

// Input-related
void mouseMoved() 
{
  sceneManager.get_current_scene().mouseMoved();
  inventoryManager.mouseMoved();
}

void mouseClicked() 
{
  sceneManager.get_current_scene().mouseClicked();
  inventoryManager.mouseClicked();
}

void mouseDragged()
{
  sceneManager.get_current_scene().mouseDragged();
  inventoryManager.mouseDragged();
}

void mouseReleased()
{
  sceneManager.get_current_scene().mouseReleased();
  inventoryManager.mouseReleased();
  chosen_item = new GameObject("");
}
