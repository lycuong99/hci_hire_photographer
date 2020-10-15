import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hci_freelancer_photographer/Components/custom_card.dart';
import 'package:hci_freelancer_photographer/utilities/constants.dart';
import 'package:line_icons/line_icons.dart';

List<Container> _buildGridAlbumList(int count) {
  //generate list images
  return List<Container>.generate(
      count,
      (int index) => Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'images/album${index + 1}.jpg',
                    ),
                    fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(7),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), //color of shadow
                    spreadRadius: 4, //spread radius
                    blurRadius: 5, // blur radius
                    offset: Offset(0, 4), // changes po
                  )
                ]),
          ));
}

//Widget buildAlbumGrid() {
//  return GridView.extent(
//      // custom extent
//      maxCrossAxisExtent: 150.0, // maximum pixel width of a item
//      padding: const EdgeInsets.all(4.0),
//      mainAxisSpacing: 10.0,
//      crossAxisSpacing: 10.0,
//      children: _buildGridAlbumList(4));
//}

Widget buildGrid() {
  return GridView.count(
      scrollDirection: Axis.vertical,
      primary: false,
      shrinkWrap: true,
      padding: const EdgeInsets.fromLTRB(15, 5, 15, 15),
      crossAxisCount: 2,
      mainAxisSpacing: 15.0,
      crossAxisSpacing: 15.0,
      children: _buildGridAlbumList(4));
}

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.deepPurpleAccent,
        elevation: 4.0,
        label: const Text('HIRE TU'),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          child: Icon(
            Icons.chevron_left,
            color: Colors.black38,
            size: 30,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Color(0xffE5E5E5),
      body: Container(
        margin: EdgeInsets.only(top: 0),
        // padding: EdgeInsets.only(top: 70),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                margin: EdgeInsets.only(right: 0, left: 0, bottom: 15),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 25, right: 25, bottom: 15, top: 70),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 35.0,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage("images/avatar_1.png"),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Thanh Tu',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w700),
                              ),
                              Text(
                                'Ho Chi Minh, VN',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xff6a6a6a)),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Column(
                          children: [
                            ListTile(
                              title: Align(
                                child: Text(
                                  "(+84) 123-456-789",
                                  style: kContentCard,
                                ),
                                alignment: Alignment(-1.2, 0),
                              ),
                              leading:
                                  Icon(Icons.phone, color: Color(0xffadadad)),
                              contentPadding: EdgeInsets.only(left: 0, top: 0),
                              dense: true,
                              visualDensity:
                                  VisualDensity(horizontal: 0, vertical: -3),
                            ),
                            ListTile(
                              dense: true,
                              title: Align(
                                child: Text(
                                  "thanhtu@gmail.com",
                                  style: kContentCard,
                                ),
                                alignment: Alignment(-1.2, 0),
                              ),
                              leading: Icon(
                                Icons.mail_outline,
                                color: Color(0xffadadad),
                                size: 25,
                              ),
                              contentPadding: EdgeInsets.only(left: 0),
                              visualDensity:
                                  VisualDensity(horizontal: 0, vertical: -3),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'About',
                              style: kProfileTitle,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Lorem ipsum dolor sit amet, everti consulatu definitiones pro te. Ut vim postulant forensibus. '
                              'Id usu probo option. Ne mel nihil maiorum postulant, sit et soluta omittantur, inimicus patrioque mel in. Hendrerit assueverit per id.',
                              style: kContentCard,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.all(0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 15, top: 15, right: 15),
                      child: Text(
                        'Albums',
                        style: kProfileTitle,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    buildGrid()
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Card(
                  margin: EdgeInsets.all(0),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Reviews',
                          style: kProfileTitle,
                        ),
                        ListView(
                          padding: EdgeInsets.only(top: 0),
                          shrinkWrap: true,
                          primary: false,
                          children: [ReviewCard(), ReviewCard(), ReviewCard()],
                        )
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class ReviewCard extends StatelessWidget {
  const ReviewCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      // margin: EdgeInsets.only(bottom: 10),
      height: 110,
      decoration: BoxDecoration(
          // color: Colors.grey[100],
          border:
              Border(bottom: BorderSide(width: 0.5, color: Colors.black12))),
      child: GestureDetector(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage("images/avatar_1.png"),
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  'Cuong Ly',
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            Row(
              children: [
                ListStar(
                  size: 15,
                ),
                Text(
                  '27/09/2020',
                  style: kContentCard,
                )
              ],
            ),
            Text('Very good, you make high!')
          ],
        ),
      ),
    );
  }
}
