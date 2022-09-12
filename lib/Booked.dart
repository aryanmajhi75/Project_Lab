import 'package:flutter/material.dart';
import 'default.dart';
import 'glass.dart';

class Booked extends StatelessWidget{

  const Booked({Key? key}):super(key: key);

  Widget build(BuildContext context){
    var _mqwidth= MediaQuery.of(context).size.width;
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Text("Booked Slots"),
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.transparent,
                    child: Text("BOOKED SLOTS",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                      fontSize: 22,
                      letterSpacing: 3,
                      wordSpacing: 4,
                      color: darkfieldColor,
                      fontWeight: FontWeight.bold,
                    ),)),
              ),
            SizedBox(height: 10,),
            Glass(
              height: 600.0,
              width: _mqwidth,
              child: Text("BOOKED SLOTS",
                style: TextStyle(
                  color: darkfieldColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}