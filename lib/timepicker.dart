import 'package:flutter/material.dart';
import 'default.dart';

class timePicker extends StatefulWidget{
  final String description;
  const timePicker({Key? key,required this.description}):super(key: key);

  @override
  State<timePicker> createState() => _timePicker();
}
class _timePicker extends State<timePicker> {

  TextEditingController _controller= TextEditingController();

  TimeOfDay _timesel=TimeOfDay.now();

  void _showtime() async{
    TimeOfDay? _time= await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
    );
    if(_time!=null){
      setState((){
        _controller.text=_time.format(context).toString();
      });
    }
  }

  @override
  Widget build(BuildContext context){
    return TextField(
      controller: _controller,
      readOnly: true,
      decoration: InputDecoration(
        labelText: widget.description,
        labelStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: darklabelbgColor,
        ),
        icon: Icon(
          Icons.access_time,
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
      onTap: _showtime,
      style: TextStyle(
        fontSize: 12,
        color: darkfieldColor,
      ),
    );
  }
}