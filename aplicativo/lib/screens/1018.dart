import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Cedula());

class Cedula extends StatefulWidget {
  State<StatefulWidget> createState() {
    return PrimeiraPagina();
  }
}

class PrimeiraPagina extends State<Cedula> {
  String um = '0';
  String dois = '0';
  String cinco = '0';
  String dez = '0';
  String vinte = '0';
  String cinquenta = '0';
  String cem = '0';
  String duzentos = '0';
  TextEditingController a = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cedulas'),
      ),
      backgroundColor: Colors.purple,
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          ListTile(
            title: Text('Moeda de 1 Real'),
            subtitle: Text('Money'),
            leading: CircleAvatar(
              backgroundImage: NetworkImage('assets/img/1.jpg'),
            ),
            trailing: Text(um),
          ),
          ListTile(
            title: Text('Nota de 2 Reais'),
            subtitle: Text('Money'),
            leading: CircleAvatar(
              backgroundImage: NetworkImage('assets/img/2.jpg'),
            ),
            trailing: Text(dois),
          ),
          ListTile(
            title: Text('Nota de 5 Reais'),
            subtitle: Text('Money'),
            leading: CircleAvatar(
              backgroundImage: NetworkImage('assets/img/5.png'),
            ),
            trailing: Text(cinco),
          ),
          ListTile(
            title: Text('Nota de 10 Reais'),
            subtitle: Text('Money'),
            leading: CircleAvatar(
              backgroundImage: NetworkImage('assets/img/10.jpg'),
            ),
            trailing: Text(dez),
          ),
          ListTile(
            title: Text('Nota de 20 Reais'),
            subtitle: Text('Money'),
            leading: CircleAvatar(
              backgroundImage: NetworkImage('assets/img/20.jpg'),
            ),
            trailing: Text(vinte),
          ),
          ListTile(
            title: Text('Nota de 50 Reais'),
            subtitle: Text('Money'),
            leading: CircleAvatar(
              backgroundImage: NetworkImage('assets/img/50.jpg'),
            ),
            trailing: Text(cinquenta),
          ),
          ListTile(
            title: Text('Nota de 100 Reais'),
            subtitle: Text('Money'),
            leading: CircleAvatar(
              backgroundImage: NetworkImage('assets/img/100.jpg'),
            ),
            trailing: Text(cem),
          ),
          ListTile(
            title: Text('Nota de 200 Reais'),
            subtitle: Text('Money'),
            leading: CircleAvatar(
              backgroundImage: NetworkImage('assets/img/200.jpg'),
            ),
            trailing: Text(duzentos),
          ),
          campoText('Digite aqui', a),
          Container(
            height: 50.0,
            width: 250.0,
            color: Colors.yellow,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  int resulta = int.tryParse(a.text)!;

                  double _um = 0;
                  double _dois = 0;
                  double _cinco = 0;
                  double _dez = 0;
                  double _vinte = 0;
                  double _cinquenta = 0;
                  double _cem = 0;
                  double _duzentos = 0;

                  _duzentos = resulta / 200;
                  resulta %= 200;

                  _cem = resulta / 100;
                  resulta %= 100;

                  _cinquenta = resulta / 50;
                  resulta %= 50;

                  _vinte = resulta / 20;
                  resulta %= 20;

                  _dez = resulta / 10;
                  resulta %= 10;

                  _cinco = resulta / 5;
                  resulta %= 5;

                  _dois = resulta / 2;
                  resulta %= 2;

                  _um = resulta / 1;

                  um = "${_um.toInt()}";
                  dois = "${_dois.toInt()}";
                  cinco = "${_cinco.toInt()}";
                  dez = "${_dez.toInt()}";
                  vinte = "${_vinte.toInt()}";
                  cinquenta = "${_cinquenta.toInt()}";
                  cem = "${_cem.toInt()}";
                  duzentos = "${_duzentos.toInt()}";
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
