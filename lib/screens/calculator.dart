import 'package:calculator_project/screens/button.dart';
import 'package:calculator_project/screens/functions.dart';
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
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body:  SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                height: 250,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50 ),bottomRight: Radius.circular(50),),
                  color: Color.fromARGB(255, 54, 60, 63)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(showingtext,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 100,
                    ),
                  ),
                  )
                  ],
                ),
              ),
            ),
           const buttonScreen()
          ],
        )
      ),
    );
  }
}

