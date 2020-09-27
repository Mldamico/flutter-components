import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Avatar Page'),
          actions: <Widget>[
            Container(
              padding: EdgeInsets.all(5.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://img.vixdata.io/pd/webp-large/es/sites/default/files/s/stan-lee-mejores-momentos.jpg'),
                radius: 25.0,
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 10.0),
              child: CircleAvatar(
                child: Text('SL'),
                backgroundColor: Colors.brown,
              ),
            )
          ],
        ),
        body: Center(
          child: FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'https://img.vixdata.io/pd/webp-large/es/sites/default/files/s/stan-lee-mejores-momentos.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
          ),
        ));
  }
}
