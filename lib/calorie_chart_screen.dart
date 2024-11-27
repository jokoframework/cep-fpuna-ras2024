import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class CalorieChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calorías Quemadas'),
        backgroundColor: const Color(0xFF1B263B),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BarChart(
          BarChartData(
            alignment: BarChartAlignment.spaceAround,
            maxY: 10,
            barTouchData: BarTouchData(enabled: false),
            titlesData: FlTitlesData(
              leftTitles: SideTitles(
                showTitles: true,
                reservedSize: 28,
                getTitles: (value) {
                  return value.toInt().toString();
                },
              ),
              bottomTitles: SideTitles(
                showTitles: true,
                getTitles: (value) {
                  final labels = ['Lun', 'Mar', 'Mié', 'Jue', 'Vie', 'Sáb', 'Dom'];
                  return labels[value.toInt() % labels.length];
                },
              ),
            ),
            borderData: FlBorderData(show: false),
            barGroups: [
              BarChartGroupData(x: 0, barRods: [BarChartRodData(y: 5, colors: [Colors.green])]),
              BarChartGroupData(x: 1, barRods: [BarChartRodData(y: 6, colors: [Colors.green])]),
              BarChartGroupData(x: 2, barRods: [BarChartRodData(y: 7, colors: [Colors.green])]),
              BarChartGroupData(x: 3, barRods: [BarChartRodData(y: 8, colors: [Colors.green])]),
              BarChartGroupData(x: 4, barRods: [BarChartRodData(y: 6, colors: [Colors.green])]),
              BarChartGroupData(x: 5, barRods: [BarChartRodData(y: 7, colors: [Colors.green])]),
              BarChartGroupData(x: 6, barRods: [BarChartRodData(y: 5, colors: [Colors.green])]),
            ],
          ),
        ),
      ),
    );
  }
}