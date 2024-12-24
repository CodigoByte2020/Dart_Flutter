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
        // leading: IconButton(
        //     onPressed: () => {},
        //     icon: Icon(Icons.refresh_rounded)
        // ),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
              icon: Icon(Icons.refresh_rounded)
          ),
          IconButton(
              onPressed: () => {},
              icon: Icon(Icons.refresh_rounded)
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter', style: TextStyle(fontSize: 160, fontWeight: FontWeight.w100)),
            Text(('$clickCounter' == '1') ? 'Click' : 'Clicks', style: const TextStyle(fontSize: 25))
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(icon: Icons.refresh_rounded, onPressed: () => setState(() => clickCounter = 0)),
          // setState() modify the state
          SizedBox(height: 10),
          CustomButton(icon: Icons.plus_one, onPressed: () => {setState(() => clickCounter += 1)}),
          SizedBox(height: 10),
          CustomButton(icon: Icons.exposure_minus_1_outlined, onPressed: () {
            setState(() {
              if (clickCounter == 0) return;
              clickCounter -= 1;
            });
          }),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      enableFeedback: true,
      elevation: 10,
      backgroundColor: Colors.blueAccent,
      shape: StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
