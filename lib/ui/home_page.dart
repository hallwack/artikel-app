import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Explorer",
          style: TextStyle(
            fontSize: 24.0,
            color: Colors.grey.shade800,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.grey.shade100,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 18.0),
            child: Icon(
              Icons.menu,
              color: Colors.grey.shade800,
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
            padding: EdgeInsets.only(left: 20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.grey.shade200,
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search...",
                hintStyle: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade500,
                ),
                border: InputBorder.none,
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Container(
            height: 50.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.0, right: 8.0),
                  child: Wrap(
                    children: [
                      CategoryChip(),
                      CategoryChip(),
                      CategoryChip(),
                      CategoryChip(),
                    ],
                    spacing: 8.0,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Text(
                    "Most Popular",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey.shade800,
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.only(left: 12, right: 8),
                    child: Wrap(
                      spacing: 24.0,
                      children: [
                        PopularPost(),
                        PopularPost(),
                        PopularPost(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("More Posts"),
                  Icon(Icons.arrow_forward_rounded),
                ],
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      height: 150,
                      width: 180,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://sportsnewsinstant.com/wp-content/uploads/2018/10/_103890241_liverpool_getty.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(6.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 7,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                    ),
                    Text("Judul"),
                    Text("Like")
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class CategoryChip extends StatelessWidget {
  const CategoryChip({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text("Lorem Ipsum Dolor Sit Amet"),
      backgroundColor: Colors.transparent,
      side: BorderSide(
        color: Colors.grey.shade400,
        width: 1.0,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}

class PopularPost extends StatelessWidget {
  const PopularPost({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      child: Column(
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://sportsnewsinstant.com/wp-content/uploads/2018/10/_103890241_liverpool_getty.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(6.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 7,
                  spreadRadius: 2,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              "Akhirnya Liverpool Udah Ga Puasa Lagi Gaes",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                color: Colors.grey.shade900,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Wrap(
                direction: Axis.horizontal,
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 6.0,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://media.newyorker.com/photos/5ba177da9eb2f7420aadeb98/1:1/w_1003,h_1003,c_limit/Cohen-Linus-Torvalds.jpg'),
                    radius: 21,
                  ),
                  Column(
                    children: [
                      Text(
                        "Linus Torvalds",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "19-09-2009",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Wrap(
                spacing: 4.0,
                direction: Axis.horizontal,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.red.shade700,
                  ),
                  Text("239"),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
