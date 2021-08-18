import 'package:flutter/material.dart';

/* class AppHome extends StatelessWidget {
  const AppHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.only(left: 12.0),
          child: Text(
            "Explore",
            style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w500),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(Icons.menu),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 6.0),
              child: Text("Text"),
            ),
          ],
        ),
      ),
    );
  }
} */

class AppHome extends StatefulWidget {
  AppHome({Key? key}) : super(key: key);

  @override
  _AppHomeState createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  TextEditingController textController =
      TextEditingController(text: "Nilai Awal");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.only(left: 12.0),
          child: Text(
            "Explore",
            style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.w500,
              color: Colors.grey.shade800,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.menu,
                color: Colors.grey.shade800,
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              padding: EdgeInsets.only(left: 28),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Container(
              child: SizedBox(
                height: 40.0,
                child: ListView(
                  padding: EdgeInsets.only(left: 24.0),
                  scrollDirection: Axis.horizontal,
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      child: Text("INI BUTTON"),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      child: Text("INI BUTTON"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
