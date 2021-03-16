import 'package:flutter/material.dart';

class Product {
  final String image, title, description, discount, total;
  final int size, id, star;
  final double price;
  final bool fav;
  final Color color;
  Product(
      {this.id,
      this.image,
      this.title,
      this.price,
      this.description,
      this.size,
      this.discount,
      this.fav,
      this.star,
      this.color,
      this.total});
}

List<Product> products = [
  Product(
      id: 1,
      title: "Office Code",
      price: 234.00,
      size: 12,
      discount: "12%",
      fav: true,
      star: 5,
      total: '12k',
      description: dummyText,
      image: "assets/images/shoes_1.png",
      color: Colors.transparent),
  Product(
      id: 2,
      title: "Belt Bag",
      price: 234.00,
      size: 8,
      discount: "12%",
      fav: false,
      star: 4,
      total: '2k',
      description: dummyText,
      image: "assets/images/shoes_2.png",
      color: Colors.transparent),
  Product(
      id: 3,
      title: "Hang Top",
      price: 234.00,
      size: 10,
      discount: "12%",
      fav: false,
      star: 3,
      total: '8k',
      description: dummyText,
      image: "assets/images/shoes_3.png",
      color: Colors.transparent),
  Product(
      id: 4,
      title: "Old Fashion",
      price: 234.00,
      size: 11,
      discount: "12%",
      fav: true,
      star: 5,
      total: '1k',
      description: dummyText,
      image: "assets/images/shoes_4.png",
      color: Colors.transparent),
  Product(
      id: 5,
      title: "Office Code",
      price: 234.00,
      size: 12,
      discount: "12%",
      fav: true,
      star: 1,
      total: '20k',
      description: dummyText,
      image: "assets/images/shoes_5.png",
      color: Colors.transparent),
  Product(
    id: 6,
    title: "Office Code",
    price: 234.00,
    size: 12,
    discount: "12%",
    fav: false,
    star: 2,
    total: '13k',
    description: dummyText,
    image: "assets/images/shoes_6.png",
    color: Colors.transparent,
  )
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
