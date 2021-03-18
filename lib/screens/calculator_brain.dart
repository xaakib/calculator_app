class CalculatorBrain {
  String output = '0';
  String _output = '';

  dynamic num1 = 0;
  dynamic num2 = 0;
  String operator = '';
  String resultOperationText = '';
  bool isPressedPercentageButton = true;

  String buttonPressed(String buttonText) {
    if (buttonText == "AC") {
      _output = '';
      num1 = 0;
      num2 = 0;
      operator = '';
      output = '0';
      resultOperationText = '';
      isPressedPercentageButton = true;
      return output;
    }
  }
}
