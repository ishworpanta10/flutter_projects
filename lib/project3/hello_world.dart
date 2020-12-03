import 'package:flutter/material.dart';

class MyTime extends StatelessWidget {
  static const String routeName = '/myTime';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Time App'),
        backgroundColor: Colors.teal[600],
      ),
      body: Center(
        child: Text('Project Names'),
      ),
    );
  }
}
