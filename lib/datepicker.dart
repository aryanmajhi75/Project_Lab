import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project_lab/default.dart';

class datePicker extends StatefulWidget {
  @override
  _datePicker createState() => _datePicker();
}

class _datePicker extends State<datePicker> {

  TextEditingController _controller= TextEditingController();

  void pickdate()async{
    DateTime? _date= await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(DateTime.now().year - 1),
      lastDate: DateTime(DateTime.now().year + 1),
    );
      if(_date!= null){
        setState((){
          _controller.text=DateFormat('dd-MM-yyyy').format(_date);
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
          controller: _controller,
          readOnly: true,
          decoration: InputDecoration(
            labelText: "Select a Date",
            labelStyle: TextStyle(
              fontSize: 14,
              color: darklabelbgColor,
            ),
            icon: Icon(
              Icons.calendar_today_rounded,
              color: darklabelbgColor,),
            border: OutlineInputBorder(
              gapPadding: 8,
              borderSide: const BorderSide(
                  color: darklabelbgColor,
                  width: 2.0
              ),
            ),
            focusedBorder: OutlineInputBorder(
              gapPadding: 10,
              borderSide: const BorderSide(
                  color: darklabelbgColor,
                  width: 2.0
              ),
            ),
          ),
          maxLines: 1,
          onTap: pickdate,
          style: TextStyle(
            fontSize: 14,
            color: darkfieldColor,
          ),
      );
  }
}