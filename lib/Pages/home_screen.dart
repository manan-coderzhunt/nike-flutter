import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openLeftDrawer() {
    _scaffoldKey.currentState?.openDrawer();
  }

  void _openRightDrawer() {
    _scaffoldKey.currentState?.openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(
          backgroundColor: Color.fromRGBO(2, 14, 21, 1.0),
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Text(
                  'Left Drawer ',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                decoration: BoxDecoration(),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        endDrawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Text('Right Drawer Header'),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        backgroundColor: Color.fromRGBO(26, 37, 48, 1),
        body: ListView(children: [
          Container(
              child: Stack(children: [
            Container(
              margin: EdgeInsets.only(left: 15.0, right: 15.0),
              child: Column(children: [
                SizedBox(height: 50.0),
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: _openLeftDrawer,
                            child: SvgPicture.asset(
                              "assets/images/2.svg", // Path of your icon
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                'Store Location',
                                style: TextStyle(
                                  color: Color.fromRGBO(112, 123, 129, 1),
                                  fontWeight: FontWeight.w100,
                                  fontFamily: 'Poppins1',
                                  fontSize: 14,
                                ),
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    "assets/images/location.svg", // Path of your icon
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'Mondolibug, Sylhet',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Poppins1',
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: _openLeftDrawer,
                            child: SvgPicture.asset(
                              "assets/images/3.svg", // Path of your icon
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    SvgPicture.asset(
                      width: 40,
                      height: 45,
                      "assets/images/Button.svg", // Path of your icon
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset(
                      "assets/images/Frame 7.svg", // Path of your icon
                    ),
                    SvgPicture.asset(
                      "assets/images/Frame 8.svg", // Path of your icon
                    ),
                    SvgPicture.asset(
                      "assets/images/Frame 9.svg", // Path of your icon
                    ),
                    SvgPicture.asset(
                      "assets/images/Frame 10.svg", // Path of your icon
                    ),
                    SvgPicture.asset(
                      "assets/images/Frame 11.svg", // Path of your icon
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Shoes',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        color: Color.fromRGBO(91, 158, 225, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 5, left: 5),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(22, 31, 40, 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/splash1.png',
                            width: 150,
                            height: 110,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20),
                              Text(
                                'BEST SELLER',
                                style: TextStyle(
                                  color: Color.fromRGBO(91, 158, 225, 1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Nike Air Jordan',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              SizedBox(width: 15),
                              Text(
                                '\$493.00',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 45),
                              SvgPicture.asset(
                                "assets/images/Group 107.svg", // Path of your icon
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      padding: EdgeInsets.only(right: 5, left: 5),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(22, 31, 40, 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 5),
                          Image.asset(
                            'assets/images/splash3.png',
                            width: 150,
                            height: 110,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20),
                              Text(
                                'BEST SELLER',
                                style: TextStyle(
                                  color: Color.fromRGBO(91, 158, 225, 1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Nike Air Jordan',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              SizedBox(width: 15),
                              Text(
                                '\$493.00',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 45),
                              SvgPicture.asset(
                                "assets/images/Group 107.svg", // Path of your icon
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'New Arrivals',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        color: Color.fromRGBO(91, 158, 225, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Container(
                  width: 320,
                  height: 140,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(22, 31, 40, 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 40),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20),
                          Text(
                            'Best Choice',
                            style: TextStyle(
                              color: Color.fromRGBO(91, 158, 225, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Nike Air Jordan',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 15),
                          Text(
                            '\$849.69',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Column(
                        children: [
                          SizedBox(height: 20),
                          Image.asset(
                            'assets/images/splash3.png',
                            width: 150,
                            height: 110,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30),
              ]),
            )
          ])),
        ]));
  }
}

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(color: Colors.blue),
          ),
          ListTile(
            title: Text('Item1'),
          )
        ],
      ),
    );
  }
}
