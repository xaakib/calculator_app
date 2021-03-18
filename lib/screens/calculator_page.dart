import 'package:calculator_app/components/roundButton.dart';
import 'package:calculator_app/constants.dart';
import 'package:calculator_app/screens/calculator_brain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  String result = '0';

  CalculatorBrain calc = CalculatorBrain();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(top: 60),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: 300,
                    maxHeight: 70,
                  ),
                  child: Text(
                    result,
                    style: kResultTextStyle,
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100,
              child: Text(
                calc.resultOperationText,
                style: kOperationTextStyle,
                softWrap: false,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RountButton(
                      buttonText: "AC",
                      colorsText: kBlackColorsText,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("AC");
                        });
                      },
                    ),
                    RountButton(
                      buttonText: "+/-",
                      colorsText: kBlackColorsText,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("AC");
                        });
                      },
                    ),
                    RountButton(
                      buttonText: "%",
                      colorsText: kBlackColorsText,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("%");
                        });
                      },
                    ),
                    RountButton(
                      buttonText: "/",
                      colorsText: kOrangeColorsText,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("/");
                        });
                      },
                    ),
                  ],
                )),
            Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RountButton(
                      buttonText: "7",
                      colorsText: kBlackColorsText,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("7");
                        });
                      },
                    ),
                    RountButton(
                      buttonText: "8",
                      colorsText: kBlackColorsText,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("8");
                        });
                      },
                    ),
                    RountButton(
                      buttonText: "9",
                      colorsText: kBlackColorsText,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("9");
                        });
                      },
                    ),
                    RountButton(
                      buttonText: "x",
                      colorsText: kOrangeColorsText,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("x");
                        });
                      },
                    ),
                  ],
                )),
            Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RountButton(
                      buttonText: "4",
                      colorsText: kBlackColorsText,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("4");
                        });
                      },
                    ),
                    RountButton(
                      buttonText: "5",
                      colorsText: kBlackColorsText,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("5");
                        });
                      },
                    ),
                    RountButton(
                      buttonText: "6",
                      colorsText: kBlackColorsText,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("6");
                        });
                      },
                    ),
                    RountButton(
                      buttonText: "-",
                      colorsText: kOrangeColorsText,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("-");
                        });
                      },
                    ),
                  ],
                )),
            Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RountButton(
                      buttonText: "1",
                      colorsText: kBlackColorsText,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("1");
                        });
                      },
                    ),
                    RountButton(
                      buttonText: "2",
                      colorsText: kBlackColorsText,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("2");
                        });
                      },
                    ),
                    RountButton(
                      buttonText: "3",
                      colorsText: kBlackColorsText,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("3");
                        });
                      },
                    ),
                    RountButton(
                      buttonText: "+",
                      colorsText: kOrangeColorsText,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("+");
                        });
                      },
                    ),
                  ],
                )),
            Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RountButton(
                      buttonBoxShape: NeumorphicBoxShape.roundRect(
                        BorderRadius.circular(40.0),
                      ),
                      buttonText: "0",
                      colorsText: kBlackColorsText,
                      buttonWidth: 2.9,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("0");
                        });
                      },
                    ),
                    RountButton(
                      buttonText: ".",
                      colorsText: kBlackColorsText,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed(".");
                        });
                      },
                    ),
                    RountButton(
                      buttonText: "=",
                      colorsText: kOrangeColorsText,
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("=");
                        });
                      },
                    ),
                  ],
                )),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      )),
    );
  }
}
