import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ano extends StatefulWidget {
  String get title => '0';
  State<StatefulWidget> createState() {
    return PrimeiraPagina();
  }
}

class PrimeiraPagina extends State<Ano> {
  String anos = 'Anos';
  String mes = 'Mês';
  String dias = 'Dias';

  TextEditingController a = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anos'),
      ),
      backgroundColor: Colors.purple[700],
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          ListTile(
            trailing: Text(anos),
          ),
          ListTile(
            trailing: Text(mes),
          ),
          ListTile(
            trailing: Text(dias),
          ),
          campoText('Digite aqui', a),
          Container(
            height: 50.0,
            width: 250.0,
            color: Colors.yellow,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  int total = int.tryParse(a.text)!;

                  double _anos = total / 365;
                  total %= 365;

                  double _mes = total / 30;
                  total %= 30;

                  int _dias = total;

                  anos = "Anos(s) =  ${_anos.toInt()} ";
                  mes = "Mes(es) =  ${_mes.toInt()}";
                  dias = "Dia(s) = $_dias";
                });
              },
              child: Text('Sacar'),
            ),
          ),
        ],
      ),
    );
  }

  Padding campoText(Texto, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 8.0),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            labelText: Texto,
            border: OutlineInputBorder(),
            labelStyle: TextStyle(fontSize: 25.0, color: Colors.yellow[800])),
      ),
    );
  }
}
