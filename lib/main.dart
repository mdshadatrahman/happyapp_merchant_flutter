import 'package:codecell_marchant_happ_app/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/custom_bottom_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CustomBottomNavigationBar(),
    );
  }
}
