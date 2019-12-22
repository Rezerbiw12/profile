import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

final List<Color> colorList = [
  Colors.red,
  Colors.orange,
  Colors.green,
  Colors.purple,
  Colors.blue,
  Colors.yellow,
  Colors.pink,
  Colors.teal,
  Colors.deepPurpleAccent
];

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text('Teerawut Siammai',style: TextStyle(fontSize: 20),),
            ),
            floating: false,
          ),
         SliverFillRemaining(
           child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Container(
            child: Stack(
              children: <Widget>[
                Container(
                  color: Colors.white,
                  height: 500,
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
                  left: 115,
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
                    child: Center(child: Text('teerawut siammai',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight:FontWeight.bold),),)
                  ),
                )
              ],
            ),
          )),
         ),
         SliverFixedExtentList (// SliverList's grammatical sugar, used for Lists of fixed height per item
      delegate: SliverChildBuilderDelegate(
        (context, index) => Container(color: colorList[index]),
        childCount: colorList.length,
      ),
      itemExtent: 100,
    ),
        ],
      )
    );
  }
}
