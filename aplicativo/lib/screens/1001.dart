import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Basico());

class Basico extends StatefulWidget {
  State<StatefulWidget> createState() {
    return PrimeiraPagina();
  }
}

class PrimeiraPagina extends State<Basico> {
  String result = '0';

  TextEditingController a = TextEditingController();
  TextEditingController b = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Extremamente Básico'),
      ),
      backgroundColor: Colors.purple,
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          ListTile(
            trailing: Text(result),
          ),
          campoText('Digite o primeiro número', a),
          campoText('Digite o segundo número', b),
          Container(
            height: 50.0,
            width: 25.0,
            color: Colors.yellow,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  int _a = int.tryParse(a.text)!;
                  int _b = int.tryParse(b.text)!;
                  int _result = _a + _b;

                  result = "${_result.toInt()}";
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
