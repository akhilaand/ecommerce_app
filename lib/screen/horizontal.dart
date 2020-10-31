import 'package:flutter/material.dart';

class Sections extends StatefulWidget  {

  @override
  _SectionsState createState() => _SectionsState();
}

class _SectionsState extends State<Sections>
    with SingleTickerProviderStateMixin {
  List <Widget>list=[
    Container(
       width: 50,

        child:
        Tab(text: "Coat",)),
    Tab(text: "Dresses",),
    Tab(text: "Jersey",),
    Tab(text: "Pants",),
    Tab(text: "Shirts",),
  ];
  TabController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length:list.length, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
        isScrollable: true,
        labelColor:  Color(0xff333333),
        labelStyle: TextStyle(
          letterSpacing: 0.5,
            color:
            Color(0xff828282),
            fontWeight: FontWeight.w700),
        unselectedLabelColor: Color(0xff828282),
        indicator: BoxDecoration(

            borderRadius: BorderRadius.all(Radius.circular(30)),

            color:
            Color(0xffFBD9E0)
        ),
        controller: controller,
        tabs: list



        );
  }
}
