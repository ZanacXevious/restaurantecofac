import 'package:flutter/material.dart';

void main() {
  runApp(_App());
}
// create a stateless widget

class _App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // remove debug banner
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Text('This is my default text!'),
      ),
    );
  }
}
