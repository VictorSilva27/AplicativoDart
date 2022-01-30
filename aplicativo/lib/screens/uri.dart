import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Uri extends StatefulWidget {
  String get title => '0';

  State<StatefulWidget> createState() {
    return PrimeiraPagina();
  }
}

class PrimeiraPagina extends State<Uri> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('URI Online Judge'),
      ),
      backgroundColor: Colors.purple,
      body: Text(
          'O URI Online Judge é um projeto que está sendo desenvolvido pelo Departamento de Ciência da Computação da URI. O principal objetivo é promover a prática de programação e o compartilhamento de conhecimento.',
          style: new TextStyle(fontSize: 50.0, color: Colors.red)),
    );
  }
}
