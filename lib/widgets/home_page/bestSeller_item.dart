// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:task11/constant/color.dart';
import 'package:task11/responsive/responsive.dart';

class BestSellerItem extends StatelessWidget {
  final String itemImage;
  const BestSellerItem({super.key, required this.itemImage});

  @override
  Widget build(BuildContext context) {
    AppResponsive appResponsive = AppResponsive(context);
    return Container(
      margin: const EdgeInsets.only(left: 10),
      padding: const EdgeInsets.all(5),
      height: appResponsive.screenHeight * 0.14,
      width: appResponsive.screenWidth * 0.70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.white,
      ),
      child: Row(
        children: [
          Container(
            height: 150,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(itemImage),
          ),
          const SizedBox(
            width: 10,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                "Yellow Chair",
                style: TextStyle(
                    color: AppColors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "Armchair Hight",
                style: TextStyle(
                    color: AppColors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
        ],
      ),
    );
  }
}
