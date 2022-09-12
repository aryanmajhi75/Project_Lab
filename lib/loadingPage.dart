import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class loadingPage extends StatelessWidget{

  const loadingPage({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      child: Column(
        children: [
          Center(
              child: LottieBuilder.network(
                  "https://assets9.lottiefiles.com/packages/lf20_dczrdclv.json",
                  animate: true,

              ),
          ),
        ],
      ),
    );
  }
}