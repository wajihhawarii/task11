// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:task11/constant/color.dart';
import 'package:task11/constant/route.dart';
import 'package:task11/constant/text.dart';

class CustomAddToCardButton extends StatelessWidget {
  const CustomAddToCardButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: MaterialButton(
        minWidth: 400,
        height: 50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: AppColors.blueGrey,
        onPressed: () {
          Navigator.of(context).pushReplacementNamed(
              AppRoutes.cartPage); // To Translate CardPage //
        },
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppText.addToCard,
              style: TextStyle(
                color: AppColors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "|",
                style: TextStyle(
                    color: AppColors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              "\$185",
              style: TextStyle(
                color: AppColors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
