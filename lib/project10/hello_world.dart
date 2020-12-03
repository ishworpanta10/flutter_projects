import 'package:flutter/material.dart';

class TodoApp extends StatelessWidget {
  static const String routeName = '/todoApp';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo App'),
        backgroundColor: Colors.teal[600],
      ),
      body: Center(
        child: Text('Project Names'),
      ),
    );
  }
}
