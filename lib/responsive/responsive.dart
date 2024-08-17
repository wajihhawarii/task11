import 'package:flutter/widgets.dart';

class AppResponsive {
  final double screenHeight;
  final double screenWidth;

  AppResponsive(BuildContext context)
      : screenHeight = MediaQuery.of(context).size.height,
        screenWidth = MediaQuery.of(context).size.width;
}
