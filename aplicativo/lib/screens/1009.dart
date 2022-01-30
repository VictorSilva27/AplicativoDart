import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(SalarioBons());

class SalarioBons extends StatefulWidget {
  State<StatefulWidget> createState() {
    return PrimeiraPagina();
  }
}

class PrimeiraPagina extends State<SalarioBons> {
  String area = '0';

  TextEditingController n = TextEditingController();
  TextEditingController h = TextEditingController();
  TextEditingController v = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sálario com Bônus'),
      ),
      backgroundColor: Colors.purple,
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          ListTile(
            trailing: Text(area),
          ),
          campoText('Digite aqui seu nome', n),
          campoText('Digite aqui seu sálario', h),
          campoText('Digite aqui suas vendas', v),
          Container(
            height: 50.0,
            width: 25.0,
            color: Colors.yellow,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  double salario = double.tryParse(h.text)!;
                  double vendas = double.tryParse(v.text)!;
                  double comissao = vendas * 0.15;

                  double salarioFinal = salario + comissao;

                  area = "TOTAL = R\$ ${salarioFinal.toStringAsFixed(2)}";
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
