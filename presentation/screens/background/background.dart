import 'package:flutter/material.dart';
import 'package:my_flutter_app/presentation/screens/login/login.dart';

class BakgroundImage extends StatelessWidget {

  final String name;
  final String amount;
  final String currentDateTime;
  final String cellPhoneNumber;
  final String destination;
  final String operationNumber;

  const BakgroundImage({
    super.key,
    required this.name,
    required this.amount,
    required this.currentDateTime,
    required this.cellPhoneNumber,
    required this.destination,
    required this.operationNumber
  });


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
            top: 200,
            left: 120,
            child: Text(name)
          ),
          Positioned(
              top: 250,
              left: 120,
              child: Text(amount)
          ),
          Positioned(
              top: 300,
              left: 120,
              child: Text(currentDateTime)
          ),
          Positioned(
              top: 350,
              left: 120,
              child: Text(cellPhoneNumber)
          ),
          Positioned(
              top: 400,
              left: 120,
              child: Text(destination)
          ),
          Positioned(
              top: 450,
              left: 120,
              child: Text(operationNumber)
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Login())
          );
        }),
    );
  }
}
