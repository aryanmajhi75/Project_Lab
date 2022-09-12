import 'package:flutter/material.dart';
import 'package:project_lab/default.dart';

class locationSel extends StatefulWidget{
  const locationSel({super.key});

  @override
  State<locationSel> createState() => _locationSel();
}
class _locationSel extends State<locationSel> {

  _locationSel(){
    _isSelectedVal=_location[0];
  }

  final _location=["Block 1","Block 2","Block 3","Block 4","Main Auditorium"];
  String _isSelectedVal="Block 1";
  @override

  Widget build(BuildContext context){
  return Container(
    height: 70,
      padding: const EdgeInsets.only(left: 5,right: 5,),
        child: DropdownButtonFormField(
        style: TextStyle(
          fontSize: 12,
           color: darkbackgroundColor,
          fontWeight: FontWeight.bold,
        ),
        icon: Icon(
          color: darklabelbgColor,
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
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
          color: Colors.transparent,
          ),
        ),
        labelText: "Location",
        labelStyle: TextStyle(
            fontWeight: FontWeight.bold,
        ),
        iconColor: Colors.black,
        focusColor: hoverColor,
        floatingLabelStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Colors.black,
        ),
        ),
        iconSize: 32,
        ),
  );
  }
}