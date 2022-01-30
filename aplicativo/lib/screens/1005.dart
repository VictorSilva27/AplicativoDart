import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Media());

class Media extends StatefulWidget {
  State<StatefulWidget> createState() {
    return PrimeiraPagina();
  }
}

class PrimeiraPagina extends State<Media> {
  String area = '0';

  TextEditingController a = TextEditingController();
  TextEditingController b = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Média'),
      ),
      backgroundColor: Colors.purple,
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          ListTile(
            trailing: Text(area),
          ),
          campoText('Digite a primeira nota do(a) aluno(a)', a),
          campoText('Digite a segunda nota do(a) aluno(a)', b),
          Container(
            height: 50.0,
            width: 25.0,
            color: Colors.yellow,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  double _a = double.tryParse(a.text)!;
                  double _b = double.tryParse(b.text)!;

                  double resultado = ((_a * 3.5) + (_b * 7.5)) / 11.0;
                  area = "Média = ${resultado.toStringAsFixed(5)}";
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
