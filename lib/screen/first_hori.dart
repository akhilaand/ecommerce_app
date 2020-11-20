import 'package:fashion_app/constants/constants.dart';
import 'package:fashion_app/screen/product_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: camel_case_types
class First_Hori extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            images: 'images/coat_fashion.jpg',
            name: 'Coat',
            price: '\$80',
          ),
          Category(
            images: 'images/fit_fashion.jpg',
            name: 'Woolen Coat',
            price: '\$70',
          ),
          Category(
            images: 'images/out_fashion.png',
            name: 'Shirts',
            price: '\$50',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  Category({this.name, this.images, this.breed, this.price});
  final String name;
  final images;
  final breed;
  final price;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Product_screen(
                        price: price,
                        name: name,
                        image: images,
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
                      images,
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
                name,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: grey_shade800,
                    fontSize: 16.5),
              ),
              Text(
                price,
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
  }
}
