import 'package:flutter/material.dart';
import 'profilescreen.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreen'),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(10),
            child: IconButton(
               icon: const Icon(Icons.account_circle,size: 30,),
               onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()));
              },
            ),
          )
        ],
      ),
    );
  }
}
