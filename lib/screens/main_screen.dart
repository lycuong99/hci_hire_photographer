import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:hci_freelancer_photographer/Components/custom_card.dart';
import 'package:hci_freelancer_photographer/screens/profile.dart';
import 'package:hci_freelancer_photographer/utilities/constants.dart';
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
    leading: AvatarButton(),
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
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Color(0xffC4C4C4),
      //   mini: true,
      //   child: Icon(Icons.location_on),
      // ),
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
                    Container(
                      height: 37,
                      margin: EdgeInsets.only(right: 20, left: 20),
                      decoration: BoxDecoration(
                          color: Color(0xffe0e0e0),
                          borderRadius: BorderRadius.circular(5),
                          border:
                              Border.all(color: Color(0xffc4c4c4), width: 1.5)),
                      child: TabBar(
                        unselectedLabelColor: Color(0xff5768FF),
                        indicatorSize: TabBarIndicatorSize.label,
                        indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white),
                        labelColor: Colors.black,
                        indicatorPadding: EdgeInsets.all(0),
                        labelPadding: EdgeInsets.all(0),
                        tabs: <Widget>[
                          TabCustom01(
                            title: 'As customer',
                          ),
                          TabCustom01(
                            title: 'As photographer',
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(children: [
                        Container(
                            padding: EdgeInsets.fromLTRB(18, 0, 18, 1),
                            child: DefaultTabController(
                                length: 4,
                                child: SizedBox(
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 11),
                                        height: 30,
                                        child: TabBar(
                                          indicatorWeight: 0,
                                          unselectedLabelColor:
                                              Color(0xff5768FF),
                                          indicatorSize:
                                              TabBarIndicatorSize.label,
                                          indicator: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: Color(0xff5768FF)),
                                          labelPadding: EdgeInsets.only(
                                              right: 3, left: 3),

                                          // indicatorPadding:
                                          //     EdgeInsets.all(10),
                                          tabs: [
                                            TabCustom02(title: 'All'),
                                            TabCustom02(title: 'Open'),
                                            TabCustom02(title: 'In progress'),
                                            TabCustom02(title: 'Past'),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: TabBarView(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.stretch,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(),
                                                  child: Image(
                                                    image: AssetImage(
                                                        'images/empty1.jpg'),
                                                  ),
                                                ),
                                                Text(
                                                  'You are not working for any jobs right now. Browse jobs to get hired!',
                                                  textAlign: TextAlign.center,
                                                ),
                                                SizedBox(
                                                  height: 40,
                                                ),
                                                RaisedButton(
                                                  color: kAppDefaultColor,
                                                  disabledColor:
                                                      kAppDefaultColor,
                                                  textColor: Colors.white,
                                                  disabledTextColor:
                                                      Colors.white,
                                                  child: Text('Browse jobs'),
                                                )
                                              ],
                                            ),
                                            Column(
                                              children: [JobCard()],
                                            ),
                                            Icon(Icons.movie),
                                            Icon(Icons.games),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ))),
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
                                      children: [],
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
              height: double.infinity,
              padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Create Job',
                          style: kTitleCard,
                        ),
                        CustomTextField(
                          title: 'Title Job',
                          initialValue: 'Hire photographer',
                        ),
                        CustomTextField(
                          title: 'Amount',
                          initialValue: '0',
                          suffixIcon: Icon(Icons.monetization_on),
                        ),
                        CustomTextField(
                          title: 'Expiration date',
                          initialValue: 'October 11, 2020',
                        ),
                        CustomTextField(
                          title: 'Description',
                          initialValue:
                              'Lorem ipsum dolor sit amet, ullum laboramus te has, id aeterno commune qui, vel albucius platonem qualisque cu. Eum duis omittantur at, vix homero fabulas ne. Pri erant nostrum ad, his ei nobis convenire. Vim ut posse adolescens..0',
                        ),
                        RaisedButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 13, horizontal: 30),
                          onPressed: () {},
                          child: Text('Create Job'),
                          color: kAppDefaultColor,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7)),
                        ),
                      ],
                    ),
                  ),
                  // Positioned(
                  //   bottom: 10,
                  //   child: RaisedButton(
                  //     onPressed: () {},
                  //     child: Text('Create Job'),
                  //   ),
                  // )
                ],
              ),
            ),
            Container(
              child: ListView(
                children: [
                  NotificationCard(),
                  NotificationCard(),
                  NotificationCard()
                ],
              ),
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

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(width: 0.5, color: Colors.black12)),
        boxShadow: [
          BoxShadow(
              color: Colors.black12, blurRadius: 1.0, offset: Offset(0, 1))
        ],
      ),
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          CircleAvatar(
            radius: 23.0,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("images/avatar_1.png"),
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(children: [
                  TextSpan(text: 'Cuong Ly ', style: kTitleCard_1),
                  TextSpan(text: 'want to hire you', style: kContentCard),
                ]),
              ),
              Text('9 min ago', style: kContentCard)
            ],
          )
        ],
      ),
    );
  }
}

class AvatarButton extends StatelessWidget {
  const AvatarButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return ProfileScreen();
          },
        ));
      },
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          padding: EdgeInsets.only(left: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 17.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage(
                  "images/avatar_1.png",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String title;
  final String initialValue;
  final Icon suffixIcon;

  CustomTextField({this.title, this.initialValue, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              child: Text(
            title,
            style: kTitleCard,
          )),
          SizedBox(
            height: 7,
          ),
          TextFormField(
            maxLines: null,
            initialValue: initialValue,
            style: kContentCard,
            decoration: InputDecoration(
              suffixIcon: suffixIcon,
              contentPadding: EdgeInsets.all(13),
              isDense: true,
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: Color(0xffc4c4c4), width: 1)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: Color(0xffc4c4c4), width: 0.5)),
            ),
          ),
        ],
      ),
    );
  }
}

class TabCustom02 extends StatelessWidget {
  final String title;
  TabCustom02({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Color(0xffc4c4c4), width: 1)),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            title,
            style: TextStyle(fontSize: 13),
          ),
        ),
      ),
    );
  }
}

class TabCustom01 extends StatelessWidget {
  final String title;

  TabCustom01({@required this.title});
  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        padding: EdgeInsets.all(0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.zero,
              bottomRight: Radius.zero,
              topLeft: Radius.circular(5),
              bottomLeft: Radius.circular(5)),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(title),
        ),
      ),
    );
  }
}
