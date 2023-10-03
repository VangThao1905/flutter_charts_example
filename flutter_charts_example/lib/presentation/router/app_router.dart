import 'package:flutter/material.dart';
import 'package:flutter_charts_example/presentation/barchart/bar_chart_page.dart';
import 'package:flutter_charts_example/presentation/linechart/line_chart_page.dart';
import 'package:flutter_charts_example/presentation/menu/menu_page.dart';
import 'package:flutter_charts_example/presentation/piechart/pie_chart_page.dart';

class RouterName {
  static const String menu = '';
  static const String lineChart = '/linechart';
  static const String barChart = '/barchart';
  static const String pieChart = '/piechart';
}

MaterialPageRoute onGenerateRoute(RouteSettings settings) {
  Map<String, dynamic> arg = <String, dynamic>{};
  if (settings.arguments != null) {
    arg = settings.arguments as Map<String, dynamic>;
  }

  switch (settings.name) {
    case RouterName.menu:
      return MaterialPageRoute<dynamic>(
          fullscreenDialog: true,
          builder: (context) => const MenuPage(),
          settings: settings);
    case RouterName.lineChart:
      return MaterialPageRoute<dynamic>(
        fullscreenDialog: true,
        builder: (context) => const LineChartPage(),
        settings: settings,
      );
    case RouterName.barChart:
      return MaterialPageRoute<dynamic>(
        fullscreenDialog: true,
        builder: (context) => const BarChartPage(),
        settings: settings,
      );
    case RouterName.pieChart:
      return MaterialPageRoute<dynamic>(
        fullscreenDialog: true,
        builder: (context) => const PieChartPage(),
        settings: settings,
      );
    default:
      return MaterialPageRoute<dynamic>(
        builder: (context) => const MenuPage(),
        settings: settings,
      );
  }
}
