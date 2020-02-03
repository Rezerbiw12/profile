import 'package:flutter/material.dart';
import 'package:resume/loadingscreen.dart';
import 'package:resume/loginscreen.dart';
import 'profilescreen.dart';
import 'homescreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoadingScreen(),
     routes: <String,WidgetBuilder>{
          '/HomeScreen':(BuildContext context) => LoginScreen()
        }
    );
  }
}
