import 'package:flutter/material.dart';
import 'package:project_lab/dataTable.dart';
import 'default.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dropDown.dart';
import 'datepicker.dart';
import 'button.dart';
import 'specificPurposebutton.dart';
import 'dataTable.dart';
// import 'package:flutter/src/material/animated_icons.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Homepage extends StatelessWidget{
  const Homepage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: lightbackgroundColor,
        elevation: 0,
        title: Text("Event Booking",
            style: GoogleFonts.nunitoSans(
                fontWeight: FontWeight.bold,
                wordSpacing: 2,
                color: Colors.white,
              ),
            ),

        // leading: IconButton(
        //   icon:
        // ),
        actions:[IconButton(
          icon: Icon(Icons.person,),
          padding: EdgeInsets.only(right: 10,),
          iconSize: 25,
          onPressed: () => {},
        ),
        ],  //actions

      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.only(left: 12,top: 8,right: 12,bottom: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: dropDown(),
              ),
              SizedBox(height: 10,),
              Button(title: "Search",width: 100,),
              SizedBox(height: 10,),
              datePicker(),
              SizedBox(height: 10,),
              specificPurposeButton(title: "Book Now",width: 350,),
              SizedBox(height: 10,),
              ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: lightlabelbgColor,
                      child: Text("BOOKED SLOTS",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                        letterSpacing: 3,
                        wordSpacing: 4,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),)),
                ),
              SizedBox(height: 10,),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  color: lightbackgroundColor,
                  child: dataTable(),
                ),
              ),
            ],
            ),
        ),
      );
  }
}