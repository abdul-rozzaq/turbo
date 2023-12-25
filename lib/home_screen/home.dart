import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text("Turbo App System"),
      ),
      body: Container(
        child: PieChart(PieChartData(sections: [
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
        ])),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
      ),
    );
  }
}
