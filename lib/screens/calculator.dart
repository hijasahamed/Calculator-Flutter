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
              ),
            ),
            Expanded(
              flex: 7,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                        children: [
                          Button(text: 'AC', colorofbtn:const Color.fromARGB(255, 70, 3, 59)),
                          Button(text: '(  )', colorofbtn:const Color.fromARGB(255, 47, 43, 57)),
                          Button(text: '%', colorofbtn:const Color.fromARGB(255, 47, 43, 57)),
                          Button(text: '/', colorofbtn:const Color.fromARGB(255, 47, 43, 57)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                        children: [
                          Button(text: '7', colorofbtn:const Color.fromARGB(255, 31, 30, 30)),
                          Button(text: '8', colorofbtn:const Color.fromARGB(255, 31, 30, 30)),
                          Button(text: '9', colorofbtn:const Color.fromARGB(255, 31, 30, 30)),
                          Button(text: 'X', colorofbtn:const Color.fromARGB(255, 47, 43, 57)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                        children: [
                          Button(text: '4', colorofbtn:const Color.fromARGB(255, 31, 30, 30)),
                          Button(text: '5', colorofbtn:const Color.fromARGB(255, 31, 30, 30)),
                          Button(text: '6', colorofbtn:const Color.fromARGB(255, 31, 30, 30)),
                          Button(text: '-', colorofbtn:const Color.fromARGB(255, 47, 43, 57)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                        children: [
                          Button(text: '1', colorofbtn:const Color.fromARGB(255, 31, 30, 30)),
                          Button(text: '2', colorofbtn:const Color.fromARGB(255, 31, 30, 30)),
                          Button(text: '3', colorofbtn:const Color.fromARGB(255, 31, 30, 30)),
                          Button(text: '+', colorofbtn:const Color.fromARGB(255, 47, 43, 57)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                        children: [
                          Button(text: '0', colorofbtn:const Color.fromARGB(255, 31, 30, 30)),
                          Button(text: '.', colorofbtn:const Color.fromARGB(255, 31, 30, 30)),
                          Button(text: 'C', colorofbtn:const Color.fromARGB(255, 31, 30, 30)),
                          Button(text: '=', colorofbtn:const Color.fromARGB(255, 2, 60, 89)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}