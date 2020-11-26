import 'package:tercer_parcial1/src/paginas/gradiente.dart';
import 'package:tercer_parcial1/src/paginas/suma.dart';

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {

  bool _showPerfomanceOverlay = false;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showPerformanceOverlay: _showPerfomanceOverlay,
      debugShowCheckedModeBanner: false,
      home: Center(
        child: Suma(),
      ),
    );
  }
}