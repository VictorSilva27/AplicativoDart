import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Salario());

class Salario extends StatefulWidget {
  State<StatefulWidget> createState() {
    return PrimeiraPagina();
  }
}

class PrimeiraPagina extends State<Salario> {
  String area = '0';
  String apre = '0';

  TextEditingController n = TextEditingController();
  TextEditingController h = TextEditingController();
  TextEditingController v = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sálario'),
      ),
      backgroundColor: Colors.purple,
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          ListTile(
            trailing: Text(area),
          ),
          ListTile(
            trailing: Text(apre),
          ),
          campoText('Digite aqui seu número', n),
          campoText('Digite aqui as horas', h),
          campoText('Digite aqui valor por horas', v),
          Container(
            height: 50.0,
            width: 25.0,
            color: Colors.yellow,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  double _n = double.tryParse(n.text)!;
                  double _h = double.tryParse(h.text)!;
                  double _v = double.tryParse(v.text)!;

                  double _s = _h * _v;
                  apre = "NUMBER = $_n";
                  area = "Salario = ${_s.toStringAsFixed(2)}";
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
