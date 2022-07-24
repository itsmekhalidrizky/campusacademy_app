import 'package:flutter/material.dart';
import 'package:campusacademy_app/models/Product.dart';
import 'package:campusacademy_app/components/product_title_with_image.dart';
import 'package:campusacademy_app/components/color_and_size.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: 25,
                    right: 25,
                  ),
                  height: 500,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25))),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product),
                    ],
                  ),
                ),
                ProductTitleWithimage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}
