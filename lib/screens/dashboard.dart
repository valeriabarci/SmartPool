import 'package:flutter/material.dart';
import 'package:d_chart/d_chart.dart';

const _tituloAppBar = 'DASHBOARD';

class Dashboard extends StatefulWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 32, 16, 48),
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(
          _tituloAppBar,
          style: TextStyle(
            color: Color.fromARGB(255, 100, 90, 169),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 76, 35, 112),
        // The title text which will be shown on the action bar
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: DChartLine(
              data: [
                {
                  'id': 'Line',
                  'data': [
                    {'domain': 0, 'measure': 3},
                    {'domain': 1, 'measure': 2},
                    {'domain': 2, 'measure': 5},
                    {'domain': 3, 'measure': 7},
                    {'domain': 4, 'measure': 9},
                    {'domain': 5, 'measure': 11},
                    {'domain': 6, 'measure': 12},
                    {'domain': 7, 'measure': 14},
                    {'domain': 8, 'measure': 11},
                    {'domain': 9, 'measure': 10},
                    {'domain': 10, 'measure': 9},
                    {'domain': 11, 'measure': 8},
                    {'domain': 12, 'measure': 11},
                    {'domain': 13, 'measure': 10},
                    {'domain': 14, 'measure': 7},

                    
                  ],
                },
              ],
              lineColor: (lineData, index, id) => Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
