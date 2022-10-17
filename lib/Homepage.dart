import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:project_lab/default.dart';
import 'package:project_lab/locBooking.dart';
import 'package:project_lab/navbar.dart';
import 'package:project_lab/tabbar.dart';
import 'Booked.dart';
import 'glass.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // tab options
  List tabOption = [
    ["Location Booking", locBooking()],
    ["Booked Locations", Booked()],
  ];

  // bottom bar navigation
  int _currentBottonIndex = 0;
  void _handleIndexChanged(int? index) {
    setState(() {
      _currentBottonIndex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    var _mqheight= MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: tabOption.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: darkbackgroundColor,
          elevation: 0,
          title: Text("Need a SLOT ?",
              style: GoogleFonts.nunitoSans(
                fontWeight: FontWeight.bold,
                wordSpacing: 2,
                color: darklabelbgColor,
              ),
            ),

          // leading: IconButton(
          //   icon:
          // ),
          actions:[
            IconButton(
              icon: Icon(Icons.person,),
              padding: EdgeInsets.only(right: 10,),
              iconSize: 28,
              onPressed: () => {},
            ),
          ],  //actions
        ),
        backgroundColor: darkbackgroundColor,
        extendBody: true,
        body: ListView(
          children: [
            Container(
              height: _mqheight*0.4,
              child: Lottie.network(
                'https://assets7.lottiefiles.com/packages/lf20_98vgucqb.json',
                animate: true,
              ),
              //child: ,
            ),
            SingleChildScrollView(
                child: SizedBox(
                  height: 500,
                  child: Tabbar(
                    tabOptions: tabOption,
                  ),
                ),
              ),
          ],
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Glass(
            width: 100.0,
            height: 60.0,
            child: Container(
              child: Navbar(
                index: _currentBottonIndex,
                onTap: _handleIndexChanged,
              ),
            ),
          ),
        ),
      ),
    );
  }
}