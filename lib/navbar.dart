import 'package:flutter/material.dart';
import 'default.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Navbar extends StatelessWidget {
  final int index;
  final Function(int?) onTap;
  Navbar({
    Key? key,
    required this.index,
    required this.onTap,
  }) : super(key: key);

  void _Onpressed(){

  }

  @override
  Widget build(BuildContext context) {
    return GNav(
      selectedIndex: index,
      onTabChange: onTap,
      gap: 5,
      //curve: Curves.decelerate,
      tabBackgroundColor: darkbackgroundColor,
      backgroundColor: Colors.transparent,
      activeColor: darklabelbgColor,
      color: darkfieldColor,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
      tabs: const [
        GButton(icon: Icons.home_filled,
            text: 'Home',
        ),
        GButton(
            icon: Icons.event_available_rounded,
            text: 'Book Event',
        ),
        GButton(
            icon: Icons.app_registration_rounded,
            text: 'Event Register',
        ),
        GButton(
            icon: Icons.fastfood_rounded,
            text: 'Canteen',
        ),
      ],
    );
  }
}