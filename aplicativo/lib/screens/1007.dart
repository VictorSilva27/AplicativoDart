import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Diferenca());

class Diferenca extends StatefulWidget {
  State<StatefulWidget> createState() {
    return PrimeiraPagina();
  }
}

class PrimeiraPagina extends State<Diferenca> {
  String area = '0';

  TextEditingController a = TextEditingController();
  TextEditingController b = TextEditingController();
  TextEditingController c = TextEditingController();
  TextEditingController d = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diferença de Valores'),
      ),
      backgroundColor: Colors.purple,
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          ListTile(
            trailing: Text(area),
          ),
          campoText('Digite o primeiro valor', a),
          campoText('Digite o segundo valor', b),
          campoText('Digite o terceiro valor', c),
          campoText('Digite o quarto valor', d),
          Container(
            height: 50.0,
            width: 25.0,
            color: Colors.yellow,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  int _a = int.tryParse(a.text)!;
                  int _b = int.tryParse(b.text)!;
                  int _c = int.tryParse(c.text)!;
                  int _d = int.tryParse(d.text)!;

                  int resultado = (_a * _b - _c * _d);
                  area = "Diferença = $resultado";
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
