
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// ignore: camel_case_types
class Sec_Hori extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,

      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: <Widget>[

          Category(
            images: 'images/tshirt_fashion.jpg',


          ),

          Category(
            images: 'images/woolen_fashion.jpg',

          ),

          Category(
            images: 'images/winter_fashion.jpg',

          ),
          Category(

            images: 'images/shirt_fashion.jpg',
          ),




        ],
      ),
    );
  }
}
class Category extends StatelessWidget {
  Category({this.name,this.images,this.breed,this.price});
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
          child: Container(

            height: 260,
            width: 200,
//          child: Image.asset(images),
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(images,

                  ),),


                borderRadius: BorderRadius.all(Radius.circular(20))
            ),
          ),
        ),


        ]);



  }
}
