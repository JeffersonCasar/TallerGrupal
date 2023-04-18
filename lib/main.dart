import 'package:flutter/material.dart';
import 'package:grupal/pantalla2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grupal',
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: Pantalla(),
    );
  }
}

class Pantalla extends StatefulWidget {

  @override
  State<Pantalla> createState() => _PantallaState();
}

class _PantallaState extends State<Pantalla> {

  final nombre = TextEditingController();
  final apellido = TextEditingController();

  String Nombre = '';
  String Apellido = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Grupal'),
        ),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              child: TextField(
                controller: nombre,
                decoration: InputDecoration(hintText: 'Nombre'),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: TextField(
                controller: apellido,
                decoration: InputDecoration(hintText: 'Apellido'),
              ),
            ),
            Container(
              padding: EdgeInsets.all(25),
              alignment: Alignment.center,
              child:
                  FloatingActionButton(onPressed: () {
                    Nombre = nombre.text;
                    Apellido = apellido.text;

                    Navigator.of(context).push(MaterialPageRoute<Null>(
                      builder: (BuildContext context){
                        return new Pantalla2(Nombre,Apellido);
                      }
                    ));
                  },
                      child: Text('Enviar')),
            ),
          ],
        ));
  }
}
