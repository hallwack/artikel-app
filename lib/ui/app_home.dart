import 'package:flutter/material.dart';
import 'package:artikel_app/data/data_json.dart';

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

  bool selectedCategory = false;

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
      body: ListView(
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
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 14.0),
                  child: Wrap(
                    spacing: 8.0,
                    children: List.generate(
                      category.length,
                      (index) {
                        return GestureDetector(
                          onTap: () {
                            category[index].isSelected =
                                !category[index].isSelected;
                            setState(() {});
                          },
                          child: Chip(
                            label: Text(category[index].name),
                            backgroundColor: category[index].isSelected == true
                                ? Color(0xff414078)
                                : Colors.white,
                            side: BorderSide(
                              color: Colors.deepOrange,
                              width: 2.0,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Most Popular"),
              Row(
                children: [
                  SizedBox(
                    height: 12,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
