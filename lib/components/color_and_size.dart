// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:campusacademy_app/models/Product.dart';

class ColorAndSize extends StatelessWidget {
  final Product product;
  const ColorAndSize({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(
                Icons.timer_outlined,
                color: Colors.lightBlue,
                size: 25,
              ),
              Text(product.hours,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ],
    );
  }
}
