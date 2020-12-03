import 'package:flutter/material.dart';

class TresureMap extends StatelessWidget {
  static const String routeName = '/tresureMap';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tresure App'),
        backgroundColor: Colors.teal[600],
      ),
      body: Center(
        child: Text('Project Names'),
      ),
    );
  }
}
