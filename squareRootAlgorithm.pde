//This is the number you want to find the square root of
int input = 49;

//Backend variables
float p;
int q;
int diff;
float MoEtemp;

//Frontend output variables (numbers)
int outputShortcutWholeNumber;
float outputShortcutDecimal;
float outputReal;
float outputMoE;

//Frontend output strings (constants for simplicity in text() functions)
String outputTextShortcut = "The estimated square root is: ";
String outputTextReal = "The real square root is: ";
String outputTextMoE = "The margin of error is: +-";
String outputError = "Number must be between one and one hundred!";

//Initialize class "functions"
functions f;

public void setup() {
  //Settings
  //Canvas size
  size(500, 500);
  //BG color
  background(255);
  //Text size
  textSize(16);
  //Fill color
  fill(0);
}

public void draw() {
  //Sets f. to functions class's functions
  f = new functions();

  //Ordered properly, don't change!
  f.error();
  f.wholeNumberCalculation();
  f.diffCalculation();
  f.moeCalculation();
  f.perfectSquares();

  //Calculates the real square root using sqrt()
  outputReal = sqrt(input);

  //Calculates the decimal version of the diff/q fraction
  outputShortcutDecimal = float(diff)/float(q);

  //Text functions
  //Input
  text("Input: " + input, 25, 50);
  //Output estimate with fraction
  text(outputTextShortcut + outputShortcutWholeNumber + " " + diff + "/" + q, 25, 100);
  //Decimal form of fraction
  text(diff + "/" + q + " = " + outputShortcutDecimal, 25, 150);
  //Real square root
  text(outputTextReal + outputReal, 25, 200);
  //Margin of error
  text(outputTextMoE + outputMoE, 25, 250);
}
