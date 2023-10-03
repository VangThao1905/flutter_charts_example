import 'package:flutter/material.dart';
import 'package:flutter_charts_example/presentation/router/app_router.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(child: Text('Select chart type to preview')),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, RouterName.lineChart);
            },
            child: const Text('Line Chart'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, RouterName.barChart);
            },
            child: const Text('Bar Chart'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, RouterName.pieChart);
            },
            child: const Text('Pie Chart'),
          )
        ],
      ),
    );
  }
}
