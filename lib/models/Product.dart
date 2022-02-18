import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int price;
  final Color bgColor;

  Product({
    required this.image,
    required this.title,
    required this.price,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

List<Product> demo_product = [
  Product(
    image: "assets/images/product_0.png",
    title: "Camisa de manga longa",
    price: 160,
  ),
  Product(
    image: "assets/images/product_1.png",
    title: "Camisa Henley Casual",
    price: 99,
  ),
  Product(
    image: "assets/images/product_2.png",
    title: "Camisa de bainha curva",
    price: 180,
    bgColor: const Color(0xFFF8FEFB),
  ),
  Product(
    image: "assets/images/product_3.png",
    title: "Nolin Casual",
    price: 149,
    bgColor: const Color(0xFFEEEEED),
  ),
];
