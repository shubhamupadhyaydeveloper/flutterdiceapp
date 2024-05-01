import 'package:flutter/material.dart';
import 'package:project/button.dart';

class Info extends StatelessWidget {
  final String text;
  const Info(this.text, {super.key});

  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: ButtonWidget()
      ),
    );
  }
}
