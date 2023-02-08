class Button {
  
  private float x;
  private float y;
  private float w;
  private float h;
  private String label;
  Style style;
  
  public Button(float xp,float yp,float wd, float ht, Style s) {
    x = xp;
    y = yp;
    w = wd;
    h = ht;
    style = s;
    
  }
  
  public void display(){
    stroke(style.getStrokeColor());
    fill(style.getBackground());
    rect(x,y,w,h);
    
    fill(style.getFillColor());
    textSize(style.getTextSize());
    textAlign(CENTER);
    text(style.getName(),x+45,y+35);
  }
  
  public String getText(){
    return style.getName();
  }
  
  public void setLabel(String label2){
    label = label2;
    
  }
  
  public boolean isInside() {
    boolean xBound = mouseX < x+w/2 && mouseX > x-w/2;  
    boolean yBound = mouseY < y+h/2 && mouseY > y-h/2;

    return xBound && yBound;
  }
  
}
