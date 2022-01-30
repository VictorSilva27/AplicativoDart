import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Produto());

class Produto extends StatefulWidget {
  State<StatefulWidget> createState() {
    return PrimeriaPagina();
  }
}

class PrimeriaPagina extends State<Produto> {
  String area = '0';

  TextEditingController a = TextEditingController();
  TextEditingController b = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Produto'),
      ),
      backgroundColor: Colors.purple,
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          ListTile(
            trailing: Text(area),
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
                  int resultado = _a * _b;
                  area = "Produto = $resultado";
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
