import 'package:flutter/material.dart';
import 'package:flutter_projects/project1/hello_world.dart';
import 'package:flutter_projects/project10/hello_world.dart';
import 'package:flutter_projects/project11/hello_world.dart';
import 'package:flutter_projects/project2/converter.dart';
import 'package:flutter_projects/project3/home.dart';
import 'package:flutter_projects/project3/setting.dart';
import 'package:flutter_projects/project4/hello_world.dart';
import 'package:flutter_projects/project5/hello_world.dart';
import 'package:flutter_projects/project6/hello_world.dart';
import 'package:flutter_projects/project7/hello_world.dart';
import 'package:flutter_projects/project8/hello_world.dart';
import 'package:flutter_projects/project9/hello_world.dart';

final Map<String, WidgetBuilder> routes = {
  HelloWorldProject.routeName: (_) => HelloWorldProject(),
  ConverterApp.routeName: (_) => ConverterApp(),
  TimerHomePage.routeName: (_) => TimerHomePage(),
  CounterSettingPage.routeName: (_) => CounterSettingPage(),
  PongGame.routeName: (_) => PongGame(),
  MovieApp.routeName: (_) => MovieApp(),
  StoringData.routeName: (_) => StoringData(),
  FirebaseApp.routeName: (_) => FirebaseApp(),
  TresureMap.routeName: (_) => TresureMap(),
  DiceApp.routeName: (_) => DiceApp(),
  TodoApp.routeName: (_) => TodoApp(),
  FlutterWeb.routeName: (_) => FlutterWeb(),
};
