import 'package:flutter/material.dart';
import 'package:graph_charts/screen/charts_new.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PieChartSample(),
    );
  }
}
