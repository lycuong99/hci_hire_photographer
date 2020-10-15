import 'package:flutter/material.dart';
import 'package:hci_freelancer_photographer/utilities/constants.dart';

class JobDetailScreen extends StatefulWidget {
  @override
  _JobDetailScreenState createState() => _JobDetailScreenState();
}

class _JobDetailScreenState extends State<JobDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(15),
        height: 80,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 4,
              child: RaisedButton(
                elevation: 0,
                color: kAppDefaultColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: (Text(
                  'Apply Now',
                  style: TextStyle(color: Colors.white),
                )),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                onPressed: () {},
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Center(
                child: MaterialButton(
                  elevation: 0,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      side: BorderSide(
                        color: kGreyColor,
                        width: 0.25,
                      )),
                  child: Icon(
                    Icons.message,
                    size: 20,
                    color: kGreyColor,
                  ),
                  padding: EdgeInsets.all(15),
                ),
              ),
            )
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50))),
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    radius: 40.0,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("images/job_1.jpg"),
                  ),
                  Text(
                    'Ads Dhotography',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
                  ),
                  Text(
                    'Ho Chi Minh',
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 18,
                        color: kGreyColor),
                  ),
                  Text(
                    '\$60',
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 24,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Requirements', style: kTitleCard_1),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Identifying your user flow encourages you to align your UI design and navigation with user goals. Optimizing your user flow and conversion funnel will improve your site’s success rate because it will enable users to accomplish their tasks – i.e. convert – as efficiently as possible.",
                      style: kContentCard_1,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
