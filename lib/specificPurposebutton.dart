import 'package:flutter/material.dart';
import 'default.dart';

class specificPurposeButton extends StatelessWidget{

  final String title;
  final double width;
  specificPurposeButton({required this.title,required this.width});
  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: width,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            color: darklabelbgColor,
            width: 2,
          ),
        ),
        onPressed: () {
          final snackBar = SnackBar(
            content: const Text('Request Sent'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {},
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Text(title,
          style: TextStyle(
            fontSize: 22,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}