import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:hci_freelancer_photographer/Components/custom_card.dart';
import 'package:line_icons/line_icons.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Destination {
  const Destination(this.title, this.icon, this.color);
  final String title;
  final IconData icon;
  final MaterialColor color;
}

const List<Destination> allDestinations = <Destination>[
  Destination('Home', LineIcons.home, Colors.purple),
  Destination('Search', Icons.search, Colors.cyan),
  Destination(
    'Post',
    LineIcons.plus_circle,
    Colors.orange,
  ),
  Destination('Notification', Icons.mail_outline, Colors.blue),
  Destination('Profile', Icons.person_outline, Colors.blue),
];

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<AppBar> appBars = [];
  AppBar normalAppBar = AppBar(
    toolbarHeight: 80,
    shadowColor: Colors.transparent,
    backgroundColor: Colors.white10,
  );

  AppBar searchAppBars = AppBar(
    toolbarHeight: 80,
    shadowColor: Colors.transparent,
    backgroundColor: Colors.white10,
    title: Container(
      margin: EdgeInsets.only(top: 20, bottom: 10),
      height: 40,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              style: TextStyle(fontSize: 20),
              decoration: InputDecoration(
                focusColor: Colors.black,
                contentPadding: const EdgeInsets.all(10.0),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                suffixIcon: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffE5E5E5),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.tune,
                      color: Colors.grey,
                    ),
                    onPressed: () {},
                  ),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide.none),
                fillColor: Color(0xffE5E5E5),
                filled: true,
              ),
            ),
          ),
        ],
      ),
    ),
    automaticallyImplyLeading: false,
  );

  AppBar currAppbar;
  int _selectedIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    currAppbar = normalAppBar;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor:
            Colors.transparent, //or set color with: Color(0xFF0000FF)
        systemNavigationBarColor: Colors.transparent));
//    SystemChrome.setEnabledSystemUIOverlays([]);

    return Scaffold(
      primary: false,
      appBar: currAppbar,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffC4C4C4),
        mini: true,
        child: Icon(Icons.location_on),
      ),
      body: SafeArea(
        top: false,
        child: IndexedStack(
          index: _selectedIndex,
          children: [
            Container(
                child: DefaultTabController(
              length: 2,
              child: SizedBox(
                child: Column(
                  children: [
                    TabBar(
                      labelColor: Colors.blue,
                      tabs: <Widget>[
                        Tab(
                          text: "FreeLancers",
                        ),
                        Tab(
                          text: "Jobs",
                        )
                      ],
                    ),
                    Expanded(
                      child: TabBarView(children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(18, 0, 18, 1),
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(top: 5),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        ProfilePhotographerCard(),
                                        ProfilePhotographerCard(),
                                        ProfilePhotographerCard(),
                                        ProfilePhotographerCard(),
                                        ProfilePhotographerCard(),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(18, 0, 18, 1),
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(top: 5),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        ProfilePhotographerCard(),
                                        ProfilePhotographerCard(),
                                        ProfilePhotographerCard(),
                                        ProfilePhotographerCard(),
                                        ProfilePhotographerCard(),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                    )
                  ],
                ),
              ),
            )),
            Container(
                child: DefaultTabController(
              length: 2,
              child: SizedBox(
                child: Column(
                  children: [
                    TabBar(
                      labelColor: Colors.blue,
                      tabs: <Widget>[
                        Tab(
                          text: "FreeLancers",
                        ),
                        Tab(
                          text: "Jobs",
                        )
                      ],
                    ),
                    Expanded(
                      child: TabBarView(children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(18, 0, 18, 1),
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(top: 5),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        ProfilePhotographerCard(),
                                        ProfilePhotographerCard(),
                                        ProfilePhotographerCard(),
                                        ProfilePhotographerCard(),
                                        ProfilePhotographerCard(),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(18, 0, 18, 1),
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(top: 5),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        JobCard(),
                                        JobCard(),
                                        JobCard(),
                                        ProfilePhotographerCard(),
                                        ProfilePhotographerCard(),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                    )
                  ],
                ),
              ),
            )),
            Container(
              child: Text('Post'),
            ),
            Container(
              child: Text('Notification'),
            ),
            Container(
              child: Text('Profile'),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
              if (index == 1) {
                currAppbar = searchAppBars;
              } else {
                currAppbar = normalAppBar;
              }
            });
          },
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.black12,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Color(0xff5768FF),
          selectedIconTheme: IconThemeData(size: 29),
          iconSize: 29,
          items: allDestinations.map((Destination destination) {
            if (destination.title == 'Post') {
              return BottomNavigationBarItem(
                  activeIcon: Icon(Icons.add_circle),
                  icon: Icon(
                    destination.icon,
                  ),
                  title: Text(destination.title));
            } else {
              return BottomNavigationBarItem(
                  icon: Icon(
                    destination.icon,
                  ),
                  title: Text(destination.title));
            }
          }).toList()),
    );
  }
}
