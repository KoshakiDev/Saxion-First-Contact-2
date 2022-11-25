class GameObject 
{
  private String name; 
  
  protected PVector position;
  protected int owidth;
  protected int oheight;
  
  private boolean hasImage;
  private boolean hasHoverImage;
  private PImage gameObjectImage;
  private PImage gameObjectImageHover;
  
  protected boolean mouseIsHovering;
  
  private boolean hasText;
  private String text;
  private boolean displayText;
  private float text_size = 12; 
  private float text_width;
  private float textHeight;
  
  protected boolean has_cutscene = false;
  protected String play_cutscene_ID = ""; 
  
  
  public GameObject() {}
  
  public GameObject(String name) 
  {
    this.name = name;
    this.position = new PVector(0, 0);
    this.oheight = 0;
    this.owidth = 0;
    hasImage = false;
    hasText = false;
    hasHoverImage = false;
    mouseIsHovering = false;
  }
  
  public void set_cutscene_ID(String cutscene_ID)
  {
    has_cutscene = true;
    play_cutscene_ID = cutscene_ID;
  }
  
  public void set_text_size(float text_size)
  {
    this.text_size = text_size;
    
  }
  
  public void set_position(PVector position)
  {
    this.position = position;
  }
  
  public void set_height(int oheight)
  {
    this.oheight = oheight;
  }
  
  public void set_width(int owidth)
  {
    this.owidth = owidth;
  }
  
  public void set_image(String gameObjectImageFile)
  {
    hasImage = true; 
    this.gameObjectImage = loadImage(gameObjectImageFile);
  }
  
  public void set_text(String text)
  {
    hasText = true;
    this.text = text;
    displayText = false;
    pushMatrix();
    textSize(text_size);
    calculateTextArea();
    popMatrix();  
  }
  
  public void set_hover_image(String gameObjectImageHoverFile) 
  {
    hasHoverImage = true;
    this.gameObjectImageHover = loadImage(gameObjectImageHoverFile);
  }
  
  private void show_collision()
  {
    pushMatrix();
    rectMode(CORNER);
    fill(255, 50);
    rect(position.x, position.y, owidth, oheight);
    popMatrix();
  }
  
  private void show_text()
  {
    pushMatrix();
    PVector text_position = new PVector(position.x + owidth / 2, position.y);
    fill(255);
    rectMode(CENTER);
    rect(text_position.x, text_position.y, text_width, textHeight, 8);
    popMatrix();
    
    pushMatrix();
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(text_size);
    text(text, text_position.x, text_position.y, text_width, textHeight); 
    popMatrix();
  }
  
  public void draw() 
  {
    show_collision();
    if(hasImage) 
    {
      if(mouseIsHovering && hasHoverImage) 
      {
        image(gameObjectImageHover, position.x, position.y, owidth, oheight);
      } 
      else 
      {
        image(gameObjectImage, position.x, position.y, owidth, oheight);
      }
    }
    if(hasText)
    {
      if(displayText) {show_text();} 
    }
    
  }
  
  public void mouseMoved() 
  {
    mouseIsHovering = false;
    mouseIsHovering = PointRectCollision();
    
    displayText = false;
    if(mouseIsHovering) { displayText = true; }
  }
  
  public void mouseClicked() { }
  
  public void mouseDragged() 
  {
    mouseIsHovering = false;
    mouseIsHovering = PointRectCollision();
  }
  
  public void mouseReleased() { }
  
  public boolean PointRectCollision()
  {
    if(mouseX >= position.x && mouseX <= position.x + owidth &&
       mouseY >= position.y && mouseY <= position.y + oheight) 
    {
       return true;
    }
    return false;
  }
  
  public String get_name() 
  {
    return this.name;
  }
  
  public void calculateTextArea() 
  {
    text_width = textWidth(text) * 2;
    
    float max_width = owidth;
    
    float remaining = text_width - max_width;
    
    if(text_width > max_width)
    {
      text_width = max_width;
    }
    
    this.textHeight = text_size * 2;
    
    while(remaining > max_width)
    {
      this.textHeight += 30;
      remaining -= max_width;
    }
  }
  
  @Override 
  public boolean equals(Object obj) 
  { 
    if (obj == this) { return true; } 
    if (obj == null || obj.getClass() != this.getClass()) { return false; } 
    GameObject otherGameObject = (GameObject) obj; 
    return otherGameObject.get_name().equals(this.name);
  } 

  @Override 
  public int hashCode() 
  { 
    final int prime = 11;
    return prime * this.name.hashCode();
  }
}
