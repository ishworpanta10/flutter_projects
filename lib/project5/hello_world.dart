import 'package:flutter/material.dart';

class MovieApp extends StatelessWidget {
  static const String routeName = '/movieApp';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie App'),
        backgroundColor: Colors.teal[600],
      ),
      body: Center(
        child: Text('Project Names'),
      ),
    );
  }
}
