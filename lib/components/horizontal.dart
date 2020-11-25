import 'package:fashion_app/constants/constants.dart';
import 'package:flutter/material.dart';

class Sections extends StatefulWidget {
  @override
  _SectionsState createState() => _SectionsState();
}

class _SectionsState extends State<Sections>
    with SingleTickerProviderStateMixin {
  List<Widget> list = [
    Container(
        width: 50,
        child: Tab(
          text: "Coat",
        )),
    Tab(
      text: "Dresses",
    ),
    Tab(
      text: "Jersey",
    ),
    Tab(
      text: "Pants",
    ),
    Tab(
      text: "Shirts",
    ),
  ];
  TabController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: list.length, vsync: this);
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
        labelColor: darkCharcol,
        labelStyle: TextStyle(
            letterSpacing: 0.5, color: light_grey, fontWeight: FontWeight.w700),
        unselectedLabelColor: light_grey,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: light_Pink,
        ),
        controller: controller,
        tabs: list);
  }
}
