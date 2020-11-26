import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Diseno extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DisenoState();
}

class _DisenoState extends State<Diseno> {
  static Color color1 = Colors.lightGreen[700];
  static Color color2 = Colors.blue[400];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Prueba"),
      ),
      body: Center(
        child: ListView(children: <Widget>[
          Image.asset(
            "images/john.jpg",
            fit: BoxFit.cover,
          ),
          tituloseccion,
          botones,
          Container(
            padding: const EdgeInsets.all(32),
            child: Text(
              "John Winston Lennon (Liverpool, 9 de octubre de 1940-Nueva York, 8 de diciembre de 1980), fue un artista, músico, multinstrumentista, cantautor, compositor, poeta, dibujante, productor, escritor, pacifista, activista y actor inglés, conocido por ser uno de los miembros fundadores de la banda de rock The Beatles.",
              softWrap: true,
            ),
          )
        ]),
      ),
    );
  }

  Widget tituloseccion = Container(
    padding: const EdgeInsets.all(32),
    child: Row(children: <Widget>[
      Expanded(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                "John Lennon",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              )),
          Text(
            "Integrante morido de The Beatles UnU)",
            style: TextStyle(
              color: Colors.grey[500],
            ),
          )
        ],
      )),
      Icon(
        Icons.star,
        color: Colors.red[500],
      ),
      Text("5")
    ]),
  );

  static Column _creaColumna(Color color, IconData icon, String texto) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: color,
        ),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            texto,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        )
      ],
    );
  }

  Widget botones = Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _creaColumna(color1, Icons.call, "Llamar"),
        _creaColumna(color2, Icons.near_me, "Navegar"),
        _creaColumna(color1, Icons.share, "Comparte")
      ],
    ),
  );
}
