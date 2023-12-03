import 'package:flutter/material.dart';

class Mobile {
  final String name;
  final String company;
  final String price;
  final String description;
  final String storage;
  final String camera;
  final String display;
  final String size;
  final String image;
  final Color color;
  final bool isPopular;

  Mobile({
    required this.name,
    required this.company,
    required this.price,
    required this.description,
    required this.storage,
    required this.camera,
    required this.display,
    required this.size,
    required this.image,
    required this.color,
    required this.isPopular,
  });
}

List<Mobile> mobilePhones = [
  Mobile(
    name: "iPhone 13 Pro",
    company: "Apple",
    price: "\$999",
    description:
        "The latest iPhone with an A15 Bionic chip and Pro camera system.",
    storage: "128GB",
    camera: "12 MP triple-camera",
    display: "Super Retina XDR display",
    size: "6.1 inches",
    image: 'images/iphone_13_pro.jpg',
    color: Colors.blue, // Assign a color
    isPopular: true,
  ),
  Mobile(
    name: "Samsung Galaxy S21",
    company: "Samsung",
    price: "\$799",
    description: "A flagship Android phone with a stunning display and camera.",
    storage: "256GB",
    camera: "12 MP triple-camera",
    display: "Dynamic AMOLED 2X",
    size: "6.2 inches",
    image: 'images/samsung_galaxy_s21.jpg',
    color: Colors.green, // Assign a color
    isPopular: true,
  ),
  Mobile(
    name: "Google Pixel 6",
    company: "Google",
    price: "\$699",
    description: "The Pixel 6 features Google's amazing camera technology.",
    storage: "128GB",
    camera: "50 MP dual-camera",
    display: "OLED display",
    size: "6.4 inches",
    image: 'images/google_pixel_6.jpg',
    color: Colors.red, // Assign a color
    isPopular: true,
  ),
  Mobile(
    name: "OnePlus 9 Pro",
    company: "OnePlus",
    price: "\$899",
    description: "A high-performance phone known for its fast charging.",
    storage: "256GB",
    camera: "48 MP quad-camera",
    display: "Fluid AMOLED display",
    size: "6.7 inches",
    image: 'images/oneplus_9_pro.jpg',
    color: Colors.orange, // Assign a color
    isPopular: true,
  ),
  Mobile(
    name: "Xiaomi Mi 11",
    company: "Xiaomi",
    price: "\$599",
    description: "A budget-friendly phone with powerful hardware.",
    storage: "128GB",
    camera: "108 MP triple-camera",
    display: "AMOLED display",
    size: "6.81 inches",
    image: 'images/xiaomi_mi_11.jpg',
    color: Colors.purple, // Assign a color
    isPopular: true,
  ),
  Mobile(
    name: "Oppo Find X3 Pro",
    company: "Oppo",
    price: "\$899",
    description:
        "Oppo's flagship with a focus on camera and display technology.",
    storage: "256GB",
    camera: "50 MP quad-camera",
    display: "AMOLED display",
    size: "6.7 inches",
    image: 'images/oppo_find_x3_pro.jpg',
    color: Colors.teal, // Assign a color
    isPopular: false,
  ),
  Mobile(
    name: "LG Velvet",
    company: "LG",
    price: "\$499",
    description:
        "A stylish phone with a focus on design and multimedia features.",
    storage: "128GB",
    camera: "48 MP triple-camera",
    display: "OLED display",
    size: "6.8 inches",
    image: 'images/lg_velvet.jpg',
    color: Colors.indigo, // Assign a color
    isPopular: false,
  ),
  Mobile(
    name: "Sony Xperia 5 III",
    company: "Sony",
    price: "\$799",
    description:
        "Sony's compact flagship phone with advanced photography features.",
    storage: "128GB",
    camera: "12 MP dual-camera",
    display: "OLED display",
    size: "6.1 inches",
    image: 'images/sony_xperia_5_III.jpg',
    color: Colors.amber, // Assign a color
    isPopular: false,
  ),
  Mobile(
    name: "Motorola Edge",
    company: "Motorola",
    price: "\$549",
    description:
        "A mid-range phone with a large edge-to-edge display and 5G support.",
    storage: "128GB",
    camera: "64 MP triple-camera",
    display: "OLED display",
    size: "6.7 inches",
    image: 'images/motorola_edge.jpg',
    color: Colors.deepOrange, // Assign a color
    isPopular: false,
  ),
  Mobile(
    name: "Nokia 8.3 5G",
    company: "Nokia",
    price: "\$399",
    description: "A value-for-money 5G phone with clean Android software.",
    storage: "64GB",
    camera: "64 MP quad-camera",
    display: "IPS LCD display",
    size: "6.81 inches",
    image: 'images/nokia_8.3_5g.jpg',
    color: Colors.pink, // Assign a color
    isPopular: false,
  ),
];

List<Mobile> popularMobilePhones =
    mobilePhones.where((element) => element.isPopular == true).toList();

List<Mobile> otherMobilePhones =
    mobilePhones.where((element) => element.isPopular == false).toList();

List<Mobile> cartItems = [];
