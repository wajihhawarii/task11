// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:task11/constant/color.dart';

class CustomListTiel extends StatelessWidget {
  final IconData iconData;
  final String title;
  final String subtile;
  final Color color;
  final Color iconColor;

  const CustomListTiel(
      {super.key,
      required this.iconData,
      required this.title,
      required this.subtile,
      required this.color,
      required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.arrow_forward_ios),
      ),
      leading: Container(
        margin: const EdgeInsets.all(2),
        padding: const EdgeInsets.all(5),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Icon(
            size: 30,
            iconData,
            color: iconColor,
          ),
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
            color: Colors.black.withOpacity(0.6),
            fontSize: 20,
            fontWeight: FontWeight.w600),
      ),
      subtitle: Text(
        subtile,
        style: const TextStyle(color: AppColors.grey),
      ),
    );
  }
}

List customListTileList = [
  const Padding(
    padding: EdgeInsets.only(bottom: 10),
    child: Text(
      "    Account",
      style: TextStyle(
        color: AppColors.grey,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    ),
  ),
  CustomListTiel(
      iconData: Icons.settings,
      title: "Settings",
      subtile: "",
      color: AppColors.grey300,
      iconColor: AppColors.grey),
  CustomListTiel(
    iconData: Icons.notifications_none_outlined,
    title: "Notifications",
    subtile: "",
    color: AppColors.blue200,
    iconColor: AppColors.blue200Icon,
  ),
  CustomListTiel(
    iconData: Icons.history,
    title: "Order History",
    subtile: "",
    color: AppColors.orange200,
    iconColor: AppColors.orange200Icon,
  ),
  const Padding(
    padding: EdgeInsets.only(bottom: 10),
    child: Text(
      "    General",
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: AppColors.grey,
      ),
    ),
  ),
  CustomListTiel(
    iconData: Icons.lock_outline,
    title: "Privacy & Policy",
    subtile: "",
    color: AppColors.blue200,
    iconColor: AppColors.blue200Icon,
  ),
  CustomListTiel(
    iconData: Icons.history,
    title: "Terns & Conditions",
    subtile: "",
    color: AppColors.orange200,
    iconColor: AppColors.orange200Icon,
  ),
  CustomListTiel(
    iconData: Icons.login,
    title: "log Out",
    subtile: "",
    color: AppColors.red200,
    iconColor: AppColors.red200Icon,
  ),
];
