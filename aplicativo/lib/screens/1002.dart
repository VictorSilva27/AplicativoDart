import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Area());

class Area extends StatefulWidget {
  State<StatefulWidget> createState() {
    return PrimeiraPagina();
  }
}

class PrimeiraPagina extends State<Area> {
  String area = '0';

  TextEditingController raio = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Área do Circulo'),
      ),
      backgroundColor: Colors.purple,
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          ListTile(
            trailing: Text(area),
          ),
          campoText('Digite o raio do circulo', raio),
          Container(
            height: 50.0,
            width: 25.0,
            color: Colors.yellow,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  double _raio = double.tryParse(raio.text)!;
                  double resultado = 3.14159 * (_raio * _raio);
                  area = "resultado = ${resultado.toStringAsFixed(4)}";
                });
              },
              child: Text('Calcular'),
            ),
          ),
        ],
      ),
    );
  }

  Padding campoText(Texto, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 9.0),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            labelText: Texto,
            labelStyle: TextStyle(fontSize: 15.0, color: Colors.yellow[800])),
      ),
    );
  }
}
