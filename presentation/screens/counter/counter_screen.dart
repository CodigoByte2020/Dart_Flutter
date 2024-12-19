import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() {  // Specify return type
    return _CounterScreenState();
  }

  // State<CounterScreen> createState() => _CounterScreenState();

  // createState() {
  //   return _CounterScreenState();
  // }
}

class _CounterScreenState extends State<CounterScreen> {

  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Counter Screen')
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter', style: TextStyle(fontSize: 160, fontWeight: FontWeight.w100)),
            Text('Click', style: TextStyle(fontSize: 25))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {  // This modify the state
            clickCounter += 1;
          });
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
