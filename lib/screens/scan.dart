import 'package:flutter/material.dart';
import 'package:task11/constant/route.dart';

class ScanPage extends StatelessWidget {
  const ScanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(AppRoutes.homePage);
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
        title: const Text("Scan Page"),
      ),
    );
  }
}
