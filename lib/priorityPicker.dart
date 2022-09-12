import 'package:flutter/material.dart';
import 'package:project_lab/default.dart';

class priorityPicker extends StatefulWidget{
  const priorityPicker({super.key});

  @override
  State<priorityPicker> createState() => _priorityPicker();
}
class _priorityPicker extends State<priorityPicker> {


  _priorityPicker(){
    _isSelectedVal=_type[0];
  }

  final _type=["University","Department","School","Course","CSA","Labyrinth","Nuts and Bolts","CAPS"];
  final _priorityVal=[1,2,3,4,5,5,5,5];
  String _isSelectedVal="University";
  int _priority=1;
  int _index=0;

  @override

  Widget build(BuildContext context){
    return Container(
      height: 70,
      padding: const EdgeInsets.only(left: 5,right: 5,),
      child: DropdownButtonFormField(
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: darkbackgroundColor,
          ),
          dropdownColor: darkfieldColor,
          icon: Icon(
            color: darklabelbgColor,
            Icons.keyboard_arrow_down_rounded,
          ),
          value: _isSelectedVal,
          items: _type.map(
                  (e) => DropdownMenuItem(child: Text(e),value: e,)
          ).toList(),
          onChanged: (val) {
            setState((){
              _isSelectedVal=val as String;
              _index=_type.indexOf(_isSelectedVal);
              _priority=_priorityVal[_index];
              //print(_priority);
            });
          },
          borderRadius: BorderRadius.circular(10),
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
            ),
            labelText: "Category",
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            iconColor: Colors.black,
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