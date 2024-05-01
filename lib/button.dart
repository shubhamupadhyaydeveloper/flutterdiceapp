import 'package:flutter/material.dart';
import 'dart:math';

class ButtonWidget extends StatefulWidget {
  @override
  State<ButtonWidget> createState() {
    return _ButtonWidget();
  }
}


class _ButtonWidget extends State<ButtonWidget> {
  var currentValue = 2;
  void handlePress() {
    setState(() {
      currentValue = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Image.asset(
          'assets/dice-$currentValue.png',
          width: 200,
        ),
        ElevatedButton(
            onPressed: handlePress,
            child: const Text(
              "Roll Dice",
              style: TextStyle(color: Colors.black, fontSize: 24),
            )),
      ],
    );
  }
}
