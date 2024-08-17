// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:task11/constant/route.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  CustomBottomNavigationBar({super.key});

  final List myPages = [
    AppRoutes.homePage,
    AppRoutes.favoritePage,
    AppRoutes.scanPage,
    AppRoutes.cartPage,
    AppRoutes.profilePage,
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: BottomNavigationBar(
        // currentIndex: _selectedIndex,
        onTap: (int index) {
          Navigator.of(context).restorablePushReplacementNamed(myPages[index]);
        },
        type: BottomNavigationBarType
            .fixed, // This is important for displaying 5 items
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_rounded,
              size: 30,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
              size: 30,
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.qr_code_scanner_rounded,
              size: 30,
            ),
            label: 'Scan',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_outlined,
              size: 30,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_2_outlined,
              size: 30,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
