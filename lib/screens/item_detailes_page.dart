import 'package:flutter/material.dart';
import 'package:task11/constant/color.dart';
import 'package:task11/constant/route.dart';
import 'package:task11/constant/text.dart';
import 'package:task11/responsive/responsive.dart';
import 'package:task11/shared/appbar_icon.dart';
import 'package:task11/shared/divider.dart';
import 'package:task11/widgets/itemDeatiles_page/addCart_Button.dart';

class ItemDeatilesPage extends StatefulWidget {
  const ItemDeatilesPage({super.key});

  @override
  State<ItemDeatilesPage> createState() => _ItemDeatilesPageState();
}

class _ItemDeatilesPageState extends State<ItemDeatilesPage> {
  bool _isExpanded = false;

  void _toggleExpanded() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context)?.settings.arguments
        as Map; //Date From previose Screen//

    AppResponsive appResponsive =
        AppResponsive(context); // Object From AppResponsive Class //
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: appResponsive.screenHeight * 0.55,
              width: appResponsive.screenWidth,
              color: AppColors.grey200,
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 60, left: 20, right: 20),
                    child: Row(
                      children: [
                        //Object From  CusrtomAppBarIcon Class
                        CusrtomAppBarIcon(
                          icon: const Icon(Icons.arrow_back_ios_rounded),
                          onPressed: () {
                            // To Translate To HomePage //
                            Navigator.of(context)
                                .pushReplacementNamed(AppRoutes.homePage);
                          },
                        ),
                        const Spacer(),
                        //Object From  CusrtomAppBarIcon Class
                        const CusrtomAppBarIcon(
                          icon: Icon(
                            Icons.favorite_border_rounded,
                            size: 35,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: appResponsive.screenHeight * 0.35,
                    child: Image.asset(
                      arguments["categoriesItemImages"],
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        arguments["categoriesItemName"],
                        style: const TextStyle(
                            fontSize: 26, fontWeight: FontWeight.w700),
                      ),
                      const Spacer(),
                      Container(
                        height: 30,
                        width: 70,
                        decoration: BoxDecoration(
                          color: AppColors.orange200,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              color: AppColors.orangeAccent,
                              size: 25,
                            ),
                            Text(
                              "4.8",
                              style: TextStyle(
                                  color: AppColors.orangeAccent,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )),
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 20),
                    child: Text(
                      arguments["categorieItemDesc"],
                      style:
                          const TextStyle(color: AppColors.grey, fontSize: 20),
                    ),
                  ),

                  const Text(
                    AppText.itemDesc,
                    style: TextStyle(color: AppColors.grey, fontSize: 16),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "who want a minimalist room ",
                        style: const TextStyle(
                            color: AppColors.grey, fontSize: 16),
                        maxLines: _isExpanded ? null : 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                      InkWell(
                        onTap: _toggleExpanded,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            _isExpanded ? 'Read Less' : 'Read More',
                            style: const TextStyle(
                                color: AppColors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      children: [
                        for (int i = 0; i < 3; i++)
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 8,
                            ),
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColors.grey300),
                              child: Image.asset(
                                arguments["categoriesItemImages"],
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),

                  Row(
                    children: [
                      const Text(
                        AppText.colortext,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w800),
                      ),
                      Container(
                        padding: const EdgeInsets.all(2),
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(15),
                          border:
                              Border.all(color: AppColors.grey300, width: 2),
                        ),
                        child: CircleAvatar(
                          radius: 12,
                          backgroundColor: AppColors.grey300,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: CircleAvatar(
                          radius: 12,
                          backgroundColor: AppColors.grey,
                        ),
                      ),
                      const CircleAvatar(
                        radius: 12,
                        backgroundColor: AppColors.red,
                      ),
                      const Spacer(),
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
                            const Text("1"),
                            GestureDetector(
                              onTap: () {},
                              child: const CircleAvatar(
                                radius: 10,
                                backgroundColor: AppColors.white,
                                child: Center(
                                  child: Icon(
                                    Icons.add,
                                    size: 15,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const CustomAddToCardButton(), //object From  CustomAddToCardButton class //
                  const CustomDivider() //object From  CustomDivider class //
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
