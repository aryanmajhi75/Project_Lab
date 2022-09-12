import 'package:flutter/material.dart';

class dataTable extends StatelessWidget {
  const dataTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //data table headers
    var myCols=[
      DataColumn(label: new Text("Event")),
      DataColumn(label: new Text("Start Time")),
      DataColumn(label: new Text("End Time")),
    ];

    //data table rows
    var myRows=[
      new DataRow(cells: [
        new DataCell(new Text("Tech Talk")),
        new DataCell(new Text("11:00")),
        new DataCell(new Text("13:00")),
      ]),
      new DataRow(cells: [
        new DataCell(new Text("Inaugeration")),
        new DataCell(new Text("11:00")),
        new DataCell(new Text("12:00")),
      ]),
      new DataRow(cells: [
        new DataCell(new Text("Darpan")),
        new DataCell(new Text("08:00")),
        new DataCell(new Text("16:00")),
      ]),
    ];

    return Container(
      child: DataTable(
          columns: myCols,
          rows: myRows,
          sortColumnIndex: 0,
          sortAscending: true,
        ),
    );
  }
}
