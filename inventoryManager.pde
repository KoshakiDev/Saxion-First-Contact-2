class InventoryManager 
{
  private int icon_height = 50;
  private int icon_space = 25;
  private int icon_width = 50;
  int memory_item_counter = 0;
  boolean lock_check_collected_memories = false;
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
    check_collected_memories();
  }
  
  void check_collected_memories()
  {
    if(memory_item_counter == 8 && !lock_check_collected_memories)
    {
      start_end_sequence = true;
      lock_check_collected_memories = true;
    }
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
    if(item.is_memory_item)
    {
      memory_item_counter++;
    }
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
      for(int i = 0; i < items.size(); i++)
      {
        items.get(i).set_position(new PVector((i + 1) * icon_width, icon_height));
        items.get(i).set_initial_position(new PVector((i + 1) * icon_width, icon_height));
      }
    }
  }
}
