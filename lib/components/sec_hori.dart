import 'package:fashion_app/data/sec_hori_data.dart';
import 'package:fashion_app/screen/product_screen.dart';
import 'package:flutter/material.dart';

class Sec_Hori extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: orderList.length,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return Column(children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Product_screen(
                              price: orderList[index].price,
                              name: orderList[index].name,
                              image: orderList[index].images,
                            )));
                  },
                  child: Container(
                    height: 260,
                    width: 200,
//          child: Image.asset(images),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            orderList[index].images,
                          ),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                ),
              ),
            ]);
          }),
    );
  }
}
