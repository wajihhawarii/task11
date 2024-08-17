import 'package:flutter/material.dart';
import 'package:task11/constant/color.dart';

class CategoriesItem extends StatelessWidget {
  final String categorieItemImage;
  final String categorieItemName;
  final String categorieItemDesc;
  final String categorieItemPrice;
  final void Function()? onPressed;

  const CategoriesItem(
      {super.key,
      required this.categorieItemImage,
      required this.categorieItemName,
      required this.categorieItemDesc,
      required this.categorieItemPrice,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.only(left: 10),
        padding: const EdgeInsets.all(4),
        height: 220,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              height: 180,
              width: 200,
              decoration: BoxDecoration(
                color: AppColors.grey200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 120,
                    child: Image.asset(
                      categorieItemImage,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 20,
                        width: 50,
                        decoration: BoxDecoration(
                          color: AppColors.pink,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Text(
                            "NEW",
                            style: TextStyle(
                                color: AppColors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        height: 20,
                        width: 50,
                        decoration: BoxDecoration(
                          color: AppColors.grey300,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              color: AppColors.orangeAccent,
                              size: 14,
                            ),
                            Text(
                              "4.8",
                              style: TextStyle(color: AppColors.orangeAccent),
                            ),
                          ],
                        )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                "  $categorieItemName",
                style: const TextStyle(
                    color: AppColors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
            ),
            Text(
              "  $categorieItemDesc",
              style: const TextStyle(color: AppColors.grey),
            ),
            Row(
              children: [
                Text(
                  "  $categorieItemPrice",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const Spacer(),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.blueGrey,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
