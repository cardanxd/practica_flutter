import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:toast/toast.dart';

class Suma extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SumaState();
}

class _SumaState extends State<Suma>{
  
  final myController = TextEditingController();
  final myControllernum2 = TextEditingController();

  void _select(Choice choice){
    setState(() {
      switch(choice.title)
      {
          case 'Diseño':
                Navigator.pushNamed(context, '/diseno');
            break;
        case 'Diseño':
                Navigator.pushNamed(context, '/gradiente');
            break;
      }
    });
  }

  @override
  void dispose(){
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: Text('Suma'),
        backgroundColorStart: Colors.cyan,
        backgroundColorEnd: Colors.indigo,
        actions: <Widget>[
        IconButton(
          icon: Icon(Icons.directions_car),
          onPressed: (){
            Toast.show("Pruebita", context, duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
          },
        ),

        IconButton(
          icon: Icon(Icons.directions_bike),
          onPressed: (){
            Toast.show("Pruebita 2", context, duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
          },
        ),

        PopupMenuButton<Choice>(

          onSelected: _select,
          itemBuilder: (BuildContext context) {
            return choices.skip(0).map((Choice choice) {
              return PopupMenuButton<Choice>(
                Value: choice,
                child: Row(

                    children: <Widget>[
                      Icon(choice.icon, color: Colors.blueAccent),
                      Padding(padding: const EdgeInsets.all(5)),
                      Text(choice.title),

                    ],)
              );
            }).toList();
          },
        ),

      ],
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(16.0),

        child: ListView(
          children: <Widget>[
            //Text Field 1
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Introducir el primer número',
                prefixIcon: Icon(Icons.format_list_numbered),
              ),
              controller: myController,
            ),
            //Text Field 2
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Introducir el segundo número',
                prefixIcon: Icon(Icons.format_list_numbered),
              ),
              controller: myControllernum2,
            ),
            //Espacio entre el TextField y button
            SizedBox(height: 10,),
            //Button
            MaterialButton(
              minWidth: 200.0,
              height: 40.0,
              onPressed: (){
                int suma = int.parse(myController.text) + int.parse(myControllernum2.text);
                return showDialog(
                  context: context,
                  builder: (context){
                    return AlertDialog(
                      content: Text(suma.toString()),
                    );
                  }
                );
              },
              color: Colors.blue,
              child: Text('Realizar suma', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}//Fin de la clase que extiende el state

class Choice{
  final String title;
  final IconData icon;

  const Choice({this.title, this.icon});
}

const List<Choice> choices = const <Choice>[
  const Choice(title: "Diseño", icon: Icons.toys),
  const Choice(title: "Gradiente", icon: Icons.view_compact),
];
  
