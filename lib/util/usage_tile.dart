import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:google_fonts/google_fonts.dart';

class UsageTile extends StatelessWidget {
  final String title;
  // final Color color;

  const UsageTile({
    super.key, 
    required this.title, 
    // required this.color
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Container(
        height: 200,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '$title Usage', 
                  style: GoogleFonts.josefinSans(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Container(
                  height: 150,
                  width: 300,
                  child: LineChart(
                    LineChartData(
                      gridData: FlGridData(
                        show: false,
                      ),
                      titlesData: FlTitlesData(
                        show: false,
                      ),
                      borderData: FlBorderData(
                        show: false,
                      ),
                      lineBarsData: [
                        LineChartBarData(
                          spots: [
                            FlSpot(0, 0),
                            FlSpot(1, 1),
                            FlSpot(2, 1.5),
                            FlSpot(3, 2),
                            FlSpot(4, 2.2),
                            FlSpot(5, 1.8),
                            FlSpot(6, 1.5),
                            FlSpot(7, 1.4),
                            FlSpot(8, 1.7),
                            FlSpot(9, 1.9),
                            FlSpot(10, 1.8),
                            FlSpot(11, 1.6),
                            FlSpot(12, 1.9),
                            FlSpot(13, 1.8),
                          ],
                          isCurved: true,
                          color: 
                            Colors.blue[400],
                          barWidth: 5,
                          dotData: FlDotData(
                            show: false,
                          ),
                          belowBarData: BarAreaData(
                            show: true,
                            color: 
                              Colors.white70.withOpacity(0.3),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // carosel of graphs
              
            ],
          ),
        ),
      ),
    );
  }
}