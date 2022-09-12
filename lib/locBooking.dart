import 'package:flutter/material.dart';
import 'package:project_lab/timepicker.dart';
import 'default.dart';
import 'package:google_fonts/google_fonts.dart';
import 'locationSelector.dart';
import 'datepicker.dart';
import 'button.dart';
import 'specificPurposebutton.dart';
import 'priorityPicker.dart';
import 'package:lottie/lottie.dart';

class locBooking extends StatefulWidget{
  const locBooking({super.key});

  @override
  State<locBooking> createState() => _locBookingState();
}

class _locBookingState extends State<locBooking> {

  //text controller

  @override
  Widget build(BuildContext context){
    var _mqheight= MediaQuery.of(context).size.height;
    return SafeArea(
      maintainBottomViewPadding: true,
      child: Container(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 8.0,bottom: 8.0,left: 12.0,right: 12.0,),
          child: Container(
            child: Column(
              children: [
                Center(
                      child: Container(
                        height: _mqheight*0.4,
                        child: Lottie.network(
                          'https://assets7.lottiefiles.com/packages/lf20_98vgucqb.json',
                          animate: true,
                        ),
                        //child: ,
                      ),
                    ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: darkfieldColor,
                    ),
                    child: Padding(                                      //for selecting location
                      padding: const EdgeInsets.only(left: 5,right: 5,),
                      child: locationSel(),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: darkfieldColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5,right: 5,),
                        child: priorityPicker(),
                      ),
                  ),          //search button
                  SizedBox(height: 10,),
                  datePicker(),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(
                        width: 170,
                        child: timePicker(
                          description: "Start time",
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      SizedBox(
                        width: 170,
                        child: timePicker(
                            description: "End Time",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Button(title: "Search",width: 80,),
                      SizedBox(
                        width: 100,
                      ),
                      Text("Status",
                        style: GoogleFonts.nunitoSans(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: darklabelbgColor,
                          ),
                        ),
                    ],
                  ),
                  SizedBox(height: 10,),

                  SizedBox(height: 10,),
                  Center(
                      child: specificPurposeButton(
                        title: "Book Now",
                        width: 200,
                      ),
                  ),   //Booking button
                  SizedBox(height: 60,),
                ],
                ),
          ),
        ),
      ),
      );
  }
}