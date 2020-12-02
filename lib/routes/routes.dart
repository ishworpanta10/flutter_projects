import 'package:flutter/material.dart';
import 'package:flutter_projects/converter%20app/converter.dart';
import 'package:flutter_projects/hello%20world%20proj/home.dart';

final Map<String, WidgetBuilder> routes = {
  HelloWorldProject.routeName: (_) => HelloWorldProject(),
  ConverterApp.routeName: (_) => ConverterApp(),
};
