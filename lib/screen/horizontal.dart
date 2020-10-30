import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class Horizontal extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,

      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: <Widget>[

          Category(
            name: 'Coats',
          ),

          Category(
            name: 'Dresses',
          ),

          Category(
            name: 'Birds',
          ),

          Category(
            name: 'jersey',
          ),
          Category(
            name: 'pants',
          ),


        ],
      ),
    );
  }
}
class Category extends StatefulWidget {

  Category({this.name,});
  final String name;

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  bool value=false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(13.0),
      child: InkWell(
        splashColor: Colors.white,
        onTap: (){
          setState(() {
            value=true;
          });

          print(value);
        },
        child: Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(

              color: value?Color(0xffF8D9E0):null,
              borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          child: Center(child:
          Padding(
            padding: const EdgeInsets.only(left:8.0,right: 8.0),
            child: Text(
              widget.name,
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
          ),),
        ),
      ),
    );
  }
}
