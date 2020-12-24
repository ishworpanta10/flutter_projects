import 'package:flutter/material.dart';
import 'package:flutter_projects/project3/widgets/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CounterSettingPage extends StatefulWidget {
  static const String routeName = '/counterSettingPage';

  @override
  _CounterSettingPageState createState() => _CounterSettingPageState();
}

class _CounterSettingPageState extends State<CounterSettingPage> {
  TextStyle textStyle = TextStyle(fontSize: 24);
  // controllers
  TextEditingController txtWork;
  TextEditingController txtShort;
  TextEditingController txtLong;

  //Keys
  static const String WORKTIME = "workTime";
  static const String SHORTBREAK = "shortBreak";
  static const String LONGBREAK = "longBreak";

  //values
  int workTime;
  int shortBreak;
  int longBreak;

  SharedPreferences prefs;

  readSettings() async {
    prefs = await SharedPreferences.getInstance();
    workTime = prefs.getInt(WORKTIME);
    if (workTime == null) {
      await prefs.setInt(WORKTIME, int.parse('30'));
    }
    shortBreak = prefs.getInt(SHORTBREAK);
    if (shortBreak == null) {
      await prefs.setInt(SHORTBREAK, int.parse('5'));
    }
    longBreak = prefs.getInt(LONGBREAK);
    if (longBreak == null) {
      await prefs.setInt(LONGBREAK, int.parse('20'));
    }

    setState(() {
      txtWork.text = workTime.toString();
      txtShort.text = shortBreak.toString();
      txtLong.text = longBreak.toString();
    });
  }

  void updateSetting(String key, int value) {
    switch (key) {
      case WORKTIME:
        {
          int workTime = prefs.getInt(WORKTIME);
          workTime += value;
          if (workTime >= 1 && workTime <= 180) {
            prefs.setInt(WORKTIME, workTime);
            setState(() {
              txtWork.text = workTime.toString();
            });
          }
        }
        break;
      case SHORTBREAK:
        {
          int short = prefs.getInt(SHORTBREAK);
          short += value;
          if (short >= 1 && short <= 120) {
            prefs.setInt(SHORTBREAK, short);
            setState(() {
              txtShort.text = short.toString();
            });
          }
        }
        break;
      case LONGBREAK:
        {
          int long = prefs.getInt(LONGBREAK);
          long += value;
          if (long >= 1 && long <= 180) {
            prefs.setInt(LONGBREAK, long);
            setState(() {
              txtLong.text = long.toString();
            });
          }
        }
        break;
    }
  }

  @override
  void initState() {
    txtWork = TextEditingController();
    txtShort = TextEditingController();
    txtLong = TextEditingController();
    readSettings();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
      ),
      body: GridView.count(
        scrollDirection: Axis.vertical,
        crossAxisCount: 3,
        childAspectRatio: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: const EdgeInsets.all(20.0),
        children: [
          //work
          Text("Work", style: textStyle),
          Text(""),
          Text(""),
          SettingsButton(Color(0xff455A64), "-", -1, WORKTIME, updateSetting),
          TextField(
              controller: txtWork,
              style: textStyle,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number),
          SettingsButton(Color(0xff009688), "+", 1, WORKTIME, updateSetting),

          //short break
          Text("Short", style: textStyle),
          Text(""),
          Text(""),
          SettingsButton(Color(0xff455A64), "-", -1, SHORTBREAK, updateSetting),
          TextField(
              controller: txtShort,
              style: textStyle,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number),
          SettingsButton(Color(0xff009688), "+", 1, SHORTBREAK, updateSetting),

          //long break
          Text(
            "Long",
            style: textStyle,
          ),
          Text(""),
          Text(""),
          SettingsButton(Color(0xff455A64), "-", -1, LONGBREAK, updateSetting),

          TextField(
              controller: txtLong,
              style: textStyle,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number),
          SettingsButton(Color(0xff009688), "+", 1, LONGBREAK, updateSetting),
        ],
      ),
    );
  }
}
