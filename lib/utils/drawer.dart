import 'package:codecell_marchant_happ_app/screens/homepage.dart';
import 'package:codecell_marchant_happ_app/screens/our_offers.dart';
import 'package:codecell_marchant_happ_app/screens/points_page.dart';
import 'package:codecell_marchant_happ_app/screens/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xff318AC4),
                  Color(0xff4CA37C),
                ],
              ),
            ),
            child: ListView(
              padding: EdgeInsets.only(right: width * 0.08),
              children: [
                SizedBox(height: height / 30),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: width * 0.2),
                        const Text(
                          "Demo Hub",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Get.to(() => const HomeScreen());
                  },
                  horizontalTitleGap: .1,
                  title: const Text(
                    "Home",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Get.to(() => const SettingsPage());
                  },
                  horizontalTitleGap: .1,
                  title: const Text(
                    "Feed",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Get.to(() => const SettingsPage());
                  },
                  horizontalTitleGap: .1,
                  title: const Text(
                    "Notice",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Get.to(() => const PointsPage());
                  },
                  horizontalTitleGap: .1,
                  title: const Text(
                    "Points",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Get.to(() => const OurOfferPage());
                  },
                  horizontalTitleGap: .1,
                  title: const Text(
                    "Offer",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Get.to(() => const SettingsPage());
                  },
                  horizontalTitleGap: .1,
                  title: const Text(
                    "Statistics",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Get.to(() => const SettingsPage());
                  },
                  horizontalTitleGap: .1,
                  title: const Text(
                    "More",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: height * 0.4,
            child: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                color: Colors.blue,
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    const Color(0xff152548).withOpacity(0.6),
                    const Color(0xff4200FF).withOpacity(0.6),
                  ],
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(300),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
