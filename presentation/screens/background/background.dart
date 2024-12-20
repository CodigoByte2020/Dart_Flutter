import 'package:flutter/material.dart';

class BakgroundImage extends StatelessWidget {
  const BakgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image(image: AssetImage('images/background.png')),
      ),
    );
  }
}