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
    title: "Long Sleeve Shirts",
    price: 9999,
    bgColor: const Color(0xFFFEFBF9),
  ),
    Product(
    image: "assets/images/product_1.png",
    title: "Casual Henley Shirts",
    price: 9999,
  ),
    Product(
    image: "assets/images/product_2.png",
    title: "Curved Hem Shirts",
    price: 9999,
    bgColor: const Color(0xFFF8FEFB),
  ),
    Product(
    image: "assets/images/product_3.png",
    title: "Casual Nolin",
    price: 9999,
    bgColor: const Color(0xFFEEEEED),
  ),
];