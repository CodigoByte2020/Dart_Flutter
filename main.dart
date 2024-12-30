import 'package:flutter/material.dart';
import 'package:my_flutter_app/presentation/screens/counter/counter_screen.dart';
import 'package:my_flutter_app/presentation/screens/background/background.dart';
import 'package:my_flutter_app/presentation/screens/login/login.dart';

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
    // The state is clicks quantity, variable value, etc.

    return MaterialApp(  //Add when this code is constant, armed pieces
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: Colors.purple
        ),
        home: Login()
        // home: const CounterScreen()  // Import widget
        // home: BakgroundImage()
    );
  }
}
