import 'package:flutter/material.dart';
import 'package:my_flutter_app/presentation/screens/counter/counter_screen.dart';
import 'package:my_flutter_app/presentation/screens/background/background.dart';

void main() {
  runApp(const MyApp()); // Initial widget
}

// Widget: It's something element of user interface.
// Examples: AppBar, Text, Scaffold, etc.
class MyApp extends StatelessWidget {
  const MyApp({super.key});  //key to identify this widget

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final size = MediaQuery.of(context).size;

    return MaterialApp(  //Add when this code is constant, armed pieces
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: Colors.purple
        ),
        // home: const CounterScreen()  // Import widget
        // home: BakgroundImage()  // Import widget
        home: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: size.width * 0.8,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Nombre'
                      ),
                    ),
                  ),
                ),
                ElevatedButton(onPressed: () => {}, child: Text('Generar imagen'))
              ],
            ),
          ),
        )
    );
  }
}
