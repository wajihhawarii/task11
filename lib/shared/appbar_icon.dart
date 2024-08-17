import 'package:flutter/material.dart';
import 'package:task11/constant/color.dart';

class CusrtomAppBarIcon extends StatelessWidget {
  final Widget icon;
  final void Function()? onPressed;
  const CusrtomAppBarIcon({super.key, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: AppColors.white,
      ),
      child: Center(
        child: IconButton(
          onPressed: onPressed,
          icon: icon,
        ),
      ),
    );
  }
}
