import 'package:flutter/material.dart';

class FlutterWeb extends StatelessWidget {
  static const String routeName = '/flutterWeb';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Web'),
        backgroundColor: Colors.teal[600],
      ),
      body: Center(
        child: Text('Project Names'),
      ),
    );
  }
}
