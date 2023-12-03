import 'package:flutter/material.dart';
import 'package:mobile_shop/cart_page.dart';
import 'package:mobile_shop/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Widget activePage = HomePage();
  int selectedIndex = 0;

  void changePage() {
    setState(() {
      if (selectedIndex == 0) {
        activePage = HomePage();
      } else if (selectedIndex == 1) {
        activePage = CartPage();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
          changePage();
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "Cart"),
        ],
      ),
    );
  }
}
