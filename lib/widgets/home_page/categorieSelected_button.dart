// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:task11/constant/color.dart';

class CategorieSellectedButton extends StatefulWidget {
  final String categorieName;
  final int index;
  const CategorieSellectedButton(
      {super.key, required this.index, required this.categorieName});

  @override
  State<CategorieSellectedButton> createState() =>
      _CategorieSellectedButtonState();
}

class _CategorieSellectedButtonState extends State<CategorieSellectedButton> {
  int categorieSelected = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          categorieSelected = widget.index;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(left: 5),
        width: 100,
        decoration: BoxDecoration(
          color: categorieSelected == widget.index
              ? AppColors.blueGrey
              : AppColors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
          child: Text(
            widget.categorieName,
            style: TextStyle(
                color: categorieSelected == widget.index
                    ? AppColors.white
                    : AppColors.black,
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
