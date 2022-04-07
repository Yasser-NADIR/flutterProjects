import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: 'Measures Converter',
  home: MyApp(),
  debugShowCheckedModeBanner: false,
));

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  late double _numberFom;
  late String _startMeasure;
  late String _convertedMeasure;
  String _resultMessage="";

  final _measures = <String>[
    "meters",
    "kilometers",
    "grams",
    "kilograms",
    "feet",
    "miles",
    "pounds (lbs)",
    "ounces"
  ];

  final _measureMap = <String, int>{
    'meters' : 0,
    'kilometers' : 1,
    'grams' : 2,
    'kilograms' : 3,
    'feet' : 4,
    'miles' : 5,
    'pounds (lbs)' : 6,
    'ounces' : 7,
  };

  final _formula = [
  [1,0.001,0,0,3.28084,0.000621371,0,0],
  [1000,1,0,0,3280.84,0.621371,0,0],
  [0,0,1,0.0001,0,0,0.00220462,0.035274],
  [0,0,1000,1,0,0,2.20462,35.274],
  [0.3048,0.0003048,0,0,1,0.000189394,0,0],
  [1609.34, 1.60934,0,0,5280,1,0,0],
  [0,0,453.592,0.453592,0,0,1,16],
  [0,0,28.3495,0.0283495,3.28084,0,0.0625, 1],
];

  final inputStyle = TextStyle(
    fontSize: 20,
    color: Colors.blue[900]
  );

  final labelStyle = TextStyle(
    fontSize: 24,
    color: Colors.grey[700]
  );

  @override
  Widget build(BuildContext context) {
    double sizeX = MediaQuery.of(context).size.width;
    double sizeY = MediaQuery.of(context).size.height;
    final spacer = Padding(padding: EdgeInsets.only(bottom: sizeY/40));

    return Scaffold(
      appBar: AppBar(
        title: Text("Measure Converter"),
      ),
      body: Container(
        width: sizeX,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              spacer,
              Text(
                "value",
                style: labelStyle,
              ),
              spacer,
              TextField(
                style: inputStyle,
                decoration: InputDecoration(
                  hintText: "Please insert the measure to be converted"
                ),
                onChanged: (text){
                  setState(() {
                    var rv = double.tryParse(text);
                    _numberFom = rv!=null ? rv : 0;
                  });
                },
              ),
              spacer,
              Text(
                "From",
                style: labelStyle,
              ),
              spacer,
              DropdownButton<String>(
                isExpanded: true,
                items: _measures.map((value) => DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: inputStyle,
                  ),
                )).toList(),
                onChanged: (newValue) => setState(() {
                  _startMeasure = newValue!;
                }),
                value: _startMeasure,
              ),
              spacer,
              Text(
                "To",
                style: labelStyle,
              ),
              spacer,
              DropdownButton<String>(
                isExpanded: true,
                items: _measures.map((value) => DropdownMenuItem(
                  value: value,
                  child: Text(
                    value,
                    style: inputStyle,
                  ),
                )).toList(),
                onChanged: (newValue) => setState(() {
                  _convertedMeasure = newValue!;
                }),
                value: _convertedMeasure,
              ),
              spacer,
              RaisedButton(
                child: Text(
                  "Convert",
                  style: inputStyle,
                ),
                onPressed: (){
                  if(_startMeasure.isEmpty || _convertedMeasure.isEmpty || _numberFom==0) return ;
                  convert(_numberFom, _startMeasure, _convertedMeasure);
                },
              ),
              spacer,
              Text(
                (_resultMessage==null) ? "" : _resultMessage,
                style: labelStyle,
              ),
              spacer
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    _numberFom = 0;
    _startMeasure = _measures[0];
    _convertedMeasure = _measures[1];
    super.initState();
  }

  void convert(double value, String from, String to) {
    int _numberFrom = _measureMap[from]!;
    int numberTo = _measureMap[to]!;
    double result = _formula[_numberFrom][numberTo]*value;
    if (result == 0) {
      _resultMessage = 'This conversion cannot be performed';
    }
    else {
      _resultMessage = '${_numberFrom.toString()} $_startMeasure are ${result.toString()} $_convertedMeasure';
    }
    setState(() {
      _resultMessage = _resultMessage;
    });
  }

}

