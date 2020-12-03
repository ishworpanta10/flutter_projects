import 'package:flutter/material.dart';

class ConverterApp extends StatefulWidget {
  static const String routeName = '/converterApp';

  @override
  _ConverterAppState createState() => _ConverterAppState();
}

class _ConverterAppState extends State<ConverterApp> {
  double _formInput;
  String _selectedMeasure;
  String _convertedMeasure;
  String _resultMessage;

  @override
  void initState() {
    _formInput = 0;
    super.initState();
  }

  final List<String> _measures = [
    'meters',
    'kilometers',
    'grams',
    'kilograms',
    'feet',
    'miles',
    'pounds (lbs)',
    'ounces',
  ];

  final TextStyle inputStyle = TextStyle(
    fontSize: 20,
    color: Colors.blue[900],
  );

  final TextStyle labelStyle = TextStyle(
    fontSize: 24,
    color: Colors.grey[700],
  );

  final Map<String, int> _measuresMap = {
    'meters': 0,
    'kilometers': 1,
    'grams': 2,
    'kilograms': 3,
    'feet': 4,
    'miles': 5,
    'pounds (lbs)': 6,
    'ounces': 7,
  };

  final Map<String, List<dynamic>> _formulas = {
    '0': [1, 0.001, 0, 0, 3.28084, 0.000621371, 0, 0],
    '1': [1000, 1, 0, 0, 3280.84, 0.621371, 0, 0],
    '2': [0, 0, 1, 0.0001, 0, 0, 0.00220462, 0.035274],
    '3': [0, 0, 1000, 1, 0, 0, 2.20462, 35.274],
    '4': [0.3048, 0.0003048, 0, 0, 1, 0.000189394, 0, 0],
    '5': [1609.34, 1.60934, 0, 0, 5280, 1, 0, 0],
    '6': [0, 0, 453.592, 0.453592, 0, 0, 1, 16],
    '7': [0, 0, 28.3495, 0.0283495, 3.28084, 0, 0.0625, 1],
  };

  void convert(double value, String from, String to) {
    int nFrom = _measuresMap[from];
    int nTo = _measuresMap[to];

    var multiplier = _formulas[nFrom.toString()][nTo];
    var result = value * multiplier;

    if (result == 0) {
      _resultMessage = ' This conversion cannot be performed';
    } else {
      _resultMessage =
          '$_formInput $_selectedMeasure is ${result.toString()} $_convertedMeasure';
    }

    setState(() {
      _resultMessage = _resultMessage;
    });
  }

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text('Converter App'),
        backgroundColor: Colors.teal[600],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Spacer(),
            Text('Value', style: labelStyle),
            Spacer(),
            TextField(
              style: inputStyle,
              decoration: InputDecoration(
                hintText: 'Please insert the measure to be converted',
              ),
              onChanged: (text) {
                var inputData = double.tryParse(text);
                setState(() {
                  if (inputData != null) {
                    _formInput = inputData;
                  }
                });
              },
            ),
            Spacer(),
            Text('From', style: labelStyle),
            DropdownButton<String>(
              items: _measures
                  .map((String unit) => DropdownMenuItem<String>(
                        child: Text(unit),
                        value: unit,
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  _selectedMeasure = value;
                });
              },
              hint: Text('Select Measuring unit'),
              value: _selectedMeasure,
            ),
            Spacer(),
            Text('To', style: labelStyle),
            Spacer(),
            DropdownButton<String>(
              items: _measures.map((String unit) {
                return DropdownMenuItem<String>(
                  child: Text(unit),
                  value: unit,
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _convertedMeasure = value;
                });
              },
              value: _convertedMeasure,
              hint: Text('Select the unit to be converted'),
            ),
            Spacer(flex: 2),
            RaisedButton(
              onPressed: () {
                if (_selectedMeasure.isEmpty ||
                    _convertedMeasure.isEmpty ||
                    _formInput == 0) {
                  return scaffoldKey.currentState.showSnackBar(SnackBar(
                    content: Text("Field cannot be empty"),
                  ));
                } else {
                  convert(_formInput, _selectedMeasure, _convertedMeasure);
                }
              },
              child: Text(
                'Convert',
                style: inputStyle,
              ),
            ),
            Spacer(flex: 2),
            Text(
              (_resultMessage == null)
                  ? 'Result Here'
                  : _resultMessage.toString(),
              style: labelStyle,
            ),
            Spacer(flex: 8)
          ],
        ),
      ),
    );
  }
}
