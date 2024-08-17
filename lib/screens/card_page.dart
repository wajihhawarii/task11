import 'package:flutter/material.dart';
import 'package:task11/constant/color.dart';
import 'package:task11/constant/route.dart';
import 'package:task11/constant/string_lists.dart';
import 'package:task11/constant/text.dart';
import 'package:task11/responsive/responsive.dart';
import 'package:task11/widgets/card_page.dart/bottomNavifatoonBar.dart';
import 'package:task11/widgets/card_page.dart/cardItem.dart';
import 'package:task11/widgets/home_page/categories_item.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    //object from  AppResponsive Class //
    AppResponsive appResponsive = AppResponsive(context);
    return Scaffold(
      backgroundColor: AppColors.grey200,
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 60, left: 20, right: 0, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: AppColors.white,
                      ),
                      child: Center(
                        child: IconButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacementNamed(AppRoutes
                                .homePage); // For transportation To HomePage
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios_new_sharp,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      AppText.cart,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: AppColors.white,
                      ),
                      child: Center(
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.delete_outline_rounded,
                            size: 35,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: SizedBox(
                  height: appResponsive.screenHeight * 0.45,
                  width: appResponsive.screenWidth,
                  child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int index) {
                        return const CardItem(); //object from CardItem class
                      }),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  AppText.recentlyView,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                width: appResponsive.screenWidth,
                height: 290,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoriesItemImages.length,
                  itemBuilder: (contex, index) {
                    //Object From CategoriesItem Class
                    return CategoriesItem(
                      categorieItemImage: categoriesItemImages[index],
                      categorieItemName: categoriesItemName[index],
                      categorieItemDesc: categoriesItemDesc[index],
                      categorieItemPrice: categoriesItemPrice[index],
                      onPressed: () {},
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      //Object From CustomBottomNavigatonBar Class//
      bottomNavigationBar: const CustomBottomNavigatonBar(),
    );
  }
}
