import 'package:calculator_project/screens/functions.dart';
import 'package:flutter/material.dart';

class Button extends StatefulWidget { 
   Button({super.key,required this.text,required this.colorofbtn});

  String text;
  dynamic colorofbtn;

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      width: 90,
      child: InkWell(
        child: ElevatedButton(
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(widget.colorofbtn),), 
          onPressed: (){
            showingtext=widget.text;
            setState(() {
              
            });
          }, 
          child: Center(child: Text(widget.text,style:const TextStyle(fontSize: 30,fontWeight: FontWeight.w400,color: Colors.white),))
        ),
      )
    );
  }
}

class buttonScreen extends StatelessWidget {
  const buttonScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                  Button(text: 'x', colorofbtn:const Color.fromARGB(255, 47, 43, 57)),
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
    );
  }
}