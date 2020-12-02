import 'package:flutter/material.dart';
import 'package:flutter_projects/converter%20app/converter.dart';
import 'package:flutter_projects/hello%20world%20proj/home.dart';
import 'package:flutter_projects/project_pages.dart';
import 'package:flutter_projects/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ProjectPage(),
      routes: routes,
    );
  }
}
