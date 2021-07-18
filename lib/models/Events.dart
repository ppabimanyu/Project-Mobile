import 'package:flutter/material.dart';

class Product {
  final String image, title, description, category, platform, date, time;
  final int price, size, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.category,
    required this.platform,
    required this.date,
    required this.time,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Office Code",
      category: "seminar",
      date: "1 january 2021",
      time: "17.00",
      platform: 'Zoom',
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_1.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Belt Bag",
      category: "seminar",
      date: "1 january 2021",
      time: "17.00",
      platform: 'Zoom',
      price: 234,
      size: 8,
      description: dummyText,
      image: "assets/images/bag_2.png",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Hang Top",
      category: "seminar",
      date: "1 january 2021",
      time: "17.00",
      platform: 'Zoom',
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/images/bag_3.png",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "Old Fashion",
      category: "seminar",
      date: "1 january 2021",
      time: "17.00",
      platform: 'Zoom',
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/images/bag_4.png",
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Office Code",
      category: "seminar",
      date: "1 january 2021",
      time: "17.00",
      platform: 'Zoom',
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_5.png",
      color: Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Office Code",
    category: "seminar",
    date: "1 january 2021",
    time: "17.00",
    platform: 'Zoom',
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/bag_6.png",
    color: Color(0xFFAEAEAE),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
