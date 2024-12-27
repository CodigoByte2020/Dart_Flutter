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

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Stack(
  //       children: [
  //         Center(
  //           child: Image(image: AssetImage('images/background.png')),
  //         ),
  //         Positioned(
  //           top: 200,
  //           left: 120,
  //           child: Text(name)
  //         ),
  //         Positioned(
  //             top: 250,
  //             left: 120,
  //             child: Text(amount)
  //         ),
  //         Positioned(
  //             top: 300,
  //             left: 120,
  //             child: Text(currentDateTime)
  //         ),
  //         Positioned(
  //             top: 500,
  //             left: 220,
  //             child: Container(
  //               decoration: BoxDecoration(
  //                 border: Border.all(color: Colors.blue, width: 3)
  //               ),
  //               child: Text(cellPhoneNumber)
  //             ),
  //         ),
  //         Positioned(
  //           top: 545,
  //           left: 220,
  //           child: Container(
  //               decoration: BoxDecoration(
  //                   border: Border.all(color: Colors.blue, width: 3)
  //               ),
  //               child: Text(destination)
  //           ),
  //         ),
  //         Positioned(
  //           top: 593,
  //           left: 230,
  //           child: Container(
  //               decoration: BoxDecoration(
  //                   border: Border.all(color: Colors.blue, width: 3)
  //               ),
  //               child: Text(operationNumber)
  //           ),
  //         ),
  //       ],
  //     ),
  //     floatingActionButton: FloatingActionButton(
  //       child: Icon(Icons.arrow_back),
  //       onPressed: () {
  //         Navigator.push(
  //           context,
  //           MaterialPageRoute(builder: (context) => Login())
  //         );
  //       }),
  //   );
  // }

  // WidgetSpan(
  //   alignment: PlaceholderAlignment.bottom, // Alinea el texto arriba
  //   child: Text(
  //     'S/',
  //     style: TextStyle(
  //       color: Color(0xFFe0b1e8),
  //       // fontSize: 20, // Asegúrate de ajustar el tamaño para que quede proporcional
  //     ),
  //   ),
  // ),

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
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 304),
                    // child: Column(
                    //   children: [
                    //     Text.rich(
                    //       TextSpan(
                    //         children: [
                    //           TextSpan(
                    //             text: 'S/ ',
                    //             style: TextStyle(
                    //               color: Color(0xFFe0b1e8)
                    //             )
                    //           ),
                    //           TextSpan(
                    //             text: amount,
                    //             style: TextStyle(
                    //               color: Color(0xFF752087),
                    //               fontSize: 55,
                    //               fontWeight: FontWeight.w400
                    //             )
                    //           )
                    //         ]
                    //       )
                    //     ),
                    //   ],
                    // ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          color: Colors.green,
                          // width: 100,
                          // height: 100,
                          child: Text(
                            'S/ ',
                            style: TextStyle(
                              color: Color(0xFFe0b1e8)
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
      }),
    );
  }
}
