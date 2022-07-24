import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:campusacademy_app/constants.dart';
import 'package:campusacademy_app/models/Product.dart';
import 'package:campusacademy_app/components/ItemCard.dart';
import 'package:campusacademy_app/screens/homepage.dart';
import 'package:campusacademy_app/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
    );
  }
}
