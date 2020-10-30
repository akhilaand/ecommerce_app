import 'package:fashion_app/screen/horizontal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class Home_Screen extends StatefulWidget {
  @override
  _Home_ScreenState createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    CircleAvatar(),
                    IconButton(icon: Icon(Icons.shopping_cart,
                    color: Color(0xff333333),
                    ),
                        onPressed: null)
                  ],
                ),
                Horizontal()
              ],
            ),
          ),
        ),
        ),
      );

  }
}
