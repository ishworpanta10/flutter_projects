import 'package:flutter/material.dart';
import 'package:flutter_projects/project3/model/count_down_timer.dart';
import 'package:flutter_projects/project3/model/timer_model.dart';
import 'package:flutter_projects/project3/setting.dart';
import 'package:flutter_projects/project3/widgets/widgets.dart';
import 'package:percent_indicator/percent_indicator.dart';

class TimerHomePage extends StatelessWidget {
  final double defaultPadding = 5.0;
  static const String routeName = '/myTimerHome';
  final CountDownTimer timer = CountDownTimer();

  void goToSetting(BuildContext context) =>
      Navigator.pushNamed(context, CounterSettingPage.routeName);

  @override
  Widget build(BuildContext context) {
    final List<PopupMenuItem<String>> menuItems = List<PopupMenuItem<String>>();
    menuItems.add(
      PopupMenuItem(
        value: 'Settings',
        child: Text('Settings'),
      ),
    );

    timer.startWork();
    return Scaffold(
      appBar: AppBar(
        title: Text('My Time App'),
        backgroundColor: Colors.teal[600],
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return menuItems.toList();
            },
            onSelected: (s) {
              if (s == 'Settings') {
                goToSetting(context);
              }
            },
          )
        ],
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final double availableWidth = constraints.maxWidth;
          final double availableHeight = constraints.maxHeight;

          print(availableWidth);
          print(availableHeight);

          return SafeArea(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(padding: EdgeInsets.all(defaultPadding)),
                    Expanded(
                      child: ProductivityButton(
                        onPressed: () => timer.startWork(),
                        text: 'Work',
                        btnColor: Color(0xff009688),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(defaultPadding)),
                    Expanded(
                      child: ProductivityButton(
                        onPressed: () => timer.startBreak(true),
                        text: 'Short Break',
                        btnColor: Color(0xff607D8B),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(defaultPadding)),
                    Expanded(
                      child: ProductivityButton(
                        onPressed: () => timer.startBreak(false),
                        text: 'Long Break',
                        btnColor: Color(0xff455A64),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(defaultPadding)),
                  ],
                ),
                Expanded(
                  child: StreamBuilder(
                    stream: timer.stream(),
                    initialData: '00:00',
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      TimerModel timer = (snapshot.data == '00:00')
                          ? TimerModel('00:00', 1)
                          : snapshot.data;
                      return CircularPercentIndicator(
                        radius: availableWidth / 2,
                        lineWidth: 10.0,
                        percent:
                            (timer.percentage == null) ? 1 : timer.percentage,
                        center: Text(
                          (timer.time == null ? "00:00" : timer.time),
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        progressColor: Color(0xff009688),
                      );
                    },
                  ),
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.all(defaultPadding)),
                    Expanded(
                      child: ProductivityButton(
                        onPressed: () => timer.stopTimer(),
                        text: 'stop',
                        btnColor: Color(0xff212121),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(defaultPadding)),
                    Expanded(
                      child: ProductivityButton(
                        onPressed: () => timer.startTimer(),
                        text: 'Restart',
                        btnColor: Color(0xff009688),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(defaultPadding)),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
