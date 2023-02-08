class Style {
  private String name;
  private int bigColor;
  private int strokeColor;
  private int fillColor;
  private int textSize;  
  
  public Style(String label, int bigCol, int stroke, int fill, int tSize){
    name = label;
    bigColor = bigCol;
    strokeColor = stroke;
    fillColor = fill;
    textSize = tSize;
    
  }
  
  public String getName(){
    return name;
  }
  
  public int getFillColor(){
    return fillColor;
  }
  
  public int getStrokeColor(){
    return strokeColor;
  }
  
  public int getTextSize(){
    return textSize;
  }
  
  public int getBackground(){
    return bigColor;
  }
  
}
