import 'package:flutter/material.dart';
class Screen2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('JC CLINIC'),
    ),
    body: ListView(
      children: <Widget>[
        Center(
          child: Text('Patientent Details',
          style:TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),
    )),
        DataTable(
            columns: [
              DataColumn(label: Text('ID',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),)),
              DataColumn(label: Text('Name',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),)),
              DataColumn(label: Text('Profession',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),)),

            ],

            rows: [
              DataRow(cells: [
                DataCell(Text('1')),
                DataCell(Text('Justine')),
                DataCell(Text('Engineer')),
              ]),

              DataRow(cells: [
                DataCell(Text('2')),
                DataCell(Text('Andrew')),
                DataCell(Text('Doctor')),
              ]),

              DataRow(cells: [
                DataCell(Text('3')),
                DataCell(Text('Justine')),
                DataCell(Text('Security Personnel')),
              ]),

              DataRow(cells: [
                DataCell(Text('4')),
                DataCell(Text('Shamsa')),
                DataCell(Text('Student')),
              ]),

              DataRow(cells: [
                DataCell(Text('5')),
                DataCell(Text('Edward')),
                DataCell(Text('Politician')),
              ]),
            ]),

              Expanded(
                child: ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/form');
                },
                child: const Text('Fill Form'),
                ),
              ),


      ],
    ),


    );
  }
}
