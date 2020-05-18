import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Kalkulator Sederhana',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: KalkulatorSederhana(),
    );
  }
}

class KalkulatorSederhana extends StatefulWidget {
  @override
  _KalkulatorSederhanaState createState() => _KalkulatorSederhanaState();
}

class _KalkulatorSederhanaState extends State<KalkulatorSederhana> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalkulator Sederhana'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              //mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                SizedBox(height: 200.0),
                AutoSizeText(
                  "0",
                  style: Theme.of(context).textTheme.display2,
                  maxLines: 1,
                )
              ],
            )
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RaisedButton(
                  padding: EdgeInsets.all(25),
                  color: Colors.grey,
                  child: Text("7", style: TextStyle(color: Colors.white, fontSize: 25.0),),
                  onPressed: () {},
                ),
                RaisedButton(
                  padding: EdgeInsets.all(25),
                  color: Colors.grey,
                  child: Text("8", style: TextStyle(color: Colors.white, fontSize: 25.0),),
                  onPressed: () {},
                ),
                RaisedButton(
                  padding: EdgeInsets.all(25),
                  color: Colors.grey,
                  child: Text("9", style: TextStyle(color: Colors.white, fontSize: 25.0),),
                  onPressed: () {},
                ),
                RaisedButton(
                  padding: EdgeInsets.all(25),
                  color: Colors.grey,
                  child: Text("X", style: TextStyle(color: Colors.white, fontSize: 25.0),),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          SizedBox(height: 8.0,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RaisedButton(
                  padding: EdgeInsets.all(25),
                  color: Colors.grey,
                  child: Text("4", style: TextStyle(color: Colors.white, fontSize: 25.0),),
                  onPressed: () {},
                ),
                RaisedButton(
                  padding: EdgeInsets.all(25),
                  color: Colors.grey,
                  child: Text("5", style: TextStyle(color: Colors.white, fontSize: 25.0),),
                  onPressed: () {},
                ),
                RaisedButton(
                  padding: EdgeInsets.all(25),
                  color: Colors.grey,
                  child: Text("6", style: TextStyle(color: Colors.white, fontSize: 25.0),),
                  onPressed: () {},
                ),
                RaisedButton(
                  padding: EdgeInsets.all(25),
                  color: Colors.grey,
                  child: Text("-", style: TextStyle(color: Colors.white, fontSize: 25.0),),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          SizedBox(height: 8.0,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RaisedButton(
                  padding: EdgeInsets.all(25),
                  color: Colors.grey,
                  child: Text("1", style: TextStyle(color: Colors.white, fontSize: 25.0),),
                  onPressed: () {},
                ),
                RaisedButton(
                  padding: EdgeInsets.all(25),
                  color: Colors.grey,
                  child: Text("2", style: TextStyle(color: Colors.white, fontSize: 25.0),),
                  onPressed: () {},
                ),
                RaisedButton(
                  padding: EdgeInsets.all(25),
                  color: Colors.grey,
                  child: Text("3", style: TextStyle(color: Colors.white, fontSize: 25.0),),
                  onPressed: () {},
                ),
                RaisedButton(
                  padding: EdgeInsets.all(25),
                  color: Colors.grey,
                  child: Text("+", style: TextStyle(color: Colors.white, fontSize: 25.0),),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          SizedBox(height: 8.0,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RaisedButton(
                  padding: EdgeInsets.all(25),
                  color: Colors.grey,
                  child: Text("C", style: TextStyle(color: Colors.white, fontSize: 25.0),),
                  onPressed: () {},
                ),
                RaisedButton(
                  padding: EdgeInsets.all(25),
                  color: Colors.grey,
                  child: Text("0", style: TextStyle(color: Colors.white, fontSize: 25.0),),
                  onPressed: () {},
                ),
                RaisedButton(
                  padding: EdgeInsets.all(25),
                  color: Colors.grey,
                  child: Text(".", style: TextStyle(color: Colors.white, fontSize: 25.0),),
                  onPressed: () {},
                ),
                RaisedButton(
                  padding: EdgeInsets.all(25),
                  color: Colors.grey,
                  child: Text("=", style: TextStyle(color: Colors.white, fontSize: 25.0),),
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
