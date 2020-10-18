import 'package:flutter/material.dart';
import 'package:gift/widgets/AccountWidgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height / 3,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/mosque.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(top: 20, left: 15, right: 15),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                buildText(text: "Weather"),
                                buildIcon(icons: Icons.refresh),
                              ],
                            ),
                            SizedBox(height: 5),
                            Container(
                              margin: EdgeInsets.only(top: 25),
                              child: Row(
                                children: <Widget>[
                                  buildIcon(icons: Icons.my_location),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  buildText(text: "Okara"),
                                  Spacer(),
                                  buildText(text: "Rain"),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 25),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  buildIcon(icons: Icons.redeem),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  buildText(text: "64.5"),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  buildIcon(icons: Icons.hourglass_empty),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  buildText(text: "22.2"),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 60, left: 10),
                              child: Row(
                                children: <Widget>[
                                  buildText(text: "Saturday"),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  buildText(text: "22.030")
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 10, left: 5, right: 5),
                child: AccountDetailCard(),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildText({String text}) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget buildIcon({IconData icons}) {
    return Icon(
      icons,
      color: Colors.white,
    );
  }
}
