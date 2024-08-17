import 'package:flutter/material.dart';
import 'package:task11/constant/color.dart';
import 'package:task11/constant/images.dart';
import 'package:task11/constant/route.dart';
import 'package:task11/constant/string_lists.dart';
import 'package:task11/constant/text.dart';
import 'package:task11/responsive/responsive.dart';
import 'package:task11/widgets/home_page/BottomNavigationBar.dart';
import 'package:task11/widgets/home_page/bestSeller_item.dart';
import 'package:task11/widgets/home_page/categorieSelected_button.dart';
import 'package:task11/widgets/home_page/categories_item.dart';
import 'package:task11/widgets/home_page/custom_searchItem.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    AppResponsive appResponsive =
        AppResponsive(context); //object from AppResponsive Class
    return Scaffold(
      backgroundColor: AppColors.grey200,
      body: SingleChildScrollView(
        child: Container(
          margin:
              const EdgeInsets.only(top: 40, left: 20, right: 0, bottom: 20),
          height: appResponsive.screenHeight,
          width: appResponsive.screenWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 20),
                child: Row(
                  children: [
                    Text(
                      AppText.discovertheBestFruniture,
                      style: TextStyle(
                          color: AppColors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    Spacer(),
                    CircleAvatar(
                      radius: 25,
                      foregroundImage: AssetImage(AppImages.person),
                    ),
                  ],
                ),
              ),
              const CustomSearchItem(), //object From CustomSearch class
              const Text(
                AppText.categories,
                style: TextStyle(
                    color: AppColors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 10),
                height: 50,
                width: appResponsive.screenWidth,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoriesNames.length,
                  itemBuilder: (context, index) {
                    return CategorieSellectedButton(
                      index: index,
                      categorieName: categoriesNames[index],
                    ); //object From  CategorieSellectedButton class
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                width: appResponsive.screenWidth,
                height: 290,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoriesItemImages.length,
                  itemBuilder: (contex, index) {
                    return CategoriesItem(
                      categorieItemImage: categoriesItemImages[index],
                      categorieItemName: categoriesItemName[index],
                      categorieItemDesc: categoriesItemDesc[index],
                      categorieItemPrice: categoriesItemPrice[index],
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed(
                          AppRoutes.itemDeatilesPage,
                          arguments: {
                            "categoriesItemImages": categoriesItemImages[index],
                            "categoriesItemName": categoriesItemName[index],
                            "categorieItemDesc": categoriesItemDesc[index],
                            "categorieItemPrice": categoriesItemPrice[index]
                          },
                        );
                      },
                    ); //Object From CategoriesItem Class
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  AppText.bestSeller,
                  style: TextStyle(
                      color: AppColors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: appResponsive.screenHeight * 0.14,
                width: appResponsive.screenWidth,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: bestSellerImages.length,
                    itemBuilder: (BuildContext context, int index) {
                      return BestSellerItem(
                        itemImage: bestSellerImages[index],
                      ); //Object From BestSellerItem Class
                    }),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar:
          CustomBottomNavigationBar(), //Object From CustomBottomNavigationBar Class
    );
  }
}
