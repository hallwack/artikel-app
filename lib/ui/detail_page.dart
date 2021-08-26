import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BackButton(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.bookmark_outline),
                )
              ],
            ),
            Image(
              image: NetworkImage(
                  'https://sportsnewsinstant.com/wp-content/uploads/2018/10/_103890241_liverpool_getty.jpg'),
              fit: BoxFit.cover,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              child: Wrap(
                spacing: 24.0,
                direction: Axis.vertical,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Text("Akhirnya Liverpool Udah Ga Puasa Lagi Gaes",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600),
                        textAlign: TextAlign.justify),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Wrap(
                      direction: Axis.horizontal,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      alignment: WrapAlignment.spaceBetween,
                      spacing: 100.0,
                      children: [
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          spacing: 40,
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://media.newyorker.com/photos/5ba177da9eb2f7420aadeb98/1:1/w_1003,h_1003,c_limit/Cohen-Linus-Torvalds.jpg'),
                              radius: 25,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Linus Torvalds",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  "19-09-2009",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vestibulum eros non congue malesuada. Suspendisse eget lacus ac sapien aliquam suscipit. Quisque scelerisque interdum diam ac tempor. Etiam in velit velit. Integer eget purus a massa aliquet fringilla. Sed ut condimentum mauris. Curabitur tempus sem metus, ut interdum diam pretium mollis. Mauris orci justo, tincidunt et ante nec, tincidunt blandit velit. Morbi at sapien nulla. Ut id metus iaculis ex eleifend aliquet. Fusce bibendum metus et dui consequat egestas ac et tellus. Quisque tincidunt sit amet dolor et fermentum. Vestibulum eu ante non leo aliquet sollicitudin ac quis libero. Quisque sodales, lorem pellentesque lacinia malesuada, nisl sem auctor lacus, id varius arcu elit eget urna. Integer imperdiet nulla sit amet congue gravida. Aenean volutpat tempor consequat.

Donec nec vestibulum nibh. Aliquam erat eros, consectetur non ullamcorper id, pretium quis urna. In tempor enim id feugiat gravida. Nullam viverra lectus id purus mattis accumsan eget non dui. Cras fermentum urna elementum dui venenatis, vitae fermentum tortor aliquet. Nulla enim nunc, facilisis nec sodales a, consequat a justo. Maecenas nec urna suscipit, gravida dolor non, porttitor ipsum. Nam a laoreet enim. Proin tortor eros, sodales sed lectus a, gravida malesuada magna. Pellentesque sodales quam eu diam bibendum ultricies. Sed rhoncus lacus nec justo venenatis ornare. Duis eget mi et orci porttitor finibus at ac ipsum. Quisque fermentum auctor sapien, at luctus felis gravida id.

In hac habitasse platea dictumst. Etiam dapibus, metus nec pretium pulvinar, felis felis tempor lectus, at ullamcorper elit ligula vel purus. Integer luctus sapien lectus, et luctus velit posuere a. Nullam rhoncus elit sit amet nisl posuere, id congue felis fermentum. Donec porttitor felis quam, sed tempus justo posuere aliquam. Curabitur eu mi nibh. Nam malesuada arcu eu euismod venenatis. Mauris vehicula molestie gravida. Aliquam non semper nisi. Donec tortor nulla, faucibus vitae massa sit amet, vestibulum ullamcorper ante. Cras consectetur mi sit amet bibendum vulputate. Ut posuere, ligula eu convallis volutpat, nisi velit aliquet dui, a feugiat tortor mauris nec turpis. Suspendisse blandit ornare nunc, quis tincidunt erat hendrerit at. Cras dapibus pellentesque metus quis ullamcorper.""",
                      softWrap: true,
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite_outline)),
              IconButton(onPressed: () {}, icon: Icon(Icons.comment_outlined)),
              IconButton(onPressed: () {}, icon: Icon(Icons.visibility)),
              IconButton(onPressed: () {}, icon: Icon(Icons.share)),
            ],
          ),
        ));
  }
}
