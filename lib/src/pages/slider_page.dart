import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _bloquearcheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            children: [
              _crearSlider(),
              _crearCheckbox(),
              _crearSwitch(),
              Expanded(child: _crearImagen()),
            ],
          )),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      value: _valorSlider,
      min: 10,
      max: 400,
      onChanged: _bloquearcheck
          ? (valor) {
              setState(() {
                _valorSlider = valor;
              });
            }
          : null,
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://static1.squarespace.com/static/56a5f5ef5827c35bf58e8e02/t/5a7042a30d9297dd2e320096/1517306532240/Algo_Logo.jpeg?format=1500w'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _crearCheckbox() {
    // return Checkbox(
    //   value: _bloquearcheck,
    //   onChanged: (valor) {
    //     setState(() {
    //       _bloquearcheck = valor;
    //     });
    //   },
    // );
    return CheckboxListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearcheck,
      onChanged: (valor) {
        setState(() {
          _bloquearcheck = valor;
        });
      },
    );
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearcheck,
      onChanged: (valor) {
        setState(() {
          _bloquearcheck = valor;
        });
      },
    );
  }
}
