import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:project_lab/default.dart';

class Tabbar extends StatelessWidget{
  final List tabOptions;

  Tabbar({
    Key? key,
    required this.tabOptions
  }):super(key: key);
  
  @override
  Widget build(BuildContext context){
    // var _mqheight= MediaQuery.of(context).size.height;
    // var _mqwidth= MediaQuery.of(context).size.width;
    return Column(
      children: [
        TabBar(
          indicatorColor: darklabelbgColor,
          tabs: [
          Tab(

            child: Text("Book Location"),
          ),
          Tab(
            child: Text("Booked Locations"),
          ),
        ],
        ),
        Expanded(
            child: TabBarView(
              children: [
                tabOptions[0][1],
                tabOptions[1][1],
              ],
            ),
        ),
      ],
    );
  }
}