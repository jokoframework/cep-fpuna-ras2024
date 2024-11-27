import 'package:flutter/material.dart';

class CalorieTableScreen extends StatelessWidget {
  final List<Map<String, dynamic>> data = [
    {'day': 'Lun', 'calories': 5},
    {'day': 'Mar', 'calories': 6},
    {'day': 'Mié', 'calories': 7},
    {'day': 'Jue', 'calories': 8},
    {'day': 'Vie', 'calories': 6},
    {'day': 'Sáb', 'calories': 7},
    {'day': 'Dom', 'calories': 5},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calorías Quemadas'),
        backgroundColor: const Color(0xFF1B263B),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: DataTable(
          columns: const [
            DataColumn(label: Text('Día')),
            DataColumn(label: Text('Calorías')),
          ],
          rows: data.map((entry) {
            return DataRow(cells: [
              DataCell(Text(entry['day'])),
              DataCell(Text(entry['calories'].toString())),
            ]);
          }).toList(),
        ),
      ),
    );
  }
}