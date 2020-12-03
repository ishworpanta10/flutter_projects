import 'package:flutter/material.dart';
import 'package:flutter_projects/model/project.dart';

class ProjectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Projects"),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        centerTitle: true,
        elevation: 0.0,
        titleSpacing: 1.2,
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          Project projects = projectList[index];
          return ListTile(
            leading: Icon(
              Icons.circle,
            ),
            title: Text(
              projects.projectName,
              style: Theme.of(context).textTheme.headline6,
            ),
            subtitle: Text(
              projects.projectDesc,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            onTap: () {
              Navigator.pushNamed(context, projects.routeName);
            },
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            color: Colors.grey,
          );
        },
        itemCount: projectList.length,
      ),
    );
  }
}
