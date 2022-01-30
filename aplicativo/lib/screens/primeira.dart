import 'package:aplicativo/screens/1001.dart';
import 'package:aplicativo/screens/uri.dart';
import 'package:aplicativo/screens/1002.dart';
import 'package:aplicativo/screens/1003.dart';
import 'package:aplicativo/screens/1004.dart';
import 'package:aplicativo/screens/1005.dart';
import 'package:aplicativo/screens/1006.dart';
import 'package:aplicativo/screens/1007.dart';
import 'package:aplicativo/screens/1008.dart';
import 'package:aplicativo/screens/1009.dart';
import 'package:aplicativo/screens/1018.dart';
import 'package:aplicativo/screens/1020.dart';
import 'package:aplicativo/screens/segundo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  State<StatefulWidget> createState() {
    return PrimeiraPagina();
  }
}

class PrimeiraPagina extends State<Home> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primeira Página'),
      ),
      drawer: new Drawer(
        child: ListView(children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('URI'),
            accountEmail: Text('Uri Online Judge'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('assets/img/uri.png'),
            ),
          ),
          ListTile(
            leading: Icon(Icons.app_settings_alt),
            title: Text('Sobre URI'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) => Uri()));
            },
          )
        ]),
      ),
      backgroundColor: Colors.purple[700],
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            newCard(context, new Home2(), 'URI 1000', 'Hello World',
                Icons.language, Colors.purple),
            newCard(context, new Basico(), 'URI 1001', 'Extremamente Básico',
                Icons.plus_one, Colors.red),
            newCard(context, new Area(), 'URI 1002', 'Área do Circulo',
                Icons.circle_outlined, Colors.purple),
            newCard(context, new Soma(), 'URI 1003', 'Soma Simples',
                Icons.exposure_plus_2, Colors.red),
            newCard(context, new Produto(), 'URI 1004', 'Produto',
                Icons.add_shopping_cart_rounded, Colors.purple),
            newCard(context, new Media(), 'URI 1005', 'Média', Icons.exposure,
                Colors.red),
            newCard(context, new Media2(), 'URI 1006', 'Média 2',
                Icons.leaderboard, Colors.purple),
            newCard(context, new Diferenca(), 'URI 1007', 'Diferença',
                Icons.group_outlined, Colors.red),
            newCard(context, new Salario(), 'URI 1008', 'Salário', Icons.money,
                Colors.purple),
            newCard(context, new SalarioBons(), 'URI 1009', 'Salário Bônus',
                Icons.paid_outlined, Colors.red),
            newCard(context, new Cedula(), 'URI 1018', 'Cédula',
                Icons.paid_outlined, Colors.purple),
            newCard(
                context, new Ano(), 'URI 1020', 'Ano', Icons.event, Colors.red),
          ],
        ),
      ),
    );
  }

  Card newCard(BuildContext context, StatefulWidget route, String title,
      String subtitle, IconData icon, MaterialColor color) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) => route));
        },
        splashColor: Colors.black,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                icon,
                color: color,
                size: 70.0,
              ),
              Text(title, style: new TextStyle(fontSize: 17.0)),
              Text(subtitle, style: new TextStyle(fontSize: 12.0)),
            ],
          ),
        ),
      ),
    );
  }
}
