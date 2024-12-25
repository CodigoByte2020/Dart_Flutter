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
  final TextEditingController _cellPhoneNumberController = TextEditingController();
  final TextEditingController _destinationController = TextEditingController();
  // String _dateTime = '';
  late DateFormat dateFormat;
  late DateFormat timeFormat;

  // TODO: I WILL WORK HERE ALL DAY
  @override
  void initState() {
    super.initState();
    initializeDateFormatting();
    dateFormat = DateFormat('d MMM. y - hh: mm a', 'es_PE');
    // timeFormat = DateFormat('hh: mm a', 'es_PE');
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    String _getCurrenDateTime () {
      // Configura la localización a español
      // Intl.defaultLocale = 'es_PE';
      DateTime now = DateTime.now();
      print('**************$now');
      // String datess = DateFormat('MMM').format(now);
      String datess = dateFormat.format(now).replaceAll('a. m.', 'am').replaceAll('p. m.', 'pm');
      print('**************$datess***');
      return datess;
    }

    // TODO: I FINISHED THIS METHOD
    String _getCellPhoneNumber (String cellPhoneNumber) {
      int lengthCellPhoneNumber = cellPhoneNumber.length;
      return lengthCellPhoneNumber == 9 ? '*** *** ${cellPhoneNumber.substring(lengthCellPhoneNumber - 3)}' : '';
      // return if (lengthCellPhoneNumber == 9) '*** *** ${cellPhoneNumber.substring(lengthCellPhoneNumber - 3)}';
    }

    String _getOperationNumber () {
      Random random = Random();
      int firstRandomNumber = random.nextInt(2);
      int secondRandomNumber = 1000000 + random.nextInt(9000000);
      String finalNumber = '$firstRandomNumber$secondRandomNumber';
      return finalNumber;
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
                  controller: _nameController,  // Link _controller to TextField
                  obscureText: true,
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
                  obscureText: true,
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
                  obscureText: true,
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
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Destino'
                  ),
                ),
              ),
            ),
            // ElevatedButton(onPressed: () => {}, child: Text('Generar imagen'))
            ElevatedButton(
              onPressed: () {
                final name = _nameController.text; // Captures the entered text
                final amount = _amountController.text;
                final cellPhoneNumber = _cellPhoneNumberController.text;
                final destination = _destinationController.text;
                // final currentDateTime = _getCurrenDateTime().toString();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BakgroundImage(
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
              child: Text('Ir a la segunda pantalla')
            )
          ],
        ),
      ),
    );
  }
}