import 'package:flutter_projects/project1/hello_world.dart';
import 'package:flutter_projects/project10/hello_world.dart';
import 'package:flutter_projects/project11/hello_world.dart';
import 'package:flutter_projects/project2/converter.dart';
import 'package:flutter_projects/project3/hello_world.dart';
import 'package:flutter_projects/project4/hello_world.dart';
import 'package:flutter_projects/project5/hello_world.dart';
import 'package:flutter_projects/project6/hello_world.dart';
import 'package:flutter_projects/project7/hello_world.dart';
import 'package:flutter_projects/project8/hello_world.dart';
import 'package:flutter_projects/project9/hello_world.dart';

class Project {
  final String projectName;
  final String projectDesc;
  final String routeName;

  Project({this.projectName, this.projectDesc, this.routeName});
}

final projectOne = Project(
  projectName: 'Hello World',
  projectDesc: 'Simple hello world project',
  routeName: HelloWorldProject.routeName,
);

final projectTwo = Project(
  projectName: 'Miles or Kilometer',
  projectDesc: 'Converter App',
  routeName: ConverterApp.routeName,
);

final projectThree = Project(
  projectName: 'My Time',
  projectDesc: 'Listening to stream of data',
  routeName: MyTime.routeName,
);

final projectFour = Project(
  projectName: 'Pong Game',
  projectDesc: '2D animation and Gesture',
  routeName: PongGame.routeName,
);

final projectFive = Project(
  projectName: 'Movie App',
  projectDesc: 'Getting data from web',
  routeName: MovieApp.routeName,
);

final projectSix = Project(
  projectName: 'Store that Data',
  projectDesc: 'storing local data with Sqflite ',
  routeName: StoringData.routeName,
);

final projectSeven = Project(
  projectName: 'Firebase App',
  projectDesc: 'firing firbase app ',
  routeName: FirebaseApp.routeName,
);

final projectEight = Project(
  projectName: 'Tresure Map',
  projectDesc: 'Integrating map and exploring geolocation and camera ',
  routeName: TresureMap.routeName,
);

final projectNine = Project(
  projectName: 'Let\'s Play Dice',
  projectDesc: 'Animation with flare ',
  routeName: DiceApp.routeName,
);

final projectTen = Project(
  projectName: 'Todo App',
  projectDesc: 'With BLoC Pattern ',
  routeName: TodoApp.routeName,
);

final projectEleven = Project(
  projectName: 'Flutter Web',
  projectDesc: 'Responsive and exploring web in flutter ',
  routeName: FlutterWeb.routeName,
);

List<Project> projectList = [
  projectOne,
  projectTwo,
  projectThree,
  projectFour,
  projectFive,
  projectSix,
  projectSeven,
  projectEight,
  projectNine,
  projectTen,
  projectEleven,
];
