import 'package:flutter/material.dart';

class Product {
  final String image, title, brand, customizedBy;
  final int price, id;

  Product(
      {required this.image,
      required this.title,
      required this.price,
      required this.id,
      required this.brand,
      required this.customizedBy
      });
}

List<Product> products = [
  Product(
      id: 1,
      brand: 'Nike',
      title: "Air Max 1",
      price: 234,
      customizedBy: dummyText,
      image: "assets/images/shoe2.png",
      ),
  Product(
      id: 2,
      brand: 'Nike',
      title: "Zoom Fly 5",
      price: 200,
      customizedBy: dummyText,
      image: "assets/images/shoe3.png",
      ),
  Product(
      id: 3,
      brand: 'Nike',
      title: "Blazer Mid 77",
      price: 300,
      customizedBy: dummyText,
      image: "assets/images/detail_shoe.png",
      ),
 Product(
      id: 4,
      brand: 'Nike',
      title: "Air Jordon",
      price: 234,
      customizedBy: dummyText,
      image: "assets/images/splash_screen_shoes.png",
      ),
];

String dummyText =
    "Customized by Alex Pedro";