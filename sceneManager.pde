import java.util.HashMap;

class SceneManager 
{
  private HashMap<String, Scene> scenes;
  
  private Scene current_scene;
  
  public SceneManager() 
  {
    scenes = new HashMap<String, Scene>();
    current_scene = new Scene();
  }
  
  public void add_scene(Scene scene) 
  {
    scenes.put(scene.get_ID(), scene);
  }
  
  public void go_to_scene(String ID) throws Exception 
  {
    if(scenes.containsKey(ID)) 
    {
      current_scene = scenes.get(ID);
    }
    else 
    {
      throw new Exception("Scene not found with name: "+ ID + "." + 
                           "Make sure it was added to the sceneManager.");
    }
  }
  
  public void set_current_scene(Scene scene)
  {
    current_scene = scene;
  }
  
  public Scene get_current_scene() 
  {
    return current_scene;
  }
}
