import 'dart:math';

import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}
 var list = [1,2,3,4,5,6];

 var evens = list.where((e) => e%2 == 0);
 var odds = list.where((e) => e%2 == 1);


class _ProfileScreenState extends State<ProfileScreen> {
  
  var lists = Iterable<int>.generate(101).toList().skip(1).where((i) => i%2 == 0);
  @override
  void initState() {
    print(lists);
    print('number evens is : ${evens}');
    print('number odds is : ${odds}');
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverFillRemaining(
            child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        bottom: 10,
                        right: 122,
                        child: Container(
                          child: Text('Copyright © by Rezerbiw 2020',style: TextStyle(color: Colors.black38,fontSize: 12),),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: ClipRRect(
                          borderRadius: new BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://scontent.fbkk5-1.fna.fbcdn.net/v/t1.0-9/69344622_2380315162257042_6511764723950682112_o.jpg?_nc_cat=106&_nc_ohc=-RAaVDj1ZkgAQlqFViNiYt-94-3hvuehIQEYzBynKhUeccy3NFv6Q-z4g&_nc_ht=scontent.fbkk5-1.fna&oh=cba8db2c8ccfa1e92cf64abf3bff3f5f&oe=5EAC46D5',
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 250,
                        right: 110,
                        child: Container(
                          width: 190.0,
                          height: 190.0,
                          decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    'https://scontent.fbkk5-2.fna.fbcdn.net/v/t1.0-9/p960x960/69168870_2371102676511624_3103166390220095488_o.jpg?_nc_cat=105&_nc_ohc=67p6DgI6NdwAQkXFkfoXyXx6EaTxzxA1JpCfcdy01yAN4UiuYQNDaBm0w&_nc_ht=scontent.fbkk5-2.fna&oh=c4281aa79734c6e2ea0510cda0cce86f&oe=5E7010A0')),
                            border: Border.all(color: Colors.white, width: 3.0),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 70,
                        bottom: 90,
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Column(
                                children: <Widget>[Text('Teerawut Siammai',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)],
                              ),
                              Column(
                                children: <Widget>[
                                  Text(
                                      'Prince Of Songkla University Phuket Campus')
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Text('Computer Engineering ')
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.all(20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        Icon(
                                          Icons.movie,
                                          color: Colors.black,
                                          size: 24.0,
                                        ),
                                        Container(
                                            padding: EdgeInsets.all(10),
                                            child: Text('Movie'))
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Icon(
                                          Icons.local_airport,
                                          color: Colors.black,
                                          size: 24.0,
                                        ),
                                        Container(
                                            padding: EdgeInsets.all(10),
                                            child: Text('Travel'))
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Icon(
                                          Icons.games,
                                          color: Colors.black,
                                          size: 24.0,
                                        ),
                                        Container(
                                            padding: EdgeInsets.all(10),
                                            child: Text('Game'))
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
