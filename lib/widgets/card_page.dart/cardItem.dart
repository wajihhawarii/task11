// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:task11/constant/color.dart';
import 'package:task11/constant/images.dart';
import 'package:task11/constant/text.dart';
import 'package:task11/responsive/responsive.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    //Object From AppResponsive Class  //
    AppResponsive appResponsive = AppResponsive(context);
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
      margin: const EdgeInsets.only(bottom: 15),
      height: 100,
      width: appResponsive.screenWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.white,
      ),
      child: Row(
        children: [
          Transform.scale(
            scale: 1.2,
            child: Checkbox(
              value: true,
              checkColor: AppColors.white,
              activeColor: AppColors.blueGrey,
              onChanged: (val) {},
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            height: 90,
            width: 90,
            decoration: BoxDecoration(
              color: AppColors.grey200,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(
              AppImages.yellowChair,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  AppText.modernChair,
                  style: TextStyle(
                      color: AppColors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  AppText.armchair,
                  style: TextStyle(
                    color: AppColors.grey,
                    fontSize: 12,
                  ),
                ),
              ),
              Row(
                children: [
                  const Text(
                    "\$185",
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    width: 70,
                  ),
                  Container(
                    padding: const EdgeInsets.all(2),
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.grey200,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: const CircleAvatar(
                            radius: 10,
                            backgroundColor: AppColors.white,
                            child: Center(
                              child: Icon(
                                Icons.remove,
                                size: 15,
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          "1",
                          style: TextStyle(
                              color: AppColors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const CircleAvatar(
                            radius: 10,
                            backgroundColor: AppColors.white,
                            child: Center(
                                child: Icon(
                              Icons.add,
                              size: 15,
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
