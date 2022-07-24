import 'package:flutter/material.dart';

class Product {
  final String image;
  final filler;
  final category;
  final hours;
  final String times;
  final String title;
  final String price;
  final String Shortdescription;
  final String description;
  final int size, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.filler,
    required this.category,
    required this.hours,
    required this.times,
    required this.title,
    required this.price,
    required this.Shortdescription,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      category: "Leadership",
      times: "Start: 18aug 2022",
      hours: "2 Hours",
      title: "Leadership in Digital Era",
      price: "FREE",
      size: 12,
      Shortdescription:
          "when an unknown printer took a galley of type\nand scrambled it to make a type book.",
      description: dummyText,
      image: "assets/images/webinar1.png",
      filler: "assets/images/filler_1.png",
      color: Color(0xFF89A8FF)),
  Product(
      id: 2,
      category: "Digital Marketing",
      times: "Start: 20aug 2022",
      hours: "1 Hours",
      title: "Learn digital marketing",
      price: "FREE",
      size: 8,
      Shortdescription:
          "It is a long established fact that a reader\nwill be distracted by the readable",
      description: dummyText,
      image: "assets/images/webinar2.png",
      filler: "assets/images/filler_2.png",
      color: Color(0xFFFB9ED2)),
  Product(
      id: 3,
      category: "Technology",
      times: "Start: 22aug 2022",
      hours: "2 Hours",
      title: "Career in UI / UX",
      price: "FREE",
      size: 10,
      Shortdescription:
          "There are many variations of passages of Lorem\nIpsum available, but the majority have suffered",
      description: dummyText,
      image: "assets/images/webinar3.png",
      filler: "assets/images/filler_3.png",
      color: Color(0xFF23C4F3)),
  Product(
      id: 4,
      category: "Technology",
      times: "Start: 24aug 2022",
      hours: "1 Hours",
      title: "Career as Data Analyst",
      price: "FREE",
      size: 11,
      Shortdescription:
          "Contrary to popular belief.\nIt has roots in a piece of classical Latin",
      description: dummyText,
      image: "assets/images/webinar4.png",
      filler: "assets/images/filler_4.png",
      color: Color(0xFF20DFC3)),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
