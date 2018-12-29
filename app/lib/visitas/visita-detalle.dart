import 'package:flutter/material.dart';

class VisitaDetalle extends StatelessWidget {
  final visita;

  VisitaDetalle(this.visita);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(visita['nombre'] != null
              ? visita['nombre']
              : 'Visita sin título.'),
        ),
        body: new SingleChildScrollView(
          child: new Column(
            children: <Widget>[
              new Container(
                padding: new EdgeInsets.all(16.0),
                child: new Column(
                  children: <Widget>[
                    visita['imagen'] != ''
                        ? new Image.network(visita['imagen'])
                        : new Text(''),
                    new Container(height: 50.0),
                    visita['descripcion'] != ''
                        ? new Text(visita['descripcion'],
                        style: new TextStyle(fontSize: 16.0),
                        textAlign: TextAlign.justify,)
                        : new Text(''),
                    new Container(height: 50.0),
                    visita['mapa'] != ''
                        ? new Image.network(visita['mapa'])
                        : new Text(''),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
