import 'package:flutter/material.dart';
import 'package:campusacademy_app/models/Product.dart';

class ProductTitleWithimage extends StatelessWidget {
  const ProductTitleWithimage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              product.category,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 40, bottom: 20),
              child: Text(product.title,
                  maxLines: 3,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
            ),
            Row(
              children: <Widget>[
                RichText(
                    text: TextSpan(children: [
                  const TextSpan(text: "Price\n"),
                  TextSpan(
                      text: product.price,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                ])),
                const SizedBox(
                  width: 60,
                ),
                Expanded(
                  child: Image.asset(
                    product.filler,
                    fit: BoxFit.fill,
                  ),
                )
              ],
            )
          ]),
    );
  }
}
