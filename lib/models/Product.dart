import 'package:flutter/material.dart';

class Product {
  final String image, title, description, category, platform, date, time;
  final int id;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.category,
    required this.platform,
    required this.date,
    required this.time,
    required this.description,
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
    description: dummyText,
    image: "assets/images/seminar.jpg",
  ),
  Product(
    id: 2,
    title: "Belt Bag",
    category: "seminar",
    date: "1 january 2021",
    time: "17.00",
    platform: 'Zoom',
    description: dummyText,
    image: "assets/images/seminar.jpg",
  ),
  Product(
    id: 3,
    title: "Hang Top",
    category: "seminar",
    date: "1 january 2021",
    time: "17.00",
    platform: 'Zoom',
    description: dummyText,
    image: "assets/images/seminar.jpg",
  ),
  Product(
    id: 4,
    title: "Old Fashion",
    category: "seminar",
    date: "1 january 2021",
    time: "17.00",
    platform: 'Zoom',
    description: dummyText,
    image: "assets/images/seminar.jpg",
  ),
  Product(
    id: 5,
    title: "Office Code",
    category: "seminar",
    date: "1 january 2021",
    time: "17.00",
    platform: 'Zoom',
    description: dummyText,
    image: "assets/images/seminar.jpg",
  ),
  Product(
    id: 6,
    title: "Office Code",
    category: "seminar",
    date: "1 january 2021",
    time: "17.00",
    platform: 'Zoom',
    description: dummyText,
    image: "assets/images/seminar.jpg",
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
