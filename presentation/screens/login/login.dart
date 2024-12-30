import 'dart:math';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/presentation/screens/background/background.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _cellPhoneNumberController =
      TextEditingController();
  final TextEditingController _destinationController = TextEditingController();

  late DateFormat dateFormat;
  late DateFormat timeFormat;

  @override
  void initState() {
    super.initState();
    initializeDateFormatting();
    dateFormat = DateFormat('d MMM. y - hh:mm a', 'es_PE');
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    String _getCurrenDateTime() {
      // Configura la localización a español
      // Intl.defaultLocale = 'es_PE';
      DateTime now = DateTime.now();
      String datess = dateFormat
          .format(now)
          .replaceAll('a. m.', 'am')
          .replaceAll('p. m.', 'pm');
      return datess;
    }

    String _getCellPhoneNumber(String cellPhoneNumber) {
      int lengthCellPhoneNumber = cellPhoneNumber.length;
      return lengthCellPhoneNumber == 9
          ? '*** *** ${cellPhoneNumber.substring(lengthCellPhoneNumber - 3)}'
          : '';
    }

    String _getOperationNumber() {
      Random random = Random();
      int firstRandomNumber = random.nextInt(2);
      int secondRandomNumber = 1000000 + random.nextInt(9000000);
      return '$firstRandomNumber$secondRandomNumber';
    }

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
                  controller: _nameController, // Link _controller to TextField
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nombre'
                  ),
                ),
              ),
            ),
            SizedBox(
              width: size.width * 0.8,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: TextField(
                  controller: _amountController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Monto'
                  ),
                ),
              ),
            ),
            SizedBox(
              width: size.width * 0.8,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: TextField(
                  controller: _cellPhoneNumberController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Número de celular'
                  ),
                ),
              ),
            ),
            SizedBox(
              width: size.width * 0.8,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: TextField(
                  controller: _destinationController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Destino'
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                final name = _nameController.text; // Captures the entered text
                final amount = _amountController.text;
                final cellPhoneNumber = _cellPhoneNumberController.text;
                final destination = _destinationController.text;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BakgroundImage(
                      name: name,
                      amount: amount,
                      currentDateTime: _getCurrenDateTime().toString(),
                      cellPhoneNumber: _getCellPhoneNumber(cellPhoneNumber),
                      destination: destination,
                      operationNumber: _getOperationNumber()
                    )
                  ),
                );
              },
              child: Text('Generar yape falso')
            )
          ],
        ),
      ),
    );
  }
}
