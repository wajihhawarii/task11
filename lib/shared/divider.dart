import 'package:flutter/material.dart';
import 'package:task11/responsive/responsive.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    AppResponsive appResponsive = AppResponsive(context);
    return Container(
      padding: const EdgeInsets.only(top: 10),
      width: appResponsive.screenWidth,
      child: Center(
        child: SizedBox(
          width: appResponsive.screenWidth * 0.5,
          child: const Divider(
            thickness: 4,
          ),
        ),
      ),
    );
  }
}
