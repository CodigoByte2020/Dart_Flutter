import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
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
    );
  }
}