import 'package:flutter/material.dart';

class Pantalla2 extends StatefulWidget {

  String Nombre;
  String Apellido;
  Pantalla2(this.Nombre, this.Apellido);

  @override
  State<Pantalla2> createState() => _Pantalla2State();
}

class _Pantalla2State extends State<Pantalla2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Pantalla 2'),
    ),
    body: ListView(
      children: [
        Container(
          padding: EdgeInsets.all(20),
          child: Text(
            'Bienvenido ' + widget.Nombre +' '+ widget.Apellido,
          ),
        )
      ],
    ),
    );
  }
}
