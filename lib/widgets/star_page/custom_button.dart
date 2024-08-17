import 'package:flutter/material.dart';
import 'package:task11/constant/color.dart';
import 'package:task11/constant/route.dart';
import 'package:task11/constant/text.dart';
import 'package:task11/responsive/responsive.dart';

class CustomMaterailButton extends StatelessWidget {
  const CustomMaterailButton({super.key});

  @override
  Widget build(BuildContext context) {
    AppResponsive appResponsive =
        AppResponsive(context); //object from AppResponsive Class
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        color: AppColors.blueGrey,
        minWidth: appResponsive.screenWidth - 50,
        height: appResponsive.screenHeight - 790,
        child: const Text(
          AppText.buttonText,
          style: TextStyle(color: AppColors.white, fontSize: 20),
        ),
        onPressed: () {
          Navigator.of(context).pushReplacementNamed(AppRoutes
              .homePage); //This is The  Statement to translate  to Homepage
        },
      ),
    );
  }
}
