import 'package:flutter_projects/converter%20app/converter.dart';
import 'package:flutter_projects/hello%20world%20proj/home.dart';

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

// final projectThree =
//     Project(projectName: 'My Time', projectDesc: 'Listening to stream of data');

// final projectFour =
//     Project(projectName: 'Pong Game', projectDesc: '2D animation and Gesture');

// final projectFive =
//     Project(projectName: 'Movie App', projectDesc: 'Getting data from web');

// final projectSix = Project(
//     projectName: 'Store that Data',
//     projectDesc: 'storing local data with Sqflite ');

// final projectSeven =
//     Project(projectName: 'Firebase App', projectDesc: 'firing firbase app ');

// final projectEight = Project(
//     projectName: 'Tresure Map',
//     projectDesc: 'Integrating map and exploring geolocation and camera ');

// final projectNine = Project(
//     projectName: 'Let\'s Play Dice', projectDesc: 'Animation with flare ');

// final projectTen =
//     Project(projectName: 'Todo App', projectDesc: 'With BLoC Pattern ');

// final projectEleven = Project(
//     projectName: 'Flutter Web',
//     projectDesc: 'Responsive and exploring web in flutter ');

List<Project> projectList = [
  projectOne,
  projectTwo,
  // projectThree,
  // projectFour,
  // projectFive,
  // projectSix,
  // projectSeven,
  // projectEight,
  // projectNine,
  // projectTen,
  // projectEleven,
];
