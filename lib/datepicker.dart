import 'package:flutter/material.dart';
import 'default.dart';
import 'button.dart';

class datePicker extends StatefulWidget {
  const datePicker({super.key});

  @override
  State<datePicker> createState() => _datePicker();
}
class _datePicker extends State<datePicker> {

  //DateTime _dateToday = DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day) ;
  //DateTime _dateRange=DateTime(DateTime.now().year);

  void _showdatePicker(){
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),//_dateToday,
        firstDate: DateTime(2022),//_dateRange,
        lastDate: DateTime(2022),//_dateRange,
    );
  }

  @override
  Widget build(BuildContext context){
   return Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       mainAxisAlignment: MainAxisAlignment.start,
       children: [
         SizedBox(
           width: 300,
           child: TextField(
             readOnly: true,
           ),
         ),
         Button(title: "Pick Date",width: 100,),
       ],
   );
  }
}