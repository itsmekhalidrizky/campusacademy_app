// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:campusacademy_app/models/Product.dart';
import 'package:campusacademy_app/constants.dart';
import 'package:campusacademy_app/screens/details_screen.dart';

class Item_Card extends StatelessWidget {
  final String images;
  final String timewebinarhome;
  final String titlewebinar;
  final String shortestdes;
  final Product product;

  const Item_Card({
    Key? key,
    required this.images,
    required this.product,
    required this.timewebinarhome,
    required this.titlewebinar,
    required this.shortestdes,
  }) : super(key: key);

  get index => null;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            product: product,
                          ),
                        ));
                  },
                  child: Container(
                    width: 350,
                    height: 290,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: 350,
                              height: 170,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Image.asset(
                                images.toString(),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              margin:
                                  EdgeInsets.only(top: 16, left: 5, right: 5),
                              child: Text(
                                timewebinarhome.toString(),
                                style: TextStyle(
                                    color: kTextnotice,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin:
                                  EdgeInsets.only(top: 10, left: 5, right: 5),
                              child: Text(titlewebinar.toString(),
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Container(
                              margin:
                                  EdgeInsets.only(top: 10, left: 5, right: 5),
                              child: Text(shortestdes.toString(),
                                  style: TextStyle(
                                      color: kTextLightColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ],
    );
  }
}
