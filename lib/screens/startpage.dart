import 'package:flutter/material.dart';
import 'package:task11/constant/color.dart';
import 'package:task11/constant/images.dart';
import 'package:task11/constant/text.dart';
import 'package:task11/responsive/responsive.dart';
import 'package:task11/shared/divider.dart';
import 'package:task11/widgets/star_page/custom_button.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    AppResponsive appResponsive =
        AppResponsive(context); //object from AppResponsive Class
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: appResponsive.screenHeight - 300,
            width: appResponsive.screenHeight,
            child: Image.asset(
              AppImages.sofa,
              fit: BoxFit.fill,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 10, top: 30, bottom: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    AppText.startPageDescription1,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: AppColors.black),
                  ),
                ),

                Text(
                  AppText.startPageDescription2,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.grey,
                  ),
                ),
                CustomMaterailButton(), //object From  CustomMaterailButton Class
                SizedBox(
                  height: 10,
                ),
                CustomDivider() //object From  CustomDivider Class
              ],
            ),
          )
        ],
      ),
    );
  }
}
