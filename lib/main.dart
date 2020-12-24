import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projects/project_pages.dart';
import 'package:flutter_projects/routes/routes.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (BuildContext context) => MyApp(),
    ),
  );
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
