class functions {
  //Error handler if input value is not within valid range (1-100)
  void error() {
    if (input < 1 || input > 100) {
      //Sets all text vars to " " and number vars to 0 (undefined are null or NaN)
      outputShortcutWholeNumber = 0;
      outputTextShortcut = " ";
      outputReal = 0;
      outputTextReal = " ";
      outputTextMoE = " ";
      
      //Text for error handler
      text(outputError, 25, 300);
      
      //Emphasis box around error handler text
      noFill();
      stroke(255, 20, 20);
      rect(15, 275, 395, 40);
      //Resets fill and stroke color
      fill(0);
      stroke(0);
    }
  }

  //Checks if the input is a perfect square
  void perfectSquares() {
    if (input==1) {
      outputShortcutWholeNumber = 1;
    }
    if (input==4) {
      outputShortcutWholeNumber = 2;
    }
    if (input==9) {
      outputShortcutWholeNumber = 3;
    }
    if (input==16) {
      outputShortcutWholeNumber = 4;
    }
    if (input==25) {
      outputShortcutWholeNumber = 5;
    }
    if (input==36) {
      outputShortcutWholeNumber = 6;
    }
    if (input==49) {
      outputShortcutWholeNumber = 7;
    }
    if (input == 64) {
      outputShortcutWholeNumber = 8;
    }
    if (input == 81) {
      outputShortcutWholeNumber = 9;
    }
    if (input == 100) {
      outputShortcutWholeNumber = 10;
    }
  }

  //If not a perfect square, find the greatest perfect square and set p to it
  void wholeNumberCalculation() {
    if (input > 1 && input < 4) {
      p = 1;
    }
    if (input > 4 && input < 9) {
      p = 2;
    }
    if (input > 9 && input < 16) {
      p = 3;
    }
    if (input > 16 && input < 25) {
      p = 4;
    }
    if (input > 25 && input < 36) {
      p = 5;
    }
    if (input > 36 && input < 49) {
      p = 6;
    }
    if (input > 49 && input < 64) {
      p = 7;
    }
    if (input > 64 && input < 81) {
      p = 8;
    }
    if (input > 81 && input < 100) {
      p = 9;
    }
    //Set shortcut whole number to (converted) p
    outputShortcutWholeNumber = int(p);

    //Set q to (converted) 2p
    q = int(p)*2;
  }

  //Calculate the difference between perfect square and input number, set diff var to it.
  void diffCalculation() {
    if (p == 1) {
      diff = input - 1;
    }
    if (p == 2) {
      diff = input - 4;
    }
    if (p == 3) {
      diff = input - 9;
    }
    if (p == 4) {
      diff = input - 16;
    }
    if (p == 5) {
      diff = input - 25;
    }
    if (p == 6) {
      diff = input - 36;
    }
    if (p == 7) {
      diff = input - 49;
    }
    if (p == 8) {
      diff = input - 64;
    }
    if (p == 9) {
      diff = input - 81;
    }
  }

  //Used to calculate margin of error
  void moeCalculation(){
      //Set temporary var to the decimal version of diff/q and add p to get decimal version of estimated sqrt
      MoEtemp = outputShortcutDecimal + p;
      //Set output var to the absolute value of the real sqrt minus the temp var value
      outputMoE = Math.abs(outputReal - MoEtemp);

      if (MoEtemp == 0){
          outputMoE = 0;
      }
  }
}
