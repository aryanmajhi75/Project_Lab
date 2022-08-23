import 'package:flutter/material.dart';

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
          items: _type.map(
                  (e) => DropdownMenuItem(child: Text(e),value: e,)
          ).toList(),
          onChanged: (val) {
            setState((){
              _isSelectedVal=val as String;
              _index=_type.indexOf(_isSelectedVal);
              _priority=_priorityVal[_index];
              print(_priority);
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
            labelText: "Category",
          ),
          iconSize: 32,

        ),
      ],
    );
  }
}

// extension IndexedIterable<E> on Iterable{
//   Iterable<T> mapindex<T> (T Function(E element,int index) f){
//     var index=0;
//     return map((e) => f(e, index++));
//   }
// }