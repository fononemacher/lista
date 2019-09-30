import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ListaTarefas",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          backgroundColor: Color(0xff5E5E5E),
          iconTheme: IconThemeData(
            color: Color(0xffBC5A5A),
            size: 30,
          ),
          primaryColor:Color(0xffBC5A5A) ,
          accentColor: Color(0xffBC5A5A),
          inputDecorationTheme: InputDecorationTheme(
              border: InputBorder.none,
              fillColor: Color(0xff5E5E5E),
              filled: true,
              labelStyle: TextStyle(
                fontSize: 18,
                color: Colors.white54,
              ),
              prefixStyle: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              )),
          textTheme: TextTheme(
              subhead: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ))),
      home: Home(),
    );
  }
}
