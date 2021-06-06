import 'package:flutter/material.dart';
import 'package:hotel/components/travelCard.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TravelApp(),
  ));
}

class TravelApp extends StatefulWidget {
  @override
  _TravelAppState createState() => _TravelAppState();
}

class _TravelAppState extends State<TravelApp> {
  List<String> urls = [
    "https://cf.bstatic.com/xdata/images/hotel/square200/14335892.webp?k=290ed4cf467c3d03fababeb0449d3538a470e787efcb8f0374b9a86f00a1add9&o=",
    "https://cf.bstatic.com/xdata/images/hotel/square200/111658428.webp?k=e8e64bce5b628af05965c80d11974698e233f00c59a1a0bea78db9fbf190a1f2&o=",
    "https://cf.bstatic.com/xdata/images/hotel/square200/287739871.webp?k=13c2cc18d5062000e25a81f8ceecccd32cf21726958fee4f70667e6dd6775b7a&o=",
    "https://cf.bstatic.com/xdata/images/xphoto/square300/45450084.webp?k=2ae8e4858809ea16a1f25723d8473a56dabd2216cbddc4562d1711431fbe6669&o=",
    "https://cf.bstatic.com/xdata/images/xphoto/square300/45450062.webp?k=ad1dbdcbc896333ee5a8c86323609a8fe16448b71f6a59e1fc362866bd2a87cb&o=",
    "https://cf.bstatic.com/xdata/images/hotel/square200/76832065.webp?k=a6a8c93fd105f4a4d47ea684c6bdbeed17129a54da1e1ba03836d903594db00a&o=",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F7FF),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFFF6F7FF),
        title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome Doctor Code",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              "Pick your destination",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 20,
            ),
            Material(
              elevation: 10,
              borderRadius: BorderRadius.circular(30),
              shadowColor: Color(0x55434343),
              child: TextField(
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                    hintText: "Search for Hotel, Flight ...",
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black54,
                    ),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            DefaultTabController(
              length: 3,
              child: Expanded(
                child: Column(
                  children: [
                    TabBar(
                      indicatorColor: Color(0xFFFE8C68),
                      unselectedLabelColor: Color(0xFF555555),
                      labelColor: Color(0xFFFE8C68),
                      labelPadding: EdgeInsets.symmetric(horizontal: 8),
                      tabs: [
                        Tab(
                          text: "Trending",
                        ),
                        Tab(
                          text: "Promotions",
                        ),
                        Tab(
                          text: "Favorites",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 300,
                      child: TabBarView(
                        children: [
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                travelCard(
                                    urls[0], "Luxary Hotel", "Caroline", 3),
                                travelCard(urls[1], "Plaza Hotel", "Italy", 4),
                                travelCard(
                                    urls[2], "Safari Hotel", "Africa", 5),
                              ],
                            ),
                          ),
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                travelCard(
                                    urls[3], "Visit Rome", "Caroline", 1),
                                travelCard(
                                    urls[4], "Visit Sidi bou", "Italy", 3),
                              ],
                            ),
                          ),
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Color(0xFFB7B7B7),
        selectedItemColor: Color(0xFFFE8C68),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark), title: Text("Bookmark")),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on), title: Text("Destination")),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), title: Text("Notification")),
        ],
      ),
    );
  }
}
