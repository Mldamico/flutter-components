// import 'package:flutter/material.dart';

// class HomePageTemp extends StatelessWidget {
//   final opciones = ['Uno', 'Dos', 'Tres'];

//   List<Widget> _creatItems() {
//     List<Widget> lista = new List<Widget>();
//     for (String opt in opciones) {
//       final tempWidget = ListTile(
//         title: Text(opt),
//       );

//       lista..add(tempWidget)..add(Divider());
//     }
//     return lista;
//   }

//   List<Widget> _creatItemsCorta() {
//     return opciones
//         .map((opt) => Column(
//               children: [
//                 ListTile(
//                   title: Text(opt),
//                   leading: Icon(Icons.account_balance_wallet),
//                   trailing: Icon(Icons.keyboard_arrow_right),
//                   onTap: () {},
//                 ),
//                 Divider(),
//               ],
//             ))
//         .toList();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Componentes Temp'),
//       ),
//       body: ListView(
//         children: _creatItemsCorta(),
//       ),
//     );
//   }
// }
