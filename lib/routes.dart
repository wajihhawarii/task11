import 'package:flutter/material.dart';
import 'package:task11/constant/route.dart';
import 'package:task11/screens/card_page.dart';
import 'package:task11/screens/favorite_page.dart';
import 'package:task11/screens/home_page.dart';
import 'package:task11/screens/item_detailes_page.dart';
import 'package:task11/screens/profile_page.dart';
import 'package:task11/screens/scan.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.homePage: (context) => const HomePage(),
  AppRoutes.favoritePage: (context) => const FavoritePage(),
  AppRoutes.scanPage: (context) => const ScanPage(),
  AppRoutes.itemDeatilesPage: (context) => const ItemDeatilesPage(),
  AppRoutes.cartPage: (context) => const CardPage(),
  AppRoutes.profilePage: (context) => const ProfilePage(),
};
