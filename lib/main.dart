import 'package:flutter/material.dart';

void main() {
  runApp(const PainApp());
}

class PainApp extends StatelessWidget {
  const PainApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Pain App"),
      // ),
      body: Container(),
    );
  }
}
