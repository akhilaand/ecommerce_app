import 'package:fashion_app/constants/constants.dart';
import 'package:fashion_app/screen/first_hori.dart';
import 'package:fashion_app/screen/horizontal.dart';
import 'package:fashion_app/screen/sec_hori.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: camel_case_types
class Home_Screen extends StatefulWidget {
  @override
  _Home_ScreenState createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SafeArea(
            child: ScrollConfiguration(
                behavior: new ScrollBehavior()
                  ..buildViewportChrome(context, null, AxisDirection.down),
                child: ListView(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 3.0),
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('images/circle.jpg'),
                              ),
                            ),
                            Stack(children: <Widget>[
                              IconButton(
                                  icon: Icon(
                                    Icons.shopping_cart,
                                    color: black,
                                  ),
                                  onPressed: null),
                              Positioned(
                                top: 5,
                                right: 8,
                                child: Container(
                                  height: 20,
                                  width: 14,
                                  child: Center(
                                      child: Text(
                                    '2',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700),
                                  )),
                                  decoration: BoxDecoration(
                                      color: Color(0xffF8D9E0),
                                      shape: BoxShape.circle),
                                ),
                              ),
                            ]),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Sections(),
                        SizedBox(
                          height: 4,
                        ),
                        First_Hori(),
                        SizedBox(height: 30),
                        Text(
                          'Recommended for You',
                          style: TextStyle(
                              color: grey_shade800,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Stack(children: <Widget>[
                          Sec_Hori(),
                          Positioned(
                            bottom: 50,
                            left: MediaQuery.of(context).size.width / 2.6,
                            child: Container(
                              child: Icon(
                                Icons.search,
                                color: white70,
                                size: 30,
                              ),
                              decoration: BoxDecoration(
                                  color: grey_shade800,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(23))),
                              height: 50,
                              width: 80,
                            ),
                          )
                        ])
                      ],
                    ),
                  ),
                ])),
          ),
        ));
  }
}
