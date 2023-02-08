String text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit." + "\r\n" + "Donec at facilisis tortor, a fermentum nulla. Integer non lorem lectus." + "\r\n" + "Maecenas fringilla, velit eu faucibus faucibus, dui sem sollicitudin enim," + "\r\n" + "vel vehicula nibh nisi ut nibh. Aliquam id magna sit amet est sodales" + "\r\n" + "commodo at eget sapien. Nullam cursus lacus nisl, quis vestibulum" + "\r\n" + "mi tristique ut. In at bibendum dolor,eget suscipit dolor." + "\r\n" + "Etiam tortor sem, congue id metus vel, blandit vestibulum sapien.";

//String text = text1 + "\r\n" + text2 + "\r\n" + text3 + "\r\n" + text4 + "\r\n" + text5 + "\r\n" + text6 + "\r\n" + text7;

String[] styleNames = {"dark","light","red","blue"};

int arraySize;

Button[] buttons;
//Button button;

StyleCollection styles;

Style currentStyle;

void setupStyles() {
  styles = new StyleCollection();
  Style dark = new Style("dark", 0, 0, 255, 19);
  styles.addStyle(dark);
  Style light = new Style("light", 255, 0, 0, 19);
  styles.addStyle(light);
  Style red = new Style("red", color(227,121,121), 0, color(234,57,57), 19);
  styles.addStyle(red);
  Style blue = new Style("blue", color(215,219,229), 0, color(69,109,214), 19);
  styles.addStyle(blue);
  
  Style defaultStyle = new Style("light", 255, 0, 0, 19);
  
  styles.setDefaultStyle(defaultStyle);
  currentStyle = defaultStyle;
  
}

void setup(){
  size(800,600);
  setupStyles();
  setupButtons();
  
}

void draw(){
  background(currentStyle.getBackground());
  fill(currentStyle.getFillColor());
  textSize(currentStyle.getTextSize());
  text(text,width/2,height/2-200);
  
  for (Button buttons : buttons) {
    buttons.display();
  }
}

void setupButtons(){
  //arraySize = 3;
  buttons = new Button[styleNames.length];
  for (int index=0; index < styleNames.length; index++) {
    buttons[index] = new Button(120+(150*index), 450, 100, 50, styles.getStyle(styleNames[index]));
    buttons[index].setLabel(styleNames[index]);
    //buttons[index].display();
  }
}

void mousePressed() {
  for(Button button : buttons) {
    if (button.isInside()) {
      String name = button.getText();
      currentStyle = styles.getStyle(name);
    }
  }
}
