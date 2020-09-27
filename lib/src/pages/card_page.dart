import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  Widget _cardTipo1() {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue,
            ),
            title: Text('El titulo de la tarjeta'),
            subtitle: Text(
              'PRobando la descripcion de la tarjeta para ir probando el componente de cards',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(
                onPressed: () {},
                child: Text('Cancelar'),
              ),
              FlatButton(
                onPressed: () {},
                child: Text('OK'),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Container(
      child: Column(
        children: [
          FadeInImage(
              placeholder: AssetImage('assets/jar-loading.gif'),
              fadeInDuration: Duration(milliseconds: 200),
              fit: BoxFit.cover,
              height: 300,
              image: NetworkImage(
                  'https://www.yourtrainingedge.com/wp-content/uploads/2019/05/background-calm-clouds-747964.jpg')),
          // Image(
          //   image: NetworkImage(
          //       'https://www.yourtrainingedge.com/wp-content/uploads/2019/05/background-calm-clouds-747964.jpg'),
          // ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('Probando'),
          )
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              spreadRadius: 2.0,
              offset: Offset(2.0, 10.0),
            )
          ]),
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          _cardTipo1(),
          SizedBox(
            height: 30,
          ),
          _cardTipo2()
        ],
      ),
    );
  }
}
