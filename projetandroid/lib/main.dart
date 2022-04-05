import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello World Travel App"),
          backgroundColor: Colors.deepPurple,
        ),
        body: Builder(
          builder: (context)=>Padding(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Column(
                children: [
                  Text(
                    "Hello World Travel",
                    style: TextStyle(
                        fontSize: 26,
                        color: Colors.blue[800],
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    "Discover the world",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.deepPurpleAccent
                    ),
                  ),
                  Image.network(
                    "https://images.freeimages.com/images/large-previews/eaa/the-beach-1464354.jpg",
                    height: 360,
                  ),
                  RaisedButton(
                    child: Text("press me"),
                    onPressed: ()=>contactUs(context),
                  )
                ],
              ),
          ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

void contactUs(BuildContext context){
  showDialog(
    context: context,
    builder: (BuildContext context){
      return AlertDialog(
        title: Text(
          "About Us",
          style: TextStyle(
            color: Colors.white
          ),
        ),
        content: Text(
          "Contact us on hello@World.com",
          style: TextStyle(
              color: Colors.white
          ),
        ),
        actions: [
          FlatButton(
            child: Text(
              "Close",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: ()=>Navigator.of(context).pop(),
          )
        ],
        backgroundColor: Colors.deepPurpleAccent,
      );
    }
  );
}