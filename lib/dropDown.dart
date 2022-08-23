import 'package:flutter/material.dart';

class dropDown extends StatefulWidget{
  const dropDown({super.key});

  @override
  State<dropDown> createState() => _dropDown();
}
class _dropDown extends State<dropDown> {

  _dropDown(){
    _isSelectedVal=_location[0];
  }

  final _location=["Block 1","Block 2","Block 3","Block 4","Main Auditorium"];
  String _isSelectedVal="Block 1";
  @override

  Widget build(BuildContext context){
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      DropdownButtonFormField(
          icon: Icon(
          color: Color(0xff050101),
        Icons.keyboard_arrow_down_rounded,
        ),
        value: _isSelectedVal,
        items: _location.map(
        (e) => DropdownMenuItem(child: Text(e),value: e,)
        ).toList(),
        onChanged: (val) {
        setState((){
        _isSelectedVal=val as String;
        //print(_location.indexOf(_isSelectedVal));
        });
        },
        borderRadius: BorderRadius.circular(10),
        decoration: InputDecoration(
        iconColor: Colors.black,

        floatingLabelStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.black,
        ),
        labelText: "Location",
        ),
        iconSize: 32,

        ),
    ],
  );
  }
}