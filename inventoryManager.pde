class InventoryManager 
{
  private int icon_height = 50;
  private int icon_space = 25;
  private int icon_width = 50;
  private ArrayList<ItemObject> items;
  private ArrayList<ItemObject> removed_items;
  
  public InventoryManager() 
  {
     items = new ArrayList<ItemObject>();
     removed_items = new ArrayList<ItemObject>();
  }
  
  public void update()
  {
    clear_removed_items();
  }
  
  public void draw_item(ItemObject item, PVector position)
  {
    pushMatrix();
    fill(0);
    text(item.get_name(), position.x, position.y); 
    popMatrix();
  }
  
  public void draw()
  {
    for(ItemObject item : items)
    {
      item.draw();
    }
  }
  
  void mouseMoved()
  {
    for(ItemObject item : items)
    {
      item.mouseMoved();
    }
  }
  
  void mouseClicked()
  {
    for(ItemObject item : items)
    {
      item.mouseClicked();
    }
  }
  
  void mouseDragged()
  {
    for(ItemObject item : items)
    {
      item.mouseDragged();
    }
  }
  
  void mouseReleased()
  {
    for(ItemObject item : items)
    {
      item.mouseReleased();
    }
  }
  
  // Add and Remove Methods
  public void add_item(ItemObject item) 
  {
    items.add(item);
    item.set_height(icon_height);
    item.set_width(icon_width);
    item.set_text_size(9);
    item.set_position(new PVector(items.size() * icon_width, icon_height));
    item.set_initial_position(new PVector(items.size() * icon_width, icon_height));
    item.set_text(item.get_name());
  }
  
  public void remove_item(ItemObject item) 
  {
    removed_items.add(item);
  }
  
  public boolean contains_item(ItemObject item) 
  {
    return items.contains(item);
  }
  
  public void clear_removed_items() 
  {
    if(removed_items.size() > 0) 
    {
      for(ItemObject item : removed_items) 
      {
        items.remove(item);
      }
      removed_items  = new ArrayList<ItemObject>();
    }
  }
}
