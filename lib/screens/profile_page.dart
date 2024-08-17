import 'package:flutter/material.dart';
import 'package:task11/constant/color.dart';
import 'package:task11/constant/images.dart';
import 'package:task11/constant/text.dart';
import 'package:task11/responsive/responsive.dart';
import 'package:task11/widgets/home_page/BottomNavigationBar.dart';
import 'package:task11/widgets/profile_page.dart/custom_listTitle.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    //object From  AppResponsive //
    AppResponsive appResponsive = AppResponsive(context);
    return Scaffold(
      backgroundColor: AppColors.grey200,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: appResponsive.screenHeight * 0.35,
                width: appResponsive.screenWidth,
                color: AppColors.white,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 60),
                      child: Text(
                        AppText.myProfie,
                        style: TextStyle(
                            color: AppColors.black,
                            fontSize: 28,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      width: appResponsive.screenWidth,
                      child: Stack(
                        children: [
                          const Positioned(
                            top: 20,
                            left: 100,
                            right: 100,
                            child: CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(AppImages.person),
                            ),
                          ),
                          Positioned(
                            top: 68,
                            left: 160,
                            right: 100,
                            child: CircleAvatar(
                              radius: 16,
                              backgroundColor: AppColors.greenbold,
                              child: Center(
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.camera_enhance_outlined,
                                      size: 20,
                                      color: AppColors.grey200,
                                    )),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        AppText.name,
                        style: TextStyle(
                            color: AppColors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    const Text(
                      AppText.email,
                      style: TextStyle(color: AppColors.grey),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: appResponsive.screenHeight * 0.6,
                width: appResponsive.screenWidth,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: ListView(
                    children: [
                      for (int i = 0; i < customListTileList.length; i++)
                        customListTileList[i], // List customListTileList   //
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar:
          CustomBottomNavigationBar(), // Object From CustomBottomNavigationBar Class   //
    );
  }
}
