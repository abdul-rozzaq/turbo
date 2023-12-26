import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(key: Key('drawer_key')),
      appBar: AppBar(
        title: const Text(
          "Turbo App System",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 400,
              height: 400,
              padding: const EdgeInsets.all(32.0),
              child: const PieChartWidget(),
            ),
            const SizedBox(height: 20),
            Container(
              width: 300,
              height: 300,
              padding: const EdgeInsets.all(32.0),
              child: const BarChartWidget(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bar_chart),
          label: 'Profile',
        ),
      ],
    );
  }
}



class PieChartWidget extends StatelessWidget {
  const PieChartWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        sections: [
          PieChartSectionData(
            value: 40,
            color: Colors.blue,
            title: '40%',
            radius: 80,
            titleStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xffffffff)),
          ),
          PieChartSectionData(
            value: 30,
            color: Colors.green,
            title: '30%',
            radius: 80,
            titleStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xffffffff)),
          ),
          PieChartSectionData(
            value: 20,
            color: Colors.orange,
            title: '20%',
            radius: 80,
            titleStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xffffffff)),
          ),
          PieChartSectionData(
            value: 10,
            color: Colors.red,
            title: '10%',
            radius: 80,
            titleStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xffffffff)),
          ),
          PieChartSectionData(
            value: 5,
            color: Colors.red,
            title: '5%',
            radius: 80,
            titleStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xffffffff)),
          ),
        ],
        // Add the animation options here
        borderData: FlBorderData(
          show: false,
        ),
        sectionsSpace: 5,

      ),
    );
  }
}

class BarChartWidget extends StatelessWidget {
  const BarChartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        gridData: FlGridData(show: false),
        titlesData: FlTitlesData(show: false),
        borderData: FlBorderData(
          show: true,
          border: Border.all(
            color: const Color(0xff37434d),
            width: 1,
          ),
        ),
        barGroups: [
          BarChartGroupData(
            x: 0,
            barRods: [
              BarChartRodData(
                toY: 3,
                color: Colors.blue,
              ),
            ],
          ),
          BarChartGroupData(
            x: 1,
            barRods: [
              BarChartRodData(
                toY: 1,
                color: Colors.green,
              ),
            ],
          ),
          BarChartGroupData(
            x: 2,
            barRods: [
              BarChartRodData(
                toY: 4,
                color: Colors.orange,
              ),
            ],
          ),
          // Add more BarChartGroupData as needed
        ],
      ),
      chartRendererKey: key,
    );
  }
}
