import 'package:flutter/material.dart';

class StoringData extends StatelessWidget {
  static const String routeName = '/storeData';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Storing Data Demo'),
        backgroundColor: Colors.teal[600],
      ),
      body: Center(
        child: Text('Project Names'),
      ),
    );
  }
}
