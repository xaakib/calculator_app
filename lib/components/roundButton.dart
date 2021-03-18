import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class RountButton extends StatefulWidget {
  final String buttonText;
  final Color colorsText;
  final Function onPressed;
  final NeumorphicBoxShape buttonBoxShape;
  final double buttonWidth;

  const RountButton(
      {Key key,
      @required this.buttonText,
      @required this.colorsText,
      @required this.onPressed,
      @required this.buttonBoxShape,
      @required this.buttonWidth});

  @override
  _RountButtonState createState() => _RountButtonState();
}

class _RountButtonState extends State<RountButton> {
  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      onPressed: widget.onPressed,
      style: NeumorphicStyle(
        shape: NeumorphicShape.flat,
        depth: 6,
        shadowDarkColor: Colors.grey.shade500,
        lightSource: LightSource.topLeft,
        boxShape: widget.buttonBoxShape,
        color: Color(0xFFEDEBEC),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height / 14,
        width: MediaQuery.of(context).size.width / widget.buttonWidth,
        child: Center(
          child: Text(
            widget.buttonText,
            style: TextStyle(
              color: widget.colorsText,
              fontSize: 23,
              fontFamily: "Montserrat",
            ),
          ),
        ),
      ),
    );
  }
}
