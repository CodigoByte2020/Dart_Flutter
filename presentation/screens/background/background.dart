import 'package:flutter/material.dart';

class BakgroundImage extends StatelessWidget {
  const BakgroundImage({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Center(
  //       child: Image(image: AssetImage('images/background.png')),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Image(image: AssetImage('images/background.png')),
          ),
          Positioned(
            top: 400,
            left: 120,
            child: Text('Datos desde la pantalla #1')
          ),
        ],
      ),
    );
  }
}
