import 'package:flutter/material.dart';

class Button extends StatelessWidget { 
   Button({super.key,required this.text,required this.colorofbtn});

  String text;
  dynamic colorofbtn;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      width: 90,
      child: InkWell(
        child: ElevatedButton(
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(colorofbtn),), 
          onPressed: (){

          }, 
          child: Center(child: Text(text,style:const TextStyle(fontSize: 30,fontWeight: FontWeight.w400,color: Colors.white),))
        ),
      )
    );
  }
}