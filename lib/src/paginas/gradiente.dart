import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class gradiente extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _gradienteState();
}

class _gradienteState extends State<gradiente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: Text('Bienvenido'),
        backgroundColorStart: Colors.cyan,
        backgroundColorEnd: Colors.indigo,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.blue, Colors.red]
            )//LinearGradient
          ),//BoxDecoration
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'images/gps-icon.png',
                  fit: BoxFit.cover,
                ),//Image.asset
                Text(
                  '¡Descubre!',
                  style: TextStyle(
                    fontSize: 48.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),//TextStyle
                ),//Text
              ]
            )//Child center
          ),
        ),//Container
      ),//Body
    );//Scaffold
  }
}