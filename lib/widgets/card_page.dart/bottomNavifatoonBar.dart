// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:task11/constant/color.dart';
import 'package:task11/constant/text.dart';
import 'package:task11/responsive/responsive.dart';
import 'package:task11/shared/divider.dart';
import 'package:task11/widgets/card_page.dart/checkOut_button.dart';

class CustomBottomNavigatonBar extends StatelessWidget {
  const CustomBottomNavigatonBar({super.key});

  @override
  Widget build(BuildContext context) {
    //Object From AppResponsive Class  //
    AppResponsive appResponsive = AppResponsive(context);
    return Container(
      padding: const EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
      height: 150,
      width: appResponsive.screenWidth,
      color: AppColors.white,
      child: const Column(
        children: [
          Row(
            children: [
              Text(
                AppText.totalItems,
                style: TextStyle(color: AppColors.grey, fontSize: 20),
              ),
              Spacer(),
              Text(
                "\$ 360",
                style: TextStyle(
                    color: AppColors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),

          CustomToCheckoutButton(), //object From  CustomToCheckoutButton class //
          CustomDivider() //object From  CustomDivider class //
        ],
      ),
    );
  }
}
