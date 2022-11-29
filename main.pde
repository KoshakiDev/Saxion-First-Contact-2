
final int UF = 3;

int wwidth = 380 * UF;
int wheight = 180 * UF;

GameObject chosen_item = new GameObject("");

final CutsceneManager cutscene_manager = new CutsceneManager();
final SceneManager sceneManager = new SceneManager();
final InventoryManager inventoryManager = new InventoryManager();

Scene end_scene = new Scene();
boolean start_end_sequence = false;
boolean start_starting_sequence = false;

int correct_memories = -1;

void settings()
{
  size(wwidth, wheight);
}

void setup()
{
  setup(sceneManager); //Check scene_setup
  end_setup();
}

// Main game loop
void draw()
{
  //scale(UF, UF);
  if(sceneManager.get_current_scene().ID == "title_screen")
  {
    if(correct_memories != -1)
    {
       if(correct_memories == 8)
      {
        cutscene_manager.play_cutscene("good_end");
        
      }
      if(correct_memories < 8 && correct_memories >= 6)
      {
        cutscene_manager.play_cutscene("netural_end");
      }
      if(correct_memories < 5)
      {
        cutscene_manager.play_cutscene("bad_end");
      }
      correct_memories = -1;
    }
  }
  if(start_end_sequence)
  {
    cutscene_manager.play_cutscene("sister_found_key");
    try 
    {
      sceneManager.go_to_scene("crypt_entrance");
    } 
    catch(Exception e) 
    { 
      println(e.getMessage());
    }
    start_end_sequence = false;
  }
  if(cutscene_manager.is_playing)
  {
    cutscene_manager.draw(wwidth, wheight);
    return;
  }
  if(sceneManager.get_current_scene().ID == "crypt_entrance")
  {
    end_scene_loop();
    return;
  }
  sceneManager.get_current_scene().draw(wwidth, wheight);
  sceneManager.get_current_scene().update();
  
  if(sceneManager.get_current_scene().ID != "title_screen")
  {
    if(!start_starting_sequence)
    {
      cutscene_manager.play_cutscene("intro");
      start_starting_sequence = true;
    }
    inventoryManager.draw();
    inventoryManager.update();
  }
}

void end_scene_loop()
{
  end_scene.update();
  end_scene.draw(wwidth, wheight);
  int counter_fake = 0;
  int counter_true = 0;
  for(GameObject object : end_scene.gameObjects)
  {
    PVector position = object.get_position();
    if(object.is_true_memory && position.x < wwidth / 2)
    {
      counter_true++;
    }
    else if (!object.is_true_memory && position.x > wwidth / 2)
    {
      counter_fake++;
    }
  }
  println("====");
  println("true memories correct: ", counter_true);
  println("fake memories correct: ", counter_fake);
  correct_memories = counter_true + counter_fake;
  
}

// Input-related
void mouseMoved() 
{
  if(cutscene_manager.is_playing)
  {
    //cutscene_manager.mouseMoved();
    return;
  }
  if(sceneManager.get_current_scene().ID == "crypt_entrance")
  {
    end_scene.mouseMoved();
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
  if(sceneManager.get_current_scene().ID == "crypt_entrance")
  {
    end_scene.mouseClicked();
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
  if(sceneManager.get_current_scene().ID == "crypt_entrance")
  {
    end_scene.mouseDragged();
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
  if(sceneManager.get_current_scene().ID == "crypt_entrance")
  {
    end_scene.mouseReleased();
    return;
  }
  sceneManager.get_current_scene().mouseReleased();
  inventoryManager.mouseReleased();
  chosen_item = new GameObject("");
}
