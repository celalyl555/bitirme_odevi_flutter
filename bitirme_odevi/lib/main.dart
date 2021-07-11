import 'dart:developer';

import 'package:bitirme_odevi/altin.dart';
import 'package:bitirme_odevi/atom.dart';
import 'package:bitirme_odevi/btc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'real para/dolar.dart';
import 'real para/sterlin.dart';
import 'real para/euro.dart';
import 'btc.dart';
import 'eth.dart';
import 'atom.dart';
import 'gumus.dart';
import 'YanMenu.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("KUR FİYATLARI"),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              child: Image.asset("Image/tl.jpg"),
            ),
            Container(
              child: Image.asset("Image/dolar.png"),
              padding: const EdgeInsets.all(8),
            ),
            Container(
              child: Image.asset("Image/euro.jpg"),
              padding: const EdgeInsets.all(8),
            ),
            Container(
              child: Image.asset("Image/sterlin.jpg"),
              padding: const EdgeInsets.all(8),
            ),
            Container(
              child: Image.asset("Image/altın.jpg"),
              padding: const EdgeInsets.all(8),
            ),
            Container(
              child: Image.asset("Image/gümüs.jpg"),
              padding: const EdgeInsets.all(8),
            ),
            Container(
              child: Image.asset("Image/btc.jpg"),
              padding: const EdgeInsets.all(8),
            ),
            Container(
              child: Image.asset("Image/eth.jpg"),
              padding: const EdgeInsets.all(8),
            ),
          ],
        ),
        drawer: YanMenu(),
      ),
      routes: rotalar,
    ),
  );
}

var rotalar = <String, WidgetBuilder>{
  "/euro": (BuildContext context) => Euro(),
  "/dolar": (BuildContext context) => Dolar(),
  "/sterlin": (BuildContext context) => Sterlin(),
  "/btc": (BuildContext context) => Btc(),
  "/eth": (BuildContext context) => Eth(),
  "/atom": (BuildContext context) => Atom(),
  "/altin": (BuildContext context) => Altin(),
  "/gumus": (BuildContext context) => Gumus(),
};
