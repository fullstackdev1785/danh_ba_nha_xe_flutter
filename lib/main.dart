import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Danh Bạ Nhà Xe 2019',
      theme: new ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Danh Bạ Nhà Xe'),
        backgroundColor: Colors.blue.shade400
      ),
      body: new GridView.count(
        crossAxisCount: 3,
        children: new List<Widget>.generate(64, (index) {
          return new GridTile(
              child: new InkWell(
                onTap: () {
                  print("tapped");
                },
                child: new Card(
                    color: Colors.blue.shade200,
                    child: new Center(
                      child: new Text('tile $index'),
                    )),
              ));
        }),
      ),
    );
  }
}
