
final int UF = 3;

int wwidth = 380 * UF;
int wheight = 180 * UF;

GameObject chosen_item = new GameObject("");

final CutsceneManager cutscene_manager = new CutsceneManager();
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
  if(cutscene_manager.is_playing)
  {
    cutscene_manager.draw(wwidth, wheight);
    return;
  }
  sceneManager.get_current_scene().draw(wwidth, wheight);
  sceneManager.get_current_scene().update();
  
  inventoryManager.draw();
  inventoryManager.update();
}

// Input-related
void mouseMoved() 
{
  if(cutscene_manager.is_playing)
  {
    //cutscene_manager.mouseMoved();
    return;
  }
  sceneManager.get_current_scene().mouseMoved();
  inventoryManager.mouseMoved();
}

void mouseClicked() 
{
  if(cutscene_manager.is_playing)
  {
    cutscene_manager.mouseClicked();
    return;
  }
  sceneManager.get_current_scene().mouseClicked();
  inventoryManager.mouseClicked();
}

void mouseDragged()
{
  if(cutscene_manager.is_playing)
  {
    //cutscene_manager.mouseDragged();
    return;
  }
  sceneManager.get_current_scene().mouseDragged();
  inventoryManager.mouseDragged();
}

void mouseReleased()
{
  if(cutscene_manager.is_playing)
  {
    //cutscene_manager.mouseReleased();
    return;
  }
  sceneManager.get_current_scene().mouseReleased();
  inventoryManager.mouseReleased();
  chosen_item = new GameObject("");
}
