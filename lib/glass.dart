import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:project_lab/default.dart';

class Glass extends StatelessWidget{
  final height;
  final width;
  final child;

  const Glass({Key? key,required this.height,required this.width,required this.child}): super(key:key);

  @override
  Widget build(BuildContext context){
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Container(
        height: height,
        width: width,
        color: glassbgColor,
        padding: const EdgeInsets.all(2.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 10,
            sigmaY: 10,
          ),
          child: Container(
            alignment: Alignment.center,
            child: child,
          ),
        ),
      ),
    );
  }
}