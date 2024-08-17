// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:task11/constant/color.dart';

class CustomSearchItem extends StatelessWidget {
  const CustomSearchItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 25, right: 20),
      height: 55,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: AppColors.grey),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        child: TextFormField(
          decoration: InputDecoration(
            suffixIcon: const SizedBox(
              height: 50,
              width: 50,
              child: Row(
                children: [
                  VerticalDivider(
                    color: AppColors.grey,
                    thickness: 1,
                    indent: 10,
                    endIndent: 8,
                  ),
                  Icon(Icons.compare_arrows_sharp)
                ],
              ),
            ),
            prefixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 15.0),
            hintText: 'Search for furniture',
            hintStyle: TextStyle(
                color: AppColors.grey300,
                fontSize: 20,
                fontWeight: FontWeight.bold),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
