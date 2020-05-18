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

  String output="0";
  String _output="0";
  double nilai1 = 0.0;
  double nilai2 = 0.0;
  String operator="";

  buttonPressed(String buttonText){
    if(buttonText=="Clear"){
       output="0";
       _output="0";
       nilai1 = 0.0;
       nilai2 = 0.0;
       operator="";
    }else if(buttonText == "/" || buttonText == "x" || buttonText == "-" || buttonText == "+"){
      nilai1 = double.parse(output);
      operator = buttonText;
      _output = "0";
    }else if(buttonText == "="){
      nilai2 = double.parse(output);
      if(operator == "/"){
        _output = (nilai1 / nilai2).toString();
      }
      if(operator == "x"){
        _output = (nilai1 * nilai2).toString();
      }
      if(operator == "-"){
        _output = (nilai1 - nilai2).toString();
      }
      if(operator == "+"){
        _output = (nilai1 + nilai2).toString();
      }
      nilai1 = 0.0;
      nilai2 = 0.0;
      operator = "";
    }else{
      _output = _output + buttonText;
    }
    print(_output);
    setState(() {
      output = double.parse(_output).toStringAsFixed(2);
    });

  }


  Widget createButton(String buttonText){
    return Expanded(
        child: OutlineButton(
          child: Text(buttonText,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold
            ),
          ),
            padding: EdgeInsets.all(24.0),
            onPressed: ()=>
            buttonPressed(buttonText)

        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // key: _key,
      appBar: AppBar(
        title: Text('Kalkulator Sederhana'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              //mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                //SizedBox(height: 200.0),
                AutoSizeText(
                  output,
                  style: Theme.of(context).textTheme.display2,
                  maxLines: 1,
                ),
                SizedBox(height: 265.0,),
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        createButton("7"),
                        createButton("8"),
                        createButton("9"),
                        createButton("/"),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        createButton("4"),
                        createButton("5"),
                        createButton("6"),
                        createButton("x"),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        createButton("1"),
                        createButton("2"),
                        createButton("3"),
                        createButton("-"),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        createButton("Clear"),
                        createButton("0"),
                        createButton("="),
                        createButton("+"),
                      ],
                    )
                  ],
                )
              ],
            )
          ),

        ],
      ),
    );
  }
}
