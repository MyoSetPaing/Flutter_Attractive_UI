import 'package:flutter/material.dart';

class NextPage extends StatefulWidget {
  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
              height: screenHeight * 0.6,
              child: Hero(
                tag: "https://chincelebrity.com/wp-content/uploads/2018/12/FB_IMG_1544080457790.jpg",
                child: Image.network(
                  "https://chincelebrity.com/wp-content/uploads/2018/12/FB_IMG_1544080457790.jpg",
                  fit: BoxFit.cover,
                ),
              )),
          Container(
            margin: EdgeInsets.only(top: screenHeight * 0.3),
            child: Material(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(90.0),
              ),
              child: Container(
                padding: EdgeInsets.only(
                    left: 40.0, top: 40.0, right: 10.0, bottom: 30.0),
                child: ListView(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "\$4,999",
                          style: TextStyle(
                              color: Colors.purple,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.bookmark_border,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Family Home",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.spa,
                              size: 15,
                            ),
                            Text("2"),
                            Icon(Icons.room_service, size: 15),
                            Text("3"),
                            Icon(Icons.directions_car, size: 15),
                            Text("2")
                          ],
                        ),
                        Text("1,200sq.ft")
                      ],
                    ),
                    Divider(),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Home Loan Calculator",
                      style: TextStyle(
                          color: Colors.black.withOpacity(.8),
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("\$1602/month"),
                        Icon(
                          Icons.question_answer,
                          color: Colors.purple,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Your Home Loan ",
                      style: TextStyle(
                          color: Colors.black.withOpacity(.8),
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Apply for conditional approval"),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Image.network(
                        "https://media.wired.com/photos/59269cd37034dc5f91bec0f1/191:100/pass/GoogleMapTA.jpg"),
                    SizedBox(height: 20.0),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30.0),
                                  bottomLeft: Radius.circular(30.0),
                                  bottomRight: Radius.circular(30.0),
                                ),
                                color: Colors.purple.withOpacity(0.2)),
                            child: Text(
                              "Ask a Question",
                              style: TextStyle(color: Colors.purple),
                            ),
                            padding: EdgeInsets.all(10.0),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30.0),
                                  bottomLeft: Radius.circular(30.0),
                                  bottomRight: Radius.circular(30.0),
                                ),
                                color: Colors.purple),
                            child: Text(
                              "Express Intererst",
                              style: TextStyle(color: Colors.white),
                            ),
                            padding: EdgeInsets.all(10.0),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
