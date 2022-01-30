import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home2 extends StatefulWidget {
  String get title => '0';

  State<StatefulWidget> createState() {
    return PrimeiraPagina();
  }
}

class PrimeiraPagina extends State<Home2> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World!!!'),
      ),
      backgroundColor: Colors.purple[700],
      body: Text('Hello World!!!',
          style: new TextStyle(fontSize: 50.0, color: Colors.red)),
    );
  }
}
