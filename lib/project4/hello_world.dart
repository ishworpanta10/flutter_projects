import 'package:flutter/material.dart';

class PongGame extends StatelessWidget {
  static const String routeName = '/pongGame';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pong Game'),
        backgroundColor: Colors.teal[600],
      ),
      body: Center(
        child: Text('Project Names'),
      ),
    );
  }
}
