import 'package:flutter/material.dart';

class YanMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 60.0), //yan menüyü üst taraftan daraltıyor
      child: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Image.asset("Image/logo2.png"),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ExpansionTile(
                    leading: Icon(Icons.toc),
                    title: Text(
                      "REEL PARALAR",
                      style: TextStyle(color: Colors.indigo),
                    ),
                    children: <Widget>[
                      Divider(
                        height: 4.0,
                        color: Colors.blueGrey,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20.0),
                        child: ListTile(
                          leading: Icon(Icons.arrow_right),
                          title: Text("DOLAR"),
                          onTap: () {
                            Navigator.pushNamed(context, '/dolar');
                          }, //onTap
                        ),
                      ),
                      Divider(
                        height: 4.0,
                        color: Colors.blueGrey,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20.0),
                        child: ListTile(
                          leading: Icon(Icons.arrow_right),
                          title: Text("EURO"),
                          onTap: () {
                            Navigator.pushNamed(context, '/euro');
                          }, //onTap
                        ),
                      ),
                      Divider(
                        height: 4.0,
                        color: Colors.blueGrey,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20.0),
                        child: ListTile(
                          leading: Icon(Icons.arrow_right),
                          title: Text("STERLİN"),
                          onTap: () {
                            Navigator.pushNamed(context, '/sterlin');
                          }, //onTap
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 4.0,
                    color: Colors.blueGrey,
                  ),
                  ExpansionTile(
                    leading: Icon(Icons.toc),
                    title: Text(
                      "KRİPTO PARALAR",
                      style: TextStyle(color: Colors.indigo),
                    ),
                    children: <Widget>[
                      Divider(
                        height: 4.0,
                        color: Colors.blueGrey,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20.0),
                        child: ListTile(
                          leading: Icon(Icons.arrow_right),
                          title: Text("BTC"),
                          onTap: () {
                            Navigator.pushNamed(context, '/btc');
                          }, //onTap
                        ),
                      ),
                      Divider(
                        height: 4.0,
                        color: Colors.blueGrey,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20.0),
                        child: ListTile(
                          leading: Icon(Icons.arrow_right),
                          title: Text("ETH"),
                          onTap: () {
                            Navigator.pushNamed(context, '/eth');
                          }, //onTap
                        ),
                      ),
                      Divider(
                        height: 4.0,
                        color: Colors.blueGrey,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20.0),
                        child: ListTile(
                          leading: Icon(Icons.arrow_right),
                          title: Text("ATOM"),
                          onTap: () {
                            Navigator.pushNamed(context, '/atom');
                          }, //onTap
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 4.0,
                    color: Colors.blueGrey,
                  ),
                  ExpansionTile(
                    leading: Icon(Icons.toc),
                    title: Text(
                      "MADENİ BORSA",
                      style: TextStyle(color: Colors.indigo),
                    ),
                    children: <Widget>[
                      Divider(
                        height: 4.0,
                        color: Colors.blueGrey,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20.0),
                        child: ListTile(
                          leading: Icon(Icons.arrow_right),
                          title: Text("ALTIN"),
                          onTap: () {
                            Navigator.pushNamed(context, '/altin');
                          }, //onTap
                        ),
                      ),
                      Divider(
                        height: 4.0,
                        color: Colors.blueGrey,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20.0),
                        child: ListTile(
                          leading: Icon(Icons.arrow_right),
                          title: Text("GÜMÜŞ"),
                          onTap: () {
                            Navigator.pushNamed(context, '/gumus');
                          }, //onTap
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
