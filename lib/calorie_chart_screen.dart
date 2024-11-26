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
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 28,
                  getTitlesWidget: (value, meta) {
                    return Text(
                      value.toInt().toString(),
                      style: const TextStyle(color: Colors.white70, fontSize: 12),
                    );
                  },
                ),
              ),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  getTitlesWidget: (value, meta) {
                    final labels = ['Lun', 'Mar', 'Mié', 'Jue', 'Vie', 'Sáb', 'Dom'];
                    return Text(
                      labels[value.toInt() % labels.length],
                      style: const TextStyle(color: Colors.white70, fontSize: 12),
                    );
                  },
                ),
              ),
            ),
            borderData: FlBorderData(show: false),
            barGroups: [
              BarChartGroupData(x: 0, barRods: [BarChartRodData(toY: 5, color: Colors.green)]),
              BarChartGroupData(x: 1, barRods: [BarChartRodData(toY: 6, color: Colors.green)]),
              BarChartGroupData(x: 2, barRods: [BarChartRodData(toY: 7, color: Colors.green)]),
              BarChartGroupData(x: 3, barRods: [BarChartRodData(toY: 8, color: Colors.green)]),
              BarChartGroupData(x: 4, barRods: [BarChartRodData(toY: 6, color: Colors.green)]),
              BarChartGroupData(x: 5, barRods: [BarChartRodData(toY: 7, color: Colors.green)]),
              BarChartGroupData(x: 6, barRods: [BarChartRodData(toY: 5, color: Colors.green)]),
            ],
          ),
        ),
      ),
    );
  }
}