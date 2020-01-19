import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CommentsScreen extends StatefulWidget {
  @override
  _CommentsScreenState createState() => _CommentsScreenState();
}

class _CommentsScreenState extends State<CommentsScreen> {
  get_api() async{
    var url = 'https://jsonplaceholder.typicode.com/posts/1/comments';
    var res = await http.get(url);
    var map = json.decode(utf8.decode(res.bodyBytes));
    print(map);
    setState(() {
      data = map;
    });
  }
  var data;
  @override
  void initState() {
    get_api();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comments'),
        centerTitle: true,
      ),
      body:ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder:(context,index){
          return Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              child: Card(
                child:Column(
                  children: <Widget>[
                    ListTile(
                          leading: Icon(Icons.comment, size: 50),
                          title: Text('Email@: ${data[index]['email']}'),
                          subtitle: Text(data[index]['body']),
                        ),
                  ],
                ) ,
              ),
            ) ,
          );
        } ,
      ) ,
    );
  }
}