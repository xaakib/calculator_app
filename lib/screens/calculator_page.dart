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
                    )
                  ],
                ))
          ],
        ),
      )),
    );
  }
}
