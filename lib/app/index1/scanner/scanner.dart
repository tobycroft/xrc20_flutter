import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Scanner extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Scanner();
}

class _Scanner extends State<Scanner> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: null,
        title: Text("扫码"),
        backgroundColor: Color.fromRGBO(0, 0, 0, 0.5),
      ),
      body: Center(

      ),
    );
  }
}
