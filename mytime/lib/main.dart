import 'package:flutter/material.dart';
import 'package:mytime/widgets.dart';
import 'package:percent_indicator/percent_indicator.dart';

void main() => runApp(MaterialApp(
  title: "My Work Timer",
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    primarySwatch: Colors.blueGrey
  ),
  home: MyApp(),
));

class MyApp extends StatelessWidget {
  final defaultValue = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Work Timer"),
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(defaultValue),
                    ),
                    Expanded(
                      child: ProductivityButton(
                        color: Color(0xff009688),
                        text: "Work",
                        onPressed: emptyMethod,
                        size: 30,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(defaultValue),
                    ),
                    Expanded(
                      child: ProductivityButton(
                        color: Color(0xff607D8B),
                        text: "Short Break",
                        onPressed: emptyMethod,
                        size: 20,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(defaultValue),
                    ),
                    Expanded(
                      child: ProductivityButton(
                        color: Color(0xff455A64),
                        text: "Long Break",
                        onPressed: emptyMethod,
                        size: 20,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(defaultValue),
                    ),
                  ],
                ),
                Expanded(
                  child: CircularPercentIndicator(
                    radius: constraints.maxWidth/2,
                    lineWidth: 10.0,
                    percent: 1,
                    center: Text(
                      "30:00",
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    progressColor: Color(0xff009688),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(defaultValue),
                    ),
                    Expanded(
                      child: ProductivityButton(
                        color: Color(0xff212121),
                        text: "Stop",
                        onPressed: emptyMethod,
                        size: 20,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(defaultValue),
                    ),
                    Expanded(
                      child: ProductivityButton(
                        color: Color(0xff009688),
                        text: "Restart",
                        onPressed: emptyMethod,
                        size: 20,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(defaultValue),
                    ),
                  ],
                )
              ],
            );
          }
        ),
      ),
    );
  }

  void emptyMethod() {
  }
}
