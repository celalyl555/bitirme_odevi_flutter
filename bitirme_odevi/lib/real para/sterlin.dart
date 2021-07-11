import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Sterlin extends StatefulWidget {
  @override
  _SterlinState createState() => _SterlinState();
}

class _SterlinState extends State<Sterlin> {
  String _htmlveri = '';
  String _htmlveri1 = '';
  @override
  initState() {
    super.initState();
    _istek();
  }

  Future _istek() async {
    _htmlveri = '';
    setState(() {});
    await http
        .get('https://piyasa.paratic.com/doviz/sterlin/')
        .then((_gelenveri) {
      _htmlveri = _gelenveri.body
          .replaceAll('\n', '') //satırlar arası boşlukları yok eder
          .replaceAll('\t', '') //tab olan yerleri siler
          .replaceAll('  ', ''); // birden fazla boşluk olan yerleri siler
      _htmlveri1 = _gelenveri.body
          .replaceAll('\n', '') //satırlar arası boşlukları yok eder
          .replaceAll('\t', '') //tab olan yerleri siler
          .replaceAll('  ', '');
      RegExp arama = new RegExp(
          '<div class="price" data-code="GBP/TRL" data-type="bid">(.*?)</div>');
      Match eslesen = arama.firstMatch(_htmlveri);
      _htmlveri = eslesen.group(1);

      RegExp arama1 = new RegExp(
          '<div class="price" data-code="GBP/TRL" data-type="ask">(.*?)</div>');
      Match eslesen1 = arama1.firstMatch(_htmlveri1);
      _htmlveri1 = eslesen1.group(1);

      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey, //arka plan resmini deeğiştirir

      appBar: AppBar(
        title: Text("STERLİN"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: _istek,
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          color: Colors.lime,
          padding: EdgeInsets.all(70.0),
          margin: EdgeInsets.all(60.0),
          width: 300,
          height: 270,
          child: _htmlveri.length > 0
              ? SingleChildScrollView(
                  child: Text(
                      "ALIŞ FİYATI : " +
                          _htmlveri +
                          '\n' +
                          '\n' "SATIŞ FİYATI : " +
                          _htmlveri1,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                )
              : CircularProgressIndicator(),
        ),
      ),
    );
  }
}
