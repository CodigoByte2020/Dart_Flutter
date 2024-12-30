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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(image: AssetImage('images/background.png')),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 304),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 54,
                              // color: Colors.blue,
                              child: Text(
                                'S/ ',
                                style: TextStyle(
                                  color: Color(0xFFe7b5f0),
                                  fontSize: 28,
                                  fontWeight: FontWeight.w700
                                )
                              ),
                            ),
                            Text(
                              amount,
                              style: TextStyle(
                                color: Color(0xFF752087),
                                fontSize: 55,
                                fontWeight: FontWeight.w400
                              )
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 14),
                    child: Text(
                      name,
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600
                      )
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 3),
                    child: Text(
                      currentDateTime,
                        style: TextStyle(
                          color: Color(0xFF6b6873),
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                        )
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 47),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'N° de celular: ',
                            style: TextStyle(
                              color: Color(0xFF95929d),
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                            )
                          ),
                          TextSpan(
                            text: cellPhoneNumber,
                            style: TextStyle(
                              color: Color(0xFF272533),
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                            )
                          )
                        ]
                      )
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 24),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Destino: ',
                            style: TextStyle(
                              color: Color(0xFF95929d),
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                            )
                          ),
                          TextSpan(
                            text: destination,
                            style: TextStyle(
                              color: Color(0xFF272533),
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                            )
                          )
                        ]
                      )
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 22),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'N° de operación: ',
                            style: TextStyle(
                              color: Color(0xFF95929d),
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                            )
                          ),
                          TextSpan(
                            text: operationNumber,
                            style: TextStyle(
                              color: Color(0xFF272533),
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                            )
                          )
                        ]
                      )
                    ),
                  ),
                ]
              ),
            ),
          ),
        ]
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Login())
          );
        }
      ),
    );
  }
}
