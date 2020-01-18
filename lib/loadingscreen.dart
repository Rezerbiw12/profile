import 'dart:async';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPage);
  }
  void navigationPage() {
  Navigator.of(context).pushReplacementNamed('/HomeScreen');
}
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.center,
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.blue[300]),
          ), 
          Positioned(
                left: 10,
                bottom: 0,
                child: Container(
                  child: Text('version 2.1.0',style: TextStyle(fontSize: 15),),
                ),
              ),
              Positioned(
                bottom: 60,
                left: 180,
                child: SpinKitCircle(
                  color: Colors.black45,
                  size: 50.0,
                ),
              )
        ],
      ),
    );
  }
}