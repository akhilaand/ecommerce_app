import 'package:fashion_app/screen/first_hori.dart';
import 'package:fashion_app/screen/horizontal.dart';
import 'package:fashion_app/screen/sec_hori.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// ignore: camel_case_types
class Home_Screen extends StatefulWidget {

  static const Color pink=Color(0xffF8D9E0);

  @override
  _Home_ScreenState createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  Color grey=Color(0xff828282);

  Color black=Color(0xff333333);

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 12,right: 12,top: 8,bottom: 8),
            child: ScrollConfiguration(
            behavior: new ScrollBehavior()
            ..buildViewportChrome(context, null, AxisDirection.down),
            child: ListView(
              children:<Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CircleAvatar(),
                      IconButton(icon: Icon(Icons.shopping_cart,
                      color: black,
                      ),
                          onPressed: null)
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
                  SizedBox(
                    height: 30
                  ),
                  Text('Recommended for You',
                  style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 20,
                    fontWeight: FontWeight.w700
                  ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Stack(children:<Widget>[
                    Sec_Hori(),
                  Positioned(
                    bottom: 50,
                    left: MediaQuery.of(context).size.width/2.6,
                    child: Container(
                      child: Icon(Icons.search,
                      color: Colors.white70,
                        size: 30,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade800,
                        borderRadius: BorderRadius.all(Radius.circular(23))
                      ),
                      height: 50,
                      width: 80,

                    ),
                  )
                  ])
                ],
              ),])
            ),
          ),
        ),
        ));


  }
}
