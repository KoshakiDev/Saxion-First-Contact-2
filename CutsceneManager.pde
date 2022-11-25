class CutsceneManager
{
  boolean is_playing = false;
  
  private HashMap<String, Cutscene> cutscenes;
  
  private String current_ID;
  
  public CutsceneManager() 
  {
    cutscenes = new HashMap<String, Cutscene>();
    current_ID = "";
  }
  
  void draw(int wwidth, int wheight)
  {
    if(cutscenes.get(current_ID).is_finished)
    {
      is_playing = false;
      return;
    }
    cutscenes.get(current_ID).draw(wwidth, wheight);
  }
  void mouseClicked()
  {
    cutscenes.get(current_ID).mouseClicked();
  }
  
  public void add_cutscene(Cutscene cutscene) 
  {
    cutscenes.put(cutscene.get_ID(), cutscene);
  }
  
  public void play_cutscene(String cutscene_ID)
  {
    this.current_ID = cutscene_ID;
    is_playing = true;
    cutscenes.get(current_ID).current_image_index = 0;
    cutscenes.get(current_ID).is_finished = false;
  }
}
