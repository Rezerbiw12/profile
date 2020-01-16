import 'package:flutter/material.dart';
import 'profilescreen.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _current = 0;
  List imageList = [
    "https://scontent.fbkk9-2.fna.fbcdn.net/v/t1.0-9/77279153_2448141005474457_5998275016909651968_o.jpg?_nc_cat=109&_nc_ohc=qOZ-N9eaK_sAQkxlD0Iapnvk4SHEn_j05ksMDHrFxHHh44Zi_Krird_8A&_nc_ht=scontent.fbkk9-2.fna&oh=5fd45bbb91cd92de7bbbcfe6afd3024a&oe=5EDB0F3F",
    "https://scontent.fbkk8-4.fna.fbcdn.net/v/t1.0-9/75564590_2448140975474460_2503342703748579328_o.jpg?_nc_cat=100&_nc_ohc=9R8ZptYEQugAQkPU2I4ICXh2UUmH3snitZoDi-ewbWlTnlee6rvFXSQVw&_nc_ht=scontent.fbkk8-4.fna&oh=aabbc81afaca36ce95a7793574cecdd7&oe=5E8EF4BA",
    "https://scontent.fbkk12-4.fna.fbcdn.net/v/t1.0-9/78244268_2448140935474464_5843040669605560320_o.jpg?_nc_cat=103&_nc_ohc=b9INRRc2Mw4AQmcu59tKhU9IN-lDhY0Ea9KZ1J0rmmXzRQedRc7w_3jOg&_nc_ht=scontent.fbkk12-4.fna&oh=f156629dd8f484489e7ce1178bf7de44&oe=5ED5AD7E",
    "https://scontent.fbkk12-1.fna.fbcdn.net/v/t1.0-9/76916299_2448140908807800_5702951278930296832_o.jpg?_nc_cat=101&_nc_ohc=JW_RVU6iLKMAQnJj3h7FZVxLbW96kJ_ikXEue_wkQO4YAkw1ClA_ZxznQ&_nc_ht=scontent.fbkk12-1.fna&oh=83887c60a6cf02d96a49bbd5f2347a1e&oe=5E9B5A67",
    "https://scontent.fbkk12-2.fna.fbcdn.net/v/t1.0-9/75252982_2448140828807808_8951400233632268288_o.jpg?_nc_cat=105&_nc_ohc=gZJWr5UgiC0AQkkG-Ivr93heeHevXL_8Svj88Fp52R1LShzVU9SrGhY2g&_nc_ht=scontent.fbkk12-2.fna&oh=f7115a2a4e00d60a9aa194ccd589bead&oe=5EA42228",
    "https://scontent.fbkk5-3.fna.fbcdn.net/v/t1.0-9/68855269_2370184579936767_5434844868964777984_o.jpg?_nc_cat=111&_nc_ohc=_6lvlAcB52YAX-xz1UP&_nc_ht=scontent.fbkk5-3.fna&oh=59b9f307e72f4a7d16f5876a6c6656a4&oe=5EA48CB5",
    "https://scontent.fbkk5-7.fna.fbcdn.net/v/t1.0-9/68555490_2370184829936742_6594999708383444992_o.jpg?_nc_cat=108&_nc_ohc=_-AsO1X6ItsAX_-HzSz&_nc_ht=scontent.fbkk5-7.fna&oh=2e2206ce6b8a94f09f1b67ac616a0df7&oe=5EA6A01E",
    "https://scontent.fbkk5-7.fna.fbcdn.net/v/t1.0-9/68511980_2370184866603405_6227991299786539008_o.jpg?_nc_cat=107&_nc_ohc=LTBONLNOX3EAX8-rspX&_nc_ht=scontent.fbkk5-7.fna&oh=fbdc088eaf03aa92dd96f3d9f1f0ad2d&oe=5EAA29BF",
    "https://scontent.fbkk5-3.fna.fbcdn.net/v/t1.0-9/68733240_2370184799936745_2750342716708618240_o.jpg?_nc_cat=111&_nc_ohc=RQ6iyTL-W0EAX9v5S6w&_nc_ht=scontent.fbkk5-3.fna&oh=02e8b7bee24b4cc91b1ed119e9f94288&oe=5E95F3AD",
  ];
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
              icon: const Icon(
                Icons.account_circle,
                size: 30,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()));
              },
            ),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Container(
              child: Text(
                "My Gallery",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                CarouselSlider(
                    aspectRatio: 16 / 9,
                    autoPlayAnimationDuration: Duration(milliseconds: 2000),
                    height: 200,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    initialPage: 0,
                    onPageChanged: (index) {
                      setState(() {
                        _current = index;
                      });
                    },
                    items: imageList.map((imgUrl) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 10.0),
                              decoration: BoxDecoration(color: Colors.white),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(imgUrl, fit: BoxFit.fill),
                              ));
                        },
                      );
                    }).toList()),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
            Container(
              child: Text(
                "My Project",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
