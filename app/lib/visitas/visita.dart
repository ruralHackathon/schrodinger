import 'package:flutter/material.dart';

class Visita extends StatelessWidget {
  final visita;

  Visita(this.visita);

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Container(
          padding: new EdgeInsets.all(26.0),
          child: new Column(
            children: <Widget>[new Text(
                  visita['nombre'] != ''
                      ? visita['nombre']
                      : 'Evento sin título.',
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                      fontSize: 16.0, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        new Divider(),
      ],
    );
  }
}