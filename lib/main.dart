import 'package:attractive_ui/next_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0, right: 20.0, left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            headingRow(),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Discover",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Suitable Home",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            searchAndNotiRow(),
            SizedBox(
              height: 40.0,
            ),
            Container(
              height: 400.00,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  homeList(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottomNavigationBarWidget(),
    );
  }

  Widget bottomNavigationBarWidget() {
    return Container(
      margin: EdgeInsets.only(bottom: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          index == 1
              ? _selectedItem(Icon(Icons.home), "Home")
              : IconButton(
                  icon: Icon(Icons.home),
                  onPressed: () {
                    setState(() {
                      index = 1;
                    });
                  },
                ),
          index == 2
              ? _selectedItem(Icon(Icons.bookmark_border), "BookMark")
              : IconButton(
                  icon: Icon(Icons.bookmark_border),
                  onPressed: () {
                    setState(() {
                      index = 2;
                    });
                  },
                ),
          index == 3
              ? _selectedItem(Icon(Icons.message), "Message")
              : IconButton(
                  icon: Icon(Icons.message),
                  onPressed: () {
                    setState(() {
                      index = 3;
                    });
                  },
                ),
          index == 4
              ? _selectedItem(Icon(Icons.perm_identity), "Profile")
              : IconButton(
                  icon: Icon(Icons.perm_identity),
                  onPressed: () {
                    setState(() {
                      index = 4;
                    });
                  },
                ),
        ],
      ),
    );
  }

  Widget headingRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "Phone Thiri Kyaw",
          style: TextStyle(
              fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: NetworkImage(
                      "https://chincelebrity.com/wp-content/uploads/2018/12/FB_IMG_1544080457790.jpg"),
                  fit: BoxFit.cover)),
        )
      ],
    );
  }

  Widget searchAndNotiRow() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.purple.withOpacity(.6),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0))),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Find a good home",
                  border: InputBorder.none),
            ),
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        Stack(
          children: <Widget>[
            Icon(Icons.notifications_none),
            Positioned(
              top: 1,
              right: 1,
              child: Container(
                padding: EdgeInsets.all(2.0),
                child: Text(
                  "2",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10.0,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  shape: BoxShape.circle,
                ),
              ),
            )
          ],
        )
      ],
    );
  }

  Widget homeList() {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) {
          return NextPage();
        }));
      },
      child: Container(
        width: 250.00,
        height: 400.00,
        child: Stack(
          children: <Widget>[
            Hero(
              tag: "https://chincelebrity.com/wp-content/uploads/2018/12/FB_IMG_1544080457790.jpg",
              child: Container(
                width: 230.00,
                height: 375.00,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                    ),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://chincelebrity.com/wp-content/uploads/2018/12/FB_IMG_1544080457790.jpg"),
                        fit: BoxFit.cover)),
              ),
            ),
            Positioned(
              bottom: 1,
              right: 30,
              child: FloatingActionButton(
                heroTag: null,
                child: Icon(
                  Icons.chevron_right,
                  color: Colors.white,
                ),
                onPressed: () {},
                backgroundColor: Colors.orange,
                mini: true,
              ),
            ),
            Positioned(
              bottom: 40,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Family House",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                      Text(
                        "088 Alisha Hill Apt.345",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _selectedItem(Icon icon, String str) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
        color: Colors.purple.withOpacity(.2),
      ),
      child: Row(
        children: <Widget>[
          icon,
          Text(
            str,
            style: TextStyle(color: Colors.purple[900]),
          )
        ],
      ),
    );
  }
}
