import 'package:fashion_app/constants/constants.dart';
import 'package:fashion_app/data/first_hori_data.dart';
import 'file:///C:/Users/MyPc/Desktop/btech/flutter_projects/fashion_app/lib/components/product_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: camel_case_types

class First_Hori extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: ListView.builder(
        itemCount: first_orderList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Product_screen(
                              price: first_orderList[index].price,
                              name: first_orderList[index].name,
                              image: first_orderList[index].images,
                            )));
                  },
                  child: Container(
                    height: 280,
                    width: 200,
//          child: Image.asset(images),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            first_orderList[index].images,
                          ),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                width: 190,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      first_orderList[index].name,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: grey_shade800,
                          fontSize: 16.5),
                    ),
                    Text(
                      first_orderList[index].price,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: light_grey,
                          fontSize: 15),
                    ),
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
