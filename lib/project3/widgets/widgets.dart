import 'package:flutter/material.dart';

typedef CallbackSetting = void Function(String, int);

class ProductivityButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color btnColor;
  final double btnSize;

  const ProductivityButton(
      {@required this.onPressed,
      @required this.text,
      @required this.btnColor,
      this.btnSize});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: btnColor,
      minWidth: btnSize,
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class SettingsButton extends StatelessWidget {
  final Color color;
  final String text;
  // final double size;
  final int value;
  final String setting;
  final CallbackSetting callback;

  const SettingsButton(this.color, this.text,  this.value,
      this.setting, this.callback);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () => this.callback(this.setting, this.value),
      color: color,
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
      // minWidth: size,
    );
  }
}
