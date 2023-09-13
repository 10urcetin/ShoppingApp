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
    image: "assets/images/ornek1.jpg",
    title: "Beyaz Kadın Gömlek",
    price: 76,
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    image: "assets/images/ornek2.jpg",
    title: "Siyah Erkek Tişört",
    price: 24,
  ),
  Product(
    image: "assets/images/ornek3.jpg",
    title: "Beyaz Kadın Tişört",
    price: 45,
    bgColor: const Color(0xFFF8FEFB),
  ),
  Product(
    image: "assets/images/ornek4.jpg",
    title: "Beyaz Baskılı Erkek Tişört",
    price: 32,
    bgColor: const Color(0xFFEEEEED),
  ),
];