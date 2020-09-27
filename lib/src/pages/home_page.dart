import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  Widget _lista() {
    return FutureBuilder(
      builder: (context, snapshot) {
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
      future: menuProvider.cargarData(),
      initialData: [],
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {
          Navigator.pushNamed(context, opt['ruta']);
        },
      );
      // opciones..add(widgetTemp)..add(Divider());
      opciones.add(widgetTemp);
    });
    return opciones;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Componentes'),
        ),
        body: _lista());
  }
}
