import 'package:blinkit_clone/repository/screens/cart_screen/cart_screen.dart';
import 'package:blinkit_clone/repository/screens/category_screen/category_screen.dart';
import 'package:blinkit_clone/repository/screens/home_screen/home_screen.dart';
import 'package:blinkit_clone/repository/screens/print_screen/print_screen.dart';
import 'package:blinkit_clone/repository/widgets/ui_helper.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    CategoryScreen(),
    PrintScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: ImgPath.customImage(img: 'home'),label: 'Home'),
        BottomNavigationBarItem(icon: ImgPath.customImage(img: 'shopping-bag'),label: 'Cart'),
        BottomNavigationBarItem(icon: ImgPath.customImage(img: 'category'),label: 'Category'),
        BottomNavigationBarItem(icon: ImgPath.customImage(img: 'printer'),label: 'Print'),
      ]),
    );
  }
}
