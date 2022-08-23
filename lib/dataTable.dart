import 'package:flutter/material.dart';

class dataTable extends StatelessWidget {
  const dataTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(
          label: Text(
            'Name',
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,),
          ),
        ),
        DataColumn(
          label: Text(
            'Age',
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,),
          ),
        ),
        DataColumn(
          label: Text(
            'Role',
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,),
          ),
        ),
      ],
      rows: const <DataRow>[
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Sarah')),
            DataCell(Text('19')),
            DataCell(Text('Student')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Janine')),
            DataCell(Text('43')),
            DataCell(Text('Professor')),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('William')),
            DataCell(Text('27')),
            DataCell(Text('Associate Professor')),
          ],
        ),
      ],
    );
  }
}
