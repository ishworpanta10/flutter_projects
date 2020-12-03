import 'package:flutter/material.dart';

class FirebaseApp extends StatelessWidget {
  static const String routeName = '/firebaseApp';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firebase Demo'),
        backgroundColor: Colors.teal[600],
      ),
      body: Center(
        child: Text('Project Names'),
      ),
    );
  }
}
