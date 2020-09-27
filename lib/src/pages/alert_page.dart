import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  void _mostrarAlerta(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          title: Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Este es el contenido de la caja de la alerta'),
              FlutterLogo(size: 100),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Cancelar'),
              onPressed: () => Navigator.of(context).pop(),
            ),
            FlatButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () => _mostrarAlerta(context),
          child: Text('Mostrar Alerta'),
          color: Colors.blue,
          textColor: Colors.white,
          shape: StadiumBorder(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }
}
