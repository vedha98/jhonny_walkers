/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void button1_click1(GButton source, GEvent event) { //_CODE_:button1:309855:
  println("button1 - GButton >> GEvent." + event + " @ " + millis());
  start_pressed=true;
  button1.setVisible(false);
  textfield1.setVisible(false);
  name = button1.getText();
} //_CODE_:button1:309855:

public void textfield1_change1(GTextField source, GEvent event) { //_CODE_:textfield1:869927:
  println();
} //_CODE_:textfield1:869927:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setCursor(ARROW);
  surface.setTitle("Sketch Window");
  button1 = new GButton(this, 200, 206, 100, 60);
  button1.setText("START");
  button1.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  button1.addEventHandler(this, "button1_click1");
  textfield1 = new GTextField(this, 175, 145, 150, 30, G4P.SCROLLBARS_NONE);
  textfield1.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  textfield1.setOpaque(false);
  textfield1.addEventHandler(this, "textfield1_change1");
}

// Variable declarations 
// autogenerated do not edit
GButton button1; 
GTextField textfield1; 
