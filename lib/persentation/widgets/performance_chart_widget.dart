import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PerformanceChartWidget extends StatelessWidget {
  const PerformanceChartWidget({super.key, required List performanceData});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Performance Over The Years',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 200,
              child: LineChart(
                LineChartData(
                  gridData: const FlGridData(show: true),
                  titlesData: const FlTitlesData(show: true),
                  borderData: FlBorderData(show: true),
                  lineBarsData: [
                    LineChartBarData(
                      spots: [
                        const FlSpot(2015, 10),
                        const FlSpot(2016, 20),
                        const FlSpot(2017, 30),
                        const FlSpot(2018, 40),
                        const FlSpot(2019, 50),
                        const FlSpot(2020, 55),
                      ],
                      isCurved: true,
                      color: Colors.blue, // This is where the color is applied
                      barWidth: 4,
                      isStrokeCapRound: true,
                      belowBarData: BarAreaData(
                        show: true,
                        color: Colors.blue.withOpacity(0.3),
                      ),
                      dotData: const FlDotData(show: false),
                    ),
                    LineChartBarData(
                      spots: [
                        const FlSpot(2015, 15),
                        const FlSpot(2016, 25),
                        const FlSpot(2017, 35),
                        const FlSpot(2018, 30),
                        const FlSpot(2019, 45),
                        const FlSpot(2020, 50),
                      ],
                      isCurved: true,
                      color: Colors.red,
                      barWidth: 4,
                      isStrokeCapRound: true,
                      belowBarData: BarAreaData(
                        show: true,
                        color: Colors.red.withOpacity(0.3),
                      ),
                      dotData: const FlDotData(show: false),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
