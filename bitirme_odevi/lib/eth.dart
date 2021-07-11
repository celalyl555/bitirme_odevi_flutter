import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Eth extends StatefulWidget {
  @override
  _EthState createState() => _EthState();
}

class _EthState extends State<Eth> {
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
        .get('https://tr.investing.com/crypto/currency-pairs')
        .then((_gelenveri) {
      _htmlveri = _gelenveri.body
          .replaceAll('\n', '') //satırlar arası boşlukları yok eder
          .replaceAll('\t', '') //tab olan yerleri siler
          .replaceAll('  ', ''); // birden fazla boşluk olan yerleri siler
      _htmlveri1 = _gelenveri.body
          .replaceAll('\n', '') //satırlar arası boşlukları yok eder
          .replaceAll('\t', '') //tab olan yerleri siler
          .replaceAll('  ', '');
      RegExp arama = new RegExp('<td class="pid-1123153-last">(.*?)</td>');
      Match eslesen = arama.firstMatch(_htmlveri);
      _htmlveri = eslesen.group(1);

      RegExp arama1 = new RegExp('<td class="pid-1123153-last">(.*?)</td>');
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
        title: Text("ETHERYUM"),
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
                          _htmlveri1 +
                          '\n' +
                          '\n' "SATIŞ FİYATI : " +
                          _htmlveri,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                )
              : CircularProgressIndicator(),
        ),
      ),
    );
  }
}
