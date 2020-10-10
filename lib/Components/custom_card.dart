import 'package:flutter/material.dart';
import 'package:hci_freelancer_photographer/utilities/constants.dart';

class ProfilePhotographerCard extends StatelessWidget {
  const ProfilePhotographerCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 14, right: 2, left: 2, bottom: 2),
      child: GestureDetector(
        child: Container(
          height: 130,
          padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
          decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(25.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12, blurRadius: 1.0, offset: Offset(0, 1))
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: CircleAvatar(
                      radius: 25.0,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage("images/avatar_1.png"),
                    ),
                    margin: EdgeInsets.only(
                      right: 20,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Thanh Tu",
                        style: kTitleCard,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 20,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            size: 20,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            size: 20,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            size: 20,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star_border,
                            size: 20,
                            color: Colors.yellow,
                          )
                        ],
                      )
                    ],
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 18,
                          color: Colors.grey,
                        ),
                        Text(
                          '8.km',
                          style: kContentCard,
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(
                      child: Text(
                        "Capturing the moments that captivate your heart",
                        style: kContentCard,
                      ),
                      height: 40,
                    ),
                  ),
                  Text(
                    "\$13-\$20/hr",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.lightGreenAccent),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class JobCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 14, right: 2, left: 2, bottom: 2),
      child: GestureDetector(
        child: Container(
          padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
          decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12, blurRadius: 1.0, offset: Offset(0, 1))
            ],
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Personal Photo',
                    style: kTitleCard,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Looking for Photographer expert. This is for Vietnamese local person only...',
                style: kContentCard,
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 12.0,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage("images/avatar_1.png"),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(text: 'Post by ', style: kInlineCard),
                          TextSpan(
                              text: 'Cuong Ly',
                              style: TextStyle(color: Colors.blue)),
                        ]),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    '14 hours ago',
                    style: kInlineCard,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
