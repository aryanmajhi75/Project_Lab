import 'package:flutter/material.dart';

class bookedTable extends StatelessWidget {
  final eventname;
  final starttime;
  final endtime;

  const bookedTable({
    Key? key,
    required this.eventname,
    required this.starttime,
    required this.endtime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // child: DataTable(

      // ),
    );
  }
}
