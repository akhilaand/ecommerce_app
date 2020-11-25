import 'package:fashion_app/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Product_screen extends StatelessWidget {
  final image;
  final name;
  final price;
  Product_screen({this.price, this.name, this.image});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: transp,
          body: Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 533,
                child: Image.asset(
                  image,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                right: 18,
                top: 440,
                child: Container(
                  child: Icon(
                    Icons.favorite_border,
                    size: 20,
                    color: light_grey,
                  ),
                  width: 40,
                  height: 35,
                  decoration:
                      BoxDecoration(color: white24, shape: BoxShape.circle),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5.0, top: 7),
                child: ListTile(
                  leading: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: white,
                      size: 20.0,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  trailing: Stack(children: <Widget>[
                    IconButton(
                        icon: Icon(
                          Icons.shopping_cart,
                          color: white,
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
                              fontSize: 10, fontWeight: FontWeight.w700),
                        )),
                        decoration: BoxDecoration(
                            color: Color(0xffF8D9E0), shape: BoxShape.circle),
                      ),
                    ),
                  ]),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 492.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: grey_shade100,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        )),
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 17, top: 30, right: 17),
                      child: Column(
                        children: <Widget>[
                          Stack(children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  name,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 25),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  price,
                                  style: TextStyle(
                                      color: grey,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Your Size',
                                  style: TextStyle(
                                      color: grey_shade800,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 17),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      height: 28,
                                      width: 25,
                                      child: Center(
                                        child: Text(
                                          'S',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: grey_dark,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          color: grey_shade200,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5)),
                                          boxShadow: [
                                            BoxShadow(
                                              color: grey_shade300,
                                              spreadRadius: 1,
                                              blurRadius: 1,
                                              offset: Offset(1, 1),
                                            ),
                                          ]),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Container(
                                      height: 28,
                                      width: 25,
                                      child: Center(
                                        child: Text(
                                          'M',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: grey_dark,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          color: light_Pink,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5)),
                                          boxShadow: [
                                            BoxShadow(
                                              color: grey_shade300,
                                              spreadRadius: 1,
                                              blurRadius: 1,
                                              offset: Offset(1, 1),
                                            ),
                                          ]),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Container(
                                      height: 28,
                                      width: 25,
                                      child: Center(
                                        child: Text(
                                          'L',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: grey_dark,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          color: grey_shade200,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5)),
                                          boxShadow: [
                                            BoxShadow(
                                              color: grey_shade300,
                                              spreadRadius: 1,
                                              blurRadius: 1,
                                              offset: Offset(1, 1),
                                            ),
                                          ]),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Container(
                                      height: 28,
                                      width: 25,
                                      child: Center(
                                        child: Text(
                                          'XL',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: grey_dark,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color: grey_shade300,
                                              spreadRadius: 1,
                                              blurRadius: 1,
                                              offset: Offset(1, 1),
                                            )
                                          ],
                                          color: grey_shade200,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5))),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 25),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[],
                                  ),
                                )
                              ],
                            ),
                            Positioned(
                              right: 10,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: black),
                                        color: red,
                                        shape: BoxShape.circle),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        color: grey_shade400,
                                        shape: BoxShape.circle),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        color: black, shape: BoxShape.circle),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        color: pink_light,
                                        shape: BoxShape.circle),
                                  )
                                ],
                              ),
                            ),
                          ]),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15.0),
                            child: Container(
                              height: MediaQuery.of(context).size.height / 15,
                              width: MediaQuery.of(context).size.width,
                              child: Center(
                                child: Text(
                                  'Add to Cart',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: white70),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: black,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
