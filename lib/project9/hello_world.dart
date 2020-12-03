import 'package:flutter/material.dart';

class DiceApp extends StatelessWidget {
  static const String routeName = '/diceApp';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice app'),
        backgroundColor: Colors.teal[600],
      ),
      body: Center(
        child: Text('Project Names'),
      ),
    );
  }
}
