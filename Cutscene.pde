class Cutscene 
{
  private String ID;
  private int current_image_index;
  private ArrayList<PImage> images;
  private boolean is_finished;
  
  public Cutscene() {}
  
  public Cutscene(String ID, String[] image_paths) 
  {
    this.ID = ID;
    current_image_index = 0;
    images = new ArrayList<PImage>();
    is_finished = false;
    for(String file_path : image_paths)
    {
      images.add(loadImage(file_path));
    }
  }
  public void draw(int wwidth, int wheight) 
  {
    image(images.get(current_image_index), 0, 0, wwidth, wheight);
  }
  
  //Input
  public void mouseClicked() 
  {
    if(mouseX > width / 2)
    {
      next_image();
    }
    if(mouseX < width / 2)
    {
      prev_image();
    }
  }
  
  public String get_ID() 
  {
    return this.ID;
  }
  
  void next_image()
  {
    if (current_image_index + 1 < images.size())
    {
      current_image_index++;
    }
    else
    {
      is_finished = true;
    }
  }
  void prev_image()
  {
    if (current_image_index - 1 >= 0)
    {
      current_image_index--;
    }  
  }
}
