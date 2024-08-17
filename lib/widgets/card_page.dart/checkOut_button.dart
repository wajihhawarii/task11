// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:task11/constant/color.dart';
import 'package:task11/constant/text.dart';
import 'package:task11/responsive/responsive.dart';

class CustomToCheckoutButton extends StatelessWidget {
  const CustomToCheckoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    //Object From AppResponsive Class  //
    AppResponsive appResponsive = AppResponsive(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 5, top: 10),
      child: MaterialButton(
        minWidth: appResponsive.screenWidth,
        height: 50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: AppColors.blueGrey,
        onPressed: () {},
        child: const Text(
          AppText.proccedToCheck,
          style: TextStyle(color: AppColors.white),
        ),
      ),
    );
  }
}
