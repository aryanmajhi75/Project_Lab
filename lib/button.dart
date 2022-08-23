import 'package:flutter/material.dart';
import 'default.dart';

class Button extends StatelessWidget{

  final String title;
  final double width;
  Button({required this.title,required this.width});
  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: width,
      child: MaterialButton(
        color: lightbuttonColor,
        onPressed: (){},
        child: Text(title,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}