import 'package:calculator_project/screens/button.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body:  SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 250,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50 ),bottomRight: Radius.circular(50),),
                color: Color.fromARGB(255, 54, 60, 63)
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                    children: [
                      Button(text: 'AC', colorofbtn:const Color.fromARGB(123, 70, 3, 59)),
                      Button(text: '(  )', colorofbtn:const Color.fromARGB(255, 54, 51, 51)),
                      Button(text: '%', colorofbtn:const Color.fromARGB(255, 54, 51, 51)),
                      Button(text: '/', colorofbtn:const Color.fromARGB(255, 54, 51, 51)),
                    ],
                  ),
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}